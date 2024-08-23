NS=benc-uk/devc-features
.PHONY: test

help: ## 💬 This help message :)
	@figlet $@ || true
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(firstword $(MAKEFILE_LIST)) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'

gen-docs: ## 📚 Generate documentation
	@figlet $@ || true
	devcontainer features generate-docs -p src/ -n $(NS)

test: ## 🧪 Run tests
	@figlet $@ || true
	devcontainer features test --skip-scenarios

package: ## 📦 Packaging
	@figlet $@ || true
	devcontainer features package src -f