1. Players use DKG to create a shared public key for an ElGamal cryptosystem where they each have equally-important pieces of the private key.
2. Players chose random numbers and provide cryptographic commitments
and encryptions to those numbers.
3. Players then use the homomorphic properties of the encryption to sum
the numbers without revealing them.
4. Players do the necessary verification and collision checking.
5. If everything so far has been successful, players can selectively reveal their
initial random seeds to others depending on if the randomness needs to
be disclosed publicly or to a subset of players.