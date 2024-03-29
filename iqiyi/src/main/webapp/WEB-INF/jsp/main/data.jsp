<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>爱电影后台项目</title>
    <meta name="description" content="这是一个 index 页面">
    <meta name="keywords" content="index">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="renderer" content="webkit">
    <meta http-equiv="Cache-Control" content="no-siteapp"/>
    <link rel="icon" type="image/png" href="${pageContext.request.contextPath}/assets/i/favicon.png">
    <link rel="apple-touch-icon-precomposed" href="${pageContext.request.contextPath}/assets/i/app-icon72x72@2x.png">
    <meta name="apple-mobile-web-app-title" content="Amaze UI"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/amazeui.min.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/admin.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/app.css">
    <script src="${pageContext.request.contextPath}/assets/js/echarts.min.js"></script>
</head>

<body data-type="index">


<%--此处设置头部分--%>
<jsp:include page="/WEB-INF/jsp/nav/header.jsp"></jsp:include>
<%--此处设置头部分--%>

<%--此处设置左侧部分--%>
<jsp:include page="/WEB-INF/jsp/nav/left.jsp"></jsp:include>
<%--此处设置左侧部分--%>


<div class="tpl-page-container tpl-page-header-fixed">


    <div class="tpl-content-wrapper">
        <div class="tpl-content-page-title">
            数据统计
        </div>
        <ol class="am-breadcrumb">
            <li><a href="#" class="am-icon-home">数据统计</a></li>
            <li class="am-active">内容</li>
        </ol>
        <div class="tpl-content-scope">
            <div class="note note-info">
                <h3>爱电影后台数据统计
                    <span class="close" data-close="note"></span>
                </h3>
                <p>本页面统计电影、演员、用户、热播等总数，以及显示访问量日、周、月情况，显示热播类型占比，还可以显示访问列表以及崩溃列表。</p>
<%--                <p><span class="label label-danger">提示:</span> Amaze UI 关注中文排版，根据用户代理调整字体，实现更好的中文排版效果。--%>
<%--                </p>--%>
            </div>
        </div>

        <div class="row">
            <%--显示当前电影总数--%>
            <div class="am-u-lg-3 am-u-md-6 am-u-sm-12">
                <div class="dashboard-stat blue">
                    <div class="visual">
                        <i class="am-icon-comments-o"></i>
                    </div>
                    <div class="details">
                        <div class="number"> ${data.movienum} </div>
                        <div class="desc"> 电影总数 </div>
                    </div>
                    <a class="more" href="#"> 查看更多
                        <i class="m-icon-swapright m-icon-white"></i>
                    </a>
                </div>
            </div>

            <%--显示演员总数--%>
            <div class="am-u-lg-3 am-u-md-6 am-u-sm-12">
                <div class="dashboard-stat red">
                    <div class="visual">
                        <i class="am-icon-bar-chart-o"></i>
                    </div>
                    <div class="details">
                        <div class="number"> ${data.perfomernum} </div>
                        <div class="desc"> 演员数量 </div>
                    </div>
                    <a class="more" href="#"> 查看更多
                        <i class="m-icon-swapright m-icon-white"></i>
                    </a>
                </div>
            </div>

            <%--显示用户总数--%>
            <div class="am-u-lg-3 am-u-md-6 am-u-sm-12">
                <div class="dashboard-stat green">
                    <div class="visual">
                        <i class="am-icon-apple"></i>
                    </div>
                    <div class="details">
                        <div class="number"> ${data.usernum} </div>
                        <div class="desc"> 用户总数 </div>
                    </div>
                    <a class="more" href="#"> 查看更多
                        <i class="m-icon-swapright m-icon-white"></i>
                    </a>
                </div>
            </div>

            <%--显示电影类型总数--%>
            <div class="am-u-lg-3 am-u-md-6 am-u-sm-12">
                <div class="dashboard-stat purple">
                    <div class="visual">
                        <i class="am-icon-android"></i>
                    </div>
                    <div class="details">
                        <div class="number"> ${data.categroynum} </div>
                        <div class="desc"> 电影分类总数 </div>
                    </div>
                    <a class="more" href="#"> 查看更多
                        <i class="m-icon-swapright m-icon-white"></i>
                    </a>
                </div>
            </div>

        </div>

        <div class="row">
            <%--使用图表展示系统的日、周、月访问量等情况
            或者显示热播电影分类--%>
            <div class="am-u-md-6 am-u-sm-12 row-mb">
                <div class="tpl-portlet">
                    <div class="tpl-portlet-title">
                        <div class="tpl-caption font-green ">
                            <i class="am-icon-cloud-download"></i>
                            <span> Cloud 数据统计</span>
                        </div>
                        <div class="actions">
                            <ul class="actions-btn">
                                <li class="red-on">昨天</li>
                                <li class="green">前天</li>
                                <li class="blue">本周</li>
                            </ul>
                        </div>
                    </div>

                    <!--此部分数据请在 js文件夹下中的 app.js 中的 “百度图表A” 处修改数据 插件使用的是 百度echarts-->
                    <div class="tpl-echarts" id="tpl-echarts-A">

                    </div>
                </div>
            </div>

            <%--不同类型的电影的数量、平均评分、占比，显示前10名--%>
            <div class="am-u-md-6 am-u-sm-12 row-mb">
                <div class="tpl-portlet">
                    <div class="tpl-portlet-title">
                        <div class="tpl-caption font-red ">
                            <i class="am-icon-bar-chart"></i>
                            <span> Cloud 动态资料</span>
                        </div>
                        <div class="actions">
                            <ul class="actions-btn">
                                <li class="purple-on">昨天</li>
                                <li class="green">前天</li>
                                <li class="dark">本周</li>
                            </ul>
                        </div>
                    </div>
                    <div class="tpl-scrollable">
                        <div class="number-stats">
