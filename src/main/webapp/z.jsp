<%-- 
    Document   : z.jsp
    Created on : Jan 21, 2024, 12:13:16 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="styles.css">
        <title>Registration Form</title>
        <link rel="stylesheet" href="style.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
        <style>
<<<<<<< HEAD
            
=======
            #toast {
                position: fixed;
                top: 32px;
                right: 32px;
            }

            .toast {
                max-width: 300px;
                max-height: 40px;
                display: flex;
                align-items: center;
                gap: 20px;
                background-color: #fff;
                padding: 10px 10px;
                border-radius: 2px;
                border-left: 4px solid #47d864;
                box-shadow: 0 5px 8px rgba(0, 0, 0, 0.08);
                animation: slideInLeft ease .3s, fadeOut linear 1s 3s forwards;
            }
>>>>>>> ac25e0a102a7e3e17fcb871226267f3b81ee7242

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

    <body>
        <p>${status}</p>
        <div id="toast" class="${status == 'success' ? '' : 'hide'}">
            <div class="toast">
                <div class="toast__icon">
                    <div class="fas fa-check-circle"></div>
                </div>
                <div class="toast__body">
                    <p class="toast__body--msg">Đăng kí tài khoản thành công</p>
                </div>
            </div>
        </div>

<<<<<<< HEAD
            aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
=======
            
>>>>>>> ac25e0a102a7e3e17fcb871226267f3b81ee7242
        
            
        <script>

        </script>
    </body>

</html>