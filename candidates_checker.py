import sys

try:
    n = int(sys.argv[1])
except IndexError:
    print("Error: missing number of candidates")
    exit(1)
except ValueError:
    print("Error: argument must be an integer")
    exit(1)


result=""

for i in range(n):
    print("Add a new candidate:")
    name = input("name: ")
    age = int(input("age: "))
    if age<18:
        result =result + f"{name} is not eligible (underaged)\n"
    elif age>60:
        result =result + f"{name} is not eligible (over the legal age)\n"
    else:
        result =result + f"{name} is eligible\n"


print(result)