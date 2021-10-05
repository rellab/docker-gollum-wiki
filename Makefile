IMAGE=rel/wiki

build: build-latest

build-latest: Dockerfile-base
	docker build -t ${IMAGE}:latest -f Dockerfile-base .

clean:
	docker images | grep ${IMAGE} | awk '{print $$3}' | xargs docker rmi
	