class HelloworldController < ApplicationController

  def index
    render :text => "hello, world! <br> index"
  end

  def hello
    html = '<!DOCTYPE html><html lang="ja"><head><meta charset="UTF-8" /><title>hoge</title><link rel="stylesheet" href="css/style.css" /><link rel="shortcut icon" href="images/favicon.ico"><meta name="description" content="" /><meta name="keywords" content="" /></head><body><h1>Hello World!</h1><form method="post"><div id="imgcontainer"><img src=""></div><div><input type="text" id="user_id" name="user_id" placeholder="ユーザID"></div><div><input type="password" id="password" name="password" placeholder="パスワード"></div><div><input type="checkbox" id="save" name="save">ログイン状態を保存</div><div><button type="button" id="submit">ログイン</button></div></form></body>    <script type="text/javascript" src="https://code.jquery.com/jquery-1.11.1.min.js"></script>    <script type="text/javascript" src="https://code.jquery.com/ui/1.11.1/jquery-ui.min.js"></script>    <script type="text/javascript" src="https://code.jquery.com/mobile/1.4.4/jquery.mobile-1.4.4.min.js"></script></html>'
    render text: html
  end
  
  def hello1
    render template: "page/table", layout: "admin/manage"
  end
  
  def nothing
    render nothing: true, status: 302
  end
  
  def json
    response = {res1: "hogehoge", res2: "fugafuga", res3: {res4: "hogefuga"}}
    render json: response
  end
  
  def xml
    response = {res1: "hogehoge", res2: "fugafuga", res3: {res4: "hogefuga"}}
    render xml: response
  end
  
  def hello2
    render "page/list", layout: "admin/manage", status: 404
  end
  
  def hello3
    render action: "hello1", layout: "admin/manage"
  end
  
end

