status:
	@docker-compose ps
topic:
	@bash ./scripts/topic.sh
create:
	@bash ./scripts/create.sh
start:
	@bash ./scripts/start.sh
stop:
	@bash ./scripts/stop.sh
delete:
	@docker-compose down -v
