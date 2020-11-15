start:
	make load-balancer;
	make http;
	brew services reload nginx;

test:
	while sleep 0.5;do curl http://localhost:8888; done;

load-balancer:
	cp load-balancer.conf /usr/local/etc/nginx/conf.d 

http:
	cp nginx.conf /usr/local/etc/nginx/nginx.conf;