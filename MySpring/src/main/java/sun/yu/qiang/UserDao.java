package sun.yu.qiang;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "user")
public class UserDao {

	@RequestMapping(value = "getusermessage")
	public String getUserMessage(){
		
		
		return "user---------------------go";
	}
}
