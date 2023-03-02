# Building a C program on Docker Bash Environment

This is a simple guide on how to build a C program on a Docker Bash environment. 

## Prerequisites

You will need the following software installed:

- Docker

## Steps to Build the C program on Docker Bash Environment

1. Clone or download the repository that contains the C program. 

2. Open the Docker Bash environment.

3. Navigate to the directory where the C program is located.

4. Run the following command to build the Docker container:

```docker build -t c-program . ```

5. Once the container has been built, run the following command to start the container:

docker run c-program


6. The output of the program should be displayed in the Docker Bash terminal:


```Hello, Sqoin ! ````


That's it! You have successfully built and run the C program on a Docker Bash environment.



## how to build this project inside docker

```docker run -it -v `pwd`:/code -w /code gcc bash```

### now run the command 

```gcc hello_world.c -o bin/hello_world```