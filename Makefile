.PHONY: build run

REPO  ?= vprix/core-ubuntu-focal
TAG   ?= develop

REPO_CENTOS  ?= vprix/core-centos7
TAG_CENTOS   ?= develop

build-ubuntu:
	docker build -f ./dockerfile-vprix-core -t $(REPO):$(TAG) .

run-ubuntu:
	docker run -it --rm \
	-p 8080:8080 \
	--shm-size=512m \
	--name vprix-ubuntu-core-desktop \
	$(REPO):$(TAG)

push-ubuntu:
	docker push $(REPO):$(TAG)

exec-ubuntu:
	docker exec -ti vprix-ubuntu-core-desktop bash


build-centos:
	docker build -f ./dockerfile-vprix-core-centos -t $(REPO_CENTOS):$(TAG_CENTOS) .

run-centos:
	docker run -it --rm \
	-p 8080:8080 \
	--shm-size=512m \
	--name vprix-centos-core-desktop \
	$(REPO_CENTOS):$(TAG_CENTOS)

push-centos:
	docker push $(REPO_CENTOS):$(TAG_CENTOS)

exec-centos:
	docker exec -ti vprix-centos-core-desktop bash