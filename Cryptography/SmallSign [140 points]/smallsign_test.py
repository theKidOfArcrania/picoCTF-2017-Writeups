#!/usr/bin/python -u

from Crypto.PublicKey import RSA
import random, signal, socket

HOST = ''
PORT = 47321
sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
sock.bind((HOST, PORT))
sock.listen(1)

while True:
    try:
        conn, addr = sock.accept()
        fsock = conn.makefile()

        key = RSA.generate(2048)
        flag = open("./flag").read()

        fsock.write("You have 60 seconds to forge a signature! Go!\n")
        # In 60 seconds, deliver a SIGALRM and terminate
        signal.alarm(60)

        fsock.write("N: " + str(key.n) + "\n")
        fsock.write("e: " + str(key.e) + "\n")
        fsock.flush()

        while True:
            fsock.write("Enter a number to sign (-1 to stop): ")
            fsock.flush()
            m = int(fsock.readline())
            if m == -1:
                break
            sig = key.sign(m, None)
            fsock.write("Signature: " + str(sig[0]) + "\n")
            fsock.flush()

        challenge = random.randint(0, 2**32)
        fsock.write("Challenge: " + str(challenge) + "\n")
        fsock.write("Enter the signature of the challenge: ")
        fsock.flush()
        s = int(fsock.readline())

        if key.verify(challenge, (s, None)):
            fsock.write("Congrats! Here is the flag: " + flag + "\n")
            fsock.flush()
        else:
            fsock.write("Nope, that's wrong!\n")
            fsock.flush()
    except:
        pass