<%--                            <div class="stat-number am-fl am-u-md-6">--%>
<%--                                <div class="title am-text-right"> Total </div>--%>
<%--                                <div class="number am-text-right am-text-warning"> 2460 </div>--%>
<%--                            </div>--%>
<%--                            <div class="stat-number am-fr am-u-md-6">--%>
<%--                                <div class="title"> Total </div>--%>
<%--                                <div class="number am-text-success"> 2460 </div>--%>
<%--                            </div>--%>
                        </div>

                        <table class="am-table tpl-table">
                            <thead>
                            <tr class="tpl-table-uppercase">
                                <th>类型</th>
                                <th>总数</th>
                                <th>平均评分</th>
                                <th>占比</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${data.tops}" var="top">
                                <tr>
                                <td>
                                    <img src="assets/img/user01.png" alt="" class="user-pic">
                                    <a class="user-name" href="###">${top.title}</a>
                                </td>
                                <td>${top.num}</td>
                                <td>${top.scoreavg}</td>
                                <td class="font-green bold">${top.persent}%</td>
                            </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>


        <div class="row">
            <%--显示系统的被访问情况的列表--%>
            <div class="am-u-md-6 am-u-sm-12 row-mb">

                <div class="tpl-portlet">
                    <div class="tpl-portlet-title">
                        <div class="tpl-caption font-green ">
                            <span>访问列表</span>
