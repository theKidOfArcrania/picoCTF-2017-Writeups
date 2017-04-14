# SmallSign - 140 points
This service outputs a flag if you can forge an RSA signature! `nc shell2017.picoctf.com 47321` 

[smallsign.py](https://webshell2017.picoctf.com/static/e0e18a4a4078e0969b16d9a01f20ff97/smallsign.py)

## Write-up
At first you might think what good could you do with getting a service to write a bunch of RSA signatures... after all, it would take forever to brute force all 2\*\*32 combinations. However, because RSA is *multiplicative* we could actually generate a small (incomplete) list of mappings that are *primes*. Although we might have to run the simulation multiple times, we are relatively likely to come up with a number that can be prime factorized into small primes. For example, `5450004` is big number, but its prime factorization is just 2<sup>2</sup> • 3<sup>7</sup> • 7 • 89, which means to generate the signature for `545004`, we just need 2, 3, 7, and 89. To combine it into the signature, we just simply multiply all these numbers together with its exponents, and we obtained the signature! Sadly, we weren't able to utlize the full 60 seconds offered, because the server had a cap on the number of signatures it would give, so we required a few more iterations of this. Here's a python script that trys to repeatedly find a number that works:
```python
import subprocess, click
from subprocess import Popen, PIPE

def prime_factors(primes, n):
  i = 0
  p = primes[i]
  factors = []
  while p * p <= n:
    if n % primes[i]:
      i += 1
      if i >= len(primes):
        return None
      p = primes[i]
    else:
      n //= p
      factors.append(p)
  if n > 1:
    factors.append(n)
  if (n > primes[len(primes) - 1]):
    return None
  return factors

def readInt(stdin, head):
  index = -1
  while index == -1:
    try:
      line = stdin.readline()
      index = line.index(head)
    except:
      index = -1
    if index == -1:
      if (line == ""):
        quit()
      print(line)
  return int(line[index+len(head):])

def primes_sieve1(limit):
  limitn = limit+1
  primes = dict()
  for i in range(2, limitn): 
    primes[i] = True

  for i in primes:
    factors = range(i,limitn, i)
    for f in factors[1:]:
      primes[f] = False
  return [i for i in primes if primes[i]==True]

raw = primes_sieve1(5000)
def getFlag():
  print("Opening shell2017.picoctf.com...")
  proc = Popen("/bin/nc 0 47321", shell=True, stdin=PIPE, stdout=PIPE)
  
  N = readInt(proc.stdout, "N: ")
  e = readInt(proc.stdout, "e: ")

  print("Polling primes...")
  signed = {}
  for pri in raw:
    proc.stdin.write(str(pri) + "\n");
  proc.stdin.flush()
  with click.progressbar(raw) as bar:
    for pri in bar:
      sig = readInt(proc.stdout, "Signature: ")
      signed[pow(sig, e, N)] = sig
  proc.stdin.write("-1\n")
  proc.stdin.flush()
  
  print("\nDecyphering challenge...")
  challenge = readInt(proc.stdout, "Challenge: ")
  pfs = prime_factors(raw, challenge)
  if pfs == None:
    print ("Failed...\n");
    return None
  
  cur = 1
  for prime in pfs:
    cur = (cur * signed[prime]) % N
  proc.stdin.write(str(cur) + "\n")
  proc.stdin.flush()
  
  
  print(proc.stdout.readline())
  flag = proc.stdout.readline();
  return flag

while True:
  flag = getFlag()
  if flag != None:
    print(flag)
    quit()
```
