<%-- 
    Document   : m_dashboard
    Created on : Feb 19, 2024, 1:13:29 PM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">


    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width,initial-scale=1">
        <title>Foodtech Dashboard</title>
        <!-- Iconic Fonts -->
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <link href="vendors/iconic-fonts/font-awesome/css/all.min.css" rel="stylesheet">
        <link rel="stylesheet" href="vendors/iconic-fonts/flat-icons/flaticon.css">
        <link rel="stylesheet" href="vendors/iconic-fonts/cryptocoins/cryptocoins.css">
        <link rel="stylesheet" href="vendors/iconic-fonts/cryptocoins/cryptocoins-colors.css">
        <!-- Bootstrap core CSS -->
        <link href="assets/css/bootstrap.min.css" rel="stylesheet">
        <!-- jQuery UI -->
        <link href="assets/css/jquery-ui.min.css" rel="stylesheet">
        <!-- Page Specific CSS (Slick Slider.css) -->
        <link href="assets/css/slick.css" rel="stylesheet">
        <link href="assets/css/datatables.min.css" rel="stylesheet">
        <!-- Foodtech styles -->
        <link href="assets/css/style.css" rel="stylesheet">
        <!-- Favicon -->
        <link rel="icon" type="image/png" sizes="32x32" href="favicon.ico">
    </head>

    <body class="ms-body ms-aside-left-open ms-primary-theme ms-has-quickbar">

        <!-- Sidebar Navigation Left Begin -->
        <aside id="ms-side-nav" class="side-nav fixed ms-aside-scrollable ms-aside-left">
            <!-- Logo -->
            <div class="logo-sn ms-d-block-lg">
                <a class="pl-0 ml-0 py-0 text-center" href="index.html">
                    <img style="max-width: 255px;" src="https://scontent.fsgn2-4.fna.fbcdn.net/v/t1.15752-9/423568413_220611387798284_6265991015599051178_n.png?_nc_cat=101&ccb=1-7&_nc_sid=8cd0a2&_nc_ohc=6xm1kK9w87wAX9TEvv_&_nc_ht=scontent.fsgn2-4.fna&oh=03_AdTwMqeyx_8lcqp09mOKsXlRojFzIL02Pvvb9Y3q1WDgZA&oe=65FA4050" alt="logo">
                </a>
            </div>
            <br>
            <!-- Navigation -->
            <ul class="accordion ms-main-aside fs-14" id="side-nav-accordion">
                <!-- Dashboard -->
                <li class="menu-item">
                    <a href="m_dashboard.jsp"> <span><i class="fas fa-columns" style="width: 14px; height: 14px;"></i>Dashboard</span>
                    </a>
                </li>
                <!-- /Dashboard -->

                <!-- Product Begin -->
                <li class="menu-item">
                    <a href="#" class="has-chevron" data-toggle="collapse" data-target="#product" aria-expanded="false" aria-controls="product1"> <span><i class="fa fa-archive fs-16"></i>Quản lý sản phẩm</span>
                    </a>
                    <ul id="product" class="collapse" aria-labelledby="product" data-parent="#side-nav-accordion">
                        <li> <a href="mkt_productlist">Danh sách sản phẩm</a>
                        </li>  
                        <li> <a href="mkt_addproduct">Thêm sản phẩm</a>
                        </li>
                        <li> <a href="#">Đánh giá sản phẩm</a>
                        </li>
                    </ul>
                </li>
                <!-- Product End -->

                <!-- News Begin -->
                <li class="menu-item">
                    <a href="#" class="has-chevron" data-toggle="collapse" data-target="#slider" aria-expanded="false" aria-controls="slider"> <span><i class="fas fa-newspaper"></i>Tin tức</span>
                    </a>
                    <ul id="slider" class="collapse" aria-labelledby="slider" data-parent="#side-nav-accordion">
                        <li> <a href="mkt_postlist"> Bài đăng</a>
                        </li>
                        <li> <a href="mkt_postcreate"> Thêm bài đăng</a>
                        </li>
                        <li> <a href="mkt_sliderlist?cateNewsId=2" >Slider</a>
                        </li>
                        <li> <a href="mkt_addslider?cateNewsId=2" >Thêm Slider</a>
                        </li>
                    </ul>
                </li>
                <!-- News End -->

                <!-- Customer Begin -->
                <li class="menu-item">
                    <a href="mkt_cuslist"> <span><i class="fas fa-user-friends fs-16"></i>Khách hàng</span>
                    </a>
                </li>
                <!-- Customer End -->



                <!-- ========= PROFILE ============================= -->
                <p style="border-bottom: 1px solid rgb(177, 177, 177); width: 80%; margin: 20px 22px"></p>
                <li class="menu-item">
                    <a href="com_upprofile"> <span><i class="fas fa-file-invoice" style="width: 14px; height: 14px;"></i>Chỉnh
                            sửa thông tin</span>
                    </a>
                </li>
                <!-- change password  -->
                <!-- change password -->
                <li class="menu-item">
                    <a href="c_changepass.jsp"> <span><i class="fas fa-key" style="width: 14px; height: 14px;"></i>Đổi mật
                            khẩu</span>
                    </a>
                </li>
                <!-- change password  -->
                <!-- change password -->
                <li class="menu-item">
                    <a href="com_logout"> <span><i class="fas fa-sign-out-alt" style="width: 14px; height: 14px;"></i>Đăng
                            xuất</span>
                    </a>
                </li>


            </ul>
        </aside>
        <!-- Sidebar Navigation Left End -->


        <!-- Main Content -->
        <main class="body-content">
            <!-- Navigation Bar -->
            <nav class="navbar ms-navbar">
                <div class="ms-aside-toggler ms-toggler pl-0" data-target="#ms-side-nav" data-toggle="slideLeft"> <span
                        class="ms-toggler-bar bg-primary"></span>
                    <span class="ms-toggler-bar bg-primary"></span>
                    <span class="ms-toggler-bar bg-primary"></span>
                </div>
                <div style="width: 25%; padding-top: 10px;">
                    <img style="width: 100%;"
                         src="https://scontent.fhan3-1.fna.fbcdn.net/v/t1.15752-9/422913501_374119282031008_2624180467215836246_n.png?_nc_cat=105&ccb=1-7&_nc_sid=8cd0a2&_nc_ohc=Qv6VonjNR50AX8G2nc_&_nc_ht=scontent.fhan3-1.fna&oh=03_AdRJCufJs3uUgbXd6mUFtWjrq5-GLQdKVLFt5ehtX0aDqg&oe=65E9FB2A"
                         alt="">
                </div>
                <ul class="ms-nav-list ms-inline mb-0" id="ms-nav-options">
                    <li class="ms-nav-item ms-nav-user dropdown">
                        <a href="#" id="userDropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <img class="ms-user-img ms-img-round float-right" src="${sessionScope.account.accAvarUrl}" alt="people">
                        </a>
                        <ul class="dropdown-menu dropdown-menu-right user-dropdown" aria-labelledby="userDropdown">
                            <li class="dropdown-menu-header">
                                <h6 class="dropdown-header ms-inline m-0"><span class="text-disabled">${sessionScope.account.accName}</span>
                                </h6>
                            </li>
                            <li class="dropdown-divider"></li>
                            <li class="ms-dropdown-list">
                                <a class="media fs-14 p-2" href="com_upprofile"> <span><i class="flaticon-user mr-2"></i> Hồ sơ</span>
                                </a>
                                <a class="media fs-14 p-2" href="c_changepass.jsp"> <span><i class="flaticon-security mr-2"></i> Đổi mật
                                        khẩu</span>
                                </a>
                            </li>
                            <li class="dropdown-divider"></li>
                            <li class="dropdown-menu-footer">
                                <a class="media fs-14 p-2" href="com_logout"> <span><i class="flaticon-shut-down mr-2"></i>
                                        Đăng xuất</span>
                                </a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </nav>

            <div class="ms-content-wrapper">
                <div class="row">
                    <div class="col-md-12">
                        <h1 class="db-header-title">Welcome, Anny</h1>
                    </div>
                    <div class="col-xl-3 col-lg-6 col-md-6">
                        <div class="ms-card ms-widget has-graph-full-width ms-infographics-widget">
                            <span class="ms-chart-label bg-black"><i class="material-icons">arrow_upward</i> 3.2%</span>
                            <div class="ms-card-body media">
                                <div class="media-body">
                                    <span class="black-text"><strong>Sells Graph</strong></span>
                                    <h2>$8,451</h2>
                                </div>
                            </div>
                            <canvas id="line-chart"></canvas>
                        </div>
                    </div>
                    <div class="col-xl-3 col-lg-6 col-md-6">
                        <div class="ms-card ms-widget has-graph-full-width ms-infographics-widget">
                            <span class="ms-chart-label bg-red"><i class="material-icons">arrow_downward</i> 4.5%</span>
                            <div class="ms-card-body media">
                                <div class="media-body">
                                    <span class="black-text"><strong>Total Visitors</strong></span>
                                    <h2>3,973</h2>
                                </div>
                            </div>
                            <canvas id="line-chart-2"></canvas>
                        </div>
                    </div>
                    <div class="col-xl-3 col-lg-6 col-md-6">
                        <div class="ms-card ms-widget has-graph-full-width ms-infographics-widget">
                            <span class="ms-chart-label bg-black"><i class="material-icons">arrow_upward</i> 12.5%</span>
                            <div class="ms-card-body media">
                                <div class="media-body">
                                    <span class="black-text"><strong>New Users</strong></span>
                                    <h2>7,333</h2>
                                </div>
                            </div>
                            <canvas id="line-chart-3"></canvas>
                        </div>
                    </div>
                    <div class="col-xl-3 col-lg-6 col-md-6">
                        <div class="ms-card ms-widget has-graph-full-width ms-infographics-widget">
                            <span class="ms-chart-label bg-red"><i class="material-icons">arrow_upward</i> 9.5%</span>
                            <div class="ms-card-body media">
                                <div class="media-body">
                                    <span class="black-text"><strong>Total Orders</strong></span>
                                    <h2>48,973</h2>
                                </div>
                            </div>
                            <canvas id="line-chart-4"></canvas>
                        </div>
                    </div>
                    <!-- Recent Orders Requested -->
                    <div class="col-xl-6 col-md-12">
                        <div class="ms-panel">
                            <div class="ms-panel-header">
                                <div class="d-flex justify-content-between">
                                    <div class="align-self-center align-left">
                                        <h6>Recent Orders Requested</h6>
                                    </div>
                                    <button type="button" class="btn btn-primary">View All</button>
                                </div>
                            </div>
                            <div class="ms-panel-body">
                                <div class="table-responsive">
                                    <table class="table table-hover">
                                        <thead>
                                            <tr>
                                                <th scope="col">Food Item</th>
                                                <th scope="col">Price</th>
                                                <th scope="col">Product ID</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td class="ms-table-f-w"> <img src="assets/img/foodtech/pizza.jpg" alt="people"> Pizza </td>
                                                <td>$19.99</td>
                                                <td>67384917</td>
                                            </tr>
                                            <tr>
                                                <td class="ms-table-f-w"> <img src="assets/img/foodtech/french-fries.jpg" alt="people"> French
                                                    Fries </td>
                                                <td>$14.59</td>
                                                <td>789393819</td>
                                            </tr>
                                            <tr>
                                                <td class="ms-table-f-w"> <img src="assets/img/foodtech/cereals.jpg" alt="people"> Multigrain Hot
                                                    Cereal </td>
                                                <td>$25.22</td>
                                                <td>137893137</td>
                                            </tr>
                                            <tr>
                                                <td class="ms-table-f-w"> <img src="assets/img/foodtech/egg-sandwich.jpg" alt="people"> Fried Egg
                                                    Sandwich </td>
                                                <td>$11.23</td>
                                                <td>235193138</td>
                                            </tr>

                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-6 col-md-12">
                        <div class="ms-panel ms-panel-fh">
                            <div class="ms-panel-header new">
                                <h6>Monthly Revenue</h6>
                                <select class="form-control new" id="exampleSelect">
                                    <option value="1">January</option>
                                    <option value="2">February</option>
                                    <option value="3">March </option>
                                    <option value="4">April</option>
                                    <option value="5">May</option>
                                    <option value="1">June</option>
                                    <option value="2">July</option>
                                    <option value="3">August</option>
                                    <option value="4">September</option>
                                    <option value="5">October</option>
                                    <option value="4">November</option>
                                    <option value="5">December</option>
                                </select>
                            </div>
                            <div class="ms-panel-body">
                                <span class="progress-label"> <strong>Week 1</strong> </span>
                                <div class="progress">
                                    <div class="progress-bar bg-primary" role="progressbar" style="width: 25%" aria-valuenow="25"
                                         aria-valuemin="0" aria-valuemax="100">25%</div>
                                </div>
                                <span class="progress-label"> <strong>Week 2</strong> </span>
                                <div class="progress">
                                    <div class="progress-bar bg-primary" role="progressbar" style="width: 50%" aria-valuenow="50"
                                         aria-valuemin="0" aria-valuemax="100">50%</div>
                                </div>
                                <span class="progress-label"> <strong>Week 3</strong> </span>
                                <div class="progress">
                                    <div class="progress-bar bg-primary" role="progressbar" style="width: 75%" aria-valuenow="75"
                                         aria-valuemin="0" aria-valuemax="100">75%</div>
                                </div>
                                <span class="progress-label"> <strong>Week 4</strong> </span>
                                <div class="progress">
                                    <div class="progress-bar bg-primary" role="progressbar" style="width: 40%" aria-valuenow="40"
                                         aria-valuemin="0" aria-valuemax="100">40%</div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Food Orders -->
                    <div class="col-md-12">
                        <div class="ms-panel">
                            <div class="ms-panel-header">
                                <h6>Trending Orders</h6>
                            </div>
                            <div class="ms-panel-body">
                                <div class="row">

                                    <div class="col-xl-3 col-lg-6 col-md-6 col-sm-6">
                                        <div class="ms-card no-margin">
                                            <div class="ms-card-img">
                                                <img src="assets/img/foodtech/food-5.jpg" alt="card_img">
                                            </div>
                                            <div class="ms-card-body">
                                                <div class="ms-card-heading-title">
                                                    <h6>Meat Stew</h6>
                                                    <span class="green-text"><strong>$25.00</strong></span>
                                                </div>

                                                <div class="ms-card-heading-title">
                                                    <p>Orders <span class="red-text">15</span></p>
                                                    <p>Income <span class="red-text">$175</span></p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xl-3 col-lg-6 col-md-6 col-sm-6">
                                        <div class="ms-card no-margin">
                                            <div class="ms-card-img">
                                                <img src="assets/img/foodtech/food-2.jpg" alt="card_img">
                                            </div>
                                            <div class="ms-card-body">
                                                <div class="ms-card-heading-title">
                                                    <h6>Pancake</h6>
                                                    <span class="green-text"><strong>$50.00</strong></span>
                                                </div>

                                                <div class="ms-card-heading-title">
                                                    <p>Orders <span class="red-text">75</span></p>
                                                    <p>Income <span class="red-text">$275</span></p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xl-3 col-lg-6 col-md-6 col-sm-6">
                                        <div class="ms-card no-margin">
                                            <div class="ms-card-img">
                                                <img src="assets/img/foodtech/food-4.jpg" alt="card_img">
                                            </div>
                                            <div class="ms-card-body">
                                                <div class="ms-card-heading-title">
                                                    <h6>Burger</h6>
                                                    <span class="green-text"><strong>$45.00</strong></span>
                                                </div>

                                                <div class="ms-card-heading-title">
                                                    <p>Orders <span class="red-text">85</span></p>
                                                    <p>Income <span class="red-text">$575</span></p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xl-3 col-lg-6 col-md-6 col-sm-6">
                                        <div class="ms-card no-margin">
                                            <div class="ms-card-img">
                                                <img src="assets/img/foodtech/food-3.jpg" alt="card_img">
                                            </div>
                                            <div class="ms-card-body">
                                                <div class="ms-card-heading-title">
                                                    <h6>Saled</h6>
                                                    <span class="green-text"><strong>$85.00</strong></span>
                                                </div>
                                                <div class="ms-card-heading-title">
                                                    <p>Orders <span class="red-text">175</span></p>
                                                    <p>Income <span class="red-text">$775</span></p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- END/Food Orders -->
                    <!-- Recent Orders Requested -->
                    <div class="col-xl-7 col-md-12">
                        <div class="ms-panel ms-panel-fh">
                            <div class="ms-panel-header">
                                <div class="d-flex justify-content-between">
                                    <div class="ms-header-text">
                                        <h6>Order Timing Chart</h6>
                                    </div>
                                </div>

                            </div>
                            <div class="ms-panel-body pt-0">
                                <div class="d-flex justify-content-between ms-graph-meta">
                                    <ul class="ms-list-flex mt-3 mb-5">
                                        <li>
                                            <span>Total Orders</span>
                                            <h3 class="ms-count">703,49</h3>
                                        </li>
                                        <li>
                                            <span>New Orders</span>
                                            <h3 class="ms-count">95,038</h3>
                                        </li>
                                        <li>
                                            <span>Repeat Orders</span>
                                            <h3 class="ms-count">28,387</h3>
                                        </li>
                                        <li>
                                            <span>Cancel Orders</span>
                                            <h3 class="ms-count">260</h3>
                                        </li>
                                    </ul>
                                </div>
                                <canvas id="youtube-subscribers"></canvas>
                            </div>
                        </div>
                    </div>

                    <!-- Favourite Products -->
                    <div class="col-xl-5 col-md-12">
                        <div class="ms-panel ms-widget ms-crypto-widget">
                            <div class="ms-panel-header">
                                <h6>Favourite charts</h6>
                            </div>
                            <div class="ms-panel-body p-0">
                                <ul class="nav nav-tabs nav-justified has-gap px-4 pt-4" role="tablist">
                                    <li role="presentation" class="fs-12"><a href="#btc" aria-controls="btc" class="active show" role="tab"
                                                                             data-toggle="tab"> Mon </a></li>
                                    <li role="presentation" class="fs-12"><a href="#xrp" aria-controls="xrp" role="tab" data-toggle="tab">
                                            Tue </a></li>
                                    <li role="presentation" class="fs-12"><a href="#ltc" aria-controls="ltc" role="tab" data-toggle="tab">
                                            Wed </a></li>
                                    <li role="presentation" class="fs-12"><a href="#eth" aria-controls="eth" role="tab" data-toggle="tab">
                                            Thu </a></li>
                                    <li role="presentation" class="fs-12"><a href="#zec" aria-controls="zec" role="tab" data-toggle="tab">
                                            Fri </a></li>
                                </ul>
                                <div class="tab-content">
                                    <div role="tabpanel" class="tab-pane active show fade in" id="btc">
                                        <div class="table-responsive">
                                            <table class="table table-hover thead-light">
                                                <thead>
                                                    <tr>
                                                        <th scope="col">Restaurant Names</th>
                                                        <th scope="col">Qty</th>
                                                        <th scope="col">Orders</th>
                                                        <th scope="col">Profit</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td>Hunger House</td>
                                                        <td>8528</td>
                                                        <td class="ms-text-success">+17.24%</td>
                                                        <td>7.65%</td>
                                                    </tr>
                                                    <tr>
                                                        <td>Food Lounge</td>
                                                        <td>4867</td>
                                                        <td class="ms-text-danger">-12.24%</td>
                                                        <td>9.12%</td>
                                                    </tr>
                                                    <tr>
                                                        <td>Delizious</td>
                                                        <td>7538</td>
                                                        <td class="ms-text-success">+32.04%</td>
                                                        <td>14.29%</td>
                                                    </tr>
                                                    <tr>
                                                        <td>Netherfood</td>
                                                        <td>1614</td>
                                                        <td class="ms-text-danger">-20.75%</td>
                                                        <td>12.25%</td>
                                                    </tr>
                                                    <tr>
                                                        <td>Rusmiz</td>
                                                        <td>7538</td>
                                                        <td class="ms-text-success">+32.04%</td>
                                                        <td>14.29%</td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                    <div role="tabpanel" class="tab-pane fade" id="xrp">
                                        <div class="table-responsive">
                                            <table class="table table-hover thead-light">
                                                <thead>
                                                    <tr>
                                                        <th scope="col">Restaurant Name</th>
                                                        <th scope="col">Qty</th>
                                                        <th scope="col">Orders</th>
                                                        <th scope="col">Profit</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td>Hunger House</td>
                                                        <td>8528</td>
                                                        <td class="ms-text-success">+17.24%</td>
                                                        <td>7.65%</td>
                                                    </tr>
                                                    <tr>
                                                        <td>Food Lounge</td>
                                                        <td>4867</td>
                                                        <td class="ms-text-danger">-12.24%</td>
                                                        <td>9.12%</td>
                                                    </tr>
                                                    <tr>
                                                        <td>Delizious</td>
                                                        <td>7538</td>
                                                        <td class="ms-text-success">+32.04%</td>
                                                        <td>14.29%</td>
                                                    </tr>
                                                    <tr>
                                                        <td>Netherfood</td>
                                                        <td>1614</td>
                                                        <td class="ms-text-danger">-20.75%</td>
                                                        <td>12.25%</td>
                                                    </tr>
                                                    <tr>
                                                        <td>Rusmiz</td>
                                                        <td>7538</td>
                                                        <td class="ms-text-success">+32.04%</td>
                                                        <td>14.29%</td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                    <div role="tabpanel" class="tab-pane fade" id="ltc">
                                        <div class="table-responsive">
                                            <table class="table table-hover thead-light">
                                                <thead>
                                                    <tr>
                                                        <th scope="col">Restaurant Name</th>
                                                        <th scope="col">Qty</th>
                                                        <th scope="col">Orders</th>
                                                        <th scope="col">Profit</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td>Hunger House</td>
                                                        <td>8528</td>
                                                        <td class="ms-text-success">+17.24%</td>
                                                        <td>7.65%</td>
                                                    </tr>
                                                    <tr>
                                                        <td>Food Lounge</td>
                                                        <td>4867</td>
                                                        <td class="ms-text-danger">-12.24%</td>
                                                        <td>9.12%</td>
                                                    </tr>
                                                    <tr>
                                                        <td>Delizious</td>
                                                        <td>7538</td>
                                                        <td class="ms-text-success">+32.04%</td>
                                                        <td>14.29%</td>
                                                    </tr>
                                                    <tr>
                                                        <td>Netherfood</td>
                                                        <td>1614</td>
                                                        <td class="ms-text-danger">-20.75%</td>
                                                        <td>12.25%</td>
                                                    </tr>
                                                    <tr>
                                                        <td>Rusmiz</td>
                                                        <td>7538</td>
                                                        <td class="ms-text-success">+32.04%</td>
                                                        <td>14.29%</td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                    <div role="tabpanel" class="tab-pane fade" id="eth">
                                        <div class="table-responsive">
                                            <table class="table table-hover thead-light">
                                                <thead>
                                                    <tr>
                                                        <th scope="col">Restaurant Name</th>
                                                        <th scope="col">Qty</th>
                                                        <th scope="col">Orders</th>
                                                        <th scope="col">Profit</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td>Hunger House</td>
                                                        <td>8528</td>
                                                        <td class="ms-text-success">+17.24%</td>
                                                        <td>7.65%</td>
                                                    </tr>
                                                    <tr>
                                                        <td>Food Lounge</td>
                                                        <td>4867</td>
                                                        <td class="ms-text-danger">-12.24%</td>
                                                        <td>9.12%</td>
                                                    </tr>
                                                    <tr>
                                                        <td>Delizious</td>
                                                        <td>7538</td>
                                                        <td class="ms-text-success">+32.04%</td>
                                                        <td>14.29%</td>
                                                    </tr>
                                                    <tr>
                                                        <td>Netherfood</td>
                                                        <td>1614</td>
                                                        <td class="ms-text-danger">-20.75%</td>
                                                        <td>12.25%</td>
                                                    </tr>
                                                    <tr>
                                                        <td>Rusmiz</td>
                                                        <td>7538</td>
                                                        <td class="ms-text-success">+32.04%</td>
                                                        <td>14.29%</td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                    <div role="tabpanel" class="tab-pane fade" id="zec">
                                        <div class="table-responsive">
                                            <table class="table table-hover thead-light">
                                                <thead>
                                                    <tr>
                                                        <th scope="col">Restaurant Name</th>
                                                        <th scope="col">Qty</th>
                                                        <th scope="col">Orders</th>
                                                        <th scope="col">Profit</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td>Hunger House</td>
                                                        <td>8528</td>
                                                        <td class="ms-text-success">+17.24%</td>
                                                        <td>7.65%</td>
                                                    </tr>
                                                    <tr>
                                                        <td>Food Lounge</td>
                                                        <td>4867</td>
                                                        <td class="ms-text-danger">-12.24%</td>
                                                        <td>9.12%</td>
                                                    </tr>
                                                    <tr>
                                                        <td>Delizious</td>
                                                        <td>7538</td>
                                                        <td class="ms-text-success">+32.04%</td>
                                                        <td>14.29%</td>
                                                    </tr>
                                                    <tr>
                                                        <td>Netherfood</td>
                                                        <td>1614</td>
                                                        <td class="ms-text-danger">-20.75%</td>
                                                        <td>12.25%</td>
                                                    </tr>
                                                    <tr>
                                                        <td>Rusmiz</td>
                                                        <td>7538</td>
                                                        <td class="ms-text-success">+32.04%</td>
                                                        <td>14.29%</td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                        <!-- Favourite Products -->
                        <!-- Total Earnings -->
                        <div class="ms-panel">
                            <div class="ms-panel-header">
                                <h6>Total Earnings</h6>
                            </div>
                            <div class="ms-panel-body p-0">
                                <div class="ms-quick-stats">
                                    <div class="ms-stats-grid">
                                        <i class="fa fa-star"></i>
                                        <p class="ms-text-dark">$8,033</p>
                                        <span>Today</span>
                                    </div>
                                    <div class="ms-stats-grid">
                                        <i class="fa fa-university"></i>
                                        <p class="ms-text-dark">$3,039</p>
                                        <span>Yesterday</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Total Earnings -->
                    <!-- Recent Placed Orders< -->
                    <div class="col-12">
                        <div class="ms-panel">
                            <div class="ms-panel-header">
                                <h6>Recently Placed Orders</h6>
                            </div>
                            <div class="ms-panel-body">
                                <div class="table-responsive">
                                    <table class="table table-hover thead-primary">
                                        <thead>
                                            <tr>
                                                <th scope="col">Order ID</th>
                                                <th scope="col">Order Name</th>
                                                <th scope="col">Customer Name</th>
                                                <th scope="col">Location</th>
                                                <th scope="col">Order Status</th>
                                                <th scope="col">Delivered Time</th>
                                                <th scope="col">Price</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <th scope="row">1</th>
                                                <td>French Fries</td>
                                                <td>Jhon Leo</td>
                                                <td>New Town</td>
                                                <td><span class="badge badge-primary">Pending</span>
                                                </td>
                                                <td>10:05</td>
                                                <td>$10</td>
                                            </tr>
                                            <tr>
                                                <th scope="row">2</th>
                                                <td>Mango Pie</td>
                                                <td>Kristien</td>
                                                <td>Old Town</td>
                                                <td><span class="badge badge-dark">Cancelled</span>
                                                </td>
                                                <td>14:05</td>
                                                <td>$9</td>
                                            </tr>
                                            <tr>
                                                <th scope="row">3</th>
                                                <td>FrieD Egg Sandwich</td>
                                                <td>Jack Suit</td>
                                                <td>Oxford Street</td>
                                                <td><span class="badge badge-success">Delivered</span>
                                                </td>
                                                <td>12:05</td>
                                                <td>$19</td>
                                            </tr>
                                            <tr>
                                                <th scope="row">4</th>
                                                <td>Lemon Yogurt Parfait</td>
                                                <td>Alesdro Guitto</td>
                                                <td>Church hill</td>
                                                <td><span class="badge badge-success">Delivered</span>
                                                </td>
                                                <td>12:05</td>
                                                <td>$18</td>
                                            </tr>
                                            <tr>
                                                <th scope="row">5</th>
                                                <td>Spicy Grill Sandwich</td>
                                                <td>Jacob Sahwny</td>
                                                <td>palace Road</td>
                                                <td><span class="badge badge-success">Delivered</span>
                                                </td>
                                                <td>12:05</td>
                                                <td>$21</td>
                                            </tr>
                                            <tr>
                                                <th scope="row">6</th>
                                                <td>Chicken Sandwich</td>
                                                <td>Peter Gill</td>
                                                <td>Street 21</td>
                                                <td><span class="badge badge-primary">Pending</span>
                                                </td>
                                                <td>12:05</td>
                                                <td>$15</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- client chat -->
                </div>
            </div>
        </main>



        <!-- SCRIPTS -->
        <!-- Global Required Scripts Start -->
        <script src="assets/js/jquery-3.3.1.min.js"></script>
        <script src="assets/js/popper.min.js"></script>
        <script src="assets/js/bootstrap.min.js"></script>
        <script src="assets/js/perfect-scrollbar.js"></script>
        <script src="assets/js/jquery-ui.min.js"></script>
        <!-- Global Required Scripts End -->
        <!-- Page Specific Scripts Start -->

        <script src="assets/js/Chart.bundle.min.js"></script>
        <script src="assets/js/widgets.js"></script>
        <script src="assets/js/clients.js"></script>
        <script src="assets/js/Chart.Financial.js"></script>
        <script src="assets/js/d3.v3.min.js"></script>
        <script src="assets/js/topojson.v1.min.js"></script>
        <script src="assets/js/datatables.min.js"></script>
        <script src="assets/js/data-tables.js"></script>
        <!-- Page Specific Scripts Finish -->
        <!-- Foodtech core JavaScript -->
        <script src="assets/js/framework.js"></script>
        <!-- Settings -->
        <script src="assets/js/settings.js"></script>
    </body>


</html>