builder:
	docker build --no-cache -t toastmaster-timer2.2 .

run:
	docker run -e JSON_PORT=5000 -p 3000:3000 -p 5000:5000 toastmaster-timer2.2

## old way: docker exec -it <image_name> /bin/bash
exec:
	docker exec -it upbeat_shtern sh
	
tag:
	docker tag toastmaster-timer2.2 760528/toastmaster2:v2.0

push:
	docker push --disable-content-trust 760528/toastmaster2:v2.0

delete-rep:
	docker rmi 760528/toastmaster2:v2.0

# on render as image URL
# docker.io/760528/toastmaster2:v2.0