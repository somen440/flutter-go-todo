package todo

import "time"

// ID id
type ID int64

// Todo todo entity
type Todo struct {
	ID       ID
	Title    string
	Done     bool
	Created  time.Time
	Modified time.Time
}
