<%@ page language="java"  pageEncoding="UTF-8" %>
<html>
<body>
<h2>view---index-----springboot!</h2>


<button type="button" id="dome">Click me</button>

<!-- <div id='div1' class='div1' style="width:400px;">       
				<p>我的内容将会被添加</p>
				
				<button type="button" id="dome">Click me</button>
			</div> -->
	
</body>

<head>
	<style type="text/css">
	
		#div1{
				width:400px;     //通过id来控制
			}
	
	</style>
</head>

<script type="text/javascript" src="/js/jquery-3.2.1.js"></script><!-- 引入js源文件 -->

<script type="text/javascript">

 
 
 
	$("#dome").click(function(){
		
		 alert("1111111111111111111");
	
 	  
		/* 	$.ajax({  //这一块网络请求不到
				        url: "/getData",
				        type: 'GET',
				        dataType: 'json',//here
				        success: function (data) {
							
					alert(data+"----------");
				        }
				    });  */
		  
		  
			  $.post("/getData",{abc:'dsdsds'},function(data){//第二个参数   如果不需要给后台传参数就在大括号里又不要参数都行
				  
			 	 alert(data)
				  })

			   $.post("/getloadname",{name:'dsdsds'},function(data){
			  
		 		 alert(data)
			  })
		   	
			}); 



</script>
</html>
