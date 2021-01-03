package config

import (
	"fmt"
	"os"
)

const (
	port = "50051"
)

// Port return port
func Port() string {
	if os.Getenv("PORT") == "" {
		return port
	}
	return port
}

// Addr return addr
func Addr() string {
	return fmt.Sprintf(":%s", Port())
}
