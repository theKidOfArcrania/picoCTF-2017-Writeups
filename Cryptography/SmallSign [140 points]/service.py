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