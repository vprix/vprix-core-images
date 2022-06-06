.PHONY: build run

REPO  ?= ubuntu_desktop
TAG   ?= laster


build:
	docker build -f ./dockerfile-vprix-core -t $(REPO):$(TAG) .

run:
	docker run -it --rm \
	--name ubuntu_desktop_test \
	$(REPO):$(TAG)
