from jsonschema import validate
import json

if __name__ == "__main__":
    with open("schema/users-map.json") as f:
        schema = json.load(f)

    invalid_json = json.loads('{"joe": { "namee":"bine" } }')
    valid_json = json.loads('{"joe": { "name":"bine" } }')

    print("Should be valid")
    validate(instance=valid_json, schema=schema)

    print("Should be invalid")
    validate(instance=invalid_json, schema=schema)
