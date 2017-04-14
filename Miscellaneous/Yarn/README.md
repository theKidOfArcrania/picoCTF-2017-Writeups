# Yarn - 55 Points

I was told to use the linux strings command on [yarn](https://webshell2017.picoctf.com/static/9adb6ebf01d8755201564dba69bc1a92/yarn), but it doesn't work. Can you help? I lost the flag in the binary somewhere, and would like it back

**Hint:** 
What does the strings command use to determine if something is a string?
Is there an option to change the length of what strings considers as valid?

## Writeup

In linux, the `strings` command searches through a binary file for printable strings and displays anything it finds. By default, it considers a string of characters at least 4 characters long to be a valid string. However, just running the command `strings yarn` does not find anything particularly useful. Instead, I ran `strings -n 3 yarn`, which changes the minimum length of a valid string to 3 characters and prints out (among other things):
```
Sub
mit
_me
_fo
r_I
_am
_th
e_f
lag
```

## Helpful Resources

Typing `man <command>` in the terminal explains how to use that command.