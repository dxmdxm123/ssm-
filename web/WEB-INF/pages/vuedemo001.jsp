<%--
  Created by IntelliJ IDEA.
  User: du
  Date: 2021/9/15
  Time: 16:21
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
    <title>第一个vue demo</title>
</head>
<body>
<div>
    学习 插值表达式{{}}
    vue常用在 单个页面项目中，什么叫做单个页面项目，常用于手机移动端，指的是整个项目只有1个 页面，
    通过 锚点 来跳转。没有a标签，这个锚点的跳转叫做路由。
    单个页面项目的优缺点
    优点：都是html代码运行流畅，可以 有很多组件 可以重复使用。
    缺点：不利于seo百度的收录


</div>

<h1>讲解jquery 和我们的vue的不同</h1>
<div>
    jquery:他是dom驱动的，所有看到页面 都要 一行一行的把代码写出来。不是自动的。手动的
    <h2 id="jq-helloWord">
        <%--对比一下，在div中插入数据  你好，世界--%>
    </h2>
</div>
<%--jq的思想。找到名称是id xx 的DOM，给他添加数据
如果我想改变显示效果，改成你好，超市，需要改变jq的代码。
那么比较繁琐，，因为 你好，世界，没有存统一的变量的地方。
var str=“你好，世界” jq：有个难题，数据没有同意的位置可以存储--%>

<div id="app">
    vue因为是单页面的，所以必须只有1个根标签。以上的h1和div都不归vue负责。<br>
    插值表达式 1.他可以 直接调用 js中的方法
    2.它可以进行计算
    3.可以 拼接 就是和计算做相反的事情的
    4.插值表达式，显示 对象的格式是  xxx点yyy
    5.插值表达式，可以 做三木（三元） 运算，非常非常重要
    <h2>
        {{sayHello}}<br>
        {{sayHello}} 的长度是 {{sayHello.length}}  <br>
        {{sayEating}}<br>
        {{lightLine}}<br>
        {{apple.pname}}的价格是:{{apple.price / 100}} 元/斤 <br>
        {{apple.pname}}的价格是:{{apple.price +''+ 100}} 元/斤 <br>
        当前{{apple.pname}}的价格我{{apple.price/100>2.5 ? '太贵了，买不起，算你狠' : '好便宜，买买买'}}
        使用v-if 当前的{{apple.pname}}的价格我<br>
        <div v-if="apple.price/100 >2.5 ">
            <span style="color: red">太贵啦，买不起</span>

        </div>
        <div v-else-if="apple.price/100 >2 && apple.price/100 <=2.5">
            <span style="color: yellow">考虑一下  </span>
        </div>
        <div v-else>
            <span style="color: green">太便宜，买买买</span>
        </div>


        <%--刚刚学完vue的插值表达式，那么 知道vue的根本的核心是这样的，把数据显示到前端。--%>
        <%--如果只是用 插值表达式 显示数据，那么他的 显示数据的内容，大概就是4种，日过想要达到效果更加强的效果，那么插值表达式是不能够满足的，--%>
        <%--所以就有了新的方式，叫做指令。 因为，前端界面是html的，插值表达式她只能对文本信息做出--%>
        <%--数据的渲染。。。没有对标签做出数据的增强。那么我们就要学习更强的。就是叫做指令！！！！用来弥补和增强 插值表达式的不足！！--%>
        <%--比如说 动态改变金钱的颜色，超过2元就是红色，低于2元就是绿色--%><%--上面的改变颜色 不太好做出来 我们就引出来了指令 指令是作用在html标签上的--%>
        <%--指令 (Directives) 是带有 v- 前缀的特殊 attribute。指令 attribute 的值预期是单个 JavaScript 表达式 (v-for 是例外情况，稍后我们再讨论)。--%>
        <%--指令的职责是，当表达式的值改变时，将其产生的连带影响，响应式地作用于 DOM。--%> 指令的职责是，当表达式的值改变时，将其产生的连带影响，响应式地作用于 DOM

        <%--学习下面指令  ，  v-text  v-html--%>
        <%--v-text 其实就是 插值表达式--%>
        <span v-text="apple.pname"></span> 它的价格是：{{apple.price/100 }}元/斤<br>
        <%-- vtext优点 可以显示 data 数据中的所有数据据--%>
      <span v-text="vtext"></span><br> <!-- v-text 不编译文本中的html信息-->
        <span v-html="vhtml"></span><br> <!--v-text 编译文本中的html信息  一般这个用的多场景是  显示年龄过50变红色-->
        <span>{{vtext}}</span><br>   <!-- 插值表达式 也  不编译文本中的html信息-->
        <%--{{vtext}}想要正常显示{{}}中的内容是 不行--%>
        <span v-pre>{{vtext}}</span>


    </h2>
</div>
<script>
    //使用jquery
    $(function () {
        $("#jq-helloWord").text("你好，世界") //jq缺点：数据没有同意的地方存储。
    })

    //学习vue ，vue和java很像很像
    var vue=new Vue({
        //new vue() 括弧中，小括弧中，一般放的都是{}，而大括号就是json，对象，k-v结构
        //这个大括号中放的就是vue的选项，选项在vue官网可以看到。选项有多少种呢？ 作业！
        //作业：写出xue选项的
        el:'#app' //把html中的div id为app的dom元素 作为了 挂载点
        //什么叫做挂载点：vue 是以数据驱动的，new vue中都是诞生数据
        //有了数据，就需要一个dom元素，显示数据，张三是元数据。
        ,data:{
            sayHello:'你好世界',
            sayEating:'加油',
            lightLine:'嘟嘟',
            apple:{
                pid:15,
                pname:'紫葡萄', //vue是数据驱动的？什么是数据驱动，就是 数据一改变，前端进行改变。
                price:250  //单价元 -- 显示给前端后，显示成 元
            },
            vtext:'<h1>你看我是标题么</h1>',
            vhtml:'<h1>你看我是标题么</h1>',
        }
    });
</script>
</body>
</html>
