import json

class User:
    username = "user"
    email = "something@mail.com"

def create_new_user(json_str):
    try:
        data = json.loads(json_str)
        if "username" in data and "email" in data:
            user = User()
            user.username = data["username"]
            user.email = data["email"]
            return user
        else:
            return User()
    except json.JSONDecodeError:
        return User()

def user_to_json(user):
    user_dict = user.__dict__
    return json.dumps(user_dict)
