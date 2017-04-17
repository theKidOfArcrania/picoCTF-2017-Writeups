# MIPS - 140 Points

The modern renaissance man knows of many things, ranging from cyber security, to architecture. Can you prove that you're more than just a computer whiz? [mips](https://webshell2017.picoctf.com/static/f83ac6195e2dd98f86d61047ca92f560/mips.txt). Enter the flag as a hexadecimal number, prefixed by 0x.

## Write-Up
This flavor of assembly at first glance looks nothing like x86 architecture that is familiar, but then in the end except for a *few* differences, it works just like ole x86 architecture. One difference to note there are way more registers (32 to be exact) in MIPS because they not only use registers for basic arithmetic, but they also use it to pass certain arguments. These registers could be referred by numbers (0 to 31) or by its symbolic mnemonic. 

Another interesting to note is that they utilize **delayed branch slots**, which refers to the fact that as the processor is waiting to read/write from memory, they would be able to execute the next instruction slot, so that they don't waste time waiting on slower RAM to respond. As a side note, using SPIM (a MIPS simulator) you would have to make sure to enable the option delayed branch slots, as hinted by the hint.

With **delayed branch slots** taken into mind, I converted the MIPS assembly into the synonymous C code: (from this on forward I will only refer to the C code. If you have trouble reading the MIPS assembly, look up the links in the helpful references as a guide). Here's the [decompiled source](https://github.com/theKidOfArcrania/picoCTF-2017-Writeups/blob/master/Reverse%20Engineering%2FMIPS%20%5B140%20points%5D%2Fmips.c) on a separate file.
```c
int main()
{
    int r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15, r16, r17, r18, r19, r20, r21, r22, r23, r24, r25, r26, r27, r28, r29, r30, r31;
    
    int dd = read_int();
    int aa = dd & 0xff000000;
    bb = dd & 0xff0000;
    cc = dd & 0xff00;
    dd = dd & 0xff;
    
    r3 = (aa >>> 24) - 0xAF;
    r5 = r3 << 24;
    
    bb >>>= 16;
    r3 = (bb - 0x51) * 0xBF;
    r3 <<= 16;
    
    if (cc >>> 8 != dd * 2 + 3)
        r2 = 0xA500;
    else
        r2 = 0;
    
    aa >>= 24;
    r3 += r5 + r2;
    if (dd - aa + bb + r3 == 0)
        printf("Good job! Submit your input value as the flag.");
    else
    	printf("You failed");
}
```

From this point on I will walk through the steps to solving this puzzle. (Note that the numbers might be different for some teams).

To solve this MIPS puzzle, we first have to notice that we read an integer (32 bit) from the user. Then this gets 32 bit integer gets divided into 8 bit segments (`aa`, `bb`, `cc`, `dd`). We essentially have 4 byte integers that we solve like a puzzle and the final answer combines these 4 integers into one number like so: `aabbccdd`.

The first value we can get is `aa`. We see the following:
```c
r3 = (aa >>> 24) - 0xAF;
r5 = r3 << 24;
```
We could deduce that `aa` must be `0xAF`, since otherwise, the value of `r5` would then make the later condition
```c
r3 += r5 + r2;
if (dd - aa + bb + r3 == 0)
```
equate to zero. Therefore `aa` is `0xAF`.

The next value we could solve is `bb`. We see that in the statements:
```c
r3 = (bb - 0x51) * 0xBF;
r3 <<= 16;
```
`r3` must equate to zero, again, otherwise, it would be difficult to make it succeed. Therefore `bb` is `0x51`.

Then we see that in the statement:
```c
if (cc >>> 8 != dd * 2 + 3)
    r2 = 0xA500;
else
    r2 = 0;
```
`r2` should equal to zero. So therefore `cc >>> 8 == dd * 2 + 3` must be `true`. At this moment we don't know `cc` and `dd` so we will skip this condition. However if we look at the condition:
```c
r3 += r5 + r2;
if (dd - aa + bb + r3 == 0)
```
We could actually figure out what `dd` is. Since previously we concluded `r5`, `r2`, and `r3` must be zero, the first statement above doesn't actually do anything useful. Henceforth, the condition `dd - aa + bb + r3 == 0` can be simpified to `dd - aa + bb == 0`. We simply plug in values of `aa` and `bb` and solve for `dd`. `dd` happens to be `0x5E`. This leaves us with one condition we skipped over: `cc >>> 8 != dd * 2 + 3`. We ignore the bit shift (since that just turns cc into a byte integer). So we just figure out plug in `dd` into the expression `cc = dd * 2 + 3` and figure out `cc` is `0xBF`. When we combine all 4 byte integers in the form `aabbccdd` we get this integer: `0xAF51BF5E`. QED!


## Helpful References
[http://www.cs.uwm.edu/classes/cs315/Bacon/Lecture/HTML/ch05.html](http://www.cs.uwm.edu/classes/cs315/Bacon/Lecture/HTML/ch05.html)

[http://www.cs.umd.edu/~meesh/cmsc311/clin-cmsc311/Lectures/lecture15/C_code.pdf](http://www.cs.umd.edu/~meesh/cmsc311/clin-cmsc311/Lectures/lecture15/C_code.pdf)

[http://spimsimulator.sourceforge.net](http://spimsimulator.sourceforge.net/)