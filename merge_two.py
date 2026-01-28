
def merge_two(first_dict):
    while True:
        print("Add a new entry:")
        key = input("key: ")
        if key=="exit":
            break
        value = int(input("value: "))
        first_dict[key]=value
    return first_dict



first = {
    "Bob": 36,
    "Louise": 23,
    "Lea": 34
}

print(merge_two(first))