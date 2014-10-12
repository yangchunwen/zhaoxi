<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8">
    <title>朝夕</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="../static/thirdparty/flat-ui/bootstrap/css/bootstrap.css" rel="stylesheet">
    <link href="../static/thirdparty/flat-ui/css/flat-ui.css" rel="stylesheet">
    <link rel="shortcut icon" href="../static/thirdparty/flat-ui/images/favicon.ico">
    <!--[if lt IE 9]>
      <script src="../static/thirdparty/flat-ui/js/html5shiv.js"></script>
      <script src="../static/thirdparty/flat-ui/js/respond.min.js"></script>
    <![endif]-->
    <link rel="stylesheet" href="../static/css/detail.css">
  </head>
  <body>
    <div class="container">
        <h4>注册成功，给自己贴几个标签吧</h4>
        <div class="form-wrapper">
            <form class="form-horizontal" role="form">
              <div class="form-group">
                <label for="" class="col-sm-2 control-label">性别</label>
                <div class="col-sm-10">
                  <label><input type="radio" name="gender" value="male" checked>男</label> <label><input type="radio" name="gender" value="female">女</label>
                </div>
              </div>
              <div class="form-group">
                <label for="" class="col-sm-2 control-label">年龄</label>
                <div class="col-sm-10">
                  <label><input type="radio" name="age" value="1">18-20</label> <label><input type="radio" name="age" value="2" checked>20-23</label> <label><input type="radio" name="age" value="3">23-26</label> <label><input type="radio" name="age" value="4">26-30</label> <label><input type="radio" name="age" value="5">30+</label>
                </div>
              </div>
              <div class="form-group">
                <label for="fav" class="col-sm-2 control-label">喜欢做的事</label>
                <div class="col-sm-10">
                  <input type="text" class="form-control" id="fav" placeholder="贴一个标签">
                </div>
              </div>
              <div class="form-group">
                <label for="idol" class="col-sm-2 control-label">喜欢的偶像</label>
                <div class="col-sm-10">
                  <input type="text" class="form-control" id="idol" placeholder="贴一个标签">
                </div>
              </div>
              <div class="form-group">
                <label for="others" class="col-sm-2 control-label">其他</label>
                <div class="col-sm-10">
                  <input type="text" class="form-control" id="others" placeholder="贴一个标签">
                </div>
              </div>
              <div class="form-group">
                <label for="" class="col-sm-2 control-label">美照</label>
                <div class="col-sm-10">
                  <input id="avatarInput" name="avatar" type="file" class="hidden">
                  <button id="uploadBtn" class="btn btn-default navbar-btn btn-xs">点击上传</button>
                  <span id="avatar" class="avatar"></span>
                </div>
              </div>
              <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                  <button type="submit" class="btn btn-primary btn-wide">提交</button>
                </div>
              </div>
            </form>
        </div>
    </div>

    <script src="../static/thirdparty/flat-ui/js/jquery-1.8.3.min.js"></script>
    <script src="../static/thirdparty/flat-ui/js/jquery-ui-1.10.3.custom.min.js"></script>
    <script src="../static/thirdparty/flat-ui/js/jquery.ui.touch-punch.min.js"></script>
    <script src="../static/thirdparty/flat-ui/js/bootstrap.min.js"></script>
    <script src="../static/thirdparty/flat-ui/js/bootstrap-select.js"></script>
    <script src="../static/thirdparty/flat-ui/js/bootstrap-switch.js"></script>
    <script src="../static/thirdparty/flat-ui/js/flatui-checkbox.js"></script>
    <script src="../static/thirdparty/flat-ui/js/flatui-radio.js"></script>
    <script src="../static/thirdparty/flat-ui/js/jquery.tagsinput.js"></script>
    <script src="../static/thirdparty/flat-ui/js/jquery.placeholder.js"></script>
    <script>
        $(function () {
            var input = document.getElementById('avatarInput');
            var cont = document.getElementById('avatar');
            var uploadBtn = document.getElementById('uploadBtn');
            function getFile(event) {
                var file = this.files[0];
                var img = document.createElement("img");

                cont.innerHTML = '';
                cont.appendChild(img);

                var reader = new FileReader();
                reader.onload = function(e) {
                    img.src = this.result;
                    uploadBtn.innerHTML = '更改';
                }
                reader.readAsDataURL(file);
            }
            input.addEventListener('change', getFile);
            uploadBtn.addEventListener('click', function (e) {
                input.click();
                e.preventDefault();
            });
        });
    </script>
  </body>
</html>