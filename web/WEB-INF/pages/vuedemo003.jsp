<%--
  Created by IntelliJ IDEA.
  User: du
  Date: 2021/9/16
  Time: 16:49
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
    <title>v-on v-show v-for</title>
</head>
<div id="app">
    <%--v-on后面接的是html中的事件,v-bind接的是html中的属性--%>
    <input type="button" value="点击在ul中显示葫芦娃列表" v-on:click="showHuluwa()">
    <ul>
        <li v-for=" (item,index) in hulus " :key="hulus.id" >{{ item.name}}</li>
    </ul>
</div>
    <form action="" method="post">
        葫芦娃:<select id="typeSelect" name="" id="">
        <option value="1">大娃</option>
        <option value="1">二娃</option>
        <option value="1">三娃</option>
        <option value="1">四娃</option>
        <option value="1">五娃</option>
        <option value="1">六娃</option>
        <option value="1">七娃</option>
    </select>
    </form>
<script>
    var vm = new Vue({
        el:'#app',
        data:{
            hulus:[],
        },
        methods: {
            showHuluwa:function(){
                var arr=[{
                    id:1,
                    name:'大娃',
                    spell:'变大,力大无穷'
                },
                    {
                        id:2,
                        name:'二娃',
                        spell:'千里眼,顺风耳'
                    },
                    {
                        id:3,
                        name:'三娃',
                        spell:'铜头铁臂'
                    },
                    {
                        id:4,
                        name:'四娃',
                        spell:'喷火'
                    },
                    {
                        id:5,
                        name:'五娃',
                        spell:'喷水'
                    },
                    {
                        id:6,
                        name:'六娃',
                        spell:'隐身'
                    },
                    {
                        id:7,
                        name:'七娃',
                        spell:'神葫芦'
                    },];
                this.hulus=arr;
            }
        }
    });
</script>
<script>
    $(function(){
        $.ajax({
                url: '/type/selectAll',
                type: 'get',
                dataType: "json",
                sucess: function (r) {
                    console.log(r.data)
                    $("#typeSelect").empty();//把下面的数据清空
                    //给id为typeselect 遍历渲染  数据
                    $.each(r.data, function (index, item) {
                        var typeName = item.getTypeFromName
                        var optionDom = $("<option value='1'>" + typeName + "</option>");
                        $("#typeSelect").append(optionDom);//ajax 异步下拉框
                    });

                }
            });
        }
</body>
</html>

