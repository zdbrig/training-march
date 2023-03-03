# Use the OCaml image from the official Docker Hub repository
FROM ocaml/opam
# Install the required dependencies
RUN sudo apt-get update && \
    sudo apt-get install -y m4 && \
    opam install -y cohttp lwt yojson