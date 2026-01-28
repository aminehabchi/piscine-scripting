def day_from_number(day_number):
    days = {
        1: "Monday",
        2: "Tuesday",
        3: "Wednesday",
        4: "Thursday",
        5: "Friday",
        6: "Saturday",
        7: "Sunday"
    }

    if isinstance(day_number, int):
        return days.get(day_number)

    return None


def day_to_number(day):
    if not isinstance(day, str):
        return None

    day = day.strip().capitalize()

    days = {
        "Monday": 1,
        "Tuesday": 2,
        "Wednesday": 3,
        "Thursday": 4,
        "Friday": 5,
        "Saturday": 6,
        "Sunday": 7
    }

    return days.get(day)
