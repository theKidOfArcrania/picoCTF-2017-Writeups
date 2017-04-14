# My First SQL - 50 Points

I really need access to [website](http://shell2017.picoctf.com:52085/), but I forgot my password and there is no reset. Can you help?

**Hint:** Have you heard about SQL injection?

## Write Up

Since this was the first SQL Injection problem and was only worth 50 points, I knew that the site was likely to be susceptile to the most basic of injections. Typing `' or 1=1 --` into the username field quicky bypasses the login form and produces the flag.

Why does this work?

SQL login queries typically take the format `SELECT * FROM users WHERE username='<insert username>' AND password='<insert password>'`. By submitting `' or 1=1 --`, we effectively do the following:
* First, the `'` closes the query's quotes so that we can insert our own query
* Next, `or 1=1` evaluates a statement that will always be true (1=1) so that the query itself is always true
* Finally, we use `--` to comment out the rest of the query

After submitting the form the query ultimately looks like this:
`SELECT * FROM users WHERE username='' or 1=1 -- AND password='<insert password>'`

## Helpful Resources

[https://www.w3schools.com/sql/sql_injection.asp](https://www.w3schools.com/sql/sql_injection.asp)