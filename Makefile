.PHONY: all
all:
	make build

.PHONY: build
build:
	graph build

.PHONY: deploy
deploy:
	graph build
	graph create --node http://localhost:8020 satoshi-gaming-group
	graph deploy --node=http://localhost:8020 satoshi-gaming-group

.PHONY: publish
publish:
	graph build
	graph publish --subgraph-id 2s2nR9EC2j1jHJRZHJhLWq5Rm9SZTWawWfA9ec4vX9hn

.PHONY: gui
gui:
	substreams gui ./substreams/antelope-transactions-v0.5.0.spkg -e eos.substreams.pinax.network:443 --production-mode graph_out -s 390796092 --params "graph_out=(code:txtprotocol2 || data.to:txtprotocol1 || data.from:txtprotocol1) && notif:false"