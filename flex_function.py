


def create_person(first_name, last_name, age, gender, size=1.83, job="taxidermist"):
    d = dict()
    d["first_name"] = first_name
    d["last_name"] = last_name
    d["age"] = age
    d["gender"] = gender
    d["size"] = size
    d["job"] = job
    return d


person = create_person("Kevin", "Boulin", 34, "male")
print(person)