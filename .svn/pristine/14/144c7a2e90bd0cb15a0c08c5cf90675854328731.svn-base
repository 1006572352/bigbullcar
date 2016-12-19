package bigBullCar;

import java.util.List;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.bigbullcar.entity.CarMessage;
import com.bigbullcar.service.impl.CarMessageServiceImpl;

/**
 * 针对后台车信息进行增删改查测试
 * @author zbz
 *
 */
public class CarMessageTest {
	
	@Test
	public void select22(){
		//获得spring上下文对象
				ApplicationContext context= new ClassPathXmlApplicationContext("spring-context.xml");
				System.out.println(context);
				CarMessageServiceImpl carMessageServiceImpl =(CarMessageServiceImpl)context.getBean("carMessageService");
				System.out.println(carMessageServiceImpl);
				CarMessage carMessage=new CarMessage();
				carMessage.setCartype("SUV");
				/*carMessage.setCarbrand("奥迪");
				carMessage.setCarage(6);
				carMessage.setCarmileage(80000);*/
				List<CarMessage> selectCarMessages = carMessageServiceImpl.selectCarMessages(carMessage);
				for(CarMessage carMessage2:selectCarMessages){
					System.err.println(carMessage2.getCarbrand()+"  车型"+carMessage2.getCartype()+"  车龄"+carMessage2.getCarage()+"  里程"+carMessage2.getCarphoto());
				}
				
				
	}
	@Test
	public void test11(){
		ApplicationContext context= new ClassPathXmlApplicationContext("spring-context.xml");
		System.out.println(context);
		CarMessageServiceImpl carMessageServiceImpl =(CarMessageServiceImpl)context.getBean("carMessageService");
		CarMessage carMessage=new CarMessage();
		carMessage.setCartype("SUV");
		carMessage.setUsername("laoda");
		carMessage.setCarage(3);
		carMessage.setCarmileage(8000);
		carMessage.setCarbrand("宝马");
		carMessage.setCarcolor("绿色");
		carMessage.setCarphoto(5);
		carMessage.setCarstate(1);
		carMessage.setCarprice(200000d);
		
	
		
		int insert = carMessageServiceImpl.insert(carMessage);
		System.out.println(insert);
	}

}
