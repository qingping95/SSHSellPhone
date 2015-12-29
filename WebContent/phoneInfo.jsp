<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <title>Phone Information</title>
        <meta name="description" content="Expand, contract, animate forms with jQuery wihtout leaving the page" />
        <meta name="keywords" content="expand, form, css3, jquery, animate, width, height, adapt, unobtrusive javascript"/>
		<link rel="shortcut icon" href="../favicon.ico" type="image/x-icon"/>
        <link rel="stylesheet" type="text/css" href="css/style.css" />
		<script src="js/cufon-yui.js" type="text/javascript"></script>
		<script src="js/ChunkFive_400.font.js" type="text/javascript"></script>
		<script type="text/javascript">
			Cufon.replace('h1',{ textShadow: '1px 1px #fff'});
			Cufon.replace('h2',{ textShadow: '1px 1px #fff'});
			Cufon.replace('h3',{ textShadow: '1px 1px #000'});
			Cufon.replace('.back');
		</script>
    </head>
    <body>
		<div class="wrapper">
			<div class="content">
				<div id="form_wrapper" class="form_wrapper">
					<s:form class="register active" action="searchTest">
						<h3>查找手机信息</h3>
						<div class="column">
							<div>
								<input type="text" name="brand" style="width:254px;"/>
								<s:fielderror style="float:right" fieldName="usernameError"/>
								<input type="submit" value="查找"/>
							</div>
								<s:iterator value="#request.phlist" var="data">
									型号：<s:property value="#data.model" /><br/>
									发布日期: <s:property value="#data.launchDate"/><br/>
									价格: <s:property value="#data.prise"/> <br/>
									厚度: <s:property value="#data.thickness"/> <br/>
									重量: <s:property value="#data.weight"/> <br/>
									屏幕尺寸: <s:property value="#data.screenSize"/> <br/>
									分辨率: <s:property value="#data.imageResolution"/><br/>
									RAM: <s:property value="#data.RAM"/> <br/>
									ROM: <s:property value="#data.ROM"/> <br/>
									相机: <s:property value="#data.camera"/> <br/>
									电池容量: <s:property value="#data.batteryCapacity"/> <br/> <br/>
	 							</s:iterator>
							<div><input type="text" name="model" value="型号:${model}" style="width:auto;" readonly="readonly"/></div>
							<div><input type="text" name="launchDate" value="发布日期:${launchDate}" style="width:auto;" readonly="readonly"/></div>
							<div><input type="text" name="prise" value="价格:${prise}" style="width:auto;" readonly="readonly"/></div>
							<div><input type="text" name="thickness" value="厚度:${thickness}" style="width:auto;" readonly="readonly"/></div>
							<div><input type="text" name="weight" value="重量:${weight}" style="width:auto;" readonly="readonly"/></div>
							<div><input type="text" name="screenSize" value="屏幕尺寸:${screenSize}" style="width:auto;" readonly="readonly"/></div>
							<div><input type="text" name="imageResolution" value="分辨率:${imageResolution}" style="width:auto;" readonly="readonly"/></div>
							<div><input type="text" name="RAM" value="RAM:${RAM}" style="width:auto;" readonly="readonly"/></div>
							<div><input type="text" name="ROM" value="ROM:${ROM}" style="width:auto;" readonly="readonly"/></div>
							<div><input type="text" name="camera" value="相机:${camera}" style="width:auto;" readonly="readonly"/></div>
							<div><input type="text" name="batteryCapacity" value="电池容量:${batteryCapacity}" style="width:auto;" readonly="readonly"/></div>
						</div>
						<div class="bottom">
							<div class="clear"></div>
						</div>
					</s:form>
				</div>
				<div class="clear"></div>
			</div>
		</div>
    </body>
</html>