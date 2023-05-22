.DEFAULT_GOAL := help
XCODE_DERIVEDDATA=../DerivedData
BUNDLE=$(if $(rbenv > /dev/null), rbenv exec bundle, bundle)

install: ## install required dependencies - 
	make install_bundle
	
	
setupci: ## install xcode gen run only CI
	brew install xcodegen

generate:## generate xcode gen 
	cd DesignSystem && xcodegen

generate_open:## generate xcode gen and open 
	cd DesignSystem && xcodegen	 && open DesignSystem.xcodeproj

setup: ## installs project dependencies
	cd DesignSystem/scripts && ./setup.sh all && cd .. && cd ..
	
	brew install xcodegen
	brew install swiftgen
	brew install swiftlint

	gem install bundler
	
	cd DesignSystem && $(BUNDLE) install
	cd DesignSystem && $(BUNDLE) update --all

	cd DesignSystem && xcodegen
	cd DesignSystem && open DesignSystem.xcodeproj

	@echo "\033[1;33m"
	@echo "-----------------------------------------------------------"
	@echo "Restart all your terminals to ensure the setup takes effect"
	@echo "-----------------------------------------------------------"
	@echo "\033[0m"

install_bundle: ## install gems
	$(BUNDLE) install
	$(BUNDLE) update --all

xcode_wipe: ## delete all xcode cached outputs, kill and reset all simulators
	-rm -rf ~/Library/Developer/Xcode/{DerivedData,Archives,Products}
	make reset_simulator

reset_simulator: ## reset all iOS Simulators
	-osascript -e 'tell application "Simulator" to quit'
	-xcrun simctl shutdown all
	-xcrun simctl erase all

deintegrate: ## remove derivedata e xcodeproj
	cd DesignSystem && rm -rf DesignSystem.xcodeproj && rm -rf ${XCODE_DERIVEDDATA}

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'