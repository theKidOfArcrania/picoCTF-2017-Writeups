# Coffee - 115 Points

With the `.class` extension, we realized we are given a java program. Using `javap` we noticed that the class file is named improperly (it should be named `problem.class`). We also found a convenient `get_flag` method to call, so we just created a simple java program that calls it:
```java
public class Test
{
    public static void main(String[] args)
    {
        System.out.println(problem.get_flag());
    }
}
```