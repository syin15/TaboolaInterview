import java.util.Scanner;

public class TaboolaJava {
    public static void main(String args[]){

        String x = "-123";

        int x1 = toInt(x);

        System.out.println(x1);

        String s1 = "Hello World";
        String s2 = "Hello 4 World";

        System.out.println(containsInteger(s1));
        System.out.println(containsInteger(s2));


    }

    //Question 1
    //assumes valid input
    public static int toInt(String s){
        int solution = 0;
        int multiplier = 1;
        for(int i = s.length() - 1; i >= 0; i--){
            if(isDigit(s.charAt(i))){
                solution = multiplier * Character.getNumericValue(s.charAt(i)) + solution;
                multiplier = multiplier * 10;
            }
            else if(s.charAt(i) == '-' && i == 0){
                solution = solution * -1;
            }

        }
        return  solution;
    }


    //Question 2
    public static boolean containsInteger(String s){
        for(int i = 0 ; i < s.length(); i++){
            if(isDigit(s.charAt(i))){
                return true;
            }
        }
        return false;
    }

    public static boolean isDigit(char c){
        if(c == '0' || c == '1' || c == '2' || c == '3' || c == '4'
            || c == '5' || c == '6' || c == '7' || c == '8' || c == '9'){
            return true;
        }
        return false;
    }

}
