# Copyright Scoir Inc.
#
# SPDX-License-Identifier: Apache-2.0

PROJECT_ROOT = github.com/scoir/aries-storage-mongo
GOBIN_PATH=$(abspath .)/build/bin

.PHONY: all
all: unit-test

unit-test:
	@scripts/test.sh
