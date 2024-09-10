.PHONY: all
all:
	make build
	make create
	make deploy

.PHONY: build
build:
	graph build

.PHONY: deploy
deploy:
	graph deploy --node=http://localhost:8020 satoshi-gaming-group

.PHONY: create
create:
	graph create --node http://localhost:8020 satoshi-gaming-group

.PHONY: publish
publish:
	graph build
	graph publish --subgraph-id "<SUBGRAPH ID>"

.PHONY: gui
gui:
	substreams gui ./substreams/eos-transactions-v0.3.9.spkg -e eos.substreams.pinax.network:443 graph_out -s 390796092 --params "graph_out=(code:txtprotocol2 || data.to:txtprotocol1 || data.from:txtprotocol1) && notif:false"