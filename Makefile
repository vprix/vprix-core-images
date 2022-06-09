.PHONY: build run

REPO  ?= ubuntu_desktop
TAG   ?= laster

REPO_CENTOS  ?= centos_desktop
TAG_CENTOS   ?= laster

build:
	docker build -f ./dockerfile-vprix-core -t $(REPO):$(TAG) .

run:
	docker run -it --rm \
	-p 8080:8080 \
	--name ubuntu_desktop_test \
	$(REPO):$(TAG)

exec:
	docker exec -ti ubuntu_desktop_test bash


build_centos:
	docker build -f ./dockerfile-vprix-core-centos -t $(REPO_CENTOS):$(TAG_CENTOS) .

run_centos:
	docker run -it --rm \
	-p 8080:8080 \
	--name centos_desktop_test \
	$(REPO_CENTOS):$(TAG_CENTOS)

exec_centos:
	docker exec -ti centos_desktop_test bash