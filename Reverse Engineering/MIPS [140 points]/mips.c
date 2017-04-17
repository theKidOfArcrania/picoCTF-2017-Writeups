int main()
{
    int r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15, r16, r17, r18, r19, r20, r21, r22, r23, r24, r25, r26, r27, r28, r29, r30, r31;
    
    int dd = read_int();
    int aa = dd & 0xff000000;
    bb = dd & 0xff0000;
    cc = dd & 0xff00;
    dd = dd & 0xff;
    
    r3 = aa >>> 24 - 0xAF;
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
        printf("You failed");
    else
        printf("Good job! Submit your input value as the flag.");
}

//aabbccdd
//aa = 0xAF
//bb = 0x51
//cc = 0xBF
//dd = 0x5E
//0xAF51BF5E