function getMyDefinedFormName(obj) {
	if (obj.parentNode == null)
		return null;
	if (obj.parentNode.nodeName.toLowerCase() == "form") {
		return obj.parentNode;
	} else {
		return getMyDefinedFormName(obj.parentNode);
	}
}

$.fn.serializeObject = function() {
	var o = {};
	var a = this.serializeArray();
	$.each(a, function() {
		if (o[this.name]) {
			if (!o[this.name].push) {
				o[this.name] = [ o[this.name] ];
			}
			o[this.name].push(this.value || '');
		} else {
			o[this.name] = this.value || '';
		}
	});
	return o;
};
$.fn.serializeObjectWithDevicetypeAndGameid = function() {
	var o = this.serializeObject();
	o["devicetype"] = window.parent.global_devicetype;
	o["gameid"] = window.parent.global_gameid;
	return o;
};

$(document).ready(function() {
	$("#querySubmit").click($.onQueryClick);
	$("#querySubmit2").click($.onQueryClick);
});
$.onQueryClick = function() {
	$.onSubmitClick(this, update_page,true);
};
// sourceObj:必须是表单里的按钮；
$.onSubmitClick = function(sourceObj, callBackFunction,
		isWithDeviceTypeAndGameId,mtree) {
	var obj = sourceObj;
	var domform = getMyDefinedFormName(obj);
	var myform = $(domform);
	if (domform != null && !myform.form('validate')) {
		return;
	}
	if (domform != null && !myValidate(myform)) {
		return;
	}
	var jsonuserinfo = {};
	if (domform != null) {
		if (isWithDeviceTypeAndGameId) {
			jsonuserinfo = myform.serializeObjectWithDevicetypeAndGameid();
		} else {
			jsonuserinfo = myform.serializeObject();
		}
		jsonuserinfo['permission']=mtree;
	}
	var jsonParams = {};
	jsonParams[sourceObj.name] = jsonuserinfo;
	// var jsonparams = JSON.stringify(jsonParams);
	//alert(JSON.stringify(jsonParams));
	$.submitQuery(jsonParams, callBackFunction);
};
$.submitControl = function(jsonparams, callbackFunction) {
	$.ajax({
		url : '/gameadmin/controller', // 后台处理程序
		type : 'post', // 数据发送方式
		dataType : 'json', // 接受数据格式
		contentType : "application/json;charset=utf-8",
		data : JSON.stringify(jsonparams), // 要传递的数据
		success : callbackFunction,
		error : errorCallbackFunction
	});
};
function errorCallbackFunction(XMLHttpRequest, info) {
	$.messager.alert('ajak错误', info);
}
$.submitQuery = function(jsonparams, update_page) {
	$.submitControl(jsonparams, update_page);
};
// 提交批量修改
$.submitBatchSave = function(name, update) {
	var rows = {};
	rows["rows"] = update;
	var jsonParams = {};
	jsonParams[name] = rows;
	// jsonParams = JSON.stringify(jsonParams);
	$.submitControl(jsonParams, saveResult);
};
function saveResult(saveResult) {
	var code = saveResult["code"];
	if (code == 1) {
		$.messager.alert("提示", "提交成功！");
		$("#datagrid").datagrid('acceptChanges');
	} else {
		$.messager.alert("提示", "提交失败！返回错误代码：" + code);
	}
};

function myValidate(myValidate) {
	return true;
}
