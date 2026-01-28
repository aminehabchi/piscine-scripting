
def merge_two(first_dict):
    while True:
        key = input("key: ")
        if key=="exit":
            break
        value = int(input("value: "))
        first_dict[key]=value
    return first_dict



