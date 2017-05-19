package sun.yu.qiang;

import java.util.ArrayList;
import java.util.List;

import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

//@Controller
@RestController
public class HelloWorldController {

	@RequestMapping(value = "getData")
	public @ResponseBody
	String getData(){
		
		
		return "index";
	}
	
	@RequestMapping(value = "getloadname")
	public String getloadname(String name){
		
		return name;
	}
	
	@RequestMapping(value = "getarraylist")
	public List getlist(Model model){
		   
		List<String> list = new ArrayList<String>();   
		for (int i = 0; i < 5; i++) {
			
			list.add(i+"aaa");
		}
		
		return list;
	}
	
	@RequestMapping(value = "getpage")
	public String getpage(Model model,@RequestParam int id){//需要传的参数
		
		List<String> list = new ArrayList<String>();   
		for (int i = 0; i < 5; i++) {
			
			list.add(i+"aaa");
			
		}
//		model.addAllAttributes(list);
		return "index"+id;
	}
	@RequestMapping(value = "getuser")
	public UserBean getUser(){
		
		org.springframework.context.ApplicationContext cxt = new ClassPathXmlApplicationContext("bean/userbean.xml");
		
		
		UserBean userBean = (UserBean) cxt.getBean("user");
		
		return userBean;
	}
	

}
