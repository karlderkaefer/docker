DIRECTORY_NAME := $(shell basename $(CURDIR))

login:
	echo "$$DOCKER_PASSWORD" | docker login -u "$$DOCKER_USERNAME" --password-stdin

build: login
	docker build -t $(DIRECTORY_NAME) .

push: build
	docker tag $(DIRECTORY_NAME) ${DOCKER_USERNAME}/$(DIRECTORY_NAME):${IMAGE_TAG}
	docker push ${DOCKER_USERNAME}/$(DIRECTORY_NAME):${IMAGE_TAG}
