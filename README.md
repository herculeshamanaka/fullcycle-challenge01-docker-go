# FullCycle Challenge01 - Docker and Go
Repo containing the challenge 01 from FullCycle 2.0 course (Code Education by School of Net)

## 🎯 The Challenge
The challenge consists of:
- Creating a [Go](https://golang.org/) program that prints `FullCycle Rocks!`
- Create a docker image to run the [Go](https://golang.org/) program
- The Docker image must have less than 2MB
- Once you run the image the `FullCycle Rocks!` message must be printed

## ✅ The Solution
The [Go](https://golang.org/) code is pretty simple, is basically a Hello World:
```
package main

import "fmt"

func main() {
	fmt.Println("FullCycle Rocks! 🚀")
}
```
\
The Docker image base is `golang:1.15-alpine`. The [Go](https://golang.org/) was also compiled with ```-ldflags="-s -w"``` to reduce the binary size. It was also 
used the [Multi-stage building concept](https://docs.docker.com/develop/develop-images/multistage-build/) where the final image is built in different stages.

## 🐳 Docker Hub Image
Please use the following command to pull the Docker image from docker hub:
`docker pull herculeshamanaka/fullcycle-challenge01-go:prod`
