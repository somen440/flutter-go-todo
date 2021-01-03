package util

import "github.com/sirupsen/logrus"

var (
	log *logrus.Logger
)

// Logger ロガー
func Logger() *logrus.Logger {
	if log != nil {
		return log
	}
	log = logrus.New()

	// todo: Cloud 環境では JSON Formatter へ

	return log
}