<%--                            <span class="caption-helper">16 件</span>--%>
                        </div>
                        <div class="tpl-portlet-input">
                            <div class="portlet-input input-small input-inline">
                                <div class="input-icon right">
                                    <i class="am-icon-search"></i>
                                    <input type="text" class="form-control form-control-solid" placeholder="搜索..."> </div>
                            </div>
                        </div>
                    </div>
                    <div id="wrapper" class="wrapper">
                        <div id="scroller" class="scroller">
                            <ul class="tpl-task-list">
                                <li>
                                    <div class="task-checkbox">
                                        <input type="hidden" value="1" name="test">
                                        <input type="checkbox" class="liChild" value="2" name="test"> </div>
                                    <div class="task-title">
                                        <span class="task-title-sp"> Amaze UI Icon 组件目前使用了 Font Awesome </span>
                                        <span class="label label-sm label-success">技术部</span>
                                        <span class="task-bell">
                                            <i class="am-icon-bell-o"></i>
                                        </span>
                                    </div>
                                    <div class="task-config">
                                        <div class="am-dropdown tpl-task-list-dropdown" data-am-dropdown>
                                            <a href="###" class="am-dropdown-toggle tpl-task-list-hover " data-am-dropdown-toggle>
                                                <i class="am-icon-cog"></i> <span class="am-icon-caret-down"></span>
                                            </a>
                                            <ul class="am-dropdown-content tpl-task-list-dropdown-ul">
                                                <li>
                                                    <a href="javascript:;">
                                                        <i class="am-icon-check"></i> 保存 </a>
                                                </li>
                                                <li>
                                                    <a href="javascript:;">
                                                        <i class="am-icon-pencil"></i> 编辑 </a>
                                                </li>
                                                <li>
                                                    <a href="javascript:;">
                                                        <i class="am-icon-trash-o"></i> 删除 </a>
                                                </li>
                                            </ul>


                                        </div>
                                    </div>
                                </li>

                                <li>
                                    <div class="task-checkbox">
                                        <input type="hidden" value="1" name="test">
                                        <input type="checkbox" class="liChild" value="2" name="test"> </div>
                                    <div class="task-title">
                                        <span class="task-title-sp"> 在 data-am-dropdown 里指定要适应到的元素，下拉内容的宽度会设置为该元素的宽度。当然可以直接在 CSS 里设置下拉内容的宽度。 </span>
                                        <span class="label label-sm label-danger">运营</span>

                                    </div>
                                    <div class="task-config">
                                        <div class="am-dropdown tpl-task-list-dropdown" data-am-dropdown>
                                            <a href="###" class="am-dropdown-toggle tpl-task-list-hover " data-am-dropdown-toggle>
                                                <i class="am-icon-cog"></i> <span class="am-icon-caret-down"></span>
                                            </a>
                                            <ul class="am-dropdown-content tpl-task-list-dropdown-ul">
                                                <li>
                                                    <a href="javascript:;">
                                                        <i class="am-icon-check"></i> 保存 </a>
                                                </li>
                                                <li>
                                                    <a href="javascript:;">
                                                        <i class="am-icon-pencil"></i> 编辑 </a>
                                                </li>
                                                <li>
                                                    <a href="javascript:;">
                                                        <i class="am-icon-trash-o"></i> 删除 </a>
                                                </li>
                                            </ul>


                                        </div>
                                    </div>
                                </li>

                                <li>
                                    <div class="task-checkbox">
                                        <input type="hidden" value="1" name="test">
                                        <input type="checkbox" class="liChild" value="2" name="test"> </div>
                                    <div class="task-title">
                                        <span class="task-title-sp"> 使用 LESS： 通过设置变量 @fa-font-path 覆盖默认的值，如 @fa-font-path: "../fonts";。这个变量定义在 icon.less 里。 </span>
                                        <span class="label label-sm label-warning">市场部</span>

                                    </div>
                                    <div class="task-config">
                                        <div class="am-dropdown tpl-task-list-dropdown" data-am-dropdown>
                                            <a href="###" class="am-dropdown-toggle tpl-task-list-hover " data-am-dropdown-toggle>
                                                <i class="am-icon-cog"></i> <span class="am-icon-caret-down"></span>
                                            </a>
                                            <ul class="am-dropdown-content tpl-task-list-dropdown-ul">
                                                <li>
                                                    <a href="javascript:;">
                                                        <i class="am-icon-check"></i> 保存 </a>
                                                </li>
                                                <li>
                                                    <a href="javascript:;">
                                                        <i class="am-icon-pencil"></i> 编辑 </a>
                                                </li>
                                                <li>
                                                    <a href="javascript:;">
                                                        <i class="am-icon-trash-o"></i> 删除 </a>
                                                </li>
                                            </ul>


                                        </div>
                                    </div>
                                </li>

                                <li>
                                    <div class="task-checkbox">
                                        <input type="hidden" value="1" name="test">
                                        <input type="checkbox" class="liChild" value="2" name="test"> </div>
                                    <div class="task-title">
                                        <span class="task-title-sp"> 添加 .am-btn-group-justify class 让按钮组里的按钮平均分布，填满容器宽度。 </span>
                                        <span class="label label-sm label-default">已废弃</span>

                                    </div>
                                    <div class="task-config">
                                        <div class="am-dropdown tpl-task-list-dropdown" data-am-dropdown>
                                            <a href="###" class="am-dropdown-toggle tpl-task-list-hover " data-am-dropdown-toggle>
                                                <i class="am-icon-cog"></i> <span class="am-icon-caret-down"></span>
                                            </a>
                                            <ul class="am-dropdown-content tpl-task-list-dropdown-ul">
                                                <li>
                                                    <a href="javascript:;">
                                                        <i class="am-icon-check"></i> 保存 </a>
                                                </li>
                                                <li>
                                                    <a href="javascript:;">
                                                        <i class="am-icon-pencil"></i> 编辑 </a>
                                                </li>
                                                <li>
                                                    <a href="javascript:;">
                                                        <i class="am-icon-trash-o"></i> 删除 </a>
                                                </li>
                                            </ul>


                                        </div>
                                    </div>
                                </li>

                                <li>
                                    <div class="task-checkbox">
                                        <input type="hidden" value="1" name="test">
                                        <input type="checkbox" class="liChild" value="2" name="test"> </div>
                                    <div class="task-title">
                                        <span class="task-title-sp"> 按照示例组织好 HTML 结构（不加 data-am-dropdown 属性），然后通过 JS 来调用。 </span>
                                        <span class="label label-sm label-success">技术部</span>
                                        <span class="task-bell">
                                            <i class="am-icon-bell-o"></i>
                                        </span>
                                    </div>
                                    <div class="task-config">
                                        <div class="am-dropdown tpl-task-list-dropdown" data-am-dropdown>
                                            <a href="###" class="am-dropdown-toggle tpl-task-list-hover " data-am-dropdown-toggle>
                                                <i class="am-icon-cog"></i> <span class="am-icon-caret-down"></span>
                                            </a>
                                            <ul class="am-dropdown-content tpl-task-list-dropdown-ul">
                                                <li>
                                                    <a href="javascript:;">
                                                        <i class="am-icon-check"></i> 保存 </a>
                                                </li>
                                                <li>
                                                    <a href="javascript:;">
                                                        <i class="am-icon-pencil"></i> 编辑 </a>
                                                </li>
                                                <li>
                                                    <a href="javascript:;">
                                                        <i class="am-icon-trash-o"></i> 删除 </a>
                                                </li>
                                            </ul>


                                        </div>
                                    </div>
                                </li>


                                <li>
                                    <div class="task-checkbox">
                                        <input type="hidden" value="1" name="test">
                                        <input type="checkbox" class="liChild" value="2" name="test"> </div>
                                    <div class="task-title">
                                        <span class="task-title-sp"> 添加 .am-btn-group-justify class 让按钮组里的按钮平均分布，填满容器宽度。 </span>
                                        <span class="label label-sm label-default">已废弃</span>

                                    </div>
                                    <div class="task-config">
                                        <div class="am-dropdown tpl-task-list-dropdown" data-am-dropdown>
                                            <a href="###" class="am-dropdown-toggle tpl-task-list-hover " data-am-dropdown-toggle>
                                                <i class="am-icon-cog"></i> <span class="am-icon-caret-down"></span>
                                            </a>
                                            <ul class="am-dropdown-content tpl-task-list-dropdown-ul">
                                                <li>
                                                    <a href="javascript:;">
                                                        <i class="am-icon-check"></i> 保存 </a>
                                                </li>
                                                <li>
                                                    <a href="javascript:;">
                                                        <i class="am-icon-pencil"></i> 编辑 </a>
                                                </li>
                                                <li>
                                                    <a href="javascript:;">
                                                        <i class="am-icon-trash-o"></i> 删除 </a>
                                                </li>
                                            </ul>


                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="task-checkbox">
                                        <input type="hidden" value="1" name="test">
                                        <input type="checkbox" class="liChild" value="2" name="test"> </div>
                                    <div class="task-title">
                                        <span class="task-title-sp"> 使用 LESS： 通过设置变量 @fa-font-path 覆盖默认的值，如 @fa-font-path: "../fonts";。这个变量定义在 icon.less 里。 </span>
                                        <span class="label label-sm label-warning">市场部</span>

                                    </div>
                                    <div class="task-config">
                                        <div class="am-dropdown tpl-task-list-dropdown" data-am-dropdown>
                                            <a href="###" class="am-dropdown-toggle tpl-task-list-hover " data-am-dropdown-toggle>
                                                <i class="am-icon-cog"></i> <span class="am-icon-caret-down"></span>
                                            </a>
                                            <ul class="am-dropdown-content tpl-task-list-dropdown-ul">
                                                <li>
                                                    <a href="javascript:;">
                                                        <i class="am-icon-check"></i> 保存 </a>
                                                </li>
                                                <li>
                                                    <a href="javascript:;">
                                                        <i class="am-icon-pencil"></i> 编辑 </a>
                                                </li>
                                                <li>
                                                    <a href="javascript:;">
                                                        <i class="am-icon-trash-o"></i> 删除 </a>
                                                </li>
                                            </ul>


                                        </div>
                                    </div>
                                </li>

                                <li>
                                    <div class="task-checkbox">
                                        <input type="hidden" value="1" name="test">
                                        <input type="checkbox" class="liChild" value="2" name="test"> </div>
                                    <div class="task-title">
                                        <span class="task-title-sp"> 添加 .am-btn-group-justify class 让按钮组里的按钮平均分布，填满容器宽度。 </span>
                                        <span class="label label-sm label-default">已废弃</span>

                                    </div>
                                    <div class="task-config">
                                        <div class="am-dropdown tpl-task-list-dropdown" data-am-dropdown>
                                            <a href="###" class="am-dropdown-toggle tpl-task-list-hover " data-am-dropdown-toggle>
                                                <i class="am-icon-cog"></i> <span class="am-icon-caret-down"></span>
                                            </a>
                                            <ul class="am-dropdown-content tpl-task-list-dropdown-ul">
                                                <li>
                                                    <a href="javascript:;">
                                                        <i class="am-icon-check"></i> 保存 </a>
                                                </li>
                                                <li>
                                                    <a href="javascript:;">
                                                        <i class="am-icon-pencil"></i> 编辑 </a>
                                                </li>
                                                <li>
                                                    <a href="javascript:;">
                                                        <i class="am-icon-trash-o"></i> 删除 </a>
                                                </li>
                                            </ul>


                                        </div>
                                    </div>
                                </li>

                                <li>
                                    <div class="task-checkbox">
                                        <input type="hidden" value="1" name="test">
                                        <input type="checkbox" class="liChild" value="2" name="test"> </div>
                                    <div class="task-title">
                                        <span class="task-title-sp"> 按照示例组织好 HTML 结构（不加 data-am-dropdown 属性），然后通过 JS 来调用。 </span>
                                        <span class="label label-sm label-success">技术部</span>
                                        <span class="task-bell">
                                            <i class="am-icon-bell-o"></i>
                                        </span>
                                    </div>
                                    <div class="task-config">
                                        <div class="am-dropdown tpl-task-list-dropdown" data-am-dropdown>
                                            <a href="###" class="am-dropdown-toggle tpl-task-list-hover " data-am-dropdown-toggle>
                                                <i class="am-icon-cog"></i> <span class="am-icon-caret-down"></span>
                                            </a>
                                            <ul class="am-dropdown-content tpl-task-list-dropdown-ul">
                                                <li>
                                                    <a href="javascript:;">
                                                        <i class="am-icon-check"></i> 保存 </a>
                                                </li>
                                                <li>
                                                    <a href="javascript:;">
                                                        <i class="am-icon-pencil"></i> 编辑 </a>
                                                </li>
                                                <li>
                                                    <a href="javascript:;">
                                                        <i class="am-icon-trash-o"></i> 删除 </a>
                                                </li>
                                            </ul>


                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>

            <%--显示系统的出问题的日志记录列表--%>
            <div class="am-u-md-6 am-u-sm-12 row-mb">
                <div class="tpl-portlet">
                    <div class="tpl-portlet-title">
                        <div class="tpl-caption font-green ">
                            <span>系统崩溃列表</span>
                        </div>

                    </div>

                    <div class="am-tabs tpl-index-tabs" data-am-tabs>
                        <ul class="am-tabs-nav am-nav am-nav-tabs">
