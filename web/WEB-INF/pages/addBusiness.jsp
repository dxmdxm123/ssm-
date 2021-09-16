<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
<script src="https://unpkg.com/axios/dist/axios.min.js"></script>
<script src="//cdn.bootcss.com/vue/2.5.2/vue.min.js"></script>
<script src="//cdn.bootcss.com/vue-router/3.0.1/vue-router.min.js"></script>
<script src="//cdn.bootcss.com/vuex/3.0.1/vuex.min.js"></script>
<script src="//cdn.bootcss.com/axios/0.17.1/axios.min.js"></script>
<html>
<head>
    <title>新增业务</title>
</head>
<body>

<%--<h1>新增业务</h1>--%>
<%--<form action="" method="post">--%>
    <%--业务类型： <select id="typeId" name="typeId">--%>
    <%--<option value="" selected="">请选择</option>--%>
<%--</select>--%>

    <h1>新增业务</h1>
    <form action="" method="post">
        业务类型：<select id="typeSelect" name="" id="">
        <option value="1">信用卡</option>
        <option value="2">储蓄卡</option>
        <option value="3">vip卡</option>
        </select>
        <br>
        排队号：<input type="text" name="" ><br>
        备注信息：<textarea name=""  cols="30" rows="10"></textarea>
        <br>
        <input type="submit" value="确认增加">
    </form>

    <div>
        请选择你的英雄
        <select id="heroSelect" name="">
            <option value="1">韩信</option>
            <option value="1">赵云</option>
            <option value="1">赔钱虎</option>
        </select>
<script>
    //http://localhost:8080/type/selectAll
    $(function () {
        //使用高级版的 ajax  axios  异步请求
        //为给dingID的user创建请求
        axios.get('/type/selectAll')
            .then(function (respones) {//ajax中的sucess
                console.log(respones.data.data);
            })
            .catch(function (reason) {//ajax重的error
                console.log(error);
            })
</script>

    </div>


    <script>
        //http://localhost:8080/type/selectAll
        $(function(){
            $.ajax({
                url:'/type/selectAll',
                type:'get',
                dataType:"json",
                sucess:function (r) {
                    console.log(r.data)
                    $("#typeSelect").empty();//把下面的数据清空
                    //给id为typeselect 遍历渲染  数据
                    $.each(r.data,function (index,item) {
                        var typeName = item.getTypeFromName
                        var optionDom = $("<option value='1'>"+typeName+"</option>");
                        $("#typeSelect").append(optionDom);//ajax 异步下拉框
                    });

                }
            });

            //
            //int age=5
            //String name="zhangsan"
            //添加数据
            // var names = new  Array();//
            //     names.push("唐僧");
            //     names.push("悟空");
            //     names.push("八戒");
            //     names.push("沙僧");
            //     names.push("白龙");
            // console.log(names)
            //     $.each(names , function (index,value) {
            //         console.log(index)
            //         console.log(value)
            //         console.log("------")
            //         $("#heroSelect").append($("<option value='3'>"+value+"</option>")  );
            //
            //     });


        });
    </script>
</body>
</html>
