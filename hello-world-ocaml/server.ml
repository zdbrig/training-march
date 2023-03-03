open Cohttp
open Cohttp_lwt_unix
open Yojson

(* Sample list of articles *)
let articles = [
  (1, "Article 1");
  (2, "Article 2");
  (3, "Article 3");
  (4, "Article 4");
  (5, "Article 5");
  (6, "Article 6");
  (7, "Article 7");
  (8, "Article 8");
  (9, "Article 9");
  (10, "Article 10")
]

(* Convert the list of articles to a JSON array *)
let articles_json = `List (List.map (fun (id, name) -> `Assoc [("id", `Int id); ("name", `String name)]) articles)

(* HTTP response handler *)
let respond_with_json_list req body =
  let headers = Cohttp.Header.init_with "content-type" "application/json" in
  let resp_body = Yojson.Basic.to_string articles_json in
  let resp = Cohttp.Response.make ~status:`OK ~headers (), resp_body in
  body resp

(* HTTP server *)
let start_server () =
  let callback _conn req body =
    match req with
    | { request_method = `GET; _ } -> respond_with_json_list req body
    | _ -> Server.respond_string ~status:`Method_not_allowed ~body:"Method not allowed" ()
  in
  let server = Server.make ~callback () in
  Server.create ~mode:(`TCP (`Port 8080)) server

let () = Lwt_main.run (start_server ())
