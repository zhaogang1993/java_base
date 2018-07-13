package javamultithread;

public class Subthread2 extends Thread {
	private int iThreadIdx;
	public Subthread2(int iIdx) {
		super();
		this.iThreadIdx = iIdx;
	}
	@Override
	public void run()
	{
		System.out.println("Current thread is : " + iThreadIdx);
	}
}
