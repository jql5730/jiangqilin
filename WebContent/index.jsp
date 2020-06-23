<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file ="header.jsp" %>

<div id="wowoFocus" class="focuswowo">
    <ul style="height: 540px; top: -90px;">
        <li>
            <a target="_blank" href="#">
                <img class="lazyload" width="960" height="90" original="images/ggs1.jpg" src="images/ggs1.jpg" visibility="hidden">
            </a>
        </li>
        <li>
            <a target="_blank" href="#">
                <img width="960" height="90" src="images/ggs2.jpg">
            </a>
        </li>
        <li>
            <a target="_blank" href="#">
                <img class="lazyload" width="960" height="90" original="images/ggs3.jpg" src="images/ggs3.jpg" visibility="hidden">
            </a>
        </li>
        <li>
            <a target="_blank" href="#">
                <img class="lazyload" width="960" height="90" original="images/ggs4.jpg" src="images/ggs4.jpg" visibility="hidden">
            </a>
        </li>
        <li>
            <a target="_blank" href="#">
                <img class="lazyload" width="960" height="90" original="images/ggs5.jpg" src="images/ggs5.jpg" visibility="hidden">
            </a>
        </li>
        <li>
            <a target="_blank" href="#">
                <img class="lazyload" width="960" height="90" original="images/ggs1.jpg" src="images/ggs1.jpg" visibility="hidden">
            </a>
        </li>
    </ul>
</div>
<div class="con-boxIndex clearfix">
    <ul class="goods-allInd clearfix">
    

   <%List<Map<String,Object>> indexList = (List<Map<String,Object>>) request.getAttribute("indexList");
   
	//直接访问index.s会导致空指针异常，加个判断
	if(indexList == null){
		//跳转index.s
		request.getRequestDispatcher("index.s").forward(request, response);
		return;
		
	}
	
	String id = "";
	for(Map<String,Object> row : indexList){
		
		
   %>
        <li class="good-list" >
            <h2 class="good-title">
            
                <a class="biaoa"  target="_blank" href="details.jsp">
                    <strong>【<%=row.get("GD_NAME")+""+row.get("GD_PROMPT")%>】</strong>
                   	<%=row.get("GD_DESCRIBE")%>
                </a>
                
            </h2>
            <div class="index-smalllogo">
                <a class="yuy" target="_blank" href="#">免预约</a>
            </div>
            <a class="picture" target="_blank" href="#">
                <img width="348" height="232" rel="nofollow" src="upload/<%=row.get("GD_IMAGE")%>">
            </a>
            <div class="buy-boxInd clearfix">
                <a class="bh buy_a" rel="nofollow" href="details.jsp?id=<%=row.get("ID") %>" target="_blank" status="0">去看看</a>
                <span class="num">¥<%=String .format("%.0f",row.get("GD_PRICE"))%></span>
                <span class="past">原价 ¥<%=row.get("GD_HOTTIP")%></span>
            </div>
        </li>
        
        
     <% }%>
        
        
        
        <!-- <li class="good-list">
            <h2 class="good-title">
                <a class="biaoa" title="【雁峰区】仅67.5元，享价值160元『崇尚国际影城』3D单场双人套票1份！免费停车，高清巨幕多厅影城！" target="_blank" href="#">
                    <strong>【雁峰区】崇尚国际影城</strong>
                    3D单场双人套票1份！
                </a>
            </h2>
            <div class="index-smalllogo">
                <a class="yuy" target="_blank" href="#">免预约</a>
            </div>
            <a class="picture" target="_blank" href="#">
                <img width="348" height="232" rel="nofollow" src="images/show2.jpg">
            </a>
            <div class="buy-boxInd clearfix">
                <a class="bh buy_a" rel="nofollow" href="details.html" target="_blank" status="0">去看看</a>
                <span class="num">¥67.5</span>
                <span class="past">价值 ¥160</span>
            </div>
        </li>
        
        
        
        
        <li class="good-list">
            <h2 class="good-title">
                <a class="biaoa" title="【南方大厦】仅8.5元，享价值10元『方燕烤猪蹄』烤猪脚1份！肉香皮脆，口感极佳，先卤再烤，回味无穷！" target="_blank" href="#">
                    <strong>【南方大厦】方燕烤猪蹄</strong>
                    	烤猪脚1份！
                </a>
            </h2>
            <div class="index-smalllogo">
                <a class="yuy" target="_blank" href="#">免预约</a>
            </div>
            <a class="picture" target="_blank" href="">
                <img class="lazyload" width="348" height="232" rel="nofollow" original="images/show3.jpg" src="images/show3.jpg" visibility="hidden">
            </a>
            <div class="buy-boxInd clearfix">
                <a class="bh buy_a" rel="nofollow" href="details.html" target="_blank" status="0">去看看</a>
                <span class="num">¥8.5</span>
                <span class="past">价值 ¥10</span>
            </div>
        </li>
        
        
        
        
        <li class="good-list">
            <h2 class="good-title">
                <a class="biaoa" title="【石鼓区】仅6.9元，享价值9元『沐沐果茶』西米露4选1！提供免费wifi！" target="_blank" href="">
                    <strong>【石鼓区】沐沐果茶</strong>
                    西米露4选1！提供免费wifi！
                </a>
            </h2>
            <div class="index-smalllogo">
                <a class="yuy" target="_blank" href="#">免预约</a>
            </div>
            <a class="picture" target="_blank" href="#">
                <img class="lazyload" width="348" height="232" rel="nofollow" original="images/show4.jpg" src="images/show4.jpg" visibility="hidden">
            </a>
            <div class="buy-boxInd clearfix">
                <a class="bh buy_a" rel="nofollow" href="details.html" target="_blank" status="0">去看看</a>
                <span class="num">¥6.9</span>
                <span class="past">价值 ¥9</span>
            </div>
        </li> -->
        
        
        
        
    </ul>
    
    
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
</div>
<dl id="FriendLink">
    <dt class="hd">
        <ul class="tit">
            <li class="titlist">
                <a class="aBtn" href="#">热门城市</a>
            </li>
            <li class="titlist">
                <a class="aBtn" href="#">友情链接</a>
            </li>
        </ul>
    </dt>
    <dd class="bd">
        <ul class="linkbox" style="display: block;">
            <li class="linkList">
                <a class="aLink" href="#" target="_blank">湘潭团购</a>
            </li>
            <li class="linkList">
                <a class="aLink" href="#" target="_blank">常德团购</a>
            </li>
            <li class="linkList">
                <a class="aLink" href="#" target="_blank">株洲团购</a>
            </li>
            <li class="linkList">
                <a class="aLink" href="#" target="_blank">衡阳团购</a>
            </li>
            <li class="linkList">
                <a class="aLink" href="#" target="_blank">长沙团购</a>
            </li>
        </ul>
        <ul class="linkbox" style="display: none;">
            <li class="linkList">
                <a class="aLink" href="#" target="_blank">衡阳招聘</a>
            </li>
            <li class="linkList">
                <a class="aLink" href="#" target="_blank">衡阳租房</a>
            </li>
            <li class="linkList">
                <a class="aLink" href="#" target="_blank">衡阳旅游线路</a>
            </li>
            <li class="linkList">
                <a class="aLink" href="#" target="_blank">衡阳团购</a>
            </li>
            <li class="linkList">
                <a class="aLink" href="#" target="_blank">衡阳天气</a>
            </li>
        </ul>
    </dd>
</dl>



<%@ include file ="bottom.jsp" %>