import random
from elgamal.elgamal import Elgamal

def create_random_number(n) -> int:
    return random.randint(1, n)


def encrypt_message(message: int) -> int:
    pb, pv = Elgamal.newkeys(128)

    cypher_text = Elgamal.encrypt(message, pb)
    return cypher_text



if __name__ == '__main__':
    print('Starting settle script')
    n = create_random_number(52)