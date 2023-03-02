package main

import (
    "fmt"
    "net/http"
)

func main() {
    http.HandleFunc("/", func(w http.ResponseWriter, r *http.Request) {
        fmt.Fprintf(w, "Hello, Sqoin (Here a docker file made in go)!")
    })

    http.ListenAndServe(":8080", nil)
}
