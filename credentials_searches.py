import json
import os

def credentials_search():
    input_file = "logs.json"
    output_file = "credentials.json"

    try:
        with open(input_file, "r") as f:
            data = json.load(f) 
    except (json.JSONDecodeError, FileNotFoundError):
        return  

    found_credentials = {}

    def search_keys(obj):
        if isinstance(obj, dict):
            for k, v in obj.items():
                if k in ("password", "secret"):
                    found_credentials[k] = v
                else:
                    search_keys(v)
        elif isinstance(obj, list):
            for item in obj:
                search_keys(item)

    search_keys(data)

    if found_credentials:
        with open(output_file, "w") as f:
            json.dump(found_credentials, f, indent=4)
