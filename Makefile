.PHONY: all build dev

build:
	@echo 'Building...'
	@rm -rf build/
	@mkdir -p build/chrome
	@mkdir -p build/firefox
	@cp src/manifest-firefox.json build/firefox/manifest.json
	@cp src/manifest-chrome.json build/chrome/manifest.json
	@cp src/content-script.js build/firefox/
	@cp src/content-script.js build/chrome/
	@cp -r icons build/firefox/
	@cp -r icons build/chrome/
	@echo 'Build finished 🔥'

dev:
	@echo 'Watching src directory for changes'
	@fswatch src | xargs -n1 -I{} make build
