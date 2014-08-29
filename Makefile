IMAGE := shouldbee/php-cs-fixer

build:
	sudo docker build -t $(IMAGE) .
