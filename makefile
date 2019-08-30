IMAGE := ministryofjustice/standardrb

build: .built-docker-image

.built-docker-image: Dockerfile
	docker build -t $(IMAGE) .
	docker push $(IMAGE)
	touch .built-docker-image
