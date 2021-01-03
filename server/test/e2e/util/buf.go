package util

import (
	"context"
	"net"

	"google.golang.org/grpc/test/bufconn"
)

const bufSize = 1024 * 1024

var lis *bufconn.Listener

func init() {
	lis = bufconn.Listen(bufSize)
}

func BufListener() *bufconn.Listener {
	return lis
}

func BufDialer(context.Context, string) (net.Conn, error) {
	return lis.Dial()
}
