#! /bin/bash

# use for protoc to go

cd models/protos
protoc --micro_out=../ --go_out=../ prods.proto
protoc-go-inject-tag -input=../prods.pb.go
cd ../../