<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/include/taglib.jsp"%>
<%@ include file="/WEB-INF/include/namespace.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="assets/plugins/bootstrap/css/bootstrap.min.css" />
<!-- Plugins CSS -->
<link rel="stylesheet"
	href="assets/plugins/font-awesome/css/font-awesome.css">
<link rel="stylesheet"
	href="assets/plugins/pe-icon-7-stroke/css/pe-icon-7-stroke.css">
<link rel="stylesheet" href="assets/plugins/animate-css/animate.min.css">
<!-- Theme CSS -->
<link id="theme-style" rel="stylesheet" href="assets/css/styles.css">
<script type="text/javascript" src="assets/plugins/jquery-1.12.3.min.js"></script>
<script type="text/javascript"
	src="assets/plugins/bootstrap/js/bootstrap.min.js"></script>
<!--baidu editor-->
<script type="text/javascript" charset="utf-8"
	src="assets/plugins/baiduEditor/ueditor.config.js"></script>
<script type="text/javascript" charset="utf-8"
	src="assets/plugins/baiduEditor/ueditor.all.min.js">
	
</script>
<!--建议手动加在语言，避免在ie下有时因为加载语言失败导致编辑器加载失败-->
<!--这里加载的语言文件会覆盖你在配置项目里添加的语言类型，比如你在配置项目里配置的是英文，这里加载的中文，那最后就是中文-->
<script type="text/javascript" charset="utf-8"
	src="assets/plugins/baiduEditor/lang/zh-cn/zh-cn.js"></script>


<style type="text/css">
div {
	width: 100%;
}
</style>

<style type="text/css">
.well {
	margin-bottom: 0px;
	padding: 20px;
}

.blog-input-title .form-control {
	width: 20%
}

.col-sm-2 {
	width: 8%;
	margin-top: 10px
}

.breadcrumb {
	padding: 8px 15px;
	margin-bottom: 40px;
	list-style: none;
	background-color: #f5f5f5;
	border-radius: 4px;
	margin-top: 40px;
}

.blog {
	padding-top: 60px;
	padding-bottom: 100px;
}
}
</style>
<script type="text/javascript">
	//实例化编辑器
	//建议使用工厂方法getEditor创建和引用编辑器实例，如果在某个闭包下引用该编辑器，直接调用UE.getEditor('editor')就能拿到相关的实例
	var ue = UE.getEditor('editor');

	function isFocus(e) {
		alert(UE.getEditor('editor').isFocus());
		UE.dom.domUtils.preventDefault(e)
	}
	function setblur(e) {
		UE.getEditor('editor').blur();
		UE.dom.domUtils.preventDefault(e)
	}
	function insertHtml() {
		var value = prompt('插入html代码', '');
		UE.getEditor('editor').execCommand('insertHtml', value)
	}
	function createEditor() {
		enableBtn();
		UE.getEditor('editor');
	}
	function getAllHtml() {
		alert(UE.getEditor('editor').getAllHtml())
	}
	function getContent() {
		var arr = [];
		arr.push("使用editor.getContent()方法可以获得编辑器的内容");
		arr.push("内容为：");
		arr.push(UE.getEditor('editor').getContent());
		alert(arr.join("\n"));
	}
	function getPlainTxt() {
		var arr = [];
		arr.push("使用editor.getPlainTxt()方法可以获得编辑器的带格式的纯文本内容");
		arr.push("内容为：");
		arr.push(UE.getEditor('editor').getPlainTxt());
		alert(arr.join('\n'))
	}
	function setContent(isAppendTo) {
		var arr = [];
		arr.push("使用editor.setContent('欢迎使用ueditor')方法可以设置编辑器的内容");
		UE.getEditor('editor').setContent('欢迎使用ueditor', isAppendTo);
		alert(arr.join("\n"));
	}
	function setDisabled() {
		UE.getEditor('editor').setDisabled('fullscreen');
		disableBtn("enable");
	}

	function setEnabled() {
		UE.getEditor('editor').setEnabled();
		enableBtn();
	}

	function getText() {
		//当你点击按钮时编辑区域已经失去了焦点，如果直接用getText将不会得到内容，所以要在选回来，然后取得内容
		var range = UE.getEditor('editor').selection.getRange();
		range.select();
		var txt = UE.getEditor('editor').selection.getText();
		alert(txt)
	}

	function getContentTxt() {
		var arr = [];
		arr.push("使用editor.getContentTxt()方法可以获得编辑器的纯文本内容");
		arr.push("编辑器的纯文本内容为：");
		arr.push(UE.getEditor('editor').getContentTxt());
		alert(arr.join("\n"));
	}
	function hasContent() {
		var arr = [];
		arr.push("使用editor.hasContents()方法判断编辑器里是否有内容");
		arr.push("判断结果为：");
		arr.push(UE.getEditor('editor').hasContents());
		alert(arr.join("\n"));
	}
	function setFocus() {
		UE.getEditor('editor').focus();
	}
	function deleteEditor() {
		disableBtn();
		UE.getEditor('editor').destroy();
	}
	function disableBtn(str) {
		var div = document.getElementById('btns');
		var btns = UE.dom.domUtils.getElementsByTagName(div, "button");
		for (var i = 0, btn; btn = btns[i++];) {
			if (btn.id == str) {
				UE.dom.domUtils.removeAttributes(btn, [ "disabled" ]);
			} else {
				btn.setAttribute("disabled", "true");
			}
		}
	}
	function enableBtn() {
		var div = document.getElementById('btns');
		var btns = UE.dom.domUtils.getElementsByTagName(div, "button");
		for (var i = 0, btn; btn = btns[i++];) {
			UE.dom.domUtils.removeAttributes(btn, [ "disabled" ]);
		}
	}

	function getLocalData() {
		alert(UE.getEditor('editor').execCommand("getlocaldata"));
	}

	function clearLocalData() {
		UE.getEditor('editor').execCommand("clearlocaldata");
		alert("已清空草稿箱")
	}
