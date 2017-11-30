default: build push

build:
	@docker build -t ubuntu-net .

push: DOCKER_IMAGE_ID = $(shell docker images -q ubuntu-net:latest)
push:
	@printf "Enter Dockerhub "
	@docker login -u mslocrian
	@docker tag $(DOCKER_IMAGE_ID) mslocrian/ubuntu-net:latest
	@docker push mslocrian/ubuntu-net:latest

