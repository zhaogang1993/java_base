package javamultithread;

public class Subthread6 extends Thread{
	@Override
	public void run ()
	{
		try 
		{
			System.out.println("Run thread is " + this.currentThread().getName()+ "----begin----");
			Thread.sleep(2000);
			System.out.println(Thread.currentThread().getId());
			System.out.println("Run thread is " + this.currentThread().getName()+ "----end----");
				
		}
		catch(InterruptedException e)
		{
			e.printStackTrace();
		}
		
	}
}
