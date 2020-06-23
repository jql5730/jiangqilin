<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="header.jsp" %>
<!-- InstanceBeginEditable name="body" -->
<div class="ucenter clearfix">
    <div class="uc-box clearfix">
        <div class="title_main"> 用户登录 </div>
        <div id="loginbox" class="ucon">
            <div class="msgerror">
                <p><span id="login_msg" class="error"></span></p>
            </div>
            <form id="loginform" class="formbox" action="memberinfo.s?op=login" method="post" name="form1" style="display: block">
             <font color="red">${msg }</font>
                <input type="hidden" value="" name="callbackparam">
                <input type="hidden" value="" name="service">
                <input id="url" type="hidden" value="" name="url">
                <input id="source" type="hidden" value="1" name="source">
                <table class="log-reg-table" width="620" cellspacing="0" cellpadding="0" border="0">
                    <tbody>
                        <tr>
                            <td width="160" align="right">登录名：</td>
                            <td>
                                <input class="int-type w-fir grey" type="text" name="name" value="手机号/邮箱/用户名" tips="手机号/邮箱/用户名" rule="">
                            </td>
                        </tr>
                        <tr>
                            <td width="160" align="right">密  码：</td>
                            <td>
                                <input class="int-type w-fir" type="password" name="password" tips="密码" value="" status="error">
                            </td>
                        </tr>
                        <tr>
                            <td width="160" align="right">验证码：</td>
                            <td>
                            <div class="intbox">
                                <input id="logsafecode" class="int-type w-sec" type="text" name="vcode" tips="验证码"  codedata="" maxlength="4">
                                <img id="safecodeloginimg" class="pic" width="100" height="30" src="vcode.jsp"
                                onclick="document.getElementById('safecodeloginimg').src='vcode.jsp?'+new Date()">
                                <a id="safecodeloginlink" class="tips" href="#"
                                onclick="document.getElementById('safecodeloginimg').src='vcode.jsp?'+new Date()">看不清？换一张</a>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td> </td>
                            <td>
                                <a id="userLogin" class="ubg bigtn redbig" gae="click_login_normal_login"  onclick="$('#loginform').submit()"
                                >登录</a>
                                <a class="tips" href="#" gae="click_user-login/password">忘记密码？</a>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </form>
        </div>
        <div class="uside">
            <div class="side-top nonebor">
                <p class="tit">还不是窝窝团用户?</p>
                <a class="ubg bigtn secbig" href="reg.jsp" gae="click_user-login/register">注册新用户</a>
            </div>
            <div class="side-min">
                <p class="tit">使用合作网站账号登录窝窝团</p>
                <div class="otherlogin">
                    <a class="weibo" href="#" gae="click_user-login/weibo" alt="新浪微博" target="_blank">新浪微博</a>
                    <a class="zh60" href="#" gae="click_user-login/360" alt="360" target="_blank">360帐号</a>
                    <a class="t800" href="#" gae="click_user-login/tuan800" alt="团800" target="_blank">团800</a>
                    <a class="qq" href="#" gae="click_user-login/QQ" alt="QQ" target="_blank">QQ</a>
                    <a class="baid" href="#" gae="click_user-login/baidu" alt="百度" target="_blank">百度</a>
                    <a class="zfb" href="#" gae="click_user-login/zhifubao" alt="支付宝" target="_blank">支付宝</a>
                </div>
            </div>
        </div>
    </div>
</div>
<%@ include file ="bottom.jsp" %>