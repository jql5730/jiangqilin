<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file ="header.jsp" %>

   <%List<Map<String,Object>> detailsList = (List<Map<String,Object>>) request.getAttribute("detailsList");
   
	//直接访问index.s会导致空指针异常，加个判断
	if(detailsList == null){
		//跳转index.s
		request.getRequestDispatcher("details.s").forward(request, response);
		return;             
		
	}
	
	String id = "";
	for(Map<String,Object> row : detailsList){
%>
<div class="con_box clearfix">
    <div class="con_left clearfix">
        <div class="details-ui clearfix">
        
            <h2 class="details-h2"><%=row.get("GD_NAME")+""+row.get("GD_PROMPT")%></h2>
            <p class="details-p"><%=row.get("GD_TEMP1") %></p>
            <ul class="details-lft">
                <li class="details-rigbg"></li>
                <li class="details-buy">
                    <strong class="wowoprice">¥<%=String .format("%.0f",row.get("GD_PRICE")) %></strong>
                    <a class="xqbuy-a" data="buySubmit" rel="nofollow" href="#">抢购</a>
                </li>
                <li class="shopprice">
                    <span>价值</span>
                    <span>折扣</span>
                    <span>节省</span>
                    <span class="ari">¥<%=row.get("GD_HOTTIP")%></span>
                    <span class="ari">5折</span>
                    <span class="ari">¥<%=row.get("GD_HOTTIP")%></span>
                </li>
                <li class="shopmsg" style="padding-bottom: 2px; padding-top: 7px;" data="groupok">
                    <span>
                        <strong class="ari" data="salenum"><%=String .format("%.0f",row.get("GD_CLICK")) %></strong>
                        人已购买
                    </span>
                    <span>已成团，可继续购买</span>
                </li>
                <li class="add_code" ajaxurl="">
                    <div class="code_bg clearfix">
                        <img class="img_o" src="images/takeOrder.jpg">
                        <div class="code_font clearfix">
                            <p>手机窝窝</p>
                            <p>扫码下单</p>
                        </div>
                    </div>
                </li>
                <li class="shopensure">
                    <a class="zhichi" title="支持未消费退款" target="_blank" href="#">支持退款</a>
                    <a class="baiwan" title="百万消费保证金" target="_blank" href="#" style="margin-right: -1px;">百万消费保证金</a>
                </li>
            </ul>
            <div class="details-rit">
                <ul class="xqtag clearfix">
                    <li class="myy">免预约</li>
                </ul>
                <div id="imgBox">
                    <ul>
                        <li>
                            <img width="456" height="304" border="0" src="upload/<%=row.get("GD_IMAGE")%>">
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <div id="details-left" class="details-msg details-abeam clearfix" style="padding: 0px;">
            <div class="details-msglft">
                <div id="goodsAll_info_div" class="details-msgtxt">
                    <div class="pubnav-box">
                        <h2 class="xqtext_title">本单详情</h2>
                        <div class="xqtext_clue">
                            <h2 class="xqtext_title">温馨提示</h2>
                            <dl class="clue_con clearfix">
                                <dt>有效日期：</dt>
                                <%SimpleDateFormat f = new SimpleDateFormat("yyy-MM-dd HH:mm"); %>
                                <dd class="orange"><%=f.format(row.get("GD_START")) %>-<%=f.format(row.get("GD_END"))  %></dd>
                                <dt>限购数量：</dt>
                                <dd><%=String .format("%.0f",row.get("GD_CLICK")) %></dd>
                                <dt>使用规则：</dt>
                                <dd><%=row.get("GD_PROMPT") %></dd>
                                <dt>预约提醒：</dt>
                                <dd class="phonemore">该商品无需预约</dd>
                                <dt>其他提示：</dt>
                                <dd class="clue_other">
                                    <ul>
                                        <li>在公共场所娱乐消费时，请您妥善保管好自己随身携带的财物，以防丢失；注意人身安全，避免发生危险。</li>
                                        <li>提供免费wifi</li>
                                        <li>提供免费停车位</li>
                                        <li>1m以下儿童免费，1－1.3m儿童半价,1.3m以上儿童按成人标准收费(含1.3m)，建议购买一张窝窝劵</li>
                                        <li>一位购票成人限带一位免费儿童，超出部分均需购儿童票； 无需预约</li>
                                        <li>有免费专车接送</li>
                                        <li>团购用户不可同时享受商家其他优惠，窝窝券不兑换、不找零</li>
                                    </ul>
                                </dd>
                            </dl>
                        </div>
                        <div class="xqtext-table">
                            <h2 class="xqtext_title">套餐内容</h2>
                            <table id="detailtab" cellspacing="0" cellpadding="0" style="display:block;">
                                    <thead>
                                        <tr>
                                            <th class="first" width="282" valign="middle">内容</th>
                                            <th width="126" valign="middle">单价</th>
                                            <th width="140" valign="middle">数量/规格</th>
                                            <th class="last" width="118" valign="middle">总计</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td class="title" valign="middle" align="center" colspan="4">2选1</td>
                                        </tr>
                                        <tr>
                                            <td class="first" valign="middle" align="left">周一至周五双人自助午餐：限1位男士和1位女士</td>
                                            <td valign="middle" align="center">196元</td>
                                            <td valign="middle" align="center">1份</td>
                                            <td class="last" valign="middle" align="center">196元</td>
                                        </tr>
                                        <tr>
                                            <td class="first" valign="middle" align="left">周一至周五双人自助午餐：2位女士</td>
                                            <td valign="middle" align="center">196元</td>
                                            <td valign="middle" align="center">1份</td>
                                            <td class="last" valign="middle" align="center">196元</td>
                                        </tr>
                                        <tr>
                                            <td class="bottom" valign="middle" colspan="4">
                                                <span>价值：<%=row.get("GD_HOTTIP") %>元</span>
                                                <span>窝窝价：<strong><%=String .format("%.0f",row.get("GD_PRICE")) %></strong>元</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="texcon" valign="middle" colspan="4">
                                                <p>限量供应：餐厅分欧陆情、亚洲风、日本料理、韩泰美食、海鲜超市、滋补靓汤、巴西烧烤、西式甜品等40多个美食档口，荟萃1200种环球美食，以完全自主的方式任君品尝，部分菜品随机调整，请以当天为准</p>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            <h2 class="xqtext_title">商品介绍</h2>
                            <div class="xqtext_more xqtext_sj">
                                <h3>海鲜类</h3>
                                <img class="lazyload" height="460" src="upload/<%=row.get("GD_IMAGE")%>" visibility="hidden">
                                <div class="context"></div>
                                <h3>熟食类</h3>
                                <img class="lazyload" height="460" src="images/images4.jpg" visibility="hidden">
                                <div class="context"></div>
                                <p class="gs-info">以上图片仅供参考，请以商家实际提供为准</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="btmbuy" style="padding: 35px;">
                    <span class="py">¥<%=String .format("%.0f",row.get("GD_PRICE")) %></strong></span>
                    <ul class="cr">
                        <li>
                            价值<br>

                            <del class="num">¥<%=row.get("GD_HOTTIP") %></del>
                        </li>
                        <li>
                            折扣<br>
                            <span class="num">5折</span>
                        </li>
                        <li>
                            节省<br>
                            <span class="num">¥98</span>
                        </li>
                    </ul>
                    
                    <%
                    String name = (String)row.get("GD_NAME");
                    String u_name = java.net.URLDecoder.decode(name, "UTF-8");// 解码
                    u_name = new String(u_name.getBytes("iso-8859-1"), "utf-8");
                    %>
                    
                    <a class="butbtn" data="buySubmit" rel="nofollow" href="shopcart.jsp?gd_name=<%=u_name %>&gd_price=<%=String .format("%.0f",row.get("GD_PRICE"))%>&gd_hottip=<%=row.get("GD_HOTTIP") %>">确认购买</a>
                    <div class="code_bg clearfix">
                        <img class="img_o" src="images/takeOrder.jpg">
                        <div class="code_font clearfix">
                            <p>手机窝窝</p>
                            <p>扫码下单</p>
                        </div>
                        <div class="code_guide" style="display:none;">
                            <p>手机扫码购买指导</p>
                            <img class="img_i" alt="扫描指导" src="images/code2_m_guide.jpg">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div id="con_right" class="con_right">
        <div class="pub-rigwrap">
            <h2 class="pub-rigtitle">专卖店信息</h2>
            <div class="xq-shoplist">
                <div class="hd" style="border: 0px none;">
                    <a target="_blank" href="#" alt="熊猫餐谋海鲜自助">
                        <img width="128" height="96" src="images/pic4.png">
                    </a>
                    <span class="tit">熊猫餐谋海鲜自助</span>
                    <span class="zk">
                        <span>
                            折扣：<em>5.0</em>折起
                        </span>
                    </span>
                </div>
            </div>
        </div>
        <div class="con-boxrig">
            <div class="pub-rigwrap">
                <a rel="nofollow" target="_blank" href="#">
                    <img class="baozhangimg" width="218" height="120" src="images/baozhang.png">
                </a>
            </div>
            <a href="#" gae="AD_ALL-SY-RT-00000003-0-82" target="_blank">
                <img class="right_ggimg" width="218" height="120" src="images/ggs_index.gif">
            </a>
            <div class="pub-rigwrap">
                <a rel="nofollow" target="_blank" href="#">
                    <img class="baozhangimg" width="218" height="120" src="images/pic1.jpg">
                </a>
            </div>
            <div class="pub-rigwrap">
                <a rel="nofollow" target="_blank" href="#">
                    <img class="baozhangimg" width="218" height="120" src="images/pic2.jpg">
                </a>
            </div>
            <div class="pub-rigwrap">
                <a rel="nofollow" target="_blank" href="#">
                    <img class="baozhangimg" width="218" height="120" src="images/pic3.jpg">
                </a>
            </div>
        </div>
        
        
         <% }%> 
    </div>
</div>
<%@ include file ="bottom.jsp" %>