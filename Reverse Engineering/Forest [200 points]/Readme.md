# Forest - 200 Points
I was wandering the [forest](https://webshell2017.picoctf.com/static/ba7a70f5eb777d2387701bfd5d4cabdd/forest) and found a file. It came with some [string](https://webshell2017.picoctf.com/static/ba7a70f5eb777d2387701bfd5d4cabdd/string.txt).

## Write-Up
After disassembling `forest` using `objdump -s -d -x forest`, I realized this basically implemented a binary search tree. It added all the lowercase alphabets plus the underscore into a binary search tree in a scrambled order. The string file that was given supplied a series of paths from the root of the binary search tree down its child nodes. It specified an `L` to go left (characters lower in the alphabet), `R` for right (character higher in the alphabet), and `D` when we were done with the path. This series of paths would then spell out your password or flag a letter at a time. 

Here's the [decompiled source](https://github.com/theKidOfArcrania/picoCTF-2017-Writeups/blob/master/Reverse%20Engineering%2FForest%20%5B200%20points%5D%2Fforest.c). Once, I disassembled the code, I wrote a simple java program that created the binary tree and followed the paths:
```java
public class Forest
{
	public static class Node {
		private Node left = null;
		private Node right = null;
		private char c;
		
		public Node(char c)
		{
			this.c = c;
		}
		
		public static Node add(Node parent, char item)
		{
			if (parent == null)
				return new Node(item);
			if (item <= parent.c)
				parent.left = add(parent.left, item);
			else
				parent.right = add(parent.right, item);
			return parent;
		}
	}
	
	public static void main(String[] args)
	{
		Node root = null;
		String list = "yuoteavpxqgrlsdhwfjkzi_cmbn";
		
		for (char c : list.toCharArray())
			root = Node.add(root, c);
		
		Node visit = root;
		String path = "DLLDLDLLLLLDLLLLRLDLLDLDLLLRRDLLLLRDLLLLLDLLRLRRRDLLLDLLLDLLLLLDLLRDLLLRRLDLLLDLLLLLDLLLRLDLLDLLRLRRDLLLDLLRLRRRDLLRDLLLLLDLLLRLDLLDLLRLRRDLLLLLDLLRDLLLRRLDLLLDLLLLLDLLRDLLRLRRDLLLDLLLDLLRLRRRDLLLLLDLLLLRLDLLLRRLRRDDLLLRRDLLLRRLRDLLLRLDLRRDDLLLRLDLLLRRRDLLRLRRRDLRRLD";
		for (char p : path.toCharArray())
		{
			switch(p)
			{
			case 'D':
				System.out.print(visit.c);
				visit = root;
				break;
			case 'L':
				visit = visit.left;
				break;
			case 'R':
				visit = visit.right;
			}
		}
	}
}
```