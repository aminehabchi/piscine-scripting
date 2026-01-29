



def create_person(first_name, last_name, age=None, gender=None, *, size=1.83, job="taxidermist"):    return {
        "first_name": first_name,
        "last_name": last_name,
        "age": age,
        "gender": gender,
        "size": size,
        "job": job
    }

person = create_person("Kevin", "Boulin", age=34, gender="male")
print(person)

a = create_person("Jane", "Doe", size=1.75, job="programmer")
print(a)