</script>
</head>
<body>
	<%@ include file="/WEB-INF/jsp/head.jsp"%>
	<div class="blog-page container blog">
		<div class="blog-container">
			<div class="blog-head ">
				<h2 class="title">写博客</h2>

			</div>
		</div>
		<div class="blog-info">
			<ol class="breadcrumb">
				<li><a href="#">Home</a></li>
				<li><a href="#">2013</a></li>
				<li class="active">十一月</li>
			</ol>
		</div>
		<div class="blog-input-area">
			<div class="blog-input-title form">
				<div class="form-group">
					<h5>
						<label class="col-sm-2 control-lablel">标题</label>
					</h5>
					<input type="text" class="form-control" placeholder="请输入博客标题" />

				</div>
				<br></br>
				<div>
					<h5>
						<label class="col-sm-2 control-lablel">种类</label>
					</h5>
					<select class="input-lg">
						<option value="">云计算</option>
						<option value="">linux</option>
					</select>
				</div>
				<br></br>
				<div>
					<h5>
						<lable class="col-sm-2 control-lable">配图</lable>
					</h5>
					<input type="file" id="inputfile" style="margin-top: 20px">

				</div>
			</div>

		</div>
		<div class="blog-input-content">
			<h2>博客内容</h2>
			<script id="editor" type="text/plain"
				style="width: 1024px; height: 500px;"></script>
			<div id="btns"></div>
		</div>
		<!--
		<div>
			<button onclick="getAllHtml()">获得整个html的内容</button>
			<button onclick="getContent()">获得内容</button>
			<button onclick="setContent()">写入内容</button>
			<button onclick="setContent(true)">追加内容</button>
			<button onclick="getContentTxt()">获得纯文本</button>
			<button onclick="getPlainTxt()">获得带格式的纯文本</button>
			<button onclick="hasContent()">判断是否有内容</button>
			<button onclick="setFocus()">使编辑器获得焦点</button>
			<button onmousedown="isFocus(event)">编辑器是否获得焦点</button>
			<button onmousedown="setblur(event)" >编辑器失去焦点</button>

		</div>
		<div>
			<button onclick="getText()">获得当前选中的文本</button>
			<button onclick="insertHtml()">插入给定的内容</button>
			<button id="enable" onclick="setEnabled()">可以编辑</button>
			<button onclick="setDisabled()">不可编辑</button>
			<button onclick=" UE.getEditor('editor').setHide()">隐藏编辑器</button>
			<button onclick=" UE.getEditor('editor').setShow()">显示编辑器</button>
			<button onclick=" UE.getEditor('editor').setHeight(300)">设置高度为300默认关闭了自动长高</button>
		</div>

		<div>
			<button onclick="getLocalData()" >获取草稿箱内容</button>
			<button onclick="clearLocalData()" >清空草稿箱</button>
		</div>

	</div>
-
	<div>
		<button onclick="createEditor()">
			创建编辑器</button>
			<button onclick="deleteEditor()">
				删除编辑器</button>
			</div>


		</div>
	-->
	</div>
	<%@ include file="/WEB-INF/jsp/footer.jsp"%>
</body>
</html>