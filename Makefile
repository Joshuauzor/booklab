.PHONY: all run_dev_web run_dev_mobile run_unit clean upgrade lint format build_dev_mobile help 

all: lint format run_dev_mobile

# Adding a help file: https://gist.github.com/prwhite/8168133#gistcomment-1313022
help: ## This help dialog.
	@IFS=$$'\n' ; \
	help_lines=(`fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//'`); \
	for help_line in $${help_lines[@]}; do \
		IFS=$$'#' ; \
		help_split=($$help_line) ; \
		help_command=`echo $${help_split[0]} | sed -e 's/^ *//' -e 's/ *$$//'` ; \
		help_info=`echo $${help_split[2]} | sed -e 's/^ *//' -e 's/ *$$//'` ; \
		printf "%-30s %s\n" $$help_command $$help_info ; \
	done

run_unit: ## Runs unit tests
	@echo "╠ Running the tests"
	@flutter test || (echo "Error while running tests"; exit 1)

clean: ## Cleans the environment
	@echo "╠ Cleaning the project..."
	@rm -rf pubspec.lock
	@flutter clean

format: ## Formats the code
	@echo "╠ Formatting the code"
	@dart format .

lint: ## Lints the code
	@echo "╠ Verifying code..."
	@dart analyze . || (echo "Error in project"; exit 1)

upgrade: clean ## Upgrades dependencies
	@echo "╠ Upgrading dependencies..."
	@flutter pub upgrade

get:  ## get dependencies
	@echo "╠ getting dependencies..."
	@flutter pub get
	@cd ios && pod install && pod update && cd ..


commit: format lint
	@echo "╠ Committing..."
	git add .
	git commit

run_dev_web: ## Runs the web application in development
	@echo "╠ Running the app"
	@flutter run -d chrome --dart-define=ENVIRONMENT=dev

run_dev_mobile: ## Runs the mobile application in development
	@echo "╠ Running the app"
	@flutter run --flavor development

build_dev: clean ## Build apk for development flavor
	@echo "╠  Building the app"
	@echo "╠  flavor = development"
	@flutter build apk --flavor development -t lib/main_development.dart

build_stg: clean ## Build apk for staging flavor
	@echo "╠  Building the app"
	@echo "╠  flavor = Staging"
	@flutter build apk --flavor staging -t lib/main_staging.dart

build_prod: clean ## Build appble for production flavor and uploading to store
	@echo "╠  Building the app"
	@echo "╠  flavor = production"
	@flutter build apk --flavor production -t lib/main_production.dart

build_release: clean ## Build appble for production flavor and uploading to store
	@echo "╠  Building the app"
	@echo "╠  flavor = production"
	@flutter build appbundle --flavor production -t lib/main_production.dart

build_runner: ## Build appble for production flavor and uploading to store
	@echo "╠  Running build to generate files"
	@flutter pub run build_runner watch --delete-conflicting-outputs