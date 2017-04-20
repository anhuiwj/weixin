<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/common/top.jsp" %>
<html>
<head>
<meta charset="UTF-8">
<title>中医触屏</title>
  <%@ include file="/WEB-INF/views/common/static-css.jsp" %>
  <%@ include file="/WEB-INF/views/common/static-js.jsp" %>
  <link href="${ctxStatic}/topic/css/reset.css" rel="stylesheet" type="text/css">
  <link href="${ctxStatic}/topic/css/mystyle.css" rel="stylesheet" type="text/css">
  <script type="text/javascript" src="${ctxStatic}/lib/jquery/1.9.1/jquery.min.js"></script>
    <script type="text/javascript" src="${ctxStatic}/lib/Validform/5.3.2/Validform.js"></script>
</head>

<body>
<div class="warp no_bg">
  <div class="top">
    大学生心理健康问卷
  </div>
  <div class="list_box">
      <form id="form" action="${ctx}/question/save">
          <div class="test">
              <div class="list">
                <h4>1.你的性别是?</h4>
                    <div class="conts">
                        <span class="inlines"><input type="radio" datatype="notNull" name="q1" value="男">1－男</span>
                        <span class="inlines"><input type="radio" datatype="notNull" name="q1" value="女"> 2－ 女</span>
                    </div>
              </div>
              <div class="list" >
                <h4>2.目前您最大的苦恼是什么?</h4>
                    <div class="conts">
                        <span class="inlines"><input type="radio" name="q2" value="学习压力大"> 1－学习压力大</span>
                        <span class="inlines"><input type="radio" name="q2" value="就业压力大"> 2－ 就业压力大</span>
                        <span class="inlines"><input type="radio" name="q2" value="家庭经济压力大">3 － 家庭经济压力大</span>
                        <span class="inlines"><input type="radio" name="q2" value="人际关系紧张"> 4 － 人际关系紧张</span></div>
              </div>
              <div class="list" >
                <h4>3.您是否对自己的身体状况感到担忧?</h4>
                    <div class="conts">
                        <span class="inlines"><input type="radio" name="q3" value="经常有"> 1－经常有</span>
                        <span class="inlines"><input type="radio" name="q3" value="偶尔有"> 2－ 偶尔有</span>
                        <span class="inlines"> <input type="radio" name="q3" value="较少有">  3 － 较少有</span>
                         <span class="inlines"> <input type="radio" name="q3" value="没有">  4 － 没有</span>
                    </div>
              </div>
          </div>
          <div class="test">
              <div class="list">
                <h4>4.您对自己的身形、容貌是否满意？</h4>
                    <div class="conts">
                        <span class="inlines"><input type="radio" name="q4" value="非常满意"> 1－非常满意</span>
                       <span class="inlines"> <input type="radio" name="q4" value="满意"> 2－ 满意</span>
                       <span class="inlines"> <input type="radio" name="q4" value="无所谓"> 3 － 无所谓</span>
                       <span class="inlines"><input type="radio" name="q4" value="不满意">4 － 不满意</span>
                     </div>
              </div>
              <div class="list" >
                <h4>5.您认为自己在与别人的沟通交往上是否存在障碍？</h4>
                    <div class="conts">
                        <span class="inlines"><input type="radio" name="q5" value="有很大障碍"> 1－有很大障碍</span>
                       <span class="inlines"><input type="radio" name="q5" value="有时有障碍"> 2－有时有障碍</span>
                       <span class="inlines"><input type="radio" name="q5" value="比较少">3 －比较少</span>
                        <span class="inlines"><input type="radio" name="q5" value="无">4 －无</span>
                    </div>
              </div>
              <div class="list" >
                <h4>6.当您对异性或者同性表白遭拒绝时，会感到有压力吗？</h4>
                    <div class="conts">
                        <span class="inlines"><input type="radio" name="q6" value="会有很大压力">1－会有很大压力</span>
                        <span class="inlines"><input type="radio" name="q6" value="论情况而定"> 2－论情况而定</span>
                        <span class="inlines"><input type="radio" name="q6" value="压力较少">3－压力较少</span>
                        <span class="inlines"><input type="radio" name="q6" value="不在乎">4 －不在乎</span>
                    </div>
                </div>
          </div>
          <div class="test">
              <div class="list">
                <h4>7.您对自己的前途感到困惑和担忧过吗？</h4>
                    <div class="conts">
                        <span class="inlines"><input type="radio" name="q7" value="经常">1－经常</span>
                        <span class="inlines"> <input type="radio" name="q7" value="偶尔"> 2－偶尔</span>
                        <span class="inlines"><input type="radio" name="q7" value="很少">3－很少</span>
                        <span class="inlines"><input type="radio" name="q7" value="经 常">4－经 常</span>
                        <span class="inlines"><input type="radio" name="q7" value="没有">5－没有</span>

                    </div>
              </div>
              <div class="list" >
                <h4>8.遇到压力您会最先向谁救助？</h4>
                    <div class="conts">
                        <span class="inlines"><input type="radio" name="q8" value="家人">1－家人</span>
                        <span class="inlines"><input type="radio" name="q8" value="亲友">2－亲友</span>
                        <span class="inlines"><input type="radio" name="q8" value="男女朋友">3－男女朋友</span>
                        <span class="inlines"><input type="radio" name="q8" value="知心朋友"> 4－知心朋友</span>
                        <span class="inlines"><input type="radio" name="q8" value="老师"> 5－老师</span>
                        <span class="inlines"><input type="radio" name="q8" value="学长或学姐">6－学长或学姐</span>
                        <span class="inlines"><input type="radio" name="q8" value="专业人员">7－专业人员</span>
                        <span class="inlines"><input type="radio" name="q8" value="自己消化">8－自己消化</span>
                    </div>
              </div>
              <div class="list">
                <h4>9.您会采取何种方式应对压力？</h4>
                    <div class="conts">
                        <span class="inlines"><input type="radio" name="q9" value="转移">1－转移</span>
                        <span class="inlines"><input type="radio" name="q9" value="发泄">2－发泄</span>
                        <span class="inlines"><input type="radio" name="q9" value="压抑">3－压抑</span>
                        <span class="inlines"><input type="radio" name="q9" value="自己调整">4－自己调整</span>
                    </div>
              </div>
          </div>
          <div class="test">
            <div class="list">
            <h4>10.当您和朋友之间的友谊出现裂痕时您会怎么处理？</h4>
                <div class="conts">
                    <span class="inlines"><input type="radio" name="q10" value="立即断交">1－立即断交</span>
                    <span class="inlines"><input type="radio" name="q10" value="以其人之道还治其人之身"> 2－以其人之道还治其人之身</span>
                    <span class="inlines"> <input type="radio" name="q10" value="自己主动争取挽回的机会"> 3－自己主动争取挽回的机会</span>
                    <span class="inlines"> <input type="radio" name="q10" value="置之不理，等对方去处理">4－置之不理，等对方去处理</span>
                </div>
            </div>
            <div class="list">
            <h4>11.你是否害怕与陌生人交流？</h4>
                <div class="conts">
                    <span class="inlines"><input type="radio" name="q11" value="经常">1－经常</span>
                    <span class="inlines"><input type="radio" name="q11" value="从不"> 2－从不</span>
                    <span class="inlines"><input type="radio" name="q11" value="偶尔">3 －偶尔</span>
                </div>
            </div>
            <div class="list" >
                <h4>12.你是否害怕在公众场合发言？</h4>
                <div class="conts">
                    <span class="inlines"><input type="radio" name="q12" value="非常">1－非常</span>
                    <span class="inlines"><input type="radio" name="q12" value="从不"> 2－从不</span>
                    <span class="inlines"><input type="radio" name="q12" value="偶尔">3－偶尔</span>
                </div>
            </div>
          </div>
          <div class="test">
             <div class="list" >
                <h4>13.你是否在学习和生活上经常与同学攀比？</h4>
                <div class="conts">
                    <span class="inlines"><input type="radio" name="q13" value="经常"> 1－经常</span>
                    <span class="inlines"> <input type="radio" name="q13" value="从不">2－从不</span>
                    <span class="inlines"><input type="radio" name="q13" value="偶尔">3－偶尔</span>
                </div>
             </div>
             <div class="list">
                <h4>14.你是否特别相信一个人？</h4>
                <div class="conts">
                    <span class="inlines"><input type="radio" name="q14" value="是"> 1－是</span>
                    <span class="inlines"><input type="radio" name="q14" value="不是特别相信"> 2－不是特别相信</span>
                    <span class="inlines"> <input type="radio" name="q14" value="从不"> 3－从不</span>
               </div>
             </div>
             <div class="list">
                <h4>15.进入大学后，你联系的最多的是？</h4>
                <div class="conts">
                    <span class="inlines"><input type="radio" name="q15" value="高中同学"> 1－高中同学</span>
                    <span class="inlines"><input type="radio" name="q15" value="大学朋友">2－大学朋友</span>
                    <span class="inlines"><input type="radio" name="q15" value="父母">3－父母</span>
                    <span class="inlines"> <input type="radio" name="q15" value="初中同学">4－初中同学</span>
                 </div>
            </div>
          </div>
      </form>
  </div>
  <div class="step_box">
      <div class="last_step"><a id="step"  href="#">上一步</a></div>
      <div class="next" style="margin-left:40px"><a id="next"  href="#">下一页</a></div>
  </div>
