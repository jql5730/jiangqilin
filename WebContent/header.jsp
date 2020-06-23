<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>    

<!doctype html>
<html><!-- InstanceBegin template="/Templates/index.dwt" codeOutsideHTMLIsLocked="false" -->
<head>
<meta charset="utf-8">
<!-- InstanceBeginEditable name="doctitle" -->
<title>窝窝团</title>
<%@include file="easyuiLink.jsp" %>
<!-- InstanceEndEditable -->
<link rel="stylesheet" href="css/basic.css" />
<link rel="shortcut icon" href="images/yc1.ico" type="images/x-icon" />

<!-- 顶部菜单开始 -->
<div id="headTop">
    <ul class="headTopUl clearfix">
        <li class="headTopUser">
            <ul class="headTopList clearfix">
                <li class="headRelat listmore">
                    <em class="moreico">woico</em>
                    <a class="Gray7" href="#">更多</a>
                    <b class="triangleT">triangle</b>
                    <ul class="ulbox linkmorbox">
                        <li>
                            <a href="#">手机版下载</a>
                        </li>
                        <li>
                            <a id="addEmailBtn" href="#">邮件订阅</a>
                        </li>
                        <li>
                            <a href="#">收藏本站</a>
                        </li>
                    </ul>
                    <b class="bh whiteBor">遮盖</b>
                </li>
                <li class="headRelat listsec">
                    <a class="Gray7" href="#">关注</a>
                    <b class="triangleT">triangle</b>
                    <ul class="ulbox linkBoxsec">
                        <li>
                            <a class="wowo-sina" href="#" target="_blank" title="窝窝团新浪微博">窝窝团新浪微博</a>
                        </li>
                        <li>
                            <a class="wowo-qq" href="#" target="_blank" title="窝窝团腾讯微博">窝窝团腾讯微博</a>
                        </li>
                        <li>
                            <a class="wowo-sina" href="#" title="窝窝团新浪客服微博" target="_blank">窝窝团新浪客服微博</a>
                        </li>
                    </ul>
                    <b class="bh whiteBor">遮盖</b>
                </li>
                <li class="headRelat headline">
                    <em class="l-ico"></em>
                </li>
                <li class="headRelat list">
                    <em class="woico">woico</em>
                    <a class="Gray7" rel="nofollow" href="#">我的窝窝</a>
                    <b class="triangleT">triangle</b>
                    <ul class="ulbox linkBox">
                        <li>
                            <a rel="nofollow" href="#">我的订单</a>
                        </li>
                        <li>
                            <a rel="nofollow" href="#">我的收藏</a>
                        </li>
                        <li>
                            <a rel="nofollow" href="#">我的积分</a>
                        </li>
                        <li>
                            <a rel="nofollow" href="#">我的评价</a>
                        </li>
                        <li>
                            <a rel="nofollow" href="#">帐号设置</a>
                        </li>
                        <li>
                            <a rel="nofollow" href="#">账户余额</a>
                        </li>
                        <li>
                            <a rel="nofollow" href="#">代金券</a>
                        </li>
                        <li>
                            <a rel="nofollow" href="#">消息中心</a>
                        </li>
                    </ul>
                    <b class="bh whiteBor">遮盖</b>
                </li>
            </ul>
        </li>
        <li class="headTopLogin">
            <span class="Gray7">
                您好！请 [<a class="yellowd1" rel="nofollow" href="login.jsp" target="_blank">登录</a>]
                <b class="borderdc">|</b>
                [<a class="yellowd1" rel="nofollow" href="reg.jsp" target="_blank">注册</a>]
                <b class="borderdc p_0_10">|</b>
            </span>
            <ul class="clearfix">
                <li id="msgCount" class="headTopUlist no">
                    <em class="messico">messico</em>
                    <a class="Gray7" rel="nofollow" href="#">消息</a>
                </li>
                <b class="borderdc p_1_10">|</b>
            </ul>
            <a id="integration" href="#">
                <em></em>
                领积分抵钱
            </a>
        </li>
    </ul>
