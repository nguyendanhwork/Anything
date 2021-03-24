<style>


*,
 ::after,
 ::before {
    box-sizing: border-box;
}

.box {
    width: 75%;
    margin: 0 auto;
    padding-bottom: 40px
}

body {
    background-color: #EFEEE9;
    min-height: 700px;
}

h2 {
    text-align: center;
    padding-top: 40px
}

table {
    width: 100%;
    padding: 20px;
}

input[type="text"],
input[type="email"],
input[type="password"],
input[type="date"],
input[list] {
    width: 100%;
    height: 37px;
    border-radius: 4px;
    border: solid 1.5px lightgray;
    padding: 5px
}

table {
    border-collapse: separate;
    border-spacing: 7px;
}

.gt {
    position: relative;
}

.gt input[type="text"],
input[type="passaword"] {
    background: white;
}

.radio {
    position: absolute;
    top: 28px;
    left: 5px;
    font-size: 2.1vh;
}

.check {
    position: absolute;
    top: 28px;
    left: 6px;
    font-size: 2.1vh;
}

select {
    width: 100%;
    height: 35px;
    border-radius: 4px;
    border: solid 1.5px lightgray;
    padding-left: 5px;
}

textarea {
    width: 97%;
    height: 70px;
    border-radius: 4px;
    border: solid 1.5px lightgray;
    padding: 5px
}

input[type="submit"] {
    width: 100%;    
    padding: 11px 18px;
    border-radius: 5px;
    border: 1px solid #bab6b6;
    cursor: pointer;
    background-color: rgb(235, 61, 67);
    color: white
}

input[type="submit"]:hover {
    background-color: rgb(206, 37, 43);
}

em {
    display: inline-block;
    width: 8px;
    height: 8px;
    background-image: url(../images/error.png);
    margin-right: 4px;
}

span {
    display: block;
    padding-top: 5px;
    color: #E82228;
    clear: both;
    font-size: 2vh;
}
#validateUsername {
        display: none;
    }
</style>
    <div class="container">
        <div class="box">
            <h2>
                ĐĂNG KÝ THÀNH VIÊN
            </h2>
            <form method="POST" action="" id="form_Register">
                <table>
                    <tr>
                        <td colspan="2">
                            <label>
                               Họ và tên
                            </label>
                            <input type="text" id="fullname" name="fullname" placeholder="Nhập họ tên của bạn" required>

                        </td>

                    </tr>
                    <tr>
                        <td colspan="2">
                            <label>
                               Tên tài khoản
                            </label>
                            <input type="text" id="username" name="username" placeholder="Nhập tên tài khoản của bạn" required>
                            <span id="validateUsername"><em></em>Tên tài khoản đã tồn tại</span>
                        </td>
                    </tr>
                    <tr>

                        <td colspan="2">
                            <label>
                               Mật khẩu
                            </label>
                            <input type="password" id="password" name="password" placeholder="Nhập mật khẩu của bạn" required>

                        </td>
                    </tr>
                    <tr>

                        <td colspan="2">
                            <label>
                               Xác nhận mật khẩu
                            </label>
                            <input type="password" id="confirm_password" name="confirm_password" placeholder="Xác nhận lại mật khẩu" required>

                        </td>

                    </tr>
                    <tr>
                        <td colspan="2">
                            <label>
                                Email
                            </label>
                            <input type="email" name="email" placeholder="Nhập email của bạn" required>

                        </td>

                    </tr>
                       <tr>

                        <td colspan="2">
                            <label>
                                Số điện thoại
                            </label>
                            <input type="text" id="phone" name="phone" placeholder="Nhập số điện thoại của bạn" required pattern>
                        </td>

                    </tr>
                    <tr>
                        <td colspan="2">
                            <input type="submit" name="btnRegister" value="Đăng ký">
                        </td>
                    </tr>
                </table>
            </form>

        </div>

    </div>

<script>
$(document).ready(function() {
$("#form_Register").validate({
  
    rules: {
        fullname: {
            required: true,
        },
        username: {
            required: true,
        },
        password: {
            required: true,
        },
        confirm_password: {
            required: true,
            equalTo: "#password"
        },
        email: {
            required: true,
            email: true
        },
        phone: {
            required: true,
         
           
        }
    },
    messages: {
        fullname: "<span>" + "<em>" + "</em>" + "Vui lòng nhập họ tên của bạn" + "</span>",
        username: "<span>" + "<em>" + "</em>" + "Vui lòng tên tài khoản của bạn" + "</span>",
        password: "<span>" + "<em>" + "</em>" + "Vui lòng nhập mật khẩu của bạn" + "</span>",
        confirm_password: "<span>" + "<em>" + "</em>" + "Mật khẩu không trùng khớp" + "</span>",
        email: "<span>" + "<em>" + "</em>" + "Email không hợp lệ" + "</span>",
        phone: "<span>" + "<em>" + "</em>" + "Vui lòng nhập số điện thoại" + "</span>",
    }

});
});
</script>