package question;

public class Array4 {
	private int num;

	public static boolean exists(int a[], int from, int r) {
		for (int i = 0; i < from; i++) {
			if (a[i] == r) {
				return true;
			}
		}
		return false;
	}
	
	public String process(int num) {
		int array[]=new int [num];
		StringBuffer strBuf=new StringBuffer();
		
		for (int i = 0; i < array.length; i++) {
//			array[i] = (int)(Math.random()*100+1);
			int r = (int)(Math.random()*100+1);
			
			if (exists(array, i, r)) {
				i--;
				continue;
			}
			array[i] = r;
		}
		
		for (int i = 0; i < array.length; i++) {
			if (i==0) {
				strBuf.append(array[i]+" ");
			}else {
				if (i%10==0) {
					strBuf.append("<br>");
				}
				strBuf.append(array[i]+" ");
			}
		}
		
		return strBuf.toString();
	}
	
	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}
	
}
