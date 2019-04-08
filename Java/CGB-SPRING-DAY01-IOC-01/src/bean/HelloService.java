package bean;

public class HelloService {
  private HelloService(){
	  System.out.println("hello");
  }
  public void doInit(){
	  System.out.println("doInit...");
  }
  public void doDestroy(){
	  System.out.println("doDestroy...");
  }
}
