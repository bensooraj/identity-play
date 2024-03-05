include ./database/mysql/.env

init:
	chmod +x ./database/mysql/init-scripts/*

clean:
	rm -rf ./database/mysql/data/*
	rm -rf ./identity/keycloak/data/*

stop:
	@docker-compose down

start:
	@docker-compose up

mysql-shell:
	@echo "password: ${MYSQL_ROOT_PASSWORD}"
	@docker exec -it database mysql -u root -p

