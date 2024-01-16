package authz

import rego.v1

# METADATA
# schemas:
#   - data.users: schema["users-map"]
users_in_map contains name if {
	user_in_map := data.users[_]
	name := user_in_map.namee # Intentional Typo
}

# METADATA
# schemas:
#   - data.users: schema["users-array"]
users_in_array contains name if {
	user_in_array := data.users[_]
	name := user_in_array.namee # Intentional Typo
}
