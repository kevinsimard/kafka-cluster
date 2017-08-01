status:
	@docker-compose ps
create:
	@bash ./scripts/create.sh
delete:
	@docker-compose down -v
start:
	@bash ./scripts/start.sh
stop:
	@bash ./scripts/stop.sh
