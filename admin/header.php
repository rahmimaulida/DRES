<?php
error_reporting(0);
session_start();
include("../config.php");
if($_SESSION['level'] == 'Super User'){
  header("location: ../su/index.php");
}else if($_SESSION['level'] == 'User'){
  header("location: ../user/index.php");
}else if($_SESSION['level'] == 'Operator'){
  header("location: ../operator/index.php");
}else if($_SESSION['level'] == 'Visitor'){
  header("location: ../guest/index.php");
}else if($_SESSION['level'] == ''){
  header("location: ../index.php");
}
$qry=mysql_query("SELECT * FROM tbl_notif WHERE target='".$_SESSION['username']."'");
$num=mysql_num_rows($qry);
error_reporting(0);
ini_set('display_errors', 0);
?>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Welcome to DRES</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.7 -->
  <link rel="stylesheet" href="../assets/bower_components/bootstrap/dist/css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="../assets/bower_components/font-awesome/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="../assets/bower_components/Ionicons/css/ionicons.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="../assets/dist/css/AdminLTE.min.css">
  <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
  <link rel="stylesheet" href="../assets/dist/css/skins/_all-skins.min.css">
  <link rel="stylesheet" href="../assets/bower_components/datatables.net-bs/css/dataTables.bootstrap.min.css">
  <!-- Morris chart -->
  <link rel="stylesheet" href="../assets/bower_components/morris.js/morris.css">
  <!-- jvectormap -->
  <link rel="stylesheet" href="../assets/bower_components/jvectormap/jquery-jvectormap.css">
  <!-- Date Picker -->
  <link rel="stylesheet" href="../assets/bower_components/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css">
  <!-- Daterange picker -->
  <link rel="stylesheet" href="../assets/bower_components/bootstrap-daterangepicker/daterangepicker.css">
  <!-- bootstrap wysihtml5 - text editor -->
  <link rel="stylesheet" href="../assets/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">
  <!-- Select2 -->
  <link rel="stylesheet" href="../assets/bower_components/bootstrap-select/dist/css/bootstrap-select.css">


  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->

  <!-- Google Font -->
