function init() {
	  var n=document.getElementById("sea").value
	  console.log(n)
	  var k={"name":n}
	  $.get('Main',k)
	}

document.querySelectorAll(".item").forEach(sle=>{sle.addEventListener("click",(ele)=>{console.log(ele)})})