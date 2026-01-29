import string

def tokenizer_counter(s):
    s = s.lower()
    s = s.translate(str.maketrans('', '', string.punctuation))
    tokens = s.split()
    
    count_dict = {}
    for token in tokens:
        t = token.strip()
        if t in count_dict:
            count_dict[t] += 1
        else:
            count_dict[t] = 1
            
    return count_dict


