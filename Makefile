# This can be overridden for different project names
PROJECT=Swift-AWS-Lambda-Website 

# AWS Lambda needs a handler executable to be:
# - Built to run on Linux (Docker is used for this!)
# - Zipped up

build_lambda:
	docker run \
			--rm \
			--volume "$(shell pwd)/:/src/$(PROJECT)" \
			--workdir "/src/$(PROJECT)" \
			swift \
			swift build --product $(PROJECT)
	mkdir -p Artifacts
	zip -r -j Artifacts/lambda.zip $(shell pwd)/.build/debug/$(PROJECT)
