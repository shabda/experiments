# http://stackoverflow.com/questions/29481088/how-can-i-tell-if-a-string-repeats-itself-in-python

import unittest

def has_repeated_substring(the_string):
    len_str = len(the_string)
    for i in range(1, len_str):
        if len_str % i == 0:
            if the_string[i:]+the_string[:i] == the_string:
                chunk_len = len_str/i
                chunks = [the_string[j*i:(j+1)*i] for j in range(len_str//i)]
                if len(set(chunks))==1:
                    return True
    return False

class TestHasRepatedSubsting(unittest.TestCase):
    def test_valid(self):
        valid_values = [
            '0045662100456621004566210045662100456621',             # '00456621'
            '0072992700729927007299270072992700729927',             # '00729927'
            '001443001443001443001443001443001443001443',           # '001443'
            '037037037037037037037037037037037037037037037',        # '037'
            '047619047619047619047619047619047619047619',           # '047619'
            '002457002457002457002457002457002457002457',           # '002457'
            '001221001221001221001221001221001221001221',           # '001221'
            '001230012300123001230012300123001230012300123',        # '00123'
            '0013947001394700139470013947001394700139470013947',    # '0013947'
            '001001001001001001001001001001001001001001001001001',  # '001'
            '001406469760900140646976090014064697609',              # '0014064697609'
        ]
        for el in valid_values:
            self.assertTrue(has_repeated_substring(el))

    def test_invalid(self):
        invalid_value = [
            '004608294930875576036866359447',
            '00469483568075117370892018779342723',
            '004739336492890995260663507109',
            '001508295625942684766214177978883861236802413273',
            '007518796992481203',
            '0071942446043165467625899280575539568345323741',
            '0434782608695652173913',
            '0344827586206896551724137931',
            '002481389578163771712158808933',
            '002932551319648093841642228739',
            '0035587188612099644128113879',
            '003484320557491289198606271777',
            '00115074798619102416570771',
        ]
        for el in invalid_value:
            self.assertFalse(has_repeated_substring(el))

if __name__ == '__main__':
    unittest.main()
