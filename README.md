# Issue with jsonschma and maps

I have a `jsonschema` containing a map definition of typed objects, but `opa check` is not able to detect typos in it. My current workaround is to define an array instead of a map but it might not work if I need to unify with the key as a string value.

## Steps To Reproduce

- Have OPA installed. 

```shell
$ ./build.sh
+ opa version
Version: 0.60.0
Build Commit: a1a2ae3cbb5fdddf306b1ef67ca5a856fd94fa15
Build Timestamp: 2023-12-20T22:07:16Z
Build Hostname: Mac-1703109498346.local
Go Version: go1.21.5
Platform: darwin/arm64
WebAssembly: unavailable
+ opa check -S -s schema authz/main.rego
1 error occurred: authz/main.rego:18: rego_type_error: undefined ref: user_in_array.namee
        user_in_array.namee
                      ^
                      have: "namee"
                      want (one of): ["name"]
```

## Expected behavior

Both `user_in_array.name` and `user_in_map.name` should have failed the validation.