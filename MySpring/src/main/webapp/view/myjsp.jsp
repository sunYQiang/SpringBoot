<%@ page language="java"  pageEncoding="UTF-8" %>
<html>
<body>
<h2>view---index-----springboot!</h2>

	<div>
	
		<input  type="button"  onclick="alentinput()"  value="提交数据">  
		<br/>
		<br/>
		<br/>
		<input name="inputdata" type="text"  id = "inputdata"  >
		
		<input type="button" onclick="input(inputdata)" value="获取数据">
		<br/>
		<br/>
		<input type="button" value="跳转页面" onclick="gojsp()">
	</div>
</body>

<script type="text/javascript" >

	function alentinput(){
		
		var name = prompt("请输入姓名", "");
		var sex = prompt("请输入性别", "");
		
		if(name != null && name != ""){
			 if (sex=="男"){
				
				alert(name+"先生您好！\n\n今天天气不错，希望您玩的开心！");
			}else {
				
			    alert(name+"女士您好！\n\n今天天气不错，希望您玩的开心！");
			 }
		}
	}
	
	function input(data){
		var d = data.value;
		
		alert(d);
		alert("ccccccccc");
		var n = document.getElementById("inputdata");
		n.value = d;
		alert(n.value );
	/* 	window.location.reload(); */
	}
	
	function gojsp(){
		
	   	if(self.fetch) {
		    // 使用 fetch 框架处理
		    fetch("www.baidu.com").then(function(response){
		
		   // do something...
			alert(response+"----------");
	   		});
		    
		} else {
			
			
		    // 使用 XMLHttpRequest 或者其他封装框架处理
		}   
		
	  	
/* 	 	if(self.fetch) {
		    // 使用 fetch 框架处理
		    fetch("http://192.168.20.39:8080/getData").then(function(response){
		
		   // do something...
			alert(response+"----------");
	   		});
		    
		} else {
			
			
		    // 使用 XMLHttpRequest 或者其他封装框架处理
		}   */
	
	/* 	$.ajax({
			        url: "http://192.168.20.39:8080/getData",
			        type: 'GET',
			        dataType: 'JSONP',//here
			        success: function (data) {
						
				alert(data+"----------");
			        }
			    }); */
		
		
		
/* 		
 		var xhr = new XMLHttpRequest();
		
		xhr.open("get", "www.baidu.com", true);
		xhr.onreadystatechange = function() {
			  console.log(xhr.responseText);
			    if (xhr.readyState == "index") {
			      console.log(xhr.responseText);
				alert(xhr.responseText+"----------");
			    }
			  };
			  xhr.send(null);   */
			
	
	}
	

</script>
</html>
