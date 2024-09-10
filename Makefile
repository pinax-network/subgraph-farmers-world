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
	graph deploy --node=http://localhost:8020 farmers-world

.PHONY: create
create:
	graph create --node http://localhost:8020 farmers-world

.PHONY: publish
publish:
	graph build
	graph publish --subgraph-id 3eMDCbB9JBiherY33aC6e5gGUbuMYLA8xKFwEC27mSkz

.PHONY: gui
gui:
	substreams gui ./substreams/wax-transactions-v0.3.9.spkg -e wax.substreams.pinax.network:443 graph_out -s 326292294 --params "graph_out=(code:farmersworld || code:farmerstoken) && notif:false"