
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
<script src="https://unpkg.com/axios/dist/axios.min.js"></script>
<script src="//cdn.bootcss.com/vue/2.5.2/vue.min.js"></script>
<script src="//cdn.bootcss.com/vue-router/3.0.1/vue-router.min.js"></script>
<script src="//cdn.bootcss.com/vuex/3.0.1/vuex.min.js"></script>
<script src="//cdn.bootcss.com/axios/0.17.1/axios.min.js"></script>
<html>
<head>
    <title>葫芦娃</title>
</head>
<body>
<h1>葫芦娃</h1>
<div>
    请选择你的葫芦：
    <ul id="huluwa">
        <li>葫芦娃</li>
    </ul>
</div>

<script>
    var names=new Array();  //List<String> names=new ArrayList();
         names.push("大娃");
         names.push("二娃");
         names.push("三娃");
         names.push("四娃");
         names.push("五娃");
         names.push("六娃");
         names.push("七娃");
         $.each(names,function (index,value) {
             console.log(index);
             console.log(value)
             $("#huluwa").append("<li>"+value+"</li>")
         });

</script>

</body>
</html>
