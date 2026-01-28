import sys


if len(sys.argv) != 2:
    print("Error: wrong number of arguments")
    exit(1)


n = int(sys.argv[1])

result = ""

for i in range(n):
    print("Add a new candidate:")
    name = input("name: ")
    age = int(input("age: "))
    if age < 18:
        result += f"{name} is not eligible (underaged)\n"
    elif age > 60:
        result += f"{name} is not eligible (over the legal age)\n"
    else:
        result += f"{name} is eligible\n"


if result != "":
    result = result[:-1]

print(result)
