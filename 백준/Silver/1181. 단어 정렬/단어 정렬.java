import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.*;

public class Main {

    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        int n = Integer.parseInt(br.readLine()), i;

        List<String> list = new ArrayList<>();

        for (i = 0; i < n; i++) {
            list.add(br.readLine());
        }

        Set<String> stringSet = new HashSet<>(list);

        List<String> newList = new ArrayList<>(stringSet);

        Collections.sort(newList);

        for (i = 0; i < 51; i++) {
            for (String j : newList) {
                if (j.length() == i) {
                    System.out.println(j);
                }
            }
        }
    }

}