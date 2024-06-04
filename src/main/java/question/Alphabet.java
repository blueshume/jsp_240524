package question;

public class Alphabet {
	private char alpha;
	
	public String process() {
		 StringBuilder result = new StringBuilder();
		char a1='a';
		for (a1 = 'a'; a1 <=alpha; a1++) {
			result.append(a1);
		}
			return result.toString();
	}

	public char getAlpha() {
		return alpha;
	}

	public void setAlpha(char alpha) {
		this.alpha = alpha;
	}
	
}
