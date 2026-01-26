def clean_list(list):
    if not list:
        return list
    t=False
    
    for i, l in enumerate(list):
        l=l.strip().capitalize()
        if l=="Milk":
            t=True
        list[i]=str(i+1)+" /"+l
    if t==False:
        list.append(f"{len(list)+1}/ Milk")
    return list

