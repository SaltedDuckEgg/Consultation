<%@ page language="java" pageEncoding="utf-8" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>超市账单管理系统</title>
    <link rel="stylesheet" href="/jsp/css/public.css"/>
    <link rel="stylesheet" href="/jsp/css/style.css"/>
    <%--<link rel="stylesheet" href="${pageContext.request.contextPath}/js/bootstrap/css/bootstrap.min.css"/>--%>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/easyui/themes/icon.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/easyui/themes/default/easyui.css"/>
    <script type="text/javascript" src="${pageContext.request.contextPath}/easyui/jquery-1.7.2.min.js"></script>
    <%--<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.pagination.js"></script>--%>
    <script type="text/javascript" src="${pageContext.request.contextPath}/easyui/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/easyui/locale/easyui-lang-zh_CN.js"></script>
    <script type="text/javascript">


       function  openUserAddDialog () {
           $("#addUser").show();
          $("#addUser").dialog();
          $("#dd").click(function () {
              $.ajax({
                  url:'${pageContext.request.contextPath}/AddUser',
                  data:$("#form2").serialize(),
                  success:function(){
                      alert('添加成功');
                      $("#addUser").dialog('close');
                  }
              })
          })

       }
       function doDelete(index) {
           var selectRows = $("#test").datagrid("getSelections");
           if (selectRows!=0) {
               //提示用户是否真的删除数据
               $.messager.confirm("确认消息", "您确定要删除此信息么？", function (r) {
                   if (r) {
                       var strIds = "";
                       for (var i = 0; i < selectRows.length; i++) {
                           strIds += selectRows[i].id + ",";
                       }
                       strIds = strIds.substr(0, strIds.length - 1);

                       $.post("${pageContext.request.contextPath}/delUsers", {ids: strIds}, function (data) {
                           if (data == true) {
                               $("#test").datagrid("reload");
                               $("#test").datagrid("clearSelections");
                           } else {
                               $.messager.alert("删除失败", data);
                           }
                       })
                   }
               })
           }else{
               $.messager.alert("系统提示","请选择一条要编辑的数据！");
               return;
           }
       }

       function updateUser() {//修改操作
           var selectRows = $("#test").datagrid("getSelections");
           if (selectRows.length!=1) {
               $.messager.alert("系统提示","请选择一条数据！");
             }else{
               var row = selectRows[0];
               alert(row.id);
               $("#addUser").show();
               $("#addUser").dialog();
               $("#form2").form("load",row);
               $("#dd").click(function () {
                   $.ajax({
                       url:'${pageContext.request.contextPath}/updateuser',
                       data:$("#form2").serialize(),
                       success:function(){
                           alert('修改成功');
                           $('#test').datagrid('reload');
                           $("#addUser").dialog('close');
                       }
                   })
               })
           }
       }

       function load() {
            $('#test').datagrid({
                title:'用户管理',     //布局的标题名称
                iconCls:'icon-save',  //图标样式
                width:'100%',
                height:450,
                nowrap: true,
                striped: true,
                url:'${pageContext.request.contextPath}/findByName?userName='+$("[name=uname]").val(),
                sortName: 'code',
                sortOrder: 'desc',
                idField:'id',  //指示哪个字段是标识字段。
                pageSize:20,
                pageList: [2, 5, 10, 15],
                frozenColumns:[[
                    {field:'ck',checkbox:true},
                    { field: 'id', width: 50, hidden: true },
                    {title:'用户编码',field:'userCode',width:80,sortable:true}
                ]],
                columns:[[ //Column是一个数组对象，它的每个元素也是一个数组。元素数组的元素是一个配置对象，它定义了每个列的字段。
                    {field:'userName',title:'用户名称',width:200}, //title 标题文本
                    {field:'gender',title:'性别',width:200,  //field：列的字段名
                        formatter:function(value){
                            if(value==1){
                                return "男";
                            }else{
                                return "女";
                            }
                        }
                    },
                    {field:'birthday',title:'年龄',width:200,
                        formatter:function(value){
                            return jsGetAge(value);
                        }
                    },
                    {field:'phone',title:'电话',width:200},
                    {field:'userRole',title:'用户类型',width:200,
                        formatter:function(value){
                            if(value==1){
                                return "管理员";
                            }else if(value==2){
                                return "员工";
                            }else{
                                return "经理";
                            }
                        }
                    },
                    {field:'code',title:'操作',width:200,
                        formatter:function(value,rec,index){
                            var str="<a href='${pageContext.request.contextPath}/UserServlet?action=viewUser&id='><img src='${pageContext.request.contextPath}/jsp/img/read.png' alt='查看' title='查看'/></a>"+
                                "<a href='#'><img src='${pageContext.request.contextPath}/jsp/img/xiugai.png' alt='修改' title='修改'onclick='update("+index+")'/></a>"+
                                "<a href='#'' class='removeUser'><img src='${pageContext.request.contextPath}/jsp/img/schu.png' alt='删除' title='删除' onclick='del("+index+")'/></a>";
                            return str;
                        }

                    }
                ]],
                pagination:true, //rows: 每页显示的数据量 page:第几页  显示分页
                rownumbers:true, //带有行号的列
                singleSelect:false,
                toolbar:[{
                    text:'添加',
                    iconCls:'icon-add',
                    handler:function(){
                        openUserAddDialog();
                    }
                },{
                    id: 'btnDelete',
                    text:'批量删除',
                    iconCls:'icon-remove',
                    disabled:false,
                    handler:function(){
                        doDelete();
                    }
                },{
                    text:'修改',
                    iconCls:'icon-edit',
                    disabled:false,
                    handler:function(){
                        updateUser();
                    }
                }]
            });
        }

        $(function () {
            load();
            $("#button").click(function () {
                load();
            })
        })
        var btnServlet=function () {
            load();
        }
        function jsGetAge(strBirthday) {
            var returnAge;
            var strBirthdayArr=strBirthday.split("-");
            var birthYear = strBirthdayArr[0];
            var birthMonth = strBirthdayArr[1];
            var birthDay = strBirthdayArr[2];
            var d = new Date();
            var nowYear = d.getFullYear();
            var nowMonth = d.getMonth() + 1;
            var nowDay = d.getDate();
            if(nowYear == birthYear){
                returnAge = 0;//同年 则为0岁
            }else{
                var ageDiff = nowYear - birthYear ; //年之差
                if(ageDiff > 0){
                    if(nowMonth == birthMonth){
                        var dayDiff = nowDay - birthDay;//日之差
                        if(dayDiff < 0){
                            returnAge = ageDiff - 1;
                        }else{
                            returnAge = ageDiff ;
                        }
                    }else{
                        var monthDiff = nowMonth - birthMonth;//月之差
                        if(monthDiff < 0){
                            returnAge = ageDiff - 1;
                        } else{
                            returnAge = ageDiff ;
                        }
                    } }else{
                    returnAge = -1;//返回-1 表示出生日期输入错误 晚于今天
                }
            }
            return returnAge;//返回周岁年龄
        }

    </script>

</head>
<body>
<!--头部-->
    <header class="publicHeader">
        <h1>超市账单管理系统</h1>
        <div class="publicHeaderR">
            <p><span>下午好！</span><span style="color: #fff21b"> ${userinfo.userName}</span> , 欢迎你！</p>
            <a href="/jsp/login.html">退出</a>
        </div>
    </header>
<!--时间-->
    <section class="publicTime">
        <span id="time">2015年1月1日 11:11  星期一</span>
        <a href="#">温馨提示：为了能正常浏览，请使用高版本浏览器！（IE10+）</a>
    </section>
<!--主体内容-->
    <section class="publicMian ">
        <div class="left">
            <h2 class="leftH2"><span class="span1"></span>功能列表 <span></span></h2>
            <nav>
                <ul class="list">
                    <li><a href="/jsp/billList.html">账单管理</a></li>
                    <li><a href="/jsp/providerList.html">供应商管理</a></li>
                    <li  id="active"><a href="/jsp/userList.html">用户管理</a></li>
                    <li><a href="/jsp/password.html">密码修改</a></li>
                    <li><a href="/jsp/login.html">退出系统</a></li>
                </ul>
            </nav>
        </div>
        <div class="right">
            <div class="location">
                <strong>你现在所在的位置是:</strong>
                <span>用户管理页面</span>
            </div>
            <div class="search">
                <span>用户名：</span>
                <input type="text" placeholder="请输入用户名" name="uname"/>
                <input type="button" value="查询" id="button"/>
                <a href="/jsp/userAdd.jsp">添加用户</a>
            </div>

            <!--用户-->
            <table id="test" width="1000"></table>
            <div class="pagination" id="pagination" ></div>
        </div>

    </section>

<!--点击删除按钮后弹出的页面-->
<div class="zhezhao"></div>
<div class="remove" id="removeUse">
    <div class="removerChid">
        <h2>提示</h2>
        <div class="removeMain">
            <p>你确定要删除该用户吗？</p>
            <a href="#" id="yes">确定</a>
            <a href="#" id="no">取消</a>
        </div>
    </div>
</div>
<div id="addUser" style="width:700px;padding:30px 60px;font-size: 17px; display: none">
    <form id="form2" action="${pageContext.request.contextPath}/updateuser">
        <div>
            <label for="userId">用户编码：</label>
            <input type="text"  name="userCode" id="userId"/>
            <span id="userIdMsg"></span>
        </div>
        <div>
            <label for="userName">用户名称：</label>
            <input type="text" class="easyui-textbox" name="userName" id="userName"/>
            <span >*请输入用户名称</span>
        </div>
        <div>
            <label for="userpassword">用户密码：</label>
            <input type="text" class="easyui-textbox" name="userPassword" id="userpassword"/>
            <span>*密码长度必须大于6位小于20位</span>

        </div>
        <div>
            <label for="userRemi">确认密码：</label>
            <input type="text" class="easyui-textbox"  id="userRemi"/>
            <span>*请输入确认密码</span>
        </div>
        <div>
            <label >用户性别：</label>
            <select name="gender">
                <option value="1">男</option>
                <option value="0">女</option>
                </select>
                    <span></span>
        </div>
        <div>
            <label for="data">出生日期：</label>
            <input type="text" name="birthday" id="data"/>
            <span >*</span>
        </div>
        <div>
            <label for="userphone">用户电话：</label>
            <input type="text" class="easyui-textbox" name="phone" id="userphone"/>
            <span >*</span>
        </div>
        <div>
            <label for="userAddress">用户地址：</label>
            <input type="text" class="easyui-textbox" name="address" id="userAddress"/>
        </div>
        <div>
            <label >用户类别：</label>
            <input type="radio" name="userType" value="0"/>管理员
            <input type="radio" name="userType" value="1"/>经理
            <input type="radio" name="userType" value="2"/>普通用户
        </div>
        <input name="id" type="hidden">
        <input type="button" id="dd" value="提交">
    </form>
</div>


    <footer class="footer">
        版权归北大青鸟
    </footer>


</body>
</html>