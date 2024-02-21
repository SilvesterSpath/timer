build:
	docker build -t toastmaster-timer .

run:
	docker run -p 3000:3000 -p 5000:5000 toastmaster-timer

exec:
	docker exec -it toastmaster-timer /bin/bash