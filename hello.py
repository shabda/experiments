import random
import string

def random_word_from_seed(seed, len):
    random.seed(seed)
    letters = string.ascii_lowercase
    return ''.join([random.choice(letters) for i in range(len)])

print random_word_from_seed(1944062, 5) +" "+random_word_from_seed(2068527, 5)