package sun.yu.qiang;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class JspController {


	@RequestMapping(value = "getjsp")
	public String getjsp(){
		
		
		
		return "httpjsp.jsp";//������application������jsp �ļ�����Ҫ�ټ�jsp��׺��
	}

	@RequestMapping(value = "gethtml")
	public String gethtml(){
		
		
		
		return "helloword.html";//������application������jsp �ļ�����Ҫ�ټ�jsp��׺��
	}
	
}
