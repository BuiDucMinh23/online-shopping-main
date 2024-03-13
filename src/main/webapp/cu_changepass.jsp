
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="com.team3.onlineshopping.model.Account" %>
<%@ page import="com.team3.onlineshopping.model.Customer" %>
<%@ page import="com.team3.onlineshopping.dal.CustomerDAO" %>
<<<<<<< HEAD
<%@ page import="com.team3.onlineshopping.dal.OrderDetailsDAO" %>
<%@ page import="com.team3.onlineshopping.dal.OrderDAO" %>
<%@ page import="com.team3.onlineshopping.model.Order" %>
<%@ page import="com.team3.onlineshopping.model.OrderDetails" %>
=======
>>>>>>> ac25e0a102a7e3e17fcb871226267f3b81ee7242
<%@ page import="com.team3.onlineshopping.model.Cart" %>
<%@ page import="com.team3.onlineshopping.dal.CartDAO" %>
<%@ page import="jakarta.servlet.http.HttpServletRequest" %>
<%@ page import="jakarta.servlet.http.HttpServlet" %>
<%@ page import="jakarta.servlet.http.HttpSession" %>
<%@ page import="java.util.List" %>
<<<<<<< HEAD
<%@ page import="java.util.ArrayList" %>
=======
>>>>>>> ac25e0a102a7e3e17fcb871226267f3b81ee7242
<!DOCTYPE html>
<html>

    <head>
        <meta charset="UTF-8">
        <meta name="description" content="Ashion Template">
        <meta name="keywords" content="Ashion, unica, creative, html">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Ashion</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous"
              class="btrap5">
        <!-- Css Styles -->
        <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
        <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
        <link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
        <link rel="stylesheet" href="css/jquery-ui.min.css" type="text/css">
        <link rel="stylesheet" href="css/magnific-popup.css" type="text/css">
        <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
        <link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
        <link rel="stylesheet" href="css/style.css" type="text/css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"/>
        <link href='https://fonts.googleapis.com/css?family=Manrope' rel='stylesheet'>
        <style type="text/css">
            html {
                scroll-behavior: smooth
            }

            body {
                text-size-adjust: 100%;
                position: relative;
                width: 100%;
                min-height: 100vh
            }

            *,
            ::after,
            ::before {
                box-sizing: border-box
            }

            a:not([class]) {
                text-decoration-skip-ink: auto
            }

            a,
            abbr,
            acronym,
            address,
            applet,
            article,
            aside,
            audio,
            b,
            big,
            blockquote,
            body,
            canvas,
            caption,
            center,
            cite,
            code,
            dd,
            del,
            details,
            dfn,
            div,
            dl,
            dt,
            em,
            embed,
            fieldset,
            figcaption,
            figure,
            footer,
            form,
            h1,
            h2,
            h3,
            h4,
            h5,
            h6,
            header,
            hgroup,
            html,
            i,
            iframe,
            img,
            ins,
            kbd,
            label,
            legend,
            li,
            mark,
            menu,
            nav,
            object,
            ol,
            output,
            p,
            pre,
            q,
            ruby,
            s,
            samp,
            section,
            small,
            span,
            strike,
            strong,
            sub,
            summary,
            sup,
            table,
            tbody,
            td,
            tfoot,
            th,
            thead,
            time,
            tr,
            tt,
            u,
            ul,
            var,
            video {
                font-size: 100%;
                font: inherit;
                margin: 0;
                padding: 0;
                border: 0;
                vertical-align: baseline
            }

            :focus {
                outline: 0
            }

            article,
            aside,
            details,
            figcaption,
            figure,
            footer,
            header,
            hgroup,
            main,
            menu,
            nav,
            section {
                display: block
            }

            ol,
            ul {
                list-style: none
            }

            blockquote,
            q {
                quotes: none
            }

            blockquote:after,
            blockquote:before,
            q:after,
            q:before {
                content: '';
                content: none
            }

            table {
                border-collapse: collapse;
                border-spacing: 0
            }

            td:empty,
            th:empty {
                opacity: 0
            }

            input,
            input:required {
                box-shadow: none
            }

            input:-webkit-autofill,
            input:-webkit-autofill:active,
            input:-webkit-autofill:focus,
            input:-webkit-autofill:hover {
                -webkit-box-shadow: 0 0 0 30px #fff inset
            }

            input[type=search]::-webkit-search-cancel-button,
            input[type=search]::-webkit-search-decoration,
            input[type=search]::-webkit-search-results-button,
            input[type=search]::-webkit-search-results-decoration {
                -webkit-appearance: none;
                -moz-appearance: none
            }

            input[type=search] {
                -webkit-appearance: none;
                -moz-appearance: none;
                -webkit-box-sizing: content-box;
                -moz-box-sizing: content-box;
                box-sizing: content-box
            }

            textarea {
                overflow: auto;
                vertical-align: top;
                resize: vertical
            }

            audio,
            canvas,
            video {
                display: inline-block;
                max-width: 100%
            }

            audio:not([controls]) {
                display: none;
                height: 0
            }

            [hidden] {
                display: none
            }

            a:active,
            a:hover {
                outline: 0
            }

            img {
                border: 0;
                max-width: 100%;
                display: inline-block;
                vertical-align: middle;
                height: auto
            }

            picture {
                display: inline-block
            }

            figure {
                margin: 0
            }

            button,
            input {
                line-height: normal
            }

            button,
            select {
                text-transform: none
            }

            button,
            html input[type=button],
            input[type=reset],
            input[type=submit] {
                -webkit-appearance: button;
                cursor: pointer;
                border: 0;
                background: 0 0
            }

            button::-moz-focus-inner {
                border: 0
            }

            button[disabled],
            html input[disabled] {
                cursor: default
            }

            input[type=checkbox],
            input[type=radio] {
                padding: 0
            }

            input[type=search] {
                -webkit-appearance: textfield;
                -moz-box-sizing: content-box;
                -webkit-box-sizing: content-box;
                box-sizing: content-box
            }

            input[type=search]::-webkit-search-cancel-button,
            input[type=search]::-webkit-search-decoration {
                -webkit-appearance: none
            }

            button::-moz-focus-inner,
            input::-moz-focus-inner {
                border: 0;
                padding: 0
            }

            button {
                border: 0;
                background: 0 0
            }

            textarea {
                overflow: auto;
                vertical-align: top;
                resize: vertical
            }

            table {
                border-collapse: collapse;
                border-spacing: 0
            }

            hr {
                box-sizing: content-box;
                overflow: visible;
                background: #000;
                border: 0;
                height: 1px;
                line-height: 0;
                margin: 0;
                padding: 0;
                page-break-after: always;
                width: 100%
            }

            pre {
                font-family: monospace, monospace;
                font-size: 100%
            }

            a {
                background-color: transparent
            }

            abbr[title] {
                border-bottom: none;
                text-decoration: none
            }

            code,
            kbd,
            samp {
                font-family: monospace, monospace;
                font-size: 100%
            }

            small {
                font-size: 75%
            }

            sub,
            sup {
                font-size: 75%;
                line-height: 0;
                position: relative;
                vertical-align: baseline
            }

            sub {
                bottom: -5px
            }

            sup {
                top: -5px
            }

            button,
            input,
            optgroup,
            select,
            textarea {
                font-family: inherit;
                font-size: 100%;
                line-height: 1;
                margin: 0;
                padding: 0
            }

            button,
            input {
                overflow: visible
            }

            button,
            select {
                text-transform: none
            }

            [type=button],
            [type=reset],
            [type=submit],
            button {
                -webkit-appearance: button
            }

            [type=button]::-moz-focus-inner,
            [type=reset]::-moz-focus-inner,
            [type=submit]::-moz-focus-inner,
            button::-moz-focus-inner {
                border-style: none;
                padding: 0;
                outline: 0
            }

            legend {
                color: inherit;
                white-space: normal;
                display: block;
                border: 0;
                max-width: 100%;
                width: 100%
            }

            fieldset {
                min-width: 0
            }

            body:not(:-moz-handler-blocked) fieldset {
                display: block
            }

            progress {
                vertical-align: baseline
            }

            [type=number]::-webkit-inner-spin-button,
            [type=number]::-webkit-outer-spin-button {
                height: auto
            }

            [type=search] {
                -webkit-appearance: textfield;
                outline-offset: -2px
            }

            [type=search]::-webkit-search-decoration {
                -webkit-appearance: none
            }

            ::-webkit-file-upload-button {
                -webkit-appearance: button;
                font: inherit
            }

            summary {
                display: list-item
            }

            template {
                display: none
            }
        </style>
        <link type="text/css" href="Content/pc/bootstrap.min.css" rel="stylesheet" />
        <link type="text/css" href="Content/pc/style.min.css?v=&lt;%=DateTime.Now.Ticks %>" rel="stylesheet" />
        <link type="text/css" href="Content/pc/custom.css?v=&lt;%=DateTime.Now.Ticks %>" rel="stylesheet" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

        <style>
            .flex-col {
                display: flex;
                flex-direction: column;
                justify-content: center;
            }

            .flex-row-left {
                display: flex;
                justify-content: left;
                align-items: center;
            }

            .flex-row-center {
                display: flex;
                justify-content: center;
                align-items: center;
            }

            .container {
                margin-top: 50px;
                margin-bottom: 100px;
                /* background-color: aqua; */
            }

            .container__content {
                text-decoration: none;
                color: black;
                font-size: 20px;
                font-weight: bold;
                margin-bottom: 15px;
            }

            .container__content--home {
                text-decoration: none;
                color: black;
            }

            .container__content--home:hover {
                color: rgb(230, 53, 53);
            }

            .error {
                color: red;
                margin-left: 2px;
                font-size: 13px;
            }

            /* ===================== BLOCK LEFT ========================== */
            .block-left {
                display: flex;
                flex-direction: column;
                gap: 10px;
            }

            .info {
                width: 100%;
                background-color: rgb(248, 247, 245);
                padding: 20px 25px;
                display: flex;
                justify-content: left;
                align-items: center;
                gap: 10px;
            }

            .info__img {
                flex: 1;
                width: 45px;
                height: 45px;
            }
            /*=============================================*/
            /*=============================================*/
            .info__img:hover{
                cursor: pointer;
            }
            /*=============================================*/
            /*=============================================*/

            .info__img img {
                width: 45px;
                height: 45px;
                object-fit: cover;
                border-radius: 50%;
            }

            .infor__name {
                flex: 4;
            }

            .infor__name p:first-child {
                font-size: 14px;
                margin: 0px;
            }

            .infor__name p:last-child {
                margin: 0px;
                font-size: 20px;
                font-weight: bold;
            }

            .frame {
                width: 100%;
                background-color: rgb(248, 247, 245);
                padding: 10px 25px;
            }

            .title {
                display: flex;
                gap: 10px;
                font-size: 15px;
            }

            .title i {
                width: 15px;
            }

            .title a{
                color: #174b8a;
            }

            .title:hover {
                color: rgb(224, 130, 130);
                cursor: pointer;
                font-weight: 600;
            }

            .line {
                margin: 10px 0;
                border-bottom: rgb(202, 198, 198) 1px solid;
            }

            /* =================== BLOCK RIGHT ======================= */
            .block-right {
                background-color: rgb(248, 247, 245);
                padding: 15px 25px;
                display: flex;
                flex-direction: column;
                gap: 10px;
                position: relative;
            }

            .block-right__title {
                color: #629adf;
                font-weight: bolder;
                font-size: 20px;
            }

            .common {
                width: 100%;
            }

            .common__title {
                /* margin-bottom: 1px; */
            }

            .common__content {
                min-height: 35px;
                font-size: 14px;
                border: 1px solid rgb(199, 196, 196);
                border-radius: 4px;
            }

            .common__content:focus {
                outline: none;
                box-shadow: none;
                border: none;
                border: 1px solid rgb(199, 196, 196);
            }

            .btn-save {
                border-radius: 1px;
                min-width: 120px;
                border: none;
                background-color: rgb(177, 5, 5);
                padding: 4px 15px;
                color: #FFF;
                position: absolute;
                bottom: 30px;
            }

            p,
            h1,
            h2 {
                margin: 0px;
            }


            /*search*/
            .search {
                display: block;
                width: 100%;
                padding: 0.375rem 0.75rem;
                font-size: 1rem;
                font-weight: 400;
                line-height: 1.5;
                color: #212529;
                appearance: none;
                background-color: #fff;
                background-clip: padding-box;
                border: 1px solid #dee2e6;
                border-radius: 5px;
                transition: .15s ease-in-out,box-shadow .15s ease-in-out;

            }
            .search:focus {
                /*border-color: #007bff;*/
                box-shadow: 0px 0px 4px 4px rgba(0,0,0,0.1);

                /*padding: 10px;*/
            }
            .search--container {
                position: relative;

            }
            .search--container i{
                font-size: 1.3em;
                /*font-weight: 1800;*/
            }

            .search--icon {
                position:absolute;
                font-size: 1px;
                top: 30%;
                right: 15px;
                transform: translateY(-50%);
            }

            .header_top__right {
                position: relative;
            }

            .header_main__myCart .header__login{
                color: #000;
                font-style: italic;
                font-weight: 400;
            }

            .header_main__myCart .header__login:hover{
                color: #CCC;
            }

            /*==========user login=============*/
            .header_top__right{
                position: static!important;
                width: 40px;
                height: 40px;
                overflow: hidden;
                border: 1px solid #ccc;
                border-radius: 50%;
                margin-top: 1rem;
            }

            .header_right{
                position: relative;
                height: 70px;
            }

            .header_right:hover .login-drop{
                opacity: 1;
                visibility: unset;
            }
            .header_top__right .login-drop {
                position: absolute;
                top: 70px;
                right: 0;
                background: #fff;
                z-index: 90;
                min-width: 222px;
                box-shadow: 0 10px 20px rgb(0 0 0 / 15%);
                padding: 10px 0;
                opacity: 0;
                visibility: hidden;
            }
            .header_top__right .login-drop a {
                color: #000;
                padding: 0 20px;
                margin: 15px 0;
                font-size: 16px;
                display: block;
            }
            .header_top__right .login-drop a:hover {
                color: #999;
            }

            .header_top__right .login-drop .login-drop__User {
                border-bottom: 1px #CCC solid;
                font-weight: bold;
                padding-bottom: 10px;
                margin: 5px 0;
            }

            /*pop-up*/
            #toast {
                position: fixed;
                top: 100px;
                right: 32px;
            }

            #toast .toast {
                max-width: 300px;
                max-height: 120px;
                display: flex;
                align-items: center;
                gap: 20px;
                background-color: #fff;
                padding: 10px 10px;
                border-radius: 2px;
                border-left: 4px solid #47d864;
                box-shadow: 0 5px 8px rgba(0, 0, 0, 0.08);
                animation: slideInLeft ease 1s, fadeOut linear 2s 2s forwards;
            }

            @keyframes slideInLeft {
                from {
                    opacity: 0;
                    transform: translateX(calc(100% + 32px));
                }

                to {
                    opacity: 1;
                    transform: translateX(0);
                }
            }

            @keyframes fadeOut {
                to {
                    opacity: 0;
                }
            }


            .toast__icon {
                font-size: 22px;
                color: #47d864;
            }

            .toast__body--msg {
                font-family: Arial, Helvetica, sans-serif;
                font-size: 17px;
                color: rgb(77, 75, 75);
            }
            .hide {
                display: none;
            }
        </style>


    </head>

    <body style="font-family: Manrope">
