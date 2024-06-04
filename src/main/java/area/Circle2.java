package area;

public class Circle2 {
	double PI=3.14;
	private int radius;
	
	public int getRadius() {
		return radius;
	}
	public void setRadius(int radius) {
		this.radius = radius;
	}

	public double process(int i) {
		return PI*i*i;
	}
}
