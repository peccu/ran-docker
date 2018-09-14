# ran-docker
Docker image of m3ng9i/ran - a simple static web server written in Go

# m3ng9i/ran - a simple static web server written in Go
This image runs [m3ng9i/ran](https://github.com/m3ng9i/ran) binary.

# Example Usage
Entrypoint is `ran` and working directory (= default hosting directory) is `/www`.

- Host current directory.
`docker run --rm -it -v $PWD:/www -p 8080:8080 peccu/ran ran -l`
Now you can access to http://localhost:8080/ (`-l` option lists files in directory.)

# ran command reference
[Run Ran - m3ng9i/ran: a simple static web server written in Go](https://github.com/m3ng9i/ran#run-ran)

or

`docker run --rm -it peccu/ran ran -h`
