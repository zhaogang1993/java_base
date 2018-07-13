package javamultithread;

public class Subthread5 extends Thread{
	public Subthread5() {
		System.out.println("The constructor is running : " + Thread.currentThread().getName());
	}
	@Override
	public void run()
	{
		System.out.println("The run method : " + Thread.currentThread().getName());
	}
}