<<<<<<< HEAD
        <!-- Header Section Begin -->
=======
       <!-- Header Section Begin -->
>>>>>>> ac25e0a102a7e3e17fcb871226267f3b81ee7242
        <c:if test="${sessionScope.account != null}">
            <header id="header" class="header ">
                <div style="margin-top: 45px">&nbsp;</div>
                <div class="header_main fixed-top" id="headerMain" style="position: fixed">
                    <div class="container-full height-100">
                        <div class="height-100 d-flex justify-content-between align-items-center">                       
                            <div class="header_main__logo">
                                <h1 class="h1-logo">Thời trang nữ Ashion</h1>
                                <a href="pub_home">
                                    <img src="img/logo.png"
                                         alt="Ashion" />
                                </a>
                            </div>


                            <script type="text/javascript" src="Content/utils/threesixty/threesixty.js"></script>
                            <link type="text/css" href="Content/utils/threesixty/threesixty.css" rel="stylesheet" />



                            <div class="header_main__menu">
                                <ul class="nav_menu">
                                    <!--=========================Sale=======================================-->
                                    <li>
                                        <a href="#">SALE</a>
                                    </li>

                                    <!--=========================product list=======================================-->
                                    <li class="has-full-menu ">
                                        <a href="javascript:void(0)">Sản Phẩm</a>

                                        <div class="submenu submenu-full">
                                            <div class="row">
                                                <div class="col-2">
                                                    <a href="https://aristino.com/san-pham.html">
                                                        <img src="Data/daisuthuonghieu.jpg" alt="Sản Phẩm"
                                                             style="border-radius: 5px" />
                                                    </a>
                                                </div>
                                                <div class="col-10" style="padding-left: 90px;">
                                                    <div class="row">

                                                        <div class="col-2">
                                                            <div class="submenu__list">
                                                                <div class="title">
                                                                    <a href="pub_viewproductlistbycategory?CategoryProductDetailsId=0&CategoryProductId=1">Áo</a>
                                                                </div>
                                                                <p><a href="pub_viewproductlistbycategory?CategoryProductDetailsId=1&CategoryProductId=1">Áo sơ mi</a></p>
                                                                <p><a href="pub_viewproductlistbycategory?CategoryProductDetailsId=2&CategoryProductId=1">Áo polo</a></p>
                                                                <p><a href="pub_viewproductlistbycategory?CategoryProductDetailsId=3&CategoryProductId=1">Áo chống nắng</a></p>
                                                                <p><a href="pub_viewproductlistbycategory?CategoryProductDetailsId=4&CategoryProductId=1">Áo len</a></p>
                                                                <p><a href="pub_viewproductlistbycategory?CategoryProductDetailsId=5&CategoryProductId=1">Áo sweater</a></p>
                                                                <p><a href="pub_viewproductlistbycategory?CategoryProductDetailsId=6&CategoryProductId=1">Áo phông</a></p>
                                                                <p><a href="pub_viewproductlistbycategory?CategoryProductDetailsId=7&CategoryProductId=1">Áo khoác</a></p>
                                                            </div>
                                                        </div>

                                                        <div class="col-2">
                                                            <div class="submenu__list">
                                                                <div class="title">
                                                                    <a href="pub_viewproductlistbycategory?CategoryProductDetailsId=0&CategoryProductId=2">Quần</a>
                                                                </div>
                                                                <p><a href="pub_viewproductlistbycategory?CategoryProductDetailsId=8&CategoryProductId=2">Quần shorts</a></p>
                                                                <p><a href="pub_viewproductlistbycategory?CategoryProductDetailsId=9&CategoryProductId=2">Quần jeans</a></p>
                                                                <p><a href="pub_viewproductlistbycategory?CategoryProductDetailsId=10&CategoryProductId=2">Quần legging</a></p>
                                                                <p><a href="pub_viewproductlistbycategory?CategoryProductDetailsId=11&CategoryProductId=2">Quần joggers</a></p>

                                                            </div>
                                                        </div>

                                                        <div class="col-2">
                                                            <div class="submenu__list">
                                                                <div class="title">
                                                                    <a href="pub_viewproductlistbycategory?CategoryProductDetailsId=0&CategoryProductId=3">Váy</a>
                                                                </div>
                                                                <p><a href="pub_viewproductlistbycategory?CategoryProductDetailsId=12&CategoryProductId=3">Chân váy</a></p>
                                                                <p><a href="pub_viewproductlistbycategory?CategoryProductDetailsId=13&CategoryProductId=3">Đầm</a></p>
                                                            </div>
                                                        </div>

                                                        <div class="col-2">
                                                            <div class="submenu__list">
                                                                <div class="title">
                                                                    <a href="pub_viewproductlistbycategory?CategoryProductDetailsId=0&CategoryProductId=4">Đồ lót</a>
                                                                </div>
                                                                <p><a href="pub_viewproductlistbycategory?CategoryProductDetailsId=14&CategoryProductId=4">Áo lót</a></p>
                                                                <p><a href="pub_viewproductlistbycategory?CategoryProductDetailsId=15&CategoryProductId=4">Quần lót</a></p>
                                                                <p><a href="pub_viewproductlistbycategory?CategoryProductDetailsId=16&CategoryProductId=4">Quần tất</a></p>
                                                                <p><a href="pub_viewproductlistbycategory?CategoryProductDetailsId=17&CategoryProductId=4">BIKINI</a></p>
                                                            </div>
                                                        </div>

                                                        <div class="col-2">
                                                            <div class="submenu__list">
                                                                <div class="title">
                                                                    <a href="pub_viewproductlistbycategory?CategoryProductDetailsId=0&CategoryProductId=5">Set quần áo</a>
                                                                </div>
                                                                <p><a href="pub_viewproductlistbycategory?CategoryProductDetailsId=18&CategoryProductId=5">Đồ ngủ</a></p>
                                                                <p><a href="pub_viewproductlistbycategory?CategoryProductDetailsId=19&CategoryProductId=5">Đồ thể thao</a></p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </li>

                                    <!--=========================Accessory list=======================================-->
                                    <li class="has-full-menu ">
                                        <a href="javascript:void(0)">Phụ kiện</a>

                                        <div class="submenu submenu-full">
                                            <div class="row">
                                                <div class="col-2">
                                                    <a href="https://aristino.com/san-pham.html">
                                                        <img src="Image/Accessory/daisuthuonghieu.jpg" style="border-radius: 6px" alt="Sản Phẩm" />
                                                    </a>
                                                </div>
                                                <div class="col-10" style="padding-left: 90px;">
                                                    <div class="row">

                                                        <div class="col-2">
                                                            <div class="submenu__list">
                                                                <div class="title">
                                                                    <a href="pub_viewproductlistbycategory?CategoryProductDetailsId=0&CategoryProductId=6">Giày, dép</a>
                                                                </div>
                                                                <p><a href="pub_viewproductlistbycategory?CategoryProductDetailsId=20&CategoryProductId=6">Giày thể thao</a></p>
                                                                <p><a href="pub_viewproductlistbycategory?CategoryProductDetailsId=21&CategoryProductId=6">Bốt</a></p>
                                                                <p><a href="pub_viewproductlistbycategory?CategoryProductDetailsId=22&CategoryProductId=6">Giày cao gót</a></p>
                                                                <p><a href="pub_viewproductlistbycategory?CategoryProductDetailsId=23&CategoryProductId=6">Sục</a></p>
                                                            </div>
                                                        </div>

                                                        <div class="col-2">
                                                            <div class="submenu__list">
                                                                <div class="title">
                                                                    <a href="pub_viewproductlistbycategory?CategoryProductDetailsId=0&CategoryProductId=7">Túi</a>
                                                                </div>
                                                                <p><a href="pub_viewproductlistbycategory?CategoryProductDetailsId=24&CategoryProductId=7">Túi, ví</a></p>
                                                                <p><a href="pub_viewproductlistbycategory?CategoryProductDetailsId=25&CategoryProductId=7">Balo</a></p>

                                                            </div>
                                                        </div>


                                                        <div class="col-2">
                                                            <div class="submenu__list">
                                                                <div class="title">
                                                                    <a href="pub_viewproductlistbycategory?CategoryProductDetailsId=26&CategoryProductId=8">Mũ</a>
                                                                </div>
                                                            </div>
                                                        </div>

                                                        <div class="col-2">
                                                            <div class="submenu__list">
                                                                <div class="title">
                                                                    <a href="pub_viewproductlistbycategory?CategoryProductDetailsId=27&CategoryProductId=9">Thắt lưng</a>
                                                                </div>
                                                            </div>
                                                        </div>

                                                        <div class="col-2">
                                                            <div class="submenu__list">
                                                                <div class="title">
                                                                    <a href="pub_viewproductlistbycategory?CategoryProductDetailsId=28&CategoryProductId=10">Kính</a>
                                                                </div>
                                                            </div>
                                                        </div>

                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                    </li>

                                    <!--=========================Collection list=======================================-->
                                    <li class="has-full-menu ">
                                        <a href="javascript:void(0)">Bộ sưu tập</a>
                                    </li>

                                    <!--=========================Shop=======================================-->
                                    <li>
                                        <a href="#">Cửa hàng</a>
                                    </li>

                                    <!--=========================Post=======================================-->
                                    <li>
                                        <a href="pub_viewpostlist">Tin tức</a>
                                    </li>

                                </ul>
                            </div>


                            <div class="header_main__myCart">
                                <ul>
                                    <li>
                                        <div class="search--container">
                                            <form action="pub_searchproductbyproductname" method="post">
                                                <input type="text" name="searching" class="search" placeholder="Tìm kiếm..." />
                                                <i class="search--icon bi bi-search"></i>
                                            </form>
                                        </div>
                                    </li>
                                    <li>
                                        <a href="pub_cart" class="myCart" title="Giỏ hàng">
                                            <img src="Content/pc/images/icon/Group 309.svg" alt="My cart" />
                                            <span class="numberCart">
                                                <%
                                                    if (session.getAttribute("account") != null) {
                                                        Account acc = (Account) session.getAttribute("account");

                                                        CustomerDAO cus_dao = new CustomerDAO();
                                                        Customer cus = cus_dao.getByAccountId(acc.getAccId());

                                                        CartDAO cart_dao = new CartDAO();
                                                        List<Cart> cartList = cart_dao.getByCusId(cus.getCusId());
                                                        out.print(cartList.size());
                                                    }
                                                %>
                                            </span>
                                        </a>
                                    </li>
                                </ul>

                                <div class="header_right">
                                    <div class="header_top__right">
                                        <a href="javascript:void(0)" class="" >
                                            <span>
                                                <c:if test="${sessionScope.account.accAvarUrl != null}">
                                                    <img src="${sessionScope.account.accAvarUrl}" alt="alt" style="width: 40px;height: 40px; object-fit: cover;border-radius: 50%;"/>
                                                </c:if>
                                                <c:if test="${sessionScope.account.accAvarUrl == null}">
                                                    <img src="Image/Avatar/Avatar_Default.png" alt="alt" style="width: 40px;height: 40px; object-fit: cover;border-radius: 50%;"/>
                                                </c:if>
                                            </span>
                                        </a>
                                        <div class="login-drop">
                                            <a href="com_upprofile" class="login-drop__User">${sessionScope.account.accName}</a>
                                            <a href="com_upprofile" >Thông tin tài khoản</a>
