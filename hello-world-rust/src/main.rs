#![feature(proc_macro_hygiene, decl_macro)]

#[macro_use] extern crate rocket;

#[get("/")]
fn hello_world() -> &'static str {
    "Hello, Sqoin!"
}

fn main() {
    let config = rocket::config::Config::build(rocket::config::Environment::Staging)
        .address("0.0.0.0")
        .port(8000)
        .finalize()
        .unwrap();
    
    rocket::custom(config)
        .mount("/", routes![hello_world])
        .launch();
}