<%--                            <li class="am-active"><a href="#tab1">进行中</a></li>--%>
<%--                            <li><a href="#tab2">已完成</a></li>--%>
                        </ul>

                        <div class="am-tabs-bd">
                            <div class="am-tab-panel am-fade am-in am-active" id="tab1">
                                <div id="wrapperA" class="wrapper">
                                    <div id="scroller" class="scroller">
                                        <ul class="tpl-task-list tpl-task-remind">
                                            <li>
                                                <div class="cosB">
                                                    12分钟前
                                                </div>
                                                <div class="cosA">
                                                        <span class="cosIco">
                        <i class="am-icon-bell-o"></i>
                      </span>

                                                    <span> 注意：Chrome 和 Firefox 下， display: inline-block; 或 display: block; 的元素才会应用旋转动画。<span class="tpl-label-info"> 提取文件
                                                            <i class="am-icon-share"></i>
                                                        </span></span>
                                                </div>

                                            </li>
                                            <li>
                                                <div class="cosB">
                                                    36分钟前
                                                </div>
                                                <div class="cosA">
                                                        <span class="cosIco label-danger">
                        <i class="am-icon-bolt"></i>
                      </span>

                                                    <span> FontAwesome 在绘制图标的时候不同图标宽度有差异， 添加 .am-icon-fw 将图标设置为固定的宽度，解决宽度不一致问题（v2.3 新增）。</span>
                                                </div>

                                            </li>

                                            <li>
                                                <div class="cosB">
                                                    2小时前
                                                </div>
                                                <div class="cosA">
                                                        <span class="cosIco label-info">
                        <i class="am-icon-bullhorn"></i>
                      </span>

                                                    <span> 使用 flexbox 实现，只兼容 IE 10+ 及其他现代浏览器。</span>
                                                </div>

                                            </li>
                                            <li>
                                                <div class="cosB">
                                                    1天前
                                                </div>
                                                <div class="cosA">
                                                        <span class="cosIco label-warning">
                        <i class="am-icon-plus"></i>
                      </span>

                                                    <span> 部分用户反应在过长的 Tabs 中滚动页面时会意外触发 Tab 切换事件，用户可以选择禁用触控操作。</span>
                                                </div>

                                            </li>
                                            <li>
                                                <div class="cosB">
                                                    12分钟前
                                                </div>
                                                <div class="cosA">
                                                        <span class="cosIco">
                        <i class="am-icon-bell-o"></i>
                      </span>

                                                    <span> 注意：Chrome 和 Firefox 下， display: inline-block; 或 display: block; 的元素才会应用旋转动画。<span class="tpl-label-info"> 提取文件
                                                            <i class="am-icon-share"></i>
                                                        </span></span>
                                                </div>

                                            </li>
                                            <li>
                                                <div class="cosB">
                                                    36分钟前
                                                </div>
                                                <div class="cosA">
                                                        <span class="cosIco label-danger">
                        <i class="am-icon-bolt"></i>
                      </span>

                                                    <span> FontAwesome 在绘制图标的时候不同图标宽度有差异， 添加 .am-icon-fw 将图标设置为固定的宽度，解决宽度不一致问题（v2.3 新增）。</span>
                                                </div>

                                            </li>

                                            <li>
                                                <div class="cosB">
                                                    2小时前
                                                </div>
                                                <div class="cosA">
                                                        <span class="cosIco label-info">
                        <i class="am-icon-bullhorn"></i>
                      </span>

                                                    <span> 使用 flexbox 实现，只兼容 IE 10+ 及其他现代浏览器。</span>
                                                </div>

                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="am-tab-panel am-fade" id="tab2">
                                <div id="wrapperB" class="wrapper">
                                    <div id="scroller" class="scroller">
                                        <ul class="tpl-task-list tpl-task-remind">
                                            <li>
                                                <div class="cosB">
                                                    12分钟前
                                                </div>
                                                <div class="cosA">
                                                        <span class="cosIco">
                        <i class="am-icon-bell-o"></i>
                      </span>

                                                    <span> 注意：Chrome 和 Firefox 下， display: inline-block; 或 display: block; 的元素才会应用旋转动画。<span class="tpl-label-info"> 提取文件
                                                            <i class="am-icon-share"></i>
                                                        </span></span>
                                                </div>

                                            </li>
                                            <li>
                                                <div class="cosB">
                                                    36分钟前
                                                </div>
                                                <div class="cosA">
                                                        <span class="cosIco label-danger">
                        <i class="am-icon-bolt"></i>
                      </span>

                                                    <span> FontAwesome 在绘制图标的时候不同图标宽度有差异， 添加 .am-icon-fw 将图标设置为固定的宽度，解决宽度不一致问题（v2.3 新增）。</span>
                                                </div>

                                            </li>

                                            <li>
                                                <div class="cosB">
                                                    2小时前
                                                </div>
                                                <div class="cosA">
                                                        <span class="cosIco label-info">
                        <i class="am-icon-bullhorn"></i>
                      </span>

                                                    <span> 使用 flexbox 实现，只兼容 IE 10+ 及其他现代浏览器。</span>
                                                </div>

                                            </li>
                                            <li>
                                                <div class="cosB">
                                                    1天前
                                                </div>
                                                <div class="cosA">
                                                        <span class="cosIco label-warning">
                        <i class="am-icon-plus"></i>
                      </span>

                                                    <span> 部分用户反应在过长的 Tabs 中滚动页面时会意外触发 Tab 切换事件，用户可以选择禁用触控操作。</span>
                                                </div>

                                            </li>
                                            <li>
                                                <div class="cosB">
                                                    12分钟前
                                                </div>
                                                <div class="cosA">
                                                        <span class="cosIco">
                        <i class="am-icon-bell-o"></i>
                      </span>

                                                    <span> 注意：Chrome 和 Firefox 下， display: inline-block; 或 display: block; 的元素才会应用旋转动画。<span class="tpl-label-info"> 提取文件
                                                            <i class="am-icon-share"></i>
                                                        </span></span>
                                                </div>

                                            </li>
                                            <li>
                                                <div class="cosB">
                                                    36分钟前
                                                </div>
                                                <div class="cosA">
                                                        <span class="cosIco label-danger">
                        <i class="am-icon-bolt"></i>
                      </span>

                                                    <span> FontAwesome 在绘制图标的时候不同图标宽度有差异， 添加 .am-icon-fw 将图标设置为固定的宽度，解决宽度不一致问题（v2.3 新增）。</span>
                                                </div>

                                            </li>

                                            <li>
                                                <div class="cosB">
                                                    2小时前
                                                </div>
                                                <div class="cosA">
                                                        <span class="cosIco label-info">
                        <i class="am-icon-bullhorn"></i>
                      </span>

                                                    <span> 使用 flexbox 实现，只兼容 IE 10+ 及其他现代浏览器。</span>
                                                </div>

                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>

                </div>
            </div>
        </div>



    </div>

</div>模板收集自 <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> -  More Templates  <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a>


<script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/amazeui.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/iscroll.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/app.js"></script>
</body>

</html>
