
def do_punishment(a,b,c=0):
    a= a.strip()
    b= b.strip()
    r=""
    for _ in range(c):   
        r=r+f"{a} {b}.\n"
        
    return r

