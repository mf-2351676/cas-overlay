$(document).ready(function(){
    if($("body").attr("id")==='login'){
        $(".content .row .item:even").css('left',"-47%");
        $(".content .row .item:odd").css('right',"-47%");
    }
    $(".carousel").carousel({
        interval:4000 //每隔4秒自动轮播
    });
    //判断浏览器类型
    var userAgent = navigator.userAgent; //取得浏览器的userAgent字符串
    var isOpera = userAgent.indexOf("Opera") > -1; //判断是否Opera浏览器
    var isChrome = userAgent.indexOf("Chrome") > -1
        && userAgent.indexOf("Safari") > -1; //判断Chrome浏览器
    if (isChrome || isOpera) {
        console.log(isChrome ,isOpera);
        $("#mesContent").css("display","none");
    }else{
        $("#mesContent").css("display","block");
        $("#mes").html("当前您使用的浏览器不是使用本系统体验最好的浏览器，为了给您带来更好的体验，建议您使用\n" +
            "      <a href=\"https://www.google.cn/intl/zh-CN/chrome/\" target=\"_blank\">谷歌</a>\n" +
            "      或\n" +
            "      <a href=\"http://www.oupeng.com/download/\" target=\"_blank\">Opera</a>\n" +
            "      浏览器 !");
    }
    //点击登录，模态框显示
    $('#sign').on('click', function(){
        if(isChrome || isOpera){
            // $(".bigModal").show();
            // $("#loginForm").show();
            $("#content").show();
            $("#content .col-md").show();
        }else{
            console.log("请使用推荐浏览器");
        }
    });
    //模态框内登录失焦，模态框隐藏
    $(document).on('click', '.bigModal', function(){
        console.log("222sign");
        var e = event || window.event;
        if(e.target.id == "bigModal"){
            console.log('x'+e.clientX+'y'+e.clientY);
            // $("#loginForm").hide();
            // $(".bigModal").hide();
            $("#content").hide();
            $("#content .col-md").hide();
        }else{
        }
    });
    String.prototype.replaceAll = function(s1,s2) {
        return this.replace(new RegExp(s1,"gm"),s2);
    };
    $(document).on('click', '#submit', function(){
        var userName = $("#username").val();
        var passWord = $("#password").val();
        userName = userName.replaceAll(/\s/, "").replaceAll(/&nbsp;/, "");
        passWord = passWord.replaceAll(/\s/, "").replaceAll(/&nbsp;/, "");
        var obj = {
            "userName": userName,
            "passWord": passWord,
        };
        $(".alert span").html("");

        if(userName == "" && passWord != "" ){
            $(".alert span").html("请输入您的用户名。");
            $(".alert").show();
        }else if(passWord == "" && userName != ""){
            $(".alert span").html("请输入您的密码。");
            $(".alert").show();
        }else if(passWord == "" && userName == ""){
            $(".alert span").html("请输入您的用户名和密码。");
            $(".alert").show();
        }else{
            $(".alert").hide();
            //调登录接口
            $.ajax({
                url: "http://10.170.130.68:8180/labSys/login",
                type:'post',
                dateType:'json',
                contentType:"application/json",
                data:JSON.stringify(obj),
                success:function(data){
                    console.log(data,11111111111111111111111);
                },
                error:function(data){
                    console.log("对不起,服务器无法响应");
                }
            });
        }
    });
    document.onreadystatechange = completeLoading;
});
function startAni(bodyTop,base1,base2,base3){
    if(bodyTop>=base1){
        $(".content .row .item").eq(0).animate({
            left: 0
        },1200);
        $(".content .row .item").eq(1).animate({
            right: 0
        },1200);
    }
    if(bodyTop>=base2){
        $(".content .row .item").eq(2).animate({
            left: 0
        },1200);
        $(".content .row .item").eq(3).animate({
            right: 0
        },1200);
    }
    if(bodyTop>=base3){
        $(".content .row .item").eq(4).animate({
            left: 0
        },1200);
        $(".content .row .item").eq(5).animate({
            right: 0
        },1200);
    }
}
function ScollPostion() {
    if($("body").attr("id")==='loginBody'){
        var bodyTop;
        if (document.documentElement && document.documentElement.scrollTop) {
            bodyTop = document.documentElement.scrollTop;
        } else if (document.body) {
            bodyTop = document.body.scrollTop;
        }
        let base1 = 0.16*$("#page2").height();
        let base2 = base1+$(".content").height()/3;
        let base3 = base2+$(".content").height()/3;
        startAni(bodyTop,base1,base2,base3);
        if(bodyTop<=base3){
            // 隐藏3行
            $(".content .row:gt(1) .item:even").finish();
            $(".content .row:gt(1) .item:odd").finish();
            $(".content .row:gt(1) .item:even").css('left',"-47%");
            $(".content .row:gt(1) .item:odd").css('right',"-47%");
        }
        if(bodyTop<=base2){
            // 隐藏2,3行
            $(".content .row:gt(0) .item:even").finish();
            $(".content .row:gt(0) .item:odd").finish();
            $(".content .row:gt(0) .item:even").css('left',"-47%");
            $(".content .row:gt(0) .item:odd").css('right',"-47%");
        }
        if(bodyTop<base1){
            // 隐藏1，2,3行
            $(".content .row .item").finish();
            $(".content .row .item:even").css('left',"-47%");
            $(".content .row .item:odd").css('right',"-47%");
        }
    }
}
// var isOpera,isChrome;
//加载状态为complete时隐藏loading效果
function completeLoading() {
    if (document.readyState == "complete") {
        $("#loadingDiv").hide();
        $("#myCarousel").show();
        $(".carousel-inner div").removeClass("active");
        $($(".carousel-inner div")[0]).addClass("active");
        $("#controlBtn .controlBtn").removeClass("active");
        $($("#controlBtn .controlBtn")[0]).addClass("active");
    }
}

//用户名密码不可以粘贴
$(function(){
    $("input[name = userName]").bind("copy cut paste",function(e){
        return false;
    });
    $("input[name = passWord]").bind("copy cut paste",function(e){
        return false;
    });
});

// function UrlSearch()
// {
//     var a=location.href;
//     var s=a.indexOf("?");
//     var status = a.substring(s+1);// t就是?后面的东西了
//     if(status == 'error'){
//         $('.tishi').show();
//     }else{
//         $('.tishi').hide();
//     }
// }
// UrlSearch();
