package args_parser

import "core:strings"

// Parse values from the args into key, val pairs
get_value_after_slash :: proc(v: string) -> (key, val: string) {
	index := strings.index(v, ":")

	if index != -1 {
		key = v[:index]
		val = v[index + 1:]
	} else {
		// No ':' found, return a key with an empty value
		key = v
	}

	// Strip leading dashes from key
	for r, i in key {
		if r != '-' {
			key = key[i:]
			break
		}
	}
	return
}

// loop through the args and append them to our map
parse_args :: proc(args: []string) -> (res: map[string]string) {
	for arg in args {
		key, val := get_value_after_slash(arg)
		res[key] = val
	}
	return
}