<<<<<<< HEAD
                                            <a href="cus_myorder" >Đơn hàng của tôi</a>
                                            <c:if test="${not empty sessionScope.account.accPass}">
                                                <a href="cu_changepass.jsp">Đổi mật khẩu</a>
                                            </c:if>
                                            <c:if test="${empty sessionScope.account.accPass}">
                                                <a href="cu_changepass.jsp">Đặt mật khẩu mới</a>                                
                                            </c:if>
=======
                                            <a href="#" >Đơn hàng của tôi</a>
                                            <a href="cu_changepass.jsp" >Đổi mật khẩu</a>
>>>>>>> ac25e0a102a7e3e17fcb871226267f3b81ee7242
                                            <a href="com_logout" >Đăng xuất</a>
                                        </div>
                                    </div>
                                </div>
                            </div>


                            <div class="header_main__search">
                                <div class="container_search">
                                    <form class="input-width-button" onsubmit="doSearch(); return false;">
                                        <input type="text" class="form-control"
                                               onkeyup="getSearch(this.value); $('#keyword').val(this.value)" autocomplete="off"
                                               placeholder="Tìm kiếm" />
                                        <button type="submit" class="button_submit" onclick="doSearch(); return false;"><img
                                                src="Content/pc/images/icon/Search.svg" alt="Search" /></button>
                                    </form>
                                    <button type="button" class="btn-close btn_close_searchbox toggle-search"></button>

                                    <div class="suggestion_box resuilt_production">
                                        <p><strong>Sản phẩm</strong></p>
                                        <ul class="list_product_search col-1 product_result"></ul>
                                        <div class="text-center">
                                            <a href="javascript:void(0)" class="viewmore" onclick="doSearch(); return false;">
                                                Xem thêm
                                                <svg aria-hidden="true" focusable="false" data-prefix="fal"
                                                     data-icon="angle-down" role="img" xmlns="http://www.w3.org/2000/svg"
                                                     viewBox="0 0 256 512" class="svg-inline--fa fa-angle-down fa-w-8 fa-2x">
                                                <path fill="currentColor"
                                                      d="M119.5 326.9L3.5 209.1c-4.7-4.7-4.7-12.3 0-17l7.1-7.1c4.7-4.7 12.3-4.7 17 0L128 287.3l100.4-102.2c4.7-4.7 12.3-4.7 17 0l7.1 7.1c4.7 4.7 4.7 12.3 0 17L136.5 327c-4.7 4.6-12.3 4.6-17-.1z"
                                                      class=""></path>
                                                </svg>
                                            </a>
                                        </div>
                                        <hr />
                                        <p><strong>Tin tức</strong></p>
                                        <ul class="list_product_search list_news_search col-1 news_result"></ul>
                                        <div class="text-center">
                                            <a href="javascript:void(0)" class="viewmore" onclick="doSearch2(); return false;">
                                                Xem thêm
                                                <svg aria-hidden="true" focusable="false" data-prefix="fal"
                                                     data-icon="angle-down" role="img" xmlns="http://www.w3.org/2000/svg"
                                                     viewBox="0 0 256 512" class="svg-inline--fa fa-angle-down fa-w-8 fa-2x">
                                                <path fill="currentColor"
                                                      d="M119.5 326.9L3.5 209.1c-4.7-4.7-4.7-12.3 0-17l7.1-7.1c4.7-4.7 12.3-4.7 17 0L128 287.3l100.4-102.2c4.7-4.7 12.3-4.7 17 0l7.1 7.1c4.7 4.7 4.7 12.3 0 17L136.5 327c-4.7 4.6-12.3 4.6-17-.1z"
                                                      class=""></path>
                                                </svg>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </header>
        </c:if>

        <c:if test="${sessionScope.account == null}">
            <header id="header" class="header ">
                <div style="margin-top: 45px">&nbsp;</div>
                <div class="header_main fixed-top" id="headerMain" style="position: fixed">
                    <div class="container-full height-100">
                        <div class="height-100 d-flex justify-content-between align-items-center">                       
                            <div class="header_main__logo">
                                <h1 class="h1-logo">Thời trang nữ Ashion</h1>
                                <a href="pub_home">
                                    <img src="img/logo.png"
                                         alt="Ashion" />
                                </a>
                            </div>


                            <script type="text/javascript" src="Content/utils/threesixty/threesixty.js"></script>
                            <link type="text/css" href="Content/utils/threesixty/threesixty.css" rel="stylesheet" />



                            <div class="header_main__menu">
                                <ul class="nav_menu">
                                    <!--=========================Sale=======================================-->
                                    <li>
                                        <a href="#">SALE</a>
                                    </li>

                                    <!--=========================product list=======================================-->
                                    <li class="has-full-menu ">
                                        <a href="javascript:void(0)">Sản Phẩm</a>

                                        <div class="submenu submenu-full">
                                            <div class="row">
                                                <div class="col-2">
                                                    <a href="https://aristino.com/san-pham.html">
                                                        <img src="Data/daisuthuonghieu.jpg" alt="Sản Phẩm"
                                                             style="border-radius: 5px" />
                                                    </a>
                                                </div>
                                                <div class="col-10" style="padding-left: 90px;">
                                                    <div class="row">

                                                        <div class="col-2">
                                                            <div class="submenu__list">
                                                                <div class="title">
                                                                    <a href="pub_viewproductlistbycategory?CategoryProductDetailsId=0&CategoryProductId=1">Áo</a>
                                                                </div>
                                                                <p><a href="pub_viewproductlistbycategory?CategoryProductDetailsId=1&CategoryProductId=1">Áo sơ mi</a></p>
                                                                <p><a href="pub_viewproductlistbycategory?CategoryProductDetailsId=2&CategoryProductId=1">Áo polo</a></p>
                                                                <p><a href="pub_viewproductlistbycategory?CategoryProductDetailsId=3&CategoryProductId=1">Áo chống nắng</a></p>
                                                                <p><a href="pub_viewproductlistbycategory?CategoryProductDetailsId=4&CategoryProductId=1">Áo len</a></p>
                                                                <p><a href="pub_viewproductlistbycategory?CategoryProductDetailsId=5&CategoryProductId=1">Áo sweater</a></p>
                                                                <p><a href="pub_viewproductlistbycategory?CategoryProductDetailsId=6&CategoryProductId=1">Áo phông</a></p>
                                                                <p><a href="pub_viewproductlistbycategory?CategoryProductDetailsId=7&CategoryProductId=1">Áo khoác</a></p>
                                                            </div>
                                                        </div>

                                                        <div class="col-2">
                                                            <div class="submenu__list">
                                                                <div class="title">
                                                                    <a href="pub_viewproductlistbycategory?CategoryProductDetailsId=0&CategoryProductId=2">Quần</a>
                                                                </div>
                                                                <p><a href="pub_viewproductlistbycategory?CategoryProductDetailsId=8&CategoryProductId=2">Quần shorts</a></p>
                                                                <p><a href="pub_viewproductlistbycategory?CategoryProductDetailsId=9&CategoryProductId=2">Quần jeans</a></p>
                                                                <p><a href="pub_viewproductlistbycategory?CategoryProductDetailsId=10&CategoryProductId=2">Quần legging</a></p>
                                                                <p><a href="pub_viewproductlistbycategory?CategoryProductDetailsId=11&CategoryProductId=2">Quần joggers</a></p>

                                                            </div>
                                                        </div>

                                                        <div class="col-2">
                                                            <div class="submenu__list">
                                                                <div class="title">
                                                                    <a href="pub_viewproductlistbycategory?CategoryProductDetailsId=0&CategoryProductId=3">Váy</a>
                                                                </div>
                                                                <p><a href="pub_viewproductlistbycategory?CategoryProductDetailsId=12&CategoryProductId=3">Chân váy</a></p>
                                                                <p><a href="pub_viewproductlistbycategory?CategoryProductDetailsId=13&CategoryProductId=3">Đầm</a></p>
                                                            </div>
                                                        </div>

                                                        <div class="col-2">
                                                            <div class="submenu__list">
                                                                <div class="title">
                                                                    <a href="pub_viewproductlistbycategory?CategoryProductDetailsId=0&CategoryProductId=4">Đồ lót</a>
                                                                </div>
                                                                <p><a href="pub_viewproductlistbycategory?CategoryProductDetailsId=14&CategoryProductId=4">Áo lót</a></p>
                                                                <p><a href="pub_viewproductlistbycategory?CategoryProductDetailsId=15&CategoryProductId=4">Quần lót</a></p>
                                                                <p><a href="pub_viewproductlistbycategory?CategoryProductDetailsId=16&CategoryProductId=4">Quần tất</a></p>
                                                                <p><a href="pub_viewproductlistbycategory?CategoryProductDetailsId=17&CategoryProductId=4">BIKINI</a></p>
                                                            </div>
                                                        </div>

                                                        <div class="col-2">
                                                            <div class="submenu__list">
                                                                <div class="title">
                                                                    <a href="pub_viewproductlistbycategory?CategoryProductDetailsId=0&CategoryProductId=5">Set quần áo</a>
                                                                </div>
                                                                <p><a href="pub_viewproductlistbycategory?CategoryProductDetailsId=18&CategoryProductId=5">Đồ ngủ</a></p>
                                                                <p><a href="pub_viewproductlistbycategory?CategoryProductDetailsId=19&CategoryProductId=5">Đồ thể thao</a></p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </li>

                                    <!--=========================Accessory list=======================================-->
                                    <li class="has-full-menu ">
                                        <a href="javascript:void(0)">Phụ kiện</a>

                                        <div class="submenu submenu-full">
                                            <div class="row">
                                                <div class="col-2">
                                                    <a href="https://aristino.com/san-pham.html">
                                                        <img src="Image/Accessory/daisuthuonghieu.jpg" style="border-radius: 6px" alt="Sản Phẩm" />
                                                    </a>
                                                </div>
                                                <div class="col-10" style="padding-left: 90px;">
                                                    <div class="row">

                                                        <div class="col-2">
                                                            <div class="submenu__list">
                                                                <div class="title">
                                                                    <a href="pub_viewproductlistbycategory?CategoryProductDetailsId=0&CategoryProductId=6">Giày, dép</a>
                                                                </div>
                                                                <p><a href="pub_viewproductlistbycategory?CategoryProductDetailsId=20&CategoryProductId=6">Giày thể thao</a></p>
                                                                <p><a href="pub_viewproductlistbycategory?CategoryProductDetailsId=21&CategoryProductId=6">Bốt</a></p>
                                                                <p><a href="pub_viewproductlistbycategory?CategoryProductDetailsId=22&CategoryProductId=6">Giày cao gót</a></p>
                                                                <p><a href="pub_viewproductlistbycategory?CategoryProductDetailsId=23&CategoryProductId=6">Sục</a></p>
                                                            </div>
                                                        </div>

                                                        <div class="col-2">
                                                            <div class="submenu__list">
                                                                <div class="title">
                                                                    <a href="pub_viewproductlistbycategory?CategoryProductDetailsId=0&CategoryProductId=7">Túi</a>
                                                                </div>
                                                                <p><a href="pub_viewproductlistbycategory?CategoryProductDetailsId=24&CategoryProductId=7">Túi, ví</a></p>
                                                                <p><a href="pub_viewproductlistbycategory?CategoryProductDetailsId=25&CategoryProductId=7">Balo</a></p>

                                                            </div>
                                                        </div>


                                                        <div class="col-2">
                                                            <div class="submenu__list">
                                                                <div class="title">
                                                                    <a href="pub_viewproductlistbycategory?CategoryProductDetailsId=26&CategoryProductId=8">Mũ</a>
                                                                </div>
                                                            </div>
                                                        </div>

                                                        <div class="col-2">
                                                            <div class="submenu__list">
                                                                <div class="title">
                                                                    <a href="pub_viewproductlistbycategory?CategoryProductDetailsId=27&CategoryProductId=9">Thắt lưng</a>
                                                                </div>
                                                            </div>
                                                        </div>

                                                        <div class="col-2">
                                                            <div class="submenu__list">
                                                                <div class="title">
                                                                    <a href="pub_viewproductlistbycategory?CategoryProductDetailsId=28&CategoryProductId=10">Kính</a>
                                                                </div>
                                                            </div>
                                                        </div>

                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                    </li>

                                    <!--=========================Collection list=======================================-->
                                    <li class="has-full-menu ">
                                        <a href="javascript:void(0)">Bộ sưu tập</a>
                                    </li>

                                    <!--=========================Shop=======================================-->
                                    <li>
                                        <a href="#">Cửa hàng</a>
                                    </li>

                                    <!--=========================Post=======================================-->
                                    <li>
                                        <a href="pub_viewpostlist">Tin tức</a>
                                    </li>

                                </ul>
                            </div>


                            <div class="header_main__myCart">
                                <ul>
                                    <li>
                                        <div class="search--container">
                                            <form action="pub_searchproductbyproductname" method="post">
                                                <input type="text" name="searching" class="search" placeholder="Tìm kiếm..." />
                                                <i class="search--icon bi bi-search"></i>
                                            </form>
                                        </div>
                                    </li>
                                    <li>
                                        <a href="c_login.jsp" class="header__login">Đăng nhập</a>
                                        / 
                                        <a href="c_register.jsp" class="header__login">Đăng ký</a>
                                    </li>
                                </ul>
                            </div>

                            <div class="header_main__search">
                                <div class="container_search">
                                    <form class="input-width-button" onsubmit="doSearch(); return false;">
                                        <input type="text" class="form-control"
                                               onkeyup="getSearch(this.value); $('#keyword').val(this.value)" autocomplete="off"
                                               placeholder="Tìm kiếm" />
                                        <button type="submit" class="button_submit" onclick="doSearch(); return false;"><img
                                                src="Content/pc/images/icon/Search.svg" alt="Search" /></button>
                                    </form>
                                    <button type="button" class="btn-close btn_close_searchbox toggle-search"></button>

                                    <div class="suggestion_box resuilt_production">
                                        <p><strong>Sản phẩm</strong></p>
                                        <ul class="list_product_search col-1 product_result"></ul>
                                        <div class="text-center">
                                            <a href="javascript:void(0)" class="viewmore" onclick="doSearch(); return false;">
                                                Xem thêm
                                                <svg aria-hidden="true" focusable="false" data-prefix="fal"
                                                     data-icon="angle-down" role="img" xmlns="http://www.w3.org/2000/svg"
                                                     viewBox="0 0 256 512" class="svg-inline--fa fa-angle-down fa-w-8 fa-2x">
                                                <path fill="currentColor"
                                                      d="M119.5 326.9L3.5 209.1c-4.7-4.7-4.7-12.3 0-17l7.1-7.1c4.7-4.7 12.3-4.7 17 0L128 287.3l100.4-102.2c4.7-4.7 12.3-4.7 17 0l7.1 7.1c4.7 4.7 4.7 12.3 0 17L136.5 327c-4.7 4.6-12.3 4.6-17-.1z"
                                                      class=""></path>
                                                </svg>
                                            </a>
                                        </div>
                                        <hr />
                                        <p><strong>Tin tức</strong></p>
                                        <ul class="list_product_search list_news_search col-1 news_result"></ul>
                                        <div class="text-center">
                                            <a href="javascript:void(0)" class="viewmore" onclick="doSearch2(); return false;">
                                                Xem thêm
                                                <svg aria-hidden="true" focusable="false" data-prefix="fal"
                                                     data-icon="angle-down" role="img" xmlns="http://www.w3.org/2000/svg"
                                                     viewBox="0 0 256 512" class="svg-inline--fa fa-angle-down fa-w-8 fa-2x">
                                                <path fill="currentColor"
                                                      d="M119.5 326.9L3.5 209.1c-4.7-4.7-4.7-12.3 0-17l7.1-7.1c4.7-4.7 12.3-4.7 17 0L128 287.3l100.4-102.2c4.7-4.7 12.3-4.7 17 0l7.1 7.1c4.7 4.7 4.7 12.3 0 17L136.5 327c-4.7 4.6-12.3 4.6-17-.1z"
                                                      class=""></path>
                                                </svg>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </header>
        </c:if>
        <!-- Header Section End -->

        <div class="container" style="font-family: Arial, Helvetica, sans-serif;">
            <p class="container__content">
                <a href="pub_home" class="container__content--home">Trang chủ</a>
                > Tài khoản của tôi
            </p>

            <div class="row">
                <div class="col-md-4 block-left">
                    <form action = "com_upavar" method="post" id="uploadForm" enctype="multipart/form-data">
                        <div class="info">
                            <label class="info__img" for="move">
                                <img src="${account.accAvarUrl}" alt="Avatar">
                            </label>
                            <div class="infor__name flex-col">
                                <p>Xin chào,</p>
                                <p>${account.accName}</p>
                            </div>
                        </div>
                        <input type="file" name="avatar" id="move" onchange="updateImage()" style="display: none" />
                    </form>

