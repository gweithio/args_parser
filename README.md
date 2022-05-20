# Args Parser

A small args parser for Odin

## Usage
```
// Will return the key and value, where `key == hello` and `value == 1234` 
k, v := args_parser.get_value_after_slash("-hello:1234")

args := []string{"-name:ethan", "-age:21", "-country:wales"}

// Will return the arguments as a map, internally uses get_value_after_slash
m := args_parser.parse_args(args)

m["name"] // will return ethan
m["age"] // will return 21
m["country"] // will return wales

```