</div>
<!-- 顶部菜单结束 -->
<!-- 顶部菜单中间部分开始 -->
<div id="headMin">
    <ul class="headConul clearfix">
        <li class="logoLi">
            <a gae="click_logo" href="#">
                <h1 class="bh logo">窝窝团</h1>
            </a>
        </li>
        <li class="wowoTitLi">
            <a gae="click_slogan" href="#">
                <h2 class="bh wowoTit">精挑细选</h2>
            </a>
        </li>
        <li class="cityBox">
            <h2 id="cityname" class="cityName">衡阳</h2>
            <span class="cityLink">
            【<a class="Gray5a" href="#" gae="city_list">切换城市</a>】
            </span>
            <span id="show_city" class="cityTs">
                <b class="triangbor">三角</b>
                <a id="ipClose" class="closeTs" href="#">关闭</a>
                您是不是在
                <em id="ipcityname" class="bluec4">衡阳</em>
                ？点击可选择其他城市
            </span>
        </li>
        <li class="searchLi ">
            <div class="searchlf">
                <span class="tri"></span>
                <div class="hd">
                    <a class="on deal" href="#">团购</a>
                    <a class="shoper" href="#">商家</a>
                </div>
            </div>
            <form id="soso_form" method="get" action="">
                <input class="searchTxt" type="text" autocomplete="off" maxlength="140" name="w" value="请输入商品名、地址">
                <a id="soso_submit" class="searchBtn" href="#">搜索</a>
                <input id="sg_from" type="hidden" name="sg_from" value="1">
                <input id="searchType" type="hidden" name="searchType" value="0">
            </form>
            <div class="hotkey" style="display:block" data-title="data_T">
                <a target="_self" href="#">月饼</a>
                <a class="on" target="_self" href="#">KTV</a>
                <a target="_self" href="#">蛋糕</a>
                <a target="_self" href="#">希朵曼</a>
                <a target="_self" href="#">万达</a>
                <a target="_self" href="#">水上乐园</a>
            </div>
            <div class="hotkey" data-title="data_S" style="display: none;">
                <a target="_self" href="#">月饼</a>
                <a class="on" target="_self" href="#">KTV</a>
                <a target="_self" href="#">蛋糕</a>
                <a target="_self" href="#">希朵曼</a>
                <a target="_self" href="#">万达</a>
                <a target="_self" href="#">水上乐园</a>
            </div>
            <div class="searchBox">
                <p class="searchTip">最近搜索过 </p>
                <ul class="clearfix"> </ul>
            </div>
        </li>
        <li id="userPointDiv" class="pointnum">
            <b class="triangbor">三角</b>
            <span class="Gray7">
                积分：<strong id="userPointStrong" class="red21"></strong>
            </span>
        </li>
    </ul>
</div>
<!-- 顶部菜单中间部分结束 -->
<!-- 顶部菜单下面的导航部分开始 -->
<div id="headNav">
    <ul id="navList" class="navUl clearfix">
        <li class="first_nav" date-nav="index">
            <a href="#">团购精选</a>
        </li>
        <li date-nav="shangcheng">
            <a href="#">窝窝商城</a>
        </li>
        <li class="zIndex2" date-nav="shenbian">
            <a href="#">身边</a>
        </li>
        <li date-nav="meishi">
            <a href="#">美食</a>
        </li>
        <li date-nav="yule">
            <a href="#">娱乐</a>
        </li>
        <li class="zIndex" date-nav="dianying">
            <a href="#">电影</a>
        </li>
        <li date-nav="meirongbaojian">
            <a href="#">美容保健</a>
        </li>
        <li date-nav="shenghuofuwu">
            <a href="#">生活服务</a>
        </li>
        <li date-nav="jiehun">
            <a href="#">结婚</a>
        </li>
        <li date-nav="lvyou">
            <a href="#">旅行</a>
        </li>
        <li date-nav="jiudian">
            <a href="#">酒店</a>
        </li>
        <li date-nav="shangpin">
            <a href="#">网购</a>
        </li>
        <li date-nav="shop">
            <a href="#">品牌汇</a>
        </li>
    </ul>
</div>
<!-- 顶部菜单下面的导航部分结束 -->
