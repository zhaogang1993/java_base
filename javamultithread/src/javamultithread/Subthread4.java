package javamultithread;

public class Subthread4 extends Thread {
	private int iCount = 5;
	
	@Override
	//public void run() 
	synchronized public void run()
	{
		super.run();
		iCount--;
		System.out.println("The thread （" + Thread.currentThread().getName() + ") get iCount is : "+ iCount);
	}
}
