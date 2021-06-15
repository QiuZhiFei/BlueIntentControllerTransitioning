.PHONY: run

run:
	cd Example && pod install --verbose
	open Example/BlueIntentControllerTransitioning.xcworkspace

lint:
	pod lib lint --allow-warnings

deploy:
	pod trunk push BlueIntentControllerTransitioning.podspec --allow-warnings