package javamultithread;

public class ThreadMain {
	private static int iIdx;
	public static void main(String[] args)
	{
		System.out.println(Thread.currentThread().getName());
		
		Subthread1 cSubthread1 = new Subthread1();
		cSubthread1.setName("SubThread");
		cSubthread1.start();
		System.out.println("Main thread");
		
		try {
			for (iIdx = 0; iIdx < 10; ++iIdx)
			{
				int iTime = (int) (Math.random()*1000);
				Thread.sleep(iTime);
				System.out.println("Running is : " + Thread.currentThread().getName());
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		/* 测试start顺序 */
		for (iIdx = 0; iIdx < 10; iIdx++) {
			Subthread2 cTemp= new Subthread2(iIdx);
			cTemp.start();
		}

		/* subthread3 */
		Runnable cRunnable = new Subthread3();
		cRunnable.run();
		System.out.println("This is main thread");
	
		/* 测试并发 */
		Subthread4 cSubthread4 = new Subthread4();
		Thread cThread = null;
		for (iIdx = 0; iIdx < 10; ++iIdx)
		{
			cThread = new Thread(cSubthread4, "" + iIdx);
			cThread.start();
		}
		
		/* 测试线程上下文 */
		Subthread5 cSubthread5 = new Subthread5();
		System.out.println("Thread's status : " + cSubthread5.isAlive());
		//cSubthread5.start(); //此时start运行时为子线程
		cSubthread5.run();
		
		
		/* 测试线程休眠 */
		System.out.print("--------------This for thread sleep------------");
		Subthread6 cSubthread6 = new Subthread6();
		/* 直接运行重载的run是main线程 */
		//cSubthread6.run();
		/* 以start方式运行是threadid */
		cSubthread6.start();
	}
	
}





















