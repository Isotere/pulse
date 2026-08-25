SHELL := /bin/bash
.SHELLFLAGS := -eu -o pipefail -c

MKDOCS ?= $(HOME)/.local/bin/mkdocs
DOCS_ADDR ?= 127.0.0.1:8000

.PHONY: docs-build docs-serve git-hooks

docs-build:
	test -x "$(MKDOCS)"
	$(MKDOCS) build --strict

docs-serve:
	test -x "$(MKDOCS)"
	$(MKDOCS) serve --strict --dev-addr="$(DOCS_ADDR)"

git-hooks:
	git config --local core.hooksPath .githooks
