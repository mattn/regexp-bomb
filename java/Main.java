import java.util.regex.*;

public class Main {
    public static void main(String[] args) {
        Pattern pattern = Pattern.compile("(a+)*b$");
        long start = System.nanoTime();
        Matcher matcher = pattern.matcher("aaaaaaaaaaaaaaaaaaaaaaaaaaaaaba");
        boolean result = matcher.find();
        long elapsed = System.nanoTime() - start;
        System.out.println("result: " + result);
        System.out.printf("elapsed: %.6fs%n", elapsed / 1e9);
    }
}
