<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.nddmwdf.program.dao.NewsDao" %>
<%@ page import="java.util.List" %>
<%@ page import="com.nddmwdf.program.entity.News" %><%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2019/10/26
  Time: 11:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<%
    NewsDao newsDao=new NewsDao();
    List<News> nws=newsDao.defaultnews();
    request.setAttribute("def", nws);
%>
<link rel="stylesheet" href="../layui-v2.5.5/layui/css/layui.css">
<link rel="stylesheet" href="../css/new_center.css">
<head>
    <meta charset="UTF-8">
    <title>新闻中心</title>
</head>
<!--新闻中心导航栏-->
<div class="nav">
    <ul>
        <li><img src="../img/树叶.png" alt=""></li>
        <li>易分垃圾网</li>
        <li><a href="../forjsp/index.jsp">首页</a></li>
        <li><a href="../forjsp/garbage.jsp">分类指南</a></li>
        <li><a href="../forjsp/garbage.jsp">分类查询</a></li>
        <li><a href="../forjsp/news_center.jsp">新闻中心</a></li>
    </ul>
</div>
<div class="span1"><span>环保要闻>></span></div>
<div class="layui-carousel" id="test1">
    <div carousel-item>
        <div><a href="#"><img src="../img/垃圾信息一.jpeg" alt="">
            <div class="text">广州小伙训练鹦鹉垃圾分类网友称赞聪明、神奇</div></a></div>
        <div><a href="#"><img src="../img/新闻信息二.jpg" alt=""><div class="text">学劳模，做垃圾分类小达人——2019“中国好作业”完美收官</div>></a></div>
        <div><a href="#"><img src="../img/新闻信息三.jpg" alt=""><div class="text">南锣鼓巷“花式”推广垃圾分类</div></a></div>
        <div><a href="#"><img src="../img/新闻信息四.jpg" alt=""><div class="text">天津：小志愿者助力社区环保 垃圾分类“画”出来</div></a></div>
        <div><a href="#"><img src="../img/新闻信息五.jpeg"alt=""><div class="text">“小手拉大手，垃圾分类进校园”活动走进火马冲镇中心小学</div></a></div>
        <div><a href="#"><img src="../img/新闻信息二.jpg" alt=""><div class="text">学劳模，做垃圾分类小达人——2019“中国好作业”完美收官</div></a></div>
        <div><a href="#"><img src="../img/新闻信息三.jpg" alt=""><div class="text">南锣鼓巷“花式”推广垃圾分类</div></a></div>
        <div><a href="#"><img src="../img/新闻信息四.jpg" alt=""><div class="text">天津：小志愿者助力社区环保 垃圾分类“画”出来</div></a></div>
        <div><a href="#"><img src="../img/新闻信息五.jpeg"alt=""><div class="text">“小手拉大手，垃圾分类进校园”活动走进火马冲镇中心小学</div></a></div>
    </div>
</div>
<!-- 条目中可以是任意内容，如：<img src=""> -->
<!--新闻中心左边新闻部分-->
<div class="new_center-left">
    <div class="new_list">
        <ul>
            <c:forEach items="${def}" var="news">
            <li><span></span><a href="../forjsp/newinfo.jsp?text=${news.text}&title=${news.title}&shijian=${news.time}&author=${news.author}"><p>${news.title}</p></a></li>
            </c:forEach>
        </ul>
    </div>
    <div class="footer">
        <div class="notice">
            <div class="span2"><span>公告栏>></span></div>
            <ul>
                <li><span><img src="../img/手指示.png" alt=""></span><a href="">垃圾分类小知识：垃圾的危害</a></li>
                <li><span><img src="../img/手指示.png" alt=""></span><a href="">垃圾分类顺口溜</a></li>
                <li><span><img src="../img/手指示.png" alt=""></span><a href="">垃圾分类的坏处4点</a></li>
                <li><span><img src="../img/手指示.png" alt=""></span><a href="">垃圾分类名言</a></li>
                <li><span><img src="../img/手指示.png" alt=""></span><a href="">科普垃圾分类知识</a></li>
            </ul>
        </div>
        <!--政策法规部分-->
        <div class="new_center-policy">
            <div class="span3"><span>政策法规>></span></div>
            <ul>
                <li><span><img src="../img/双箭头%20右.png" alt=""></span><a href="">《中华人民共和国环境保护法》</a></li>
                <li><span><img src="../img/双箭头%20右.png" alt=""></span><a href="">《水污染防治法实施细则》</a></li>
                <li><span><img src="../img/双箭头%20右.png" alt=""></span><a href="">《危险废物经营许可证管理办法》</a></li>
                <li><span><img src="../img/双箭头%20右.png" alt=""></span><a href="">《医疗废物管理条例》</a></li>
                <li><span><img src="../img/双箭头%20右.png" alt=""></span><a href="">《环境保护行政处罚办法》</a></li>
            </ul>
        </div>
    </div>
</div>
<!--新闻中心右边其他新闻列表部分-->
<div class="new_center-right">
    <div class="new_center-title">
        <span>环保热点</span>
        <div class="change">
            <span>换一换</span>
            <span><a href=""><img src="../img/换一换.png" alt=""></a></span>
        </div>
    </div>
    <ul class="new_list">
        <li><a href=""><p><span>1</span>广州小伙训练鹦鹉垃圾分类 </p></a></li>
        <li><a href=""><p><span>2</span>学劳模，做垃圾分类小达人</p></a></li>
        <li><a href=""><p><span>3</span>南锣鼓巷“花式”推广垃圾分类</p></a></li>
        <li><a href=""><p><span>4</span>天津：小志愿者助力社区环保 垃圾分类“画”出来</p></a></li>
        <li><a href=""><p><span>5</span>垃圾桶装上“小芯片”浦东航头镇探索农村地区垃圾分类“智治”</p></a></li>
        <li><a href=""><p><span>6</span>“小手拉大手，垃圾分类进校园”活动走进火马冲镇中心小学</p></a></li>
        <li><a href=""><p><span>7</span>景宁学雷锋青年志愿服务队小志愿者在石印广场宣传垃圾分类</p></a></li>
        <li><a href=""><p><span>8</span>瞻前不顾后 部分城市垃圾分类流于形式</p></a></li>
        <li><a href=""><p><span>9</span>广深居民备战垃圾分类 天猫垃圾桶销量广东第一</p></a></li>
        <li><a href=""><p><span>10</span>.西湖：这个小区垃圾分类投放点很贴心</p></a></li>
    </ul>
</div>
<!--公告栏部分-->
</body>
<script src="../layui-v2.5.5/layui/layui.js"></script>
<script>
    layui.use('carousel', function(){
        var carousel = layui.carousel;
        //建造实例
        carousel.render({
            elem: '#test1'
            ,width: '70%' //设置容器宽度
            ,arrow: 'always' //始终显示箭头
            //,anim: 'updown' //切换动画方式
        });
    });
</script>
</html>


