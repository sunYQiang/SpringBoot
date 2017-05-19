package sun.yu.qiang;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class JspController {


	@RequestMapping(value = "getjsp")
	public String getjsp(){
		
		
		
		return "httpjsp.jsp";//可以在application中配置jsp 文件则不需要再加jsp后缀名
	}

	@RequestMapping(value = "gethtml")
	public String gethtml(){
		
		
		
		return "helloword.html";//可以在application中配置jsp 文件则不需要再加jsp后缀名
	}
	
}
