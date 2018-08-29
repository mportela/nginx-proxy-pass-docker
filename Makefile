build:
	docker build -t globoplay/nginx_custom:latest .

run:
	docker run --rm -d -p 80:80 --name=nginx_custom_local -e TARGET_SERVER="`ipconfig getifaddr en0`:5000" globoplay/nginx_custom

stop:
	-docker stop nginx_custom_local