<<<<<<< HEAD
                    <!--side bar begin-->
                    <div class="frame">
                        <div class="title flex-row-left">
                            <i class="fas fa-file-invoice fa-xs" style="color: #629adf;"></i>
                            <a href="cus_myorder">Đơn hàng của tôi 
                                (<%
                                    if (session.getAttribute("account") != null) {
                                        Account acc = (Account) session.getAttribute("account");
                                        
                                        CustomerDAO cus_dao = new CustomerDAO();
                                        OrderDetailsDAO orde_dao = new OrderDetailsDAO();
                                        OrderDAO or_dao = new OrderDAO();
        
                                        Customer cus = cus_dao.getByAccountId(acc.getAccId());
                                        List<Order> order = or_dao.getByCusId(cus.getCusId()); 
                                        out.print(order.size());
                                    }
                                %>)
                            </a>
=======
                    <div class="frame">
                        <div class="title flex-row-left">
                            <i class="fas fa-file-invoice fa-xs" style="color: #629adf;"></i>
                            <a href="#">Đơn hàng của tôi (0)</a>
>>>>>>> ac25e0a102a7e3e17fcb871226267f3b81ee7242
                        </div>

                        <p class="line"></p>

                        <div class="title flex-row-left">
                            <i class="fas fa-clipboard-check fa-xs" style="color: #629adf;"></i>