</head>
<body class="hold-transition skin-green sidebar-mini sidebar-collapse">
<div class="wrapper">

  <header class="main-header">
    <!-- Logo -->
    <a href="index.php" class="logo">
      <!-- mini logo for sidebar mini 50x50 pixels -->
      <span class="logo-mini"><b>DRES</b></span>
      <!-- logo for regular state and mobile devices -->
      <span class="logo-lg"><b>DRES</b></span>
    </a>
    <!-- Header Navbar: style can be found in header.less -->
    <nav class="navbar navbar-static-top">
      <!-- Sidebar toggle button-->
      <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
        <span class="sr-only">Toggle navigation</span>
      </a>

      <div class="navbar-custom-menu">
        <ul class="nav navbar-nav">
          <!-- Messages: style can be found in dropdown.less-->
          <li class="dropdown messages-menu">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              <i class="fa fa-bell-o"></i>
              <span class="label label-success"><?php echo $num; ?></span>
            </a>
            <ul class="dropdown-menu">
              <li class="header">You have <?php echo $num; ?> notification</li>
              <li>
                <!-- inner menu: contains the actual data -->
                <ul class="menu">
                <?php while($res=mysql_fetch_array($qry)){ ?>
                  <li><!-- start message -->
                    <a href="#">
                      <div class="pull-left">
                      <img src="../assets/image/header.png" class="user-image" alt="User Image" style="background-color: white;">
                      </div>
                      <h4>
                        <?php echo $res['by']; ?>
                        <small><i class="fa fa-clock-o"></i> 5 mins</small>
                      </h4>
                      <p><?php echo $res['info']; ?></p>
                    </a>
                  </li>
                  <!-- end message -->
                  <?php } ?>
                </ul>
              </li>
              <li class="footer"><a href="#">See All Notif</a></li>
            </ul>
          </li>

          <?php  
          $query="SELECT * FROM tbl_prod_reject where statusdel = 1";
          $jumlahnotif = mysql_query($query);
          $jumlah = mysql_num_rows($jumlahnotif);
          ?> 
          <li class="dropdown notifications-menu" >
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              <i class="fa fa-flag"></i>
              <span class="label label-danger"><?php echo $jumlah; ?></span>
            </a>
            <ul class="dropdown-menu" style="width: 450px">
              <li class="header">You have <?php echo $jumlah; ?> Delete Propose</li>
              <li>
                <ul class="menu">
                  <!-- Date -->
                  <?php
                    $query=mysql_query("SELECT * FROM tbl_prod_reject where statusdel = 1");
                    while($b=mysql_fetch_array($query)){  
                      $no_ticket = $b['no_ticket'];
                      $id = $b['id_reject'];
                      $material = $b['material_name'];?>
                  <li>
                    <a>
                      <i class="fa fa-warning text-yellow"></i> Some Material on Ticket <?php echo $no_ticket; ?> need approval to delete || 
                      <button class="btn btn-info btn-xs" onclick="window.location.href='showDelete.php?ticket=<?php echo $no_ticket?>&id=<?php echo $id?>&material=<?php echo $material?>'"><i class="fa fa-eye "></i></button>
                      <button class="btn btn-danger btn-xs" onclick="window.location.href='delitem.php?ticket=<?php echo $no_ticket?>&id=<?php echo $id?>&material=<?php echo $material?>'"><i class="fa fa-trash "></i></button>
                      <button class="btn btn-warning btn-xs" onclick="window.location.href='delitem-cancel.php?ticket=<?php echo $no_ticket?>&id=<?php echo $id?>&material=<?php echo $material?>'"><i class="fa fa-times "></i></button>
                    </a>
                  </li>
                <?php } ?>
                </ul>
              </li>
            </ul>
          </li>
          <!-- User Account: style can be found in dropdown.less -->
          <li class="dropdown user user-menu">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              <img src="../assets/image/header.png" class="user-image" alt="User Image" style="background-color: white;">
              <span class="hidden-xs"><?php echo $_SESSION['name']; ?></span>
            </a>
            <ul class="dropdown-menu">
              <!-- User image -->
              <li class="user-header">
                <img src="../assets/image/header.png" class="img-circle" alt="User Image"  style="background-color: white;">

                <p>
                  <?php echo $_SESSION['name']; ?>
                  <small><?php echo $_SESSION['level']; ?></small>
                </p>
              </li>
              <!-- Menu Body -->
              <!-- Menu Footer-->
              <li class="user-footer">
                <div class="text-center">
                  <a href="../logout.php" class="btn btn-default btn-flat"><i class="fa fa-sign-out"></i> Sign out</a>
                </div>
              </li>
            </ul>
          </li>
          <!-- Control Sidebar Toggle Button -->
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
          <img src="../assets/image/header.png" style="background-color: white;" class="img-circle" alt="User Image">
        </div>
        <div class="pull-left info">
          <p><?php echo $_SESSION['name']; ?></p>
          <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
        </div>
      </div>
      <!-- /.search form -->
      <!-- sidebar menu: : style can be found in sidebar.less -->
      <ul class="sidebar-menu" data-widget="tree">
        <li class="header">MAIN NAVIGATION</li>
        <li>
          <a href="index.php">
            <i class="fa fa-home"></i> <span>Dashboard</span>
          </a>
        </li>
        <li>
          <a href="viewaction.php">
            <i class="fa fa-pencil"></i> <span>Action Tracker</span>
          </a>
        </li>
        <li class="treeview">
          <a href="#">
            <i class="fa fa-clipboard"></i>
            <span>Master Data</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="userview.php"><i class="fa fa-circle-o"></i> Master User</a></li>
            <li><a href="lineview.php"><i class="fa fa-circle-o"></i> Master Line</a></li>
            <li><a href="sectorview.php"><i class="fa fa-circle-o"></i> Master Sector</a></li>
            <li><a href="departmentview.php"><i class="fa fa-circle-o"></i> Master Department</a></li>
            <li><a href="materialview.php"><i class="fa fa-circle-o"></i> Master Material</a></li>
            <li><a href="deflist.php"><i class="fa fa-circle-o"></i> Master Defect</a></li>
          </ul>
        </li>
        <li class="treeview">
          <a href="#">
            <i class="fa fa-list"></i>
            <span>Execution</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="add_reject.php"><i class="fa fa-circle-o"></i> Add Product Reject</a></li>
            <li><a href="product_reject.php"><i class="fa fa-circle-o"></i> Waiting List Approval</a></li>
            <li><a href="execution_approval.php"><i class="fa fa-circle-o"></i> Approval</a></li>
          </ul>
        </li>
        <li>
          <a href="threshold.php">
            <i class="fa fa-dollar"></i> <span>Threshold</span>
          </a>
        </li>
        <li>
          <a href="delegateForm.php">
            <i class="glyphicon glyphicon-share"></i> <span>Delegate Approval</span>
          </a>
        </li>
      </ul>
    </section>
    <!-- /.sidebar -->
  </aside>