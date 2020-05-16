all: json

json: render/json-extensions render/json-categories
	./render/json-extensions > pub/extensions.json
	./render/json-categories > pub/categories.json
