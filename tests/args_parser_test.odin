package tests

import "core:testing"
import "core:fmt"

import "shared:args_parser"

@(test)
test_get_value_after_slash :: proc(t: ^testing.T) {
	k, v := args_parser.get_value_after_slash("-key:value")

	testing.expect_value(t, k, "key")
	testing.expect_value(t, v, "value")
}

@(test)
test_parse_args :: proc(t: ^testing.T) {
	args := []string{"-name:ethan", "-age:21", "-country:wales"}

	m := args_parser.parse_args(args)

	testing.expect_value(t, m["name"], "ethan")
	testing.expect_value(t, m["age"], "21")
	testing.expect_value(t, m["country"], "wales")
}

