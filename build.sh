#!/bin/bash

set -xe

opa version
opa check -S -s schema authz/main.rego
