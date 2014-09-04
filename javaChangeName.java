package teachercodes;

import java.util.Scanner;

public class test {

	 
	public static void main(String[] args) {
		  Scanner enter = new Scanner(System.in);
		//System.out.println("Enter a sentence and watch the magic");
		
		String a = "hello My ,name is bruce wayne"; //enter.nextLine();
		String b;
		char c = a.charAt(0);
		if(c>96){ 
			
		c = (char)(c-32);
		}
		if(c=='a' || c==','){
			c= ' ';
		}
		//System.out.println(c);
		
		a = a.replace(a.charAt(0),' ');
		
	    a = a.replaceAll("a", "");
	b=a.replaceAll(",", "");
		System.out.println(c + changeString(b));
 
	}
 
	public static String changeString(String s) {
		String sentence = "";
		for(int i=1; i<s.length(); i++){
			if (s.charAt(i) == ' '){
				
				sentence += " " + Character.toString(s.charAt(i+1)).toUpperCase();
				i++;
			}
			else{
				sentence += s.charAt(i);
			}
		}
		
		return sentence;
	}
}
