import ifs.fnd.service.IfsEncryption;

public class MyDecrypt {
public static void main(String[] args)
throws Exception
{
System.out.println(IfsEncryption.decrypt(args[0]));
}
}
