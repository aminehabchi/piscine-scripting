import json

class Person:
    def __init__(self, first_name, last_name, age, gender, size, job):
        self.first_name = first_name
        self.last_name = last_name
        self.age = age
        self.gender = gender
        self.size = size 
        self.job = job

    def to_dict(self):
        return {
            "first_name": self.first_name,
            "last_name": self.last_name,
            "age": self.age,
            "gender": self.gender,
            "size": self.size,
            "job": self.job
        }

    def to_json(self):
        return json.dumps(self.__dict__)


def create_person(first_name, last_name, age, gender, size=1.83, job="taxidermist"):
    return Person(first_name, last_name, age, gender, size, job).to_json()


person = create_person("Kevin", "Boulin", 34, "male")
print(person)
