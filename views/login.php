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
            <form method="POST" action="" id="form_Login">
                <table>
                    <tr>
                        <td colspan="2">
                            <label>
                               Tên tài khoản
                            </label>
                            <input type="text" id="username" name="username" placeholder="Nhập tên tài khoản của bạn" required>
                           
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
                            <input type="submit" name="btnLogin" value="Đăng nhập">
                        </td>
                    </tr>
                </table>
            </form>

        </div>

    </div>

<script>
$(document).ready(function() {
$("#form_Login").validate({
  
    rules: {
      
        username: {
            required: true,
        },
        password: {
            required: true,
        }
        }
    },
    messages: {
       
        username: "<span>" + "<em>" + "</em>" + "Vui lòng tên tài khoản của bạn" + "</span>",
        password: "<span>" + "<em>" + "</em>" + "Vui lòng nhập mật khẩu của bạn" + "</span>"
     
    }

});
});
</script>