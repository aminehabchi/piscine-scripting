text = "This is a test sentence. It has multiple punctuation marks!"


import re

def tokenize(sentence):
    cleaned = re.sub(r"[^A-Za-z0-9]+", " ", sentence)
    cleaned= cleaned.lower()
    words = cleaned.split()
        
    return words


