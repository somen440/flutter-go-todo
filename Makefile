go_out := server/internal/pb
dart_out := client/lib/api/pb

.PHONY: generate
generate: generate_client generate_server

.PHONY: generate_client
generate_client:
	protoc --dart_out=grpc:${dart_out} -Iprotos protos/**/*.proto

.PHONY: generate_server
generate_server:
	protoc --go_out=${go_out} --go_opt=paths=source_relative \
			--go-grpc_out=${go_out} --go-grpc_opt=paths=source_relative \
			-Iprotos protos/**/*.proto
