# Much Ado About Hacking - 165 Points

In a lonely file, you find [prose](https://webshell2017.picoctf.com/static/8b806b3633e60da66054032980c37301/MuchAdoAboutHacking.spl) written in an interesting style. What is this Shakespearean play? What does it have to say? How could one get it to produce this [ending](https://webshell2017.picoctf.com/static/8b806b3633e60da66054032980c37301/ending.txt)

Hints:
- Some would say that Shakespearean english is an... esoteric language
- I swear that this play compiles. However, there are different versions of the shakespeare language. If you get errors when you run spl2c   on MuchAdoAboutHacking, then you need to use a different version of the language. There is a fixed version of the language here:           https://stackoverflow.com/questions/1948372/compiling-and-executing-the-shakespeare-programming-language-translator-spl2c-on

## Write-Up

Initially, the mention of the esoteric language made me look up the "Shakesperare Programming Language"
After doing so, I found this very helpful guide right [here](http://shakespearelang.sourceforge.net/report/shakespeare.pdf)

Based on the information in the guide, I translated the SPL into a Java file so that I could better understand it.
```java
import java.io.*;
import java.util.*;

public class MuchAdoAboutHacking{
	
	static Character benedick = new Character();
	static Character beatrice = new Character();
	static Character donPedro = new Character();
	static Character donJohn = new Character();
	static Character achilles = new Character();
	static Character cleopatra = new Character();
	static String input;
	static int currIndexInput = 0;
	static String output = "";
	
	public static void main(String[] args) throws IOException{
		Scanner in = new Scanner(System.in);
		PrintWriter out = new PrintWriter(new BufferedWriter(new FileWriter("MuchAdoAboutHacking.out")));
		input = in.nextLine();
		scene1();
		
		out.println(input);
		out.println(output);
		in.close();
		out.close();
	}
	
	public static void scene1(){
		donJohn.val = 0;
		donPedro.val = 0;
		achilles.val = 32;
		cleopatra.val = 96;
		benedick.val = 0;
		
		scene2();
	}
	
	public static void scene2(){
		benedick.val = (int)(input.charAt(currIndexInput));
		currIndexInput++;
		benedick.stack.push(benedick.val);
		beatrice.val = beatrice.val + 1;
    
		if(benedick.val != 32){
			scene2();
		}
		else{
		  beatrice.val = beatrice.val - 1;
		  benedick.val = benedick.stack.pop();
		
		  scene3();
		}
	}
	
	public static void scene3(){
		benedick.val = benedick.stack.pop();
		benedick.val = benedick.val - achilles.val; //Subtract 32
		beatrice.val = beatrice.val - 1;
		donJohn.val = benedick.val; //Store 
		benedick.val = benedick.val + donPedro.val; //Add prev - 32
		benedick.val = benedick.val % cleopatra.val; //mod 96
		donPedro.val = donJohn.val; //Store new as prev
		
		benedick.val = benedick.val + achilles.val; //Add 32
		output += (char)benedick.val; //Print
		
		if(beatrice.val > 0)
			scene3();
	}
	
	static class Character{
		public int val;
		public Stack<Integer> stack;
		
		public Character(){
			val = 0;
			stack = new Stack<>();
		}
	}
}
```

Essentially, what the program is doing is that it takes up all the input and pushes it onto benedick's (One of the characters) stack until a space character (ASCII Value 32) is encountered. 
In the final scene, it prints the input values backward offset the previous input character printed by first subtracting 32 from the original value, storing it, adding the previous printed value - 32, modding the result by 96 and adding 32 again to get the final character needed to print.

After understanding how the code worked, I began to look at the String given to determine how I could produce it from the program: "tu1|\h+&g\OP7@% :BH7M6m3g="
I created a Solver program to automate this process by inputting the desired String to be find.

```java
import java.io.*;
import java.util.*;

public class MuchAdoAboutHackingSolver {
	
	public static void main(String[] args) throws IOException{
		Scanner in = new Scanner(System.in);
		PrintWriter out = new PrintWriter(new BufferedWriter(new FileWriter("MuchAdoAboutHackingSolver.out")));
		String input = in.nextLine();
		StringBuilder ans = new StringBuilder(" ");
		int temp = 0;

		while(!input.isEmpty()){
			int test = input.charAt(0) - 32;
			test -= temp;
			if(test <= 0)
				test += 96;
			ans.append((char)(test + 32));
			temp = test;
			input = input.substring(1);
		}
		String finAns = ans.reverse().toString();
		out.println(finAns);
    
		in.close();
		out.close();
	}
}
```
Inputting "tu1|\h+&g\OP7@% :BH7M6m3g=" into the program above yielded the final answer: Its@MidSuMm3rNights3xpl0!t  ,which is the flag!