<<<<<<< HEAD
                            <a href="cus_myorder?type=delivered">Đơn hàng đã giao 
                                (<%
                                    if (session.getAttribute("account") != null) {
                                        Account acc = (Account) session.getAttribute("account");
                                        
                                        CustomerDAO cus_dao = new CustomerDAO();
                                        OrderDetailsDAO orde_dao = new OrderDetailsDAO();
                                        OrderDAO or_dao = new OrderDAO();
        
                                        Customer cus = cus_dao.getByAccountId(acc.getAccId());
                                        List<Order> order = or_dao.getByCusId(cus.getCusId(), "delivered");
                                        out.print(order.size());
                                    }
                                %>)
                                </a>
=======
                            <a href="#">Đơn hàng đã giao (0)</a>
>>>>>>> ac25e0a102a7e3e17fcb871226267f3b81ee7242
                        </div>

                        <p class="line"></p>

                        <div class="title flex-row-left">
                            <i class="fas fa-truck fa-xs" style="color: #629adf;"></i>
<<<<<<< HEAD
                            <a href="cus_myorder?type=delivering">Đơn hàng đang giao 
                                (<%
                                    if (session.getAttribute("account") != null) {
                                        Account acc = (Account) session.getAttribute("account");
                                        
                                        CustomerDAO cus_dao = new CustomerDAO();
                                        OrderDetailsDAO orde_dao = new OrderDetailsDAO();
                                        OrderDAO or_dao = new OrderDAO();
        
                                        Customer cus = cus_dao.getByAccountId(acc.getAccId());
                                        List<Order> order = or_dao.getByCusId(cus.getCusId(), "delivering");  
                                        out.print(order.size());
                                    }
                                %>)
                                </a>
