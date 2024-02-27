builder:
	docker build --no-cache -t toastmaster-timer5 .

run:
	docker run -p 3000:3000 -p 5000:5000 toastmaster-timer5

## old way: docker exec -it <image_name> /bin/bash
exec:
	docker exec -it upbeat_shtern sh
	
tag:
	docker tag toastmaster-timer5 760528/toastmaster3:v1.0

push:
	docker push --disable-content-trust 760528/toastmaster3:v1.0

delete-rep:
	docker rmi 760528/toastmaster3:v1.0

# on render as image URL
# docker.io/760528/toastmaster3:v1.0