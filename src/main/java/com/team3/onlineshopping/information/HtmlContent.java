/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.team3.onlineshopping.information;

public class HtmlContent {

    public static String resetPassword(String resetPassLink) {
        String html = "<!DOCTYPE html>\n"
                + "<html lang=\"en\">\n"
                + "\n"
                + "<head>\n"
                + "    <meta charset=\"UTF-8\">\n"
                + "    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n"
                + "</head>\n"
                + "\n"
                + "<body style=\"font-family: Arial, Helvetica, sans-serif;\">\n"
                + "    <div class=\"image\" style=\"width: 10rem;\">\n"
                + "        <img src=\"https://scontent.fhan14-1.fna.fbcdn.net/v/t1.15752-9/415986971_1701360590387678_3307011220705221556_n.png?_nc_cat=107&ccb=1-7&_nc_sid=8cd0a2&_nc_ohc=V2ZeUHI0viMAX-obv7t&_nc_oc=AQk00jCeUCuEPPd8XcE6oQs470-WNJk7DuFHo_dkl9lGsNgcp2dVsUo09mp_a5i8vgk&_nc_ht=scontent.fhan14-1.fna&oh=03_AdTSM_Cyy8H20BDq1THFcSkV3Eu-2-NLOAj0BMfPoy_lOA&oe=65D0D6FC\"\n"
                + "            alt=\"\" style=\"width: 100%;\">\n"
                + "    </div>\n"
                + "    <div class=\"container\">\n"
                + "        <h1>Thiết lập lại mật khẩu</h1>\n"
                + "        <p>Bạn đã yêu cầu thiết lập lại mật khẩu. <br>\n"
                + "            Vui lòng thiết lập lại mật khẩu của mình bằng cách click <strong>\"Đặt lại mật\n"
                + "                khẩu\"</strong> bên dưới:</p><br>\n"
                + "        <a href=" + resetPassLink + " style=\"text-decoration: none;\">\n"
                + "            <p style=\"width: 10rem;background-color: rgb(22, 22, 175);\n"
                + "            color: #FFF;text-align: center;padding: 10px 5px;\n"
                + "            font-weight: bold;border-radius: 2px;\">Đặt lại mật khẩu</p>\n"
                + "        </a><br>\n"
                + "        <i style=\"color: rgb(255, 0, 0);\">(*) Lưu ý: Mã kích hoạt chỉ có hiệu lực trong vòng 5 phút</i>\n"
                + "        <br><br><br>\n"
                + "        <p>Trân trọng,</p>\n"
                + "        <p>Ashion</p>\n"
                + "    </div>\n"
                + "</body>\n"
                + "\n"
                + "</html>";

        return html;
    }

