run:
	go run main.go

gen:
	protoc --proto_path=proto proto/*.proto --go_out=plugins=grpc:pb

clean:
	rm -rf pb/*

lint:
	golangci-lint run