=======
                            <a href="#">Đơn hàng đang giao (0)</a>
>>>>>>> ac25e0a102a7e3e17fcb871226267f3b81ee7242
                        </div>

                        <p class="line"></p>

                        <div class="title flex-row-left">
                            <i class="fas fa-window-close fa-xs" style="color: #629adf;"></i>
<<<<<<< HEAD
                            <a href="cus_myorder?type=cancelled">Đơn hàng đã hủy 
                                (<%
                                    if (session.getAttribute("account") != null) {
                                        Account acc = (Account) session.getAttribute("account");
                                        
                                        CustomerDAO cus_dao = new CustomerDAO();
                                        OrderDetailsDAO orde_dao = new OrderDetailsDAO();
                                        OrderDAO or_dao = new OrderDAO();
        
                                        Customer cus = cus_dao.getByAccountId(acc.getAccId());
                                        List<Order> order = or_dao.getByCusId(cus.getCusId(), "cancelled");
                                        out.print(order.size());
                                    }
                                %>)
                                </a>
                        </div>

                    </div>
                    <!--side bar end-->
=======
                            <a href="#">Đơn hàng đã hủy (0)</a>
                        </div>

                    </div>
>>>>>>> ac25e0a102a7e3e17fcb871226267f3b81ee7242

                    <div class="frame">
                        <div class="title flex-row-left">
                            <i class="fas fa-user fa-xs" style="color: #629adf;"></i>
                            <a href="com_upprofile">Chỉnh sửa thông tin cá nhân</a>
                        </div>

                        <p class="line"></p>

                        <div class="title flex-row-left">
                            <i class="fas fa-map-marker-alt fa-xs" style="color: #629adf;"></i>
                            <a href="cus_upaddress">Địa chỉ</a>
                        </div>

                        <p class="line"></p>

                        <div class="title flex-row-left">
                            <i class="fas fa-unlock-alt fa-xs" style="color: #629adf;"></i>
