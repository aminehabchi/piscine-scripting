import datetime as dt

def to_do(tasks: list[tuple[dt.date, str]]) -> None:
    with open("output.txt", "w") as f:
        for date_obj, task in tasks:
            d = date_obj.strftime("%A %d %B %Y")
            f.write(f"{d}: {task}\n")
            
to_do_list = [
    (dt.date(2022, 6, 1), "fix the seat"),
    (dt.date(2022, 6, 2), "take the trash"),
]
to_do(to_do_list)