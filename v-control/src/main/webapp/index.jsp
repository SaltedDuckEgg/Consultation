<%@ page contentType="text/html;charset=UTF-8" language="java"  isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>AdminLTE 2 | Dashboard</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.5 -->
  <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/dist/css/AdminLTE.min.css">
  <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
  <link rel="stylesheet" href="dist/css/skins/_all-skins.min.css">
  <!-- iCheck -->
  <link rel="stylesheet" href="plugins/iCheck/flat/blue.css">
  <!-- Morris chart -->
  <link rel="stylesheet" href="plugins/morris/morris.css">
  <!-- jvectormap -->
  <link rel="stylesheet" href="plugins/jvectormap/jquery-jvectormap-1.2.2.css">
  <!-- Date Picker -->
  <link rel="stylesheet" href="plugins/datepicker/datepicker3.css">
  <!-- Daterange picker -->
  <link rel="stylesheet" href="plugins/daterangepicker/daterangepicker-bs3.css">
  <!-- bootstrap wysihtml5 - text editor -->
  <link rel="stylesheet" href="plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">

  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->
</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">

  <header class="main-header">
    <!-- Logo -->
    <a href="index2.jsp" class="logo">
      <!-- mini logo for sidebar mini 50x50 pixels -->
      <span class="logo-mini"><b>A</b>LT</span>
      <!-- logo for regular state and mobile devices -->
      <span class="logo-lg"><b>Admin</b>LTE</span>
    </a>
    <!-- Header Navbar: style can be found in header.less -->
    <nav class="navbar navbar-static-top" role="navigation">
      <!-- Sidebar toggle button-->
      <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
        <span class="sr-only">Toggle navigation</span>
      </a>
      <div class="navbar-custom-menu">
        <ul class="nav navbar-nav">
          <!-- Messages: style can be found in dropdown.less-->
          <li class="dropdown messages-menu">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              <i class="fa fa-envelope-o"></i>
              <span class="label label-success">4</span>
            </a>
            <ul class="dropdown-menu">
              <li class="header">You have 4 messages</li>
              <li>
                <!-- inner menu: contains the actual data -->
                <ul class="menu">
                  <li><!-- start message -->
                    <a href="#">
                      <div class="pull-left">
                        <img src="dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
                      </div>
                      <h4>
                        Support Team
                        <small><i class="fa fa-clock-o"></i> 5 mins</small>
                      </h4>
                      <p>Why not buy a new awesome theme?</p>
                    </a>
                  </li><!-- end message -->
                  <li>
                    <a href="#">
                      <div class="pull-left">
                        <img src="dist/img/user3-128x128.jpg" class="img-circle" alt="User Image">
                      </div>
                      <h4>
                        AdminLTE Design Team
                        <small><i class="fa fa-clock-o"></i> 2 hours</small>
                      </h4>
                      <p>Why not buy a new awesome theme?</p>
                    </a>
                  </li>
                  <li>
                    <a href="#">
                      <div class="pull-left">
                        <img src="dist/img/user4-128x128.jpg" class="img-circle" alt="User Image">
                      </div>
                      <h4>
                        Developers
                        <small><i class="fa fa-clock-o"></i> Today</small>
                      </h4>
                      <p>Why not buy a new awesome theme?</p>
                    </a>
                  </li>
                  <li>
                    <a href="#">
                      <div class="pull-left">
                        <img src="dist/img/user3-128x128.jpg" class="img-circle" alt="User Image">
                      </div>
                      <h4>
                        Sales Department
                        <small><i class="fa fa-clock-o"></i> Yesterday</small>
                      </h4>
                      <p>Why not buy a new awesome theme?</p>
                    </a>
                  </li>
                  <li>
                    <a href="#">
                      <div class="pull-left">
                        <img src="dist/img/user4-128x128.jpg" class="img-circle" alt="User Image">
                      </div>
                      <h4>
                        Reviewers
                        <small><i class="fa fa-clock-o"></i> 2 days</small>
                      </h4>
                      <p>Why not buy a new awesome theme?</p>
                    </a>
                  </li>
                </ul>
              </li>
              <li class="footer"><a href="#">See All Messages</a></li>
            </ul>
          </li>
          <!-- Notifications: style can be found in dropdown.less -->
          <li class="dropdown notifications-menu">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              <i class="fa fa-bell-o"></i>
              <span class="label label-warning">10</span>
            </a>
            <ul class="dropdown-menu">
              <li class="header">You have 10 notifications</li>
              <li>
                <!-- inner menu: contains the actual data -->
                <ul class="menu">
                  <li>
                    <a href="#">
                      <i class="fa fa-users text-aqua"></i> 5 new members joined today
                    </a>
                  </li>
                  <li>
                    <a href="#">
                      <i class="fa fa-warning text-yellow"></i> Very long description here that may not fit into the page and may cause design problems
                    </a>
                  </li>
                  <li>
                    <a href="#">
                      <i class="fa fa-users text-red"></i> 5 new members joined
                    </a>
                  </li>
                  <li>
                    <a href="#">
                      <i class="fa fa-shopping-cart text-green"></i> 25 sales made
                    </a>
                  </li>
                  <li>
                    <a href="#">
                      <i class="fa fa-user text-red"></i> You changed your username
                    </a>
                  </li>
                </ul>
              </li>
              <li class="footer"><a href="#">View all</a></li>
            </ul>
          </li>
          <!-- Tasks: style can be found in dropdown.less -->
          <li class="dropdown tasks-menu">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              <i class="fa fa-flag-o"></i>
              <span class="label label-danger">9</span>
            </a>
            <ul class="dropdown-menu">
              <li class="header">You have 9 tasks</li>
              <li>
                <!-- inner menu: contains the actual data -->
                <ul class="menu">
                  <li><!-- Task item -->
                    <a href="#">
                      <h3>
                        Design some buttons
                        <small class="pull-right">20%</small>
                      </h3>
                      <div class="progress xs">
                        <div class="progress-bar progress-bar-aqua" style="width: 20%" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">
                          <span class="sr-only">20% Complete</span>
                        </div>
                      </div>
                    </a>
                  </li><!-- end task item -->
                  <li><!-- Task item -->
                    <a href="#">
                      <h3>
                        Create a nice theme
                        <small class="pull-right">40%</small>
                      </h3>
                      <div class="progress xs">
                        <div class="progress-bar progress-bar-green" style="width: 40%" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">
                          <span class="sr-only">40% Complete</span>
                        </div>
                      </div>
                    </a>
                  </li><!-- end task item -->
                  <li><!-- Task item -->
                    <a href="#">
                      <h3>
                        Some task I need to do
                        <small class="pull-right">60%</small>
                      </h3>
                      <div class="progress xs">
                        <div class="progress-bar progress-bar-red" style="width: 60%" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">
                          <span class="sr-only">60% Complete</span>
                        </div>
                      </div>
                    </a>
                  </li><!-- end task item -->
                  <li><!-- Task item -->
                    <a href="#">
                      <h3>
                        Make beautiful transitions
                        <small class="pull-right">80%</small>
                      </h3>
                      <div class="progress xs">
                        <div class="progress-bar progress-bar-yellow" style="width: 80%" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">
                          <span class="sr-only">80% Complete</span>
                        </div>
                      </div>
                    </a>
                  </li><!-- end task item -->
                </ul>
              </li>
              <li class="footer">
                <a href="#">View all tasks</a>
              </li>
            </ul>
          </li>
          <!-- User Account: style can be found in dropdown.less -->
          <li class="dropdown user user-menu">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              <img src="dist/img/user2-160x160.jpg" class="user-image" alt="User Image">
              <span class="hidden-xs">Alexander Pierce</span>
            </a>
            <ul class="dropdown-menu">
              <!-- User image -->
              <li class="user-header">
                <img src="dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
                <p>
                  Alexander Pierce - Web Developer
                  <small>Member since Nov. 2012</small>
                </p>
              </li>
              <!-- Menu Body -->
              <li class="user-body">
                <div class="col-xs-4 text-center">
                  <a href="#">Followers</a>
                </div>
                <div class="col-xs-4 text-center">
                  <a href="#">Sales</a>
                </div>
                <div class="col-xs-4 text-center">
                  <a href="#">Friends</a>
                </div>
              </li>
              <!-- Menu Footer-->
              <li class="user-footer">
                <div class="pull-left">
                  <a href="#" class="btn btn-default btn-flat">Profile</a>
                </div>
                <div class="pull-right">
                  <a href="#" class="btn btn-default btn-flat">Sign out</a>
                </div>
              </li>
            </ul>
          </li>
          <!-- Control Sidebar Toggle Button -->
          <li>
            <a href="#" data-toggle="control-sidebar"><i class="fa fa-gears"></i></a>
          </li>
        </ul>
      </div>
    </nav>
  </header>
  <!-- Left side column. contains the logo and sidebar -->
  <aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
      <!-- Sidebar user panel -->
      <div class="user-panel">
        <div class="pull-left image">
          <img src="dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
        </div>
        <div class="pull-left info">
          <p>管理控制台</p>

        </div>
      </div>

      <!-- /.search form -->
      <!-- sidebar menu: : style can be found in sidebar.less -->
      <ul class="sidebar-menu">

        <li class="active treeview">
          <a href="#">
            <i class="fa fa-dashboard"></i> <span>车辆监控</span> <i class="fa fa-angle-left pull-right"></i>
          </a>
          <ul class="treeview-menu">
            <li class="active"><a href="index.jsp"><i class="fa fa-circle-o"></i>单车监控</a></li>
            <li><a href="index2.jsp"><i class="fa fa-circle-o"></i>报文查询</a></li>
            <li><a href="index2.jsp"><i class="fa fa-circle-o"></i>在线车辆</a></li>
          </ul>
        </li>

        <%--车辆管理--%>
        <li class="treeview">
          <a href="#">
            <i class="fa fa-table"></i> <span>车辆管理</span>
            <i class="fa fa-angle-left pull-right"></i>
          </a>
          <ul class="treeview-menu">
            <li><a href="javascript:lode()"><i class="fa fa-circle-o"></i>车辆管理</a></li>
            <li><a href="pages/tables/data.jsp"><i class="fa fa-circle-o"></i>车型管理</a></li>
          </ul>
        </li>
        <%--告警管理--%>
        <li class="treeview">
          <a href="#">
            <i class="fa fa-pie-chart"></i>
            <span>告警管理</span>
            <i class="fa fa-angle-left pull-right"></i>
          </a>
          <ul class="treeview-menu">
            <li><a href="pages/charts/chartjs.html"><i class="fa fa-circle-o"></i>实时告警</a></li>
            <li><a href="pages/charts/morris.html"><i class="fa fa-circle-o"></i>历史告警</a></li>
            <li><a href="pages/charts/flot.html"><i class="fa fa-circle-o"></i>告警配置</a></li>
          </ul>
        </li>

        <%--统计分析--%>
        <li class="treeview">
          <a href="#">
            <i class="fa fa-laptop"></i>
            <span>统计分析</span>
            <i class="fa fa-angle-left pull-right"></i>
          </a>
          <ul class="treeview-menu">
            <li><a href="pages/UI/general.html"><i class="fa fa-circle-o"></i>里程统计</a></li>
            <li><a href="pages/UI/icons.html"><i class="fa fa-circle-o"></i>告警统计</a></li>
          </ul>
        </li>

        <%--系统设置--%>
        <li class="treeview">
          <a href="#">
            <i class="fa fa-edit"></i> <span>系统设置</span>
            <i class="fa fa-angle-left pull-right"></i>
          </a>
          <ul class="treeview-menu">
            <li><a href="javascript:vidictype()"><i class="fa fa-circle-o"></i>字典类型</a></li>
            <li><a href="pages/forms/advanced.html"><i class="fa fa-circle-o"></i>字典内容</a></li>
          </ul>
        </li>

      </ul>
    </section>
    <!-- /.sidebar -->
  </aside>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        报文查询
        <button id="addCar" class="btn btn-primary" type="button">新增</button>
        <button class="btn btn-primary" type="button">导入</button>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i>首页</a></li>
        <li><a href="#">车辆管理</a></li>
        <li class="active">车辆管理</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="row">
        <div class="col-xs-12">
          <div class="box">

            <div class="box-body">
              <table id="vehiclelist" class="table table-bordered table-striped">
                <thead>
                <tr>

                 <form id="ve" action="form_action.asp" method="get">
                   <th>车牌号 <input type="text" name="carLicense" /><br>
                       VIN <input type="text" name="vin" /></th>
                   <th>ICCID <input type="text" name="iccid" /><br>
                        车型 <input type="text" name="carType" /></th>
                   <th>所属机构 <input type="text" name="jg" /></th>


                 </form>
                  <th><button type="button" onclick="selVel()">查询</button>
                    <button type="button">重置</button></th>
                </tr>
                <tr style="background-color:darkgray">
                  <td>车牌号</td>
                  <td>VIN</td>
                  <td>ICCID</td>
                  <td>车型</td>
                  <td>省份</td>
                  <td>城市</td>
                  <td>操作</td>
                </tr>

                </thead>
                <c:forEach items="${vehicleList.list}" var="item">
                  <tr name='t'>
                    <td>${item.carLicense}</td>
                    <td>${item.vin}</td>
                    <td>${item.iccid}</td>
                    <td>${item.carType}</td>
                    <td>${item.provinces}</td>
                    <td>${item.city}</td>
                    <td><a href='javascript:delVel(${item.id})'>删除</a><a href='javascript:upVel(${item.id})'>修改</a></td>
                  </tr>
                </c:forEach>
              </table>
              <table  class="table table-bordered table-striped">

              </table>
              <ul class="pagination pagination-sm no-margin pull-right">
                <li><a href="#">&laquo;</a></li>
                <li><a href="#">1</a></li>
                <li><a href="#">2</a></li>
                <li><a href="#">3</a></li>
                <li><a href="#">&raquo;</a></li>
              </ul>
              <div class="pagination" id="pagination" style="margin:4px 0 0 0"></div>

            </div><!-- /.box-body -->
          </div><!-- /.box -->
        </div><!-- /.col -->
      </div><!-- /.row -->

      <div class="modal" id="upvehicle">
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
              <h4 class="modal-title">修改车辆</h4>
            </div>
            <form id="upveh">
              <input type="hidden" name="id">
              <div class="modal-body">
                <%--表单--%>
                <table class="table table-striped">
                  <tr>
                    <td>车牌号:</td>
                    <td><input name="carLicense" type="text" placeholder="车牌号" /></td>
                  </tr>
                  <tr>
                    <td>VIN:</td>
                    <td><input name="vin" type="text" placeholder="VIN" /></td>
                  </tr>
                  <tr>
                    <td>ICCID SM卡:</td>
                    <td><input name="iccid" type="text" placeholder="ICCID SM卡" /></td>
                  </tr>
                  <tr>
                    <td>车辆类型:</td>
                    <td><input name="carType" type="text" placeholder="车辆类型" /></td>
                  </tr>
                  <tr>
                    <td>省份:</td>
                    <td><input name="provinces" type="text" placeholder="省份" /></td>
                  </tr>
                  <tr>
                    <td>城市:</td>
                    <td><input name="city" type="text" placeholder="城市" /></td>
                  </tr>
                  <tr>
                    <td>所属机构:</td>
                    <td><input name="affiliation" type="text" placeholder="所属机构" /></td>
                  </tr>
                </table>
              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <%--表单提交按钮--%>
                <button type="button" onclick="updateCar()" class="btn btn-primary">保存</button>
              </div>
            </form>
          </div><!-- /.modal-content -->
        </div><!-- /.modal-dialog -->
      </div><!-- /.modal -->
      <div class="modal" id="mymodal">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
            <h4 class="modal-title">添加车辆</h4>
          </div>
          <form id="frmAdd">
            <div class="modal-body">
              <%--表单--%>
              <table class="table table-striped">
                <tr>
                  <td>车牌号:</td>
                  <td><input name="carLicense" type="text" placeholder="车牌号" /></td>
                </tr>
                <tr>
                  <td>VIN:</td>
                  <td><input name="vin" type="text" placeholder="VIN" /></td>
                </tr>
                <tr>
                  <td>ICCID SM卡:</td>
                  <td><input name="iccid" type="text" placeholder="ICCID SM卡" /></td>
                </tr>
                <tr>
                  <td>车辆类型:</td>
                  <td><input name="carType" type="text" placeholder="车辆类型" /></td>
                </tr>
                <tr>
                  <td>省份:</td>
                  <td><input name="provinces" type="text" placeholder="省份" /></td>
                </tr>
                <tr>
                  <td>城市:</td>
                  <td><input name="city" type="text" placeholder="城市" /></td>
                </tr>
                <tr>
                  <td>所属机构:</td>
                  <td><input name="affiliation" type="text" placeholder="所属机构" /></td>
                </tr>
              </table>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
              <%--表单提交按钮--%>
              <button type="button" onclick="addCar()" class="btn btn-primary">保存</button>
            </div>
          </form>
        </div><!-- /.modal-content -->
      </div><!-- /.modal-dialog -->
  </div><!-- /.添加 -->
    </section><!-- /.content -->
  </div><!-- /.content-wrapper -->
  <footer class="main-footer">
    <div class="pull-right hidden-xs">
      <b>Version</b> 2.3.0
    </div>
    <strong>Copyright &copy; 2014-2015 <a href="http://almsaeedstudio.com">Almsaeed Studio</a>.</strong> All rights reserved.
  </footer>

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Create the tabs -->
    <ul class="nav nav-tabs nav-justified control-sidebar-tabs">
      <li><a href="#control-sidebar-home-tab" data-toggle="tab"><i class="fa fa-home"></i></a></li>
      <li><a href="#control-sidebar-settings-tab" data-toggle="tab"><i class="fa fa-gears"></i></a></li>
    </ul>
    <!-- Tab panes -->
    <div class="tab-content">
      <!-- Home tab content -->
      <div class="tab-pane" id="control-sidebar-home-tab">
        <h3 class="control-sidebar-heading">Recent Activity</h3>
        <ul class="control-sidebar-menu">
          <li>
            <a href="javascript:">
              <i class="menu-icon fa fa-birthday-cake bg-red"></i>
              <div class="menu-info">
                <h4 class="control-sidebar-subheading">Langdon's Birthday</h4>
                <p>Will be 23 on April 24th</p>
              </div>
            </a>
          </li>
          <li>
            <a href="javascript:">
              <i class="menu-icon fa fa-user bg-yellow"></i>
              <div class="menu-info">
                <h4 class="control-sidebar-subheading">Frodo Updated His Profile</h4>
                <p>New phone +1(800)555-1234</p>
              </div>
            </a>
          </li>
          <li>
            <a href="javascript:">
              <i class="menu-icon fa fa-envelope-o bg-light-blue"></i>
              <div class="menu-info">
                <h4 class="control-sidebar-subheading">Nora Joined Mailing List</h4>
                <p>nora@example.com</p>
              </div>
            </a>
          </li>
          <li>
            <a href="javascript:">
              <i class="menu-icon fa fa-file-code-o bg-green"></i>
              <div class="menu-info">
                <h4 class="control-sidebar-subheading">Cron Job 254 Executed</h4>
                <p>Execution time 5 seconds</p>
              </div>
            </a>
          </li>
        </ul><!-- /.control-sidebar-menu -->

        <h3 class="control-sidebar-heading">Tasks Progress</h3>
        <ul class="control-sidebar-menu">
          <li>
            <a href="javascript:">
              <h4 class="control-sidebar-subheading">
                Custom Template Design
                <span class="label label-danger pull-right">70%</span>
              </h4>
              <div class="progress progress-xxs">
                <div class="progress-bar progress-bar-danger" style="width: 70%"></div>
              </div>
            </a>
          </li>
          <li>
            <a href="javascript:">
              <h4 class="control-sidebar-subheading">
                Update Resume
                <span class="label label-success pull-right">95%</span>
              </h4>
              <div class="progress progress-xxs">
                <div class="progress-bar progress-bar-success" style="width: 95%"></div>
              </div>
            </a>
          </li>
          <li>
            <a href="javascript:">
              <h4 class="control-sidebar-subheading">
                Laravel Integration
                <span class="label label-warning pull-right">50%</span>
              </h4>
              <div class="progress progress-xxs">
                <div class="progress-bar progress-bar-warning" style="width: 50%"></div>
              </div>
            </a>
          </li>
          <li>
            <a href="javascript:">
              <h4 class="control-sidebar-subheading">
                Back End Framework
                <span class="label label-primary pull-right">68%</span>
              </h4>
              <div class="progress progress-xxs">
                <div class="progress-bar progress-bar-primary" style="width: 68%"></div>
              </div>
            </a>
          </li>
        </ul><!-- /.control-sidebar-menu -->

      </div><!-- /.tab-pane -->
      <!-- Stats tab content -->
      <div class="tab-pane" id="control-sidebar-stats-tab">Stats Tab Content</div><!-- /.tab-pane -->
      <!-- Settings tab content -->
      <div class="tab-pane" id="control-sidebar-settings-tab">
        <form method="post">
          <h3 class="control-sidebar-heading">General Settings</h3>
          <div class="form-group">
            <label class="control-sidebar-subheading">
              Report panel usage
              <input type="checkbox" class="pull-right" checked>
            </label>
            <p>
              Some information about this general settings option
            </p>
          </div><!-- /.form-group -->

          <div class="form-group">
            <label class="control-sidebar-subheading">
              Allow mail redirect
              <input type="checkbox" class="pull-right" checked>
            </label>
            <p>
              Other sets of options are available
            </p>
          </div><!-- /.form-group -->

          <div class="form-group">
            <label class="control-sidebar-subheading">
              Expose author name in posts
              <input type="checkbox" class="pull-right" checked>
            </label>
            <p>
              Allow the user to show his name in blog posts
            </p>
          </div><!-- /.form-group -->

          <h3 class="control-sidebar-heading">Chat Settings</h3>

          <div class="form-group">
            <label class="control-sidebar-subheading">
              Show me as online
              <input type="checkbox" class="pull-right" checked>
            </label>
          </div><!-- /.form-group -->

          <div class="form-group">
            <label class="control-sidebar-subheading">
              Turn off notifications
              <input type="checkbox" class="pull-right">
            </label>
          </div><!-- /.form-group -->

          <div class="form-group">
            <label class="control-sidebar-subheading">
              Delete chat history
              <a href="javascript:" class="text-red pull-right"><i class="fa fa-trash-o"></i></a>
            </label>
          </div><!-- /.form-group -->
        </form>
      </div><!-- /.tab-pane -->
    </div>
  </aside><!-- /.control-sidebar -->
  <!-- Add the sidebar's background. This div must be placed
       immediately after the control sidebar -->
  <div class="control-sidebar-bg"></div>