<<<<<<< HEAD
                            <c:if test="${not empty sessionScope.account.accPass}">
                                <a href="cu_changepass.jsp">Đổi mật khẩu</a>
                            </c:if>
                            <c:if test="${empty sessionScope.account.accPass}">
                                <a href="cu_changepass.jsp">Đặt mật khẩu mới</a>                                
                            </c:if>
=======
                            <a href="cu_changepass.jsp">Đổi mật khẩu</a>
>>>>>>> ac25e0a102a7e3e17fcb871226267f3b81ee7242
                        </div>

                        <p class="line"></p>

                        <div class="title flex-row-left">
                            <i class="fas fa-mail-bulk fa-xs" style="color: #629adf;"></i>
                            <a href="com_logout">Đăng xuất</a>
                        </div>
                    </div>

                </div>
<<<<<<< HEAD
                                
                <div class="col-md-8 block-right">
                    <c:if test="${not empty sessionScope.account.accPass}">
                        <p class="block-right__title">Đổi mật khẩu</p>
                    </c:if>
                    <c:if test="${empty sessionScope.account.accPass}">
                        <p class="block-right__title">Đặt mật khẩu mới</p>
                    </c:if>
                    <form action="com_changepass" class="parents" method="post">
                        <c:if test="${not empty sessionScope.account.accPass}">
                            <div class="common mb-3">
                                <p class="common__title">Mật khẩu cũ</p>
                                <input type="password" class="form-control common__content" required
                                       name = "oldpass" placeholder="Nhập mật khẩu cũ"/>
                                <p class="error">${errOldPass}</p>
                            </div>
                        </c:if>
=======
                <div class="col-md-8 block-right">
                    <p class="block-right__title">Đổi mật khẩu</p>
                    <form action="com_changepass" class="parents" method="post">
                        <div class="common mb-3">
                            <p class="common__title">Mật khẩu cũ</p>
                            <input type="password" class="form-control common__content" required
                                   name = "oldpass" placeholder="Nhập mật khẩu cũ"/>
                            <p class="error">${errOldPass}</p>
                        </div>
>>>>>>> ac25e0a102a7e3e17fcb871226267f3b81ee7242

                        <div class="common mb-3">
                            <p class="common__title">Nhập mật khẩu mới</p>
                            <input type="password" class="form-control common__content" required
                                   name = "newpass" placeholder="Nhập mật khẩu mới"/>
                            <p class="error">${errNewPass}</p>
                        </div>

                        <div class="common mb-3">
                            <p class="common__title">Nhập lại mật khẩu mới</p> 
                            <input type="password" class="form-control common__content" 
                                   name="cfpass" placeholder="Nhập lại mật khẩu mới" required/>
                            <p class="error">${errCfPass}</p>
                        </div>

                        <input type="hidden" id="check" value="${status}">
                        <button class="btn-save">Lưu lại</button>
                    </form>

                </div>
            </div>
        </div>



        <!-- Footer Section Begin -->
        <footer class="footer">
            <div class="container">
                <div class="row">
