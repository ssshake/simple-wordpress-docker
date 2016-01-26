read -r -p "Are you sure? [y/N] " response
case $response in
    [yY][eE][sS]|[yY]) 
	docker stop wordpress
	docker stop wordpressdb
	docker rm wordpress
	docker rm wordpressdb
        ;;
    *)
        echo "Aborting"
        ;;
esac
