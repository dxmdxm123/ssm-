<%--
  Created by IntelliJ IDEA.
  User: du
  Date: 2021/9/16
  Time: 16:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
<script src="https://unpkg.com/axios/dist/axios.min.js"></script>
<script src="//cdn.bootcss.com/vue/2.5.2/vue.min.js"></script>
<script src="//cdn.bootcss.com/vue-router/3.0.1/vue-router.min.js"></script>
<script src="//cdn.bootcss.com/vuex/3.0.1/vuex.min.js"></script>
<script src="//cdn.bootcss.com/axios/0.17.1/axios.min.js"></script>
<html>
<head>
    <title>Title</title>
</head>
<body>


        <div id="app">
            <!-- vue 需要一个 根目录标签-->
            <%--讲解一个概念，双向绑定，数据和页而的展示的数据效果是一起的。保持一致的，--%>
            <%--当vue data的数据发生了改变，那么展示的效果也发生改变。--%>
            姓名（以前是这样写的）：<input type="text" value="滴滴"><br>

            <%--vue 的核心是  把数据渲染到html中，分为 标签和文本，--%>
            <%--  那么文本 使用的插值表达式--%>
            姓名:{{name}}<br>

            <%--下面就是渲染到标签中--%>
            <%--  b-bind是绑定标签中的属性的  一经过绑定，数据就是动态的了 就要写  data 的key--%>
           vue-- 姓名（以前是这样写的）：<input type="text" value="name"><br>
           vue-- 姓名（以前是这样写的）b-bind的缩写：<input type="text" value="name"><br>
             <%--以上就是数据的单向绑定，数据绑定到了  显示效果--%>
            vue-- 姓名 双向绑定：<input type="text" v-model="name"><br>
            <%--v-mode 双向绑定 作用在4个 范围上  input标签上  select 标签 textarea标签 components标签--%>
            <%--v-model 是v-bind的升级版 ，其本质就是一个语法糖 什么是语法糖--%>
            <%--java中的for循环就是一个语法糖，for 循环的本质就是 while 循环  语法糖 就是简化了代码的书写--%>
            <%--只渲染一次的指令,v-once--%>
            姓名:<span v-once>{{name}}</span><br>

        </div>
            <script>
                var vm = new Vue({
                    el:'#app',
                    data:{
                        name:'滴滴11'
                    }
                });
            </script>

</body>
</html>
