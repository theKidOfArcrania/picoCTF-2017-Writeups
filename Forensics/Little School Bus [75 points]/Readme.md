# Little School Bus - 75 Points
Can you help me find the data in this [littleschoolbus.bmp](https://webshell2017.picoctf.com/static/a08a97410634f3250e9659a1793a8908/littleschoolbus.bmp)?

## Writeup
To get the flag, we would just have to obtain the least significant bits of the image data. Note: IMAGE DATA. You shouldn't include the bits from the image header (in this case, it is 54 bytes). Here's the Java code to do that:
```java
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;

public class LittleSchoolBus
{
	
	public static void main(String[] args) throws IOException
	{
		File f = new File("littleschoolbus.bmp");
		try (BufferedInputStream bis = new BufferedInputStream(new FileInputStream(f)))
		{
			System.out.println((bis.available() - 54) % 8);
			byte[] data = new byte[(bis.available() - 54) / 8];
			
			bis.skip(54); //Skip bitmap header.
			
			int i = 0;
			byte[] byteSeg = new byte[8]; //8 bits makes up a byte
			while (bis.read(byteSeg) == byteSeg.length)
			{
                //Collect LSBs into one byte
				byte b = 0;
				for (byte bit : byteSeg)
				{
					b <<= 1;
					b |= bit & 1;
				}
				data[i++] = b;
			}
			System.out.println(new String(data));
		}
	}
}
```
