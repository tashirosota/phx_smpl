db:
	docker-compose up postgresql pgadmin4
c:
	iex -S mix phx.server
s:
	mix phx.server
donw:
	docker-compose down

