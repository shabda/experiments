import random
import string


def search_seed_for_word(word):
    letters = string.ascii_lowercase
    for i in range(0, 100000000):
        random.seed(i)
        rand_letters = []
        for j, letter in enumerate(word):
            rand_letter = random.choice(letters)
            rand_letters.append(rand_letter)
            if not rand_letter==letter:
                continue
        if ''.join(rand_letters) == word:
            return i
        print ''.join(rand_letters)




print search_seed_for_word('hello')