<<<<<<< HEAD
                    <div class="col-md-3">
                        <div class="footer__about">
                            <div class="footer__logo">
                                <a href="pub_home"><img src="img/logo.png" alt=""></a>
                            </div>

                            <div class="footer__payment">
                                <a class="m-0" href="#">
                                    <img src="https://th.bing.com/th/id/OIP.pn3RUm1xk1HiAxWIgC6CIwHaHa?rs=1&pid=ImgDetMain" alt=""
                                         style="width: 42px; height: 42px;">
                                </a>
                                <a class="m-0" href="#"><img src="https://trustsales.vn/image/ed3ea862190620191559038616.png?width=750" alt=""
                                                             style="width: 42px; height: 42px;"></a>
                                <a class="m-0" href="#"><img src="https://img.freepik.com/free-psd/google-icon-isolated-3d-render-illustration_47987-9777.jpg" alt=""
                                                             style="width: 42px; height: 42px;border-radius: 50%;"></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="footer__widget">
                            <h6>Thông tin</h6>
                            <ul class="list-menu">
                                <li class="fone d-flex">
                                    <div class="icon-footer d-flex align-items-center">
                                        <i class="fa-solid fa-phone" style="color: #bd0000;"></i>
                                    </div>
                                    &nbsp;
                                    <a href="javascript:void(0)">Hotline: 18008118</a>
                                </li>
                                <li class="fone d-flex">
                                    <div class="icon-footer d-flex align-items-center">
                                        <i class="fa-solid fa-envelope" style="color: #bd0000;"></i>
                                    </div>
                                    &nbsp;
                                    <a href="javascript:void(0)">Email: ashionshopping@gmail.com</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="footer__widget">
                            <h6>Về Ashion Shopping</h6>
                            <ul>
                                <li><a href="pub_home">Trang chủ</a></li>
                                <li><a href="pub_viewproductlistbycategory?CategoryProductDetailsId=0&CategoryProductId=1">Sản phẩm</a></li>
                                <li><a href="pub_viewproductlistbycategory?CategoryProductDetailsId=0&CategoryProductId=6">Phụ kiện</a></li>
                                <li><a href="pub_viewpostlist">Tin tức</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="footer__newslatter">
                            <h6>Mạng xã hội</h6>
                            <div class="footer__social">
                                <a href="https://www.facebook.com/anh.hung.731135"><i class="fa-brands fa-facebook" style="color: #357af3;"></i></a>
                                <a href="#"><i class="fa-brands fa-twitter" style="color: #74C0FC;"></i></a>
                                <a href="#"><i class="fa-brands fa-youtube" style="color: #ff1a1a;"></i></a>
                                <a href="#"><i class="fa-brands fa-pinterest-p" style="color: #e14141;"></i></i></a>
                                <a href="#"><i class="fa-brands fa-tiktok" style="color: #3e3c3c;"></i></a>
=======
                    <div class="col-lg-4 col-md-6 col-sm-7">
                        <div class="footer__about">
                            <div class="footer__logo">
                                <a href="./index.html"><img src="img/logo.png" alt=""></a>
                            </div>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt
                                cilisis.</p>
                            <div class="footer__payment">
                                <a href="#"><img
                                        src="https://th.bing.com/th/id/OIP.pn3RUm1xk1HiAxWIgC6CIwHaHa?rs=1&pid=ImgDetMain"
                                        alt="" style="width: 42px; height: 42px;"></a>
                                <a href="#"><img src="https://warburgpincus.com/wp-content/uploads/2018/10/MoMo_logo-1.png"
                                                 alt="" style="width: 42px; height: 42px;"></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-2 col-md-3 col-sm-5">
                        <div class="footer__widget">
                            <h6>Quick links</h6>
                            <ul>
                                <li><a href="#">About</a></li>
                                <li><a href="#">Blogs</a></li>
                                <li><a href="#">Contact</a></li>
                                <li><a href="#">FAQ</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-2 col-md-3 col-sm-4">
                        <div class="footer__widget">
                            <h6>Account</h6>
                            <ul>
                                <li><a href="#">My Account</a></li>
                                <li><a href="#">Orders Tracking</a></li>
                                <li><a href="#">Checkout</a></li>
                                <li><a href="#">Wishlist</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-8 col-sm-8">
                        <div class="footer__newslatter">
                            <h6>NEWSLETTER</h6>
                            <form action="#">
                                <input type="text" placeholder="Email">
                                <button type="submit" class="site-btn">Subscribe</button>
                            </form>
                            <div class="footer__social">
                                <a href="https://www.facebook.com/anh.hung.731135"><i class="fa fa-facebook"></i></a>
                                <a href="#"><i class="fa fa-twitter"></i></a>
                                <a href="#"><i class="fa fa-youtube-play"></i></a>
                                <a href="#"><i class="fa fa-instagram"></i></a>
                                <a href="#"><i class="fa fa-pinterest"></i></a>
>>>>>>> ac25e0a102a7e3e17fcb871226267f3b81ee7242
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-12">
<<<<<<< HEAD
                        <div class="footer__copyright__text" style="padding: 5px; margin: 0; font-size: 10px;">
                            <p>Copyright &copy;
                                <script>document.write(new Date().getFullYear());</script> by 
                                <a href="pub_home" target="_blank">AshionShop</a>
                            </p>
                        </div>
=======
                        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                        <div class="footer__copyright__text">
                            <p>Copyright &copy;
                                <script>document.write(new Date().getFullYear());</script> All rights reserved | This
                                template is made with <i class="fa fa-heart" aria-hidden="true"></i> by <a
                                    href="https://colorlib.com" target="_blank">Colorlib</a>
                            </p>
                        </div>
                        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
>>>>>>> ac25e0a102a7e3e17fcb871226267f3b81ee7242
                    </div>
                </div>
            </div>
        </footer>
        <!-- Footer Section End -->

        <!--pop-up notification-->
        <div id="toast" class="${status == 'success' ? '' : 'hide'}">
            <div class="toast">
                <div class="toast__icon">
                    <div class="fas fa-check-circle"></div>
                </div>
                <div class="toast__body">
                    <p class="toast__body--msg">Đổi mật khẩu thành công</p>
                </div>
            </div>
        </div>
        <!--pop-up notification-->




        <script>
            function getStatus() {
                var statusValue = document.getElementById("check").value;
                if (statusValue == "success")
                    alert("Đổi mật khẩu thành công");
            }

            function updateImage() {
                // Truy cập form và gọi phương thức submit
                const form = document.getElementById('uploadForm');
                form.submit();
            }

            <%
                String showPopup = (String) request.getAttribute("status");
                if (showPopup != null && showPopup == "success") {
            %>

<<<<<<< HEAD
            setTimeout(function () {
                document.getElementById('toast').classList.remove('hide');
                setTimeout(function () {
            <% session.removeAttribute("account"); %>
                    window.location.href = 'c_login.jsp';
                }, 1000);
            }, 500);
=======
                setTimeout(function () {
                    document.getElementById('toast').classList.remove('hide');
                    setTimeout(function () {
                <% session.removeAttribute("account"); %>
                        window.location.href = 'c_login.jsp';
                    }, 1000);
                }, 500);
>>>>>>> ac25e0a102a7e3e17fcb871226267f3b81ee7242
            <%
                }
            %>
        </script>
        <script type="text/javascript" src="Content/pc/js/data.ajax.js?v=638410099527602122"></script>
        <script type="text/javascript" src="Content/pc/js/library.js?v=638410099527602122"></script>
    </body>

</html>