</div>
</body>
<script>
  $(function(){
    $(".list_box div.test").each(function(i,a){
      $(a).attr("index",i);
      if(i>0){
        $(a).css("display","none");
      }
    }
    );
  })

  from =  $("#form").Validform({ //表单验证
      tiptype: 1,
      ajaxPost: true,
      datatype:{
          "english":function(gets,obj,curform,regxp){
              //参数gets是获取到的表单元素值，obj为当前表单元素，curform为当前验证的表单，regxp为内置的一些正则表达式的引用;
              var reg1=/[A-Za-z]$/;
              if(reg1.test(gets)){return true;}
              return false;
          },
          "notNull":function (gets,obj,curform,regxp) {
              var flag = false;
              $(obj).parents(".conts").children(".inlines").each(function (i,a) {
                  if($(a).find('input').is(':checked')){
                      flag  = true;
                  }
              });
              return flag;
          }
      },
      beforeSubmit:function(curform){
          return true;
      },
      callback: function (data) {
          layer.msg(data.msg, {icon: 1});
          location.href='${ctx}/question/index';
      }
  });

  $('#next').on('click',function(){
    var index =  $('.list_box div.test:visible').attr('index');
    index = parseInt(index);
      setCheckForPage(index);

      //检查数据是否输入
      var checkall=from.check();
      if(checkall==false){
          layer.alert("请完善心理健康问卷内容");
          return false;
      }
    if(index<4){
      $("div[index='"+index+"']").css("display","none");
      $("div[index='"+(index+1)+"']").css("display","");
        if(index==3){
            $("#next").text("完成");
        }
    }
    if(index == 4){
        $(form).submit()
    }
  });
  $('#step').on('click',function(){
    var index =  $('.list_box div.test:visible').attr('index');
    index = parseInt(index);
    if(index>0){
      $("div[index='"+(index-1)+"']").css("display","");
      $("div[index='"+index+"']").css("display","none");
    }
  });

  //追加当前页验证
  function setCheckForPage(index){
      $("div[index='"+(index)+"']:visible .list").each(function (i, a) {
          $(a).find(".conts:last input").attr("datatype", "notNull");
      });
  }
</script>
</html>
