package main

import (
	"encoding/json"
	"fmt"
)

func main() {
	data := make(map[string]int)
	if err := json.Unmarshal([]byte("{ \"a\": 1, \"b\": 2 }"), &data); err != nil {
		panic(err)
	}
	fmt.Println(data["a"] + data["b"])

}
