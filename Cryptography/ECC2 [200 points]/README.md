# ECC2 - 200 points

More elliptic curve cryptography fun for everyone!

Elliptic Curve: y^2 = x^3 + A*x + B mod M

M = 93556643250795678718734474880013829509320385402690660619699653921022012489089

A = 66001598144012865876674115570268990806314506711104521036747533612798434904785

B = *You can figure this out with the point below :)*

P = (56027910981442853390816693056740903416379421186644480759538594137486160388926, 65533262933617146434438829354623658858649726233622196512439589744498050226926)

n = *SECRET*

n*P = (79745356646949069441279781387743208137742538544495675881933883371885177103895, 34529309219406689418881493671300037164559702076524725195399995669560101677178)

n < 400000000000000000000000000000

Find n.

## Write-up 

First we should calculate B using the point they've given, by essentially plugging in the point they've given. 

```python
B = (P[1]**2 - P[0]**3 - A*P[0]) % M
B = 25255205054024371783896605039267101837972419055969636393425590261926131199030
```

After that we've got the full form of the equation. 

The values of A and B as well as the points are far too large to manually compute the discrete log. 

First, I tried to determine whether the curve was anomolous or not (M == E.order)

```python
F = GF(M)
E = EllipticCurve(F, [A,B])
print(E.order())
```
The order was not the same!

In order to crack this I utilized Pohlig-Hellman. The order of the curve yielded a composite number susceptible to such an attack utilizing the chinese remainder theorem. 

```python
F = GF(M)
E = EllipticCurve(F, [A,B])
print(factor(E.order()))
2^2 * 3 * 5 * 7 * 137 * 593 * 24337 * 25589 * 3637793 * 5733569 * 106831998530025000830453 * 1975901744727669147699767
```

The chinese remainder theorem and Pohlig-Hellman can be learnt from [here](https://koclab.cs.ucsb.edu/teaching/ecc/project/2015Projects/Sommerseth+Hoeiland.pdf).

I quickly ran into timing issues (and piazza confirmed it shouldn't take too long to actually solve)

This led to setting up the bounds for the big step small step algorithm used to calculate the discrete logs of the subproblems generated from the produced primes (this was done because we were given a value n that would be the maximum possible answer, and therefore we didn't need to search exhaustively). 
The final answer can be computed using the chinese remainder theorem on all the congruencies found for each of the prime factor groups.

The final code can be found [here](https://github.com/theKidOfArcrania/picoCTF-2017-Writeups/blob/master/Cryptography/ECC2%20%5B200%20points%5D/pohlig.sage)



