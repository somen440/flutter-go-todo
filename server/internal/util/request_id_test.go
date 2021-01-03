package util_test

import (
	"testing"

	"github.com/google/uuid"
	"github.com/stretchr/testify/assert"
)

func TestUUID(t *testing.T) {
	t.Parallel()

	expected := 10000
	n := 0
	idMap := map[string]bool{}

	for i := 0; i < expected; i++ {
		id := uuid.New().String()
		_, ok := idMap[id]
		if ok {
			continue
		}
		idMap[id] = true
		n++
	}

	assert.Equal(t, expected, n)
}