</div><!-- ./wrapper -->

<!-- jQuery 2.1.4 -->
<script src="${pageContext.request.contextPath}/plugins/jQuery/jQuery-2.1.4.min.js"></script>
<!-- jQuery UI 1.11.4 -->
<script src="https://code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
<script>
    $.widget.bridge('uibutton', $.ui.button);
</script>
<!-- Bootstrap 3.3.5 -->
<script src="${pageContext.request.contextPath}/bootstrap/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/bootstrap/js/jquery.pagination.js"></script>
<!-- Morris.js charts -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
<script src="${pageContext.request.contextPath}/plugins/morris/morris.min.js"></script>
<!-- Sparkline -->
<script src="${pageContext.request.contextPath}/plugins/sparkline/jquery.sparkline.min.js"></script>
<!-- jvectormap -->
<script src="${pageContext.request.contextPath}/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
<script src="${pageContext.request.contextPath}/plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
<!-- jQuery Knob Chart -->
<script src="${pageContext.request.contextPath}/plugins/knob/jquery.knob.js"></script>
<!-- daterangepicker -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.10.2/moment.min.js"></script>
<script src="${pageContext.request.contextPath}/plugins/daterangepicker/daterangepicker.js"></script>
<!-- datepicker -->
<script src="${pageContext.request.contextPath}/plugins/datepicker/bootstrap-datepicker.js"></script>
<!-- Bootstrap WYSIHTML5 -->
<script src="${pageContext.request.contextPath}/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
<!-- Slimscroll -->
<script src="${pageContext.request.contextPath}/plugins/slimScroll/jquery.slimscroll.min.js"></script>
<!-- FastClick -->
<script src="${pageContext.request.contextPath}/plugins/fastclick/fastclick.min.js"></script>
<!-- AdminLTE App -->
<script src="${pageContext.request.contextPath}/dist/js/app.min.js"></script>
<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
<script src="${pageContext.request.contextPath}/dist/js/pages/dashboard.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="${pageContext.request.contextPath}/dist/js/demo.js"></script>
<script type="text/javascript">
    function selVel() {
        $("[name=t]").html("")
        $.get("${pageContext.request.contextPath}/getVehicleByVehicle",$('#ve').serialize(),function (date) {
            $.each(date.rows,function(i,dom) {
                $("#vehiclelist").append("<tr name='t'><td>"+dom.carLicense+"</td> <td>"+dom.vin+"</td> <td>"+dom.iccid+"</td> <td>"+dom.carType+"</td> <td>"+dom.provinces+"</td> <td>"+dom.city+"</td><td><a href=''>删除</a></td><td><a href='javascript:upVel("+dom.id+")'>修改</a></td>  </tr>")
            })
        })

    }
    function lode() {
        $("[name=t]").html("")
        $.ajax({
        url:"${pageContext.request.contextPath}/getVehiclelist",
        type:"POST",
        success:function (date) {

            $.each(date.rows,function(i,dom) {
                $("#vehiclelist").append("<tr name='t'><td>"+dom.carLicense+"</td> <td>"+dom.vin+"</td> <td>"+dom.iccid+"</td> <td>"+dom.carType+"</td> <td>"+dom.provinces+"</td> <td>"+dom.city+"</td><td><a href='javascript:delVel("+dom.id+")'>删除</a></td><td><a href='javascript:upVel("+dom.id+")'>修改</a></td> </tr>")
            })



        }

    });



    }
    function delVel(a){
        alert(a)
        $.ajax({
            url:"${pageContext.request.contextPath}/delVehiclebyid?id="+a,
            type:"POST",
            success:function (date) {
                if(date>0){
                    alert('删除成功')
                    window.location.href="${pageContext.request.contextPath}/getAllVehicle";
                }
                if(date==0){
                    alert('异常删除')
                }
            }
        });
    }
    $("#addCar").click(function(){
        $("#mymodal").modal('show');
    });
    function addCar(){
        var car=$('#frmAdd').serializeArray()
        //返回数据结构，是json数组，每个对像分别name和value为key，代表这个表单元素的name和value
        $.post('${pageContext.request.contextPath}/AddVehicle',car,function(data){
            if(data==true){
                alert('添加成功');
                window.location.href="${pageContext.request.contextPath}/getAllVehicle";
                $("#mymodal").modal("hide");
            }else {
                alert('添加失败');
            }
        })
    }
    function vidictype() {
        location.href="${pageContext.request.contextPath}/getdictionariesList"
    }
    function upVel(a) {
        alert(a)
        $("[name=id]").val(a);
        $.ajax({
            url:"${pageContext.request.contextPath}/getVehicle?id="+a,
            type:"POST",
            success:function (date) {
                $("#upvehicle [name=carLicense]").val(date.carLicense);
                $("#upvehicle [name=vin]").val(date.vin);
                $("#upvehicle [name=iccid]").val(date.iccid);
                $("#upvehicle [name=carType]").val(date.carType);
                $("#upvehicle [name=provinces]").val(date.provinces);
                $("#upvehicle [name=city]").val(date.city);

            }
        });
        $("#upvehicle").modal('show');
    }
    function updateCar() {
        var car=$('#upveh').serializeArray()
        //返回数据结构，是json数组，每个对像分别name和value为key，代表这个表单元素的name和value
        $.post('${pageContext.request.contextPath}/updateVehicle',car,function(data){
            if(data==true){
                alert('修改成功');
                window.location.href="${pageContext.request.contextPath}/getAllVehicle";
                $("#mymodal").modal("hide");
            }else {
                alert('修改失败');
            }
        })
    }

    function onepage(date) {
        //渲染分页
        $('#pagination').pagination(date.pageCount, {
            current_page : date.pageindex,
            items_per_page : 3,
            num_display_entries : 3,
            callback : lode,
            prev_text : '上一页',
            next_text : '下一页'
        });
    }

    $(function () {
        lode()
        $("#example1").DataTable();
        $('#example2').DataTable({
            "paging": true,
            "lengthChange": false,
            "searching": false,
            "ordering": true,
            "info": true,
            "autoWidth": false
        });


    })
</script>
</body>
</html>
