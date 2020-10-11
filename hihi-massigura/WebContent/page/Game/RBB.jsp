<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en-us">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>Unity WebGL Player | RRB</title>
    <link rel="shortcut icon" href="<%= request.getContextPath() + "/game/RRB/TemplateData/favicon.ico" %>">
    <link rel="stylesheet" href="<%= request.getContextPath() + "/game/RRB/TemplateData/style.css" %>">
    <script src="<%= request.getContextPath() + "/game/RRB/TemplateData/UnityProgress.js" %>"></script>
    <script src="<%= request.getContextPath() + "/game/RRB/Build/UnityLoader.js" %>"></script>
    <script>
      var unityInstance = UnityLoader.instantiate("unityContainer", "<%= request.getContextPath() + "/game/RRB/Build/RRB.json" %>", {onProgress: UnityProgress});
    </script>
  </head>
  <body>
    <div class="webgl-content">
      <div id="unityContainer" style="width: 960px; height: 600px"></div>
      <div class="footer">
        <div class="webgl-logo"></div>
        <div class="fullscreen" onclick="unityInstance.SetFullscreen(1)"></div>
        <div class="title">RRB</div>
      </div>
    </div>
  </body>
</html>