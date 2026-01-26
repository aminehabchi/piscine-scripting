def clean_list(items):
    if not items:  
        items = []

    t = False

    for i, item in enumerate(items):
        item = item.strip().capitalize()  
        if item == "Milk":
            t = True
        items[i] = f"{i+1}/ {item}"  

    if not t:
        items.append(f"{len(items)+1}/ Milk") 

    return items
