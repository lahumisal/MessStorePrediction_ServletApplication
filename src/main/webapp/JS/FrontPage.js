function checkProdName(str) {
	let regExp = /^[a-zA-Z]+$/;
	if (regExp.test(str)) {
		document.getElementById("frm").action = "isAddProd";
	} else {
		alert("Invalid name");
	}
	return regExp.test(str);
}

function checkProdCate(str) {
	let regExp = /^[a-zA-Z]+$/;
	if (regExp.test(str)) {
		document.getElementById("frm").action = "isAddProd";
	} else {
		alert("Invalid name");
	}
	return regExp.test(str);
}
function searchUsingAjax(str){
	var xhttp=new XMLHttpRequest();
	xhttp.onreadystatechange=function(){
		if(this.readyState==4 && this.status==200){
			document.getElementById("showGrid").innerHTML=this.responseText;
		}
	}
	xhttp.open("GET","searchprod?n="+str,true);
	xhttp.send();
}
 function setProductId(productId) {
        document.getElementById('productIdInput').value = productId;
    }