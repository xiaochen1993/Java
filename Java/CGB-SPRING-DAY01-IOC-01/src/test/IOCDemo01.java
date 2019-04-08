package test;

import java.util.Calendar;
import java.util.Date;

import org.springframework.context.support.ClassPathXmlApplicationContext;

import bean.HelloService;

public class IOCDemo01 {
	private static ClassPathXmlApplicationContext ctx;
   static{
	   //��ʼ��Spring Bean����,���𴴽����ʵ��
	   ctx=new ClassPathXmlApplicationContext("applicationContext.xml");
   }
   public static void main(String[] args) {
	//System.out.println(ctx);
	
	Date date = (Date)ctx.getBean("date");
	Date date1=ctx.getBean("date",Date.class);
	System.out.println(date==date1);
	HelloService hs=ctx.getBean("helloService",HelloService.class);
	System.out.println(hs);
	HelloService hs1=ctx.getBean("helloService",HelloService.class);
	System.out.println(hs1==hs);
	Calendar ca=ctx.getBean("c1",Calendar.class);
	System.out.println(ca);
	Date date2=(Date)ctx.getBean("date1");
	System.out.println(date2);
	ctx.close();
}
}
