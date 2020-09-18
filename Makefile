# Copyright Scoir Inc.
#
# SPDX-License-Identifier: Apache-2.0

DOCKER_CMD ?= docker
GO_CMD     ?= go
ALPINE_VER ?= 3.12
GO_TAGS    ?=
GO_VER ?= 1.14

PROJECT_ROOT = github.com/scoir/aries-storage-mongo
GOBIN_PATH=$(abspath .)/build/bin

.PHONY: all
all: unit-test

unit-test:
	@scripts/test.sh
