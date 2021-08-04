import json

data = json.loads('{ "a": 1, "b": 2 }')
print(data["a"] + data["b"])
