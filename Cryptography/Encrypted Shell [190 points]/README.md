# Encrypted Shell - 190 Points
[This service](https://webshell2017.picoctf.com/static/4076c4d3e5392f023dbf2fc9b8481aaf/dhshell.py) gives a shell, but it's password protected! We were able intercept [this encrypted traffic](https://webshell2017.picoctf.com/static/4076c4d3e5392f023dbf2fc9b8481aaf/traffic.pcap) which may contain a successful password authentication. Can you get shell access and read the contents of `flag.txt`?
The service is running at shell2017.picoctf.com:22071

## Writeup
This was a very interesting Diffie-Hellman! As a brief intro to Diffie-Hellman, its basically an exchange protocol, which can be utilized between the web-server and your web-client so that a secure connection can be established. The reason why this can be exploited is because the server only generates a secret value of size up to 2\*\*48, which is solvable in O(sqrt(N)) time. Using the baby-step-giant-step algorithm. Basically, we divided our range of possible values (1 to 2\*\*48) into equal segments of intervals `sqrt(2**48)`, and then we calculate the values of each interva, which are the "leaps". Then we go back and take our `A` value and repeatedly multiply `g` until we get a value from one of the intervals. Here's the script I used for cracking it (I used `click` library to show a beautiful progress bar so that I know how long it will take :D).
```python
import click

p = 174807157365465092731323561678522236549173502913317875393564963123330281052524687450754910240009920154525635325209526987433833785499384204819179549544106498491589834195860008906875039418684191252537604123129659746721614402346449135195832955793815709136053198207712511838753919608894095907732099313139446299843
g = 41899070570517490692126143234857256603477072005476801644745865627893958675820606802876173648371028044404957307185876963051595214534530501331532626624926034521316281025445575243636197258111995884364277423716373007329751928366973332463469104730271236078593527144954324116802080620822212777139186990364810367977
A = 118273972112639120186970068947944724773714770611796145560317038505039351377800437911584090954295445815108415228076067419564334318734103894856428799576147989726840111816497674618324630523684004675727128364154281009934628997112127793757633331795515579928803348552388657916707518365689221161578522942036857923828

leaps = {}
print("Making the leaps...")
MAX = 2**24
with click.progressbar(range(MAX)) as bar:
  for i in bar:
    exp = (i+1)*MAX
    leaps[pow(g, exp, p)] = exp

print("Finding a...")
val = A
with click.progressbar(range(MAX + 1)) as bar:
  for off in bar:
    if val in leaps:
      res = leaps[val] - off
      break
    val = (g * val) % p
print("a:", res)
```

## Helpful Resources
[https://math.berkeley.edu/~sagrawal/su14_math55/notes_shank.pdf](https://math.berkeley.edu/~sagrawal/su14_math55/notes_shank.pdf)