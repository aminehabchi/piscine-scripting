import json
def merge_two(first_dict):
    while True:
        print("Add a new entry:")
        key = input("key: ")
        if key=="exit":
            break
        value = int(input("value: "))
        first_dict[key]=value
    return json.dumps(first_dict)



