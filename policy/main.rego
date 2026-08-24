package main

import rego.v1

# Conftest's default query is data.main.deny. Keep this adapter intentionally thin: all policy
# lives in namespaced packages that OPA serves unchanged at runtime.
deny contains violation if {
	some violation in data.jumo.corpus.deny
}
