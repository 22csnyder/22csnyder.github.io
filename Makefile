.PHONY: help setup install serve stop restart build clean check-ruby

help: ## Show this help message
	@echo "Available commands:"
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "  \033[36m%-15s\033[0m %s\n", $$1, $$2}'

setup: ## Run the setup script to configure the environment
	@bash setup.sh

install: ## Install dependencies (requires rbenv and Ruby 3.3.3)
	@echo "Checking Ruby environment..."
	@if ! command -v rbenv &> /dev/null; then \
		echo "❌ rbenv is not installed. Run 'make setup' first."; \
		exit 1; \
	fi
	@export PATH="$$HOME/.rbenv/bin:$$PATH" && \
	eval "$$(rbenv init -)" && \
	if [ "$$(ruby -v | awk '{print $$2}')" != "3.3.3"* ]; then \
		echo "❌ Wrong Ruby version. Run 'make setup' first."; \
		exit 1; \
	fi && \
	bundle install

serve: ## Start the Jekyll development server
	@if ! command -v rbenv &> /dev/null; then \
		echo "❌ rbenv is not installed. Run 'make setup' first."; \
		exit 1; \
	fi
	@if lsof -ti:4000 > /dev/null 2>&1; then \
		echo "⚠️  Port 4000 is already in use (http://localhost:4000). Killing existing process..."; \
		lsof -ti:4000 | xargs kill -9 2>/dev/null || true; \
		sleep 1; \
	fi
	@export PATH="$$HOME/.rbenv/bin:$$PATH" && \
	eval "$$(rbenv init -)" && \
	bundle exec jekyll serve

stop: ## Stop any running Jekyll server on port 4000
	@if lsof -ti:4000 > /dev/null 2>&1; then \
		echo "Stopping Jekyll server on port 4000..."; \
		lsof -ti:4000 | xargs kill -9 2>/dev/null || true; \
		echo "✅ Server stopped"; \
	else \
		echo "No server running on port 4000"; \
	fi

restart: stop serve ## Stop and restart the Jekyll server

build: ## Build the site without serving
	@if ! command -v rbenv &> /dev/null; then \
		echo "❌ rbenv is not installed. Run 'make setup' first."; \
		exit 1; \
	fi
	@export PATH="$$HOME/.rbenv/bin:$$PATH" && \
	eval "$$(rbenv init -)" && \
	bundle exec jekyll build

clean: ## Clean generated files
	@rm -rf _site .jekyll-cache .jekyll-metadata

check-ruby: ## Check if the correct Ruby version is being used
	@if ! command -v rbenv &> /dev/null; then \
		echo "❌ rbenv is not installed"; \
		exit 1; \
	fi
	@export PATH="$$HOME/.rbenv/bin:$$PATH" && \
	eval "$$(rbenv init -)" && \
	CURRENT=$$(ruby -v | awk '{print $$2}') && \
	if [ "$$CURRENT" = "3.3.3"* ]; then \
		echo "✅ Using correct Ruby version: $$CURRENT"; \
	else \
		echo "❌ Wrong Ruby version: $$CURRENT (expected 3.3.3)"; \
		echo "Run 'make setup' to fix this."; \
		exit 1; \
	fi

