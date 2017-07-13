<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/common/top.jsp" %>
<!DOCTYPE HTML>
<html>
<head>
    <%@ include file="/WEB-INF/views/common/static-css.jsp" %>
    <%@ include file="/WEB-INF/views/common/static-js.jsp" %>
    <link href="${ctxStatic}/lib/video/css/video-js.css" rel="stylesheet">
    <!-- If you'd like to support IE8 -->
    <script src="${ctxStatic}/lib/video/js/videojs-ie8.min.js"></script>
    <script src="http://vjs.zencdn.net/5.18.4/video.min.js"></script>
    <title>添加课程</title>
</head>
<body>
<div class="pd-20">
        <c:if test="${curriculumInfo.type == '1'}">
            <video id="my-video" class="video-js" controls preload="auto" width="640" height="264" poster="http://video-js.zencoder.com/oceans-clip.png" data-setup="{}">
            <source src="${curriculumInfo.curriculumUrl}" type="video/mp4">
                <p class="vjs-no-js">
                    <!--To view this video please enable JavaScript, and consider upgrading to a web browser that-->
                    <!--<a href="http://videojs.com/html5-video-support/" target="_blank">supports HTML5 video</a>-->
                </p>
            </video>
            <script type="text/javascript">
                var myPlayer = videojs('my-video');
                videojs("my-video").ready(function(){
                    var myPlayer = this;
                    myPlayer.play();
                });
            </script>
        </c:if>
    <c:if test="${curriculumInfo.type == '2'}">
        <iframe height=498 width=510 src='${curriculumInfo.curriculumUrl}' frameborder='0' allowfullscreen="true"></iframe>
    </c:if>

</div>
</body>
</html>