    public static String orderNotification(String type) {
        String html = "<!DOCTYPE html>\n"
                + "<html lang=\"en\">\n"
                + "\n"
                + "<head>\n"
                + "    <meta charset=\"UTF-8\">\n"
                + "    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n"
                + "</head>\n"
                + "\n"
                + "\n"
                + "<body style=\"font-family: Arial, Helvetica, sans-serif;\">\n"
                + "    <div class=\"image\" style=\"width: 10rem;\">\n"
                + "        <img src=\"https://scontent.fhan14-1.fna.fbcdn.net/v/t1.15752-9/415986971_1701360590387678_3307011220705221556_n.png?_nc_cat=107&ccb=1-7&_nc_sid=8cd0a2&_nc_ohc=V2ZeUHI0viMAX-obv7t&_nc_oc=AQk00jCeUCuEPPd8XcE6oQs470-WNJk7DuFHo_dkl9lGsNgcp2dVsUo09mp_a5i8vgk&_nc_ht=scontent.fhan14-1.fna&oh=03_AdTSM_Cyy8H20BDq1THFcSkV3Eu-2-NLOAj0BMfPoy_lOA&oe=65D0D6FC\"\"\n"
                + "                                alt=\"\" style=\" width: 100%;\">\n"
                + "    </div>\n"
                + "    <div class=\"container\">\n"
                + "\n";
        if (type.equalsIgnoreCase("pending")) {
            html += "        <h1>Cảm ơn bạn đã đặt hàng.</h1>\n"
                    + "        <h3>Kính chào quý khách.</h3>\n"
                    + "        <p>Cảm ơn quý khách đã tín nghiệm dịch vụ của chúng tôi.</p>\n"
                    + "        <p>Chúng tôi sẽ nhanh chóng xử lý đơn hàng của quý khách.\n"
                    + "            <br>Trong thời gian chờ đợi, nếu có bất kỳ thắc mắc nào, vui lòng liên hệ với chúng tôi.\n"
                    + "        </p>\n"
                    + "        <p>Xin chân thành cảm ơn sự ủng hộ của bạn.</p>\n"
                    + "\n";
<<<<<<< HEAD
        } else if (type.equalsIgnoreCase("delivered")) {
            html += "<h1>Đơn hàng đã được giao thành công</h1>      \n"
                    + "        <p>Đơn hàng của bạn đã được bên vận chuyển báo giao thành công rồi ạ! Cảm ơn bạn đã ủng hộ chúng mình nha 💚\n"
                    + "            <br> 🌿 Nếu Bạn hài lòng hãy ĐÁNH GIÁ chúng mình 5 ⭐\n"
                    + "            <br> 💥 Nếu có bất kỳ vấn đề gì về đơn hàng (chưa nhận đc hàng, hàng lỗi, thiếu...),\n"
                    + "            <br> XIN ĐỪNG VỘI ĐÁNH GIÁ. Bạn hãy NHẮN TIN NGAY cho shop để shop xử lý ngay cho bạn nhé!\n"
                    + "            <br> 📞 Bạn vui lòng gọi Hotline nếu gấp nhé: 0387 609 907 ( 8h30-18h00 từ thứ 2 đến thứ 7)\n"
                    + "        </p> <br>\n"
                    + "        <p>Xin chân thành cảm ơn sự ủng hộ của bạn.</p>";
        } else if (type.equalsIgnoreCase("cancelled")) {
=======
        }
        else if (type.equalsIgnoreCase("delivered")) {
            html += "        <h1>Đơn hàng đã được giao thành công.</h1>\n"
                    + "        <h3>Kính chào quý khách.</h3>\n"
                    + "        <p>Cảm ơn quý khách đã tín nghiệm dịch vụ của chúng tôi.</p>\n"
                    + "        <p>Chúng tôi hy vọng rằng bạn sẽ hài lòng với sản phẩm và dịch vụ của chúng tôi.\n"
                    + "            <br> Bạn có thể đưa thêm đánh giá của mình vẻ sản phẩm để chúng tôi có thể cải thiện và phát triển tốt hơn.\n"
                    + "        </p><br>\n"
                    + "        <p>Xin chân thành cảm ơn sự ủng hộ của bạn.</p>\n"
                    + "\n";
        }
        else if (type.equalsIgnoreCase("cancelled")) {
>>>>>>> ac25e0a102a7e3e17fcb871226267f3b81ee7242
            html += "        <h1>Đơn hàng của bạn đã được hủy.</h1>\n"
                    + "        <h3>Kính chào quý khách.</h3>\n"
                    + "        <p>Cảm ơn quý khách đã tín nghiệm dịch vụ của chúng tôi.</p>\n"
                    + "\n"
                    + "        <p>Xin chân thành cảm ơn sự ủng hộ của bạn.\n"
                    + "            <br> Chúng tôi mong rằng bạn sẽ tiếp tục sử dụng dịch vụ của chúng tôi trong tương lai.\n"
                    + "        </p>\n"
                    + "\n";
        }
        html += "        <br><br>\n"
                + "        <p>Trân trọng,</p>\n"
                + "        <p>Ashion</p>\n"
                + "    </div>\n"
                + "</body>\n"
                + "\n"
                + "\n"
                + "</html>";
        return html;
    }

}
