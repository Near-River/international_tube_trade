/*for body perfect*/
if(document.getElementById("g_body")&&document.getElementById("w_link")){
	var g_bodyH = document.getElementById("g_body").offsetHeight;
	var g_leH = document.getElementById("g_le").offsetHeight;
	if(g_bodyH > g_leH){
		document.getElementById("w_link").style.paddingBottom = g_bodyH - g_leH + 70 +"px"
		}
	}


/*made by yaoyao*/
var Class = {   
  create: function() {   
    return function() {                           
      this.initialize.apply(this, arguments);   
    }   
  }   
}
function addEvent(id,en,fu){
	if(id.addEventListener){
		id.addEventListener(en,fu,false);
		}else if(id.attachEvent){
		id.attachEvent("on" + en, fu);
		}
	}
/*killerror*/
window.onerror = function(){return true}

/*table*/
var table = Class.create()
table.prototype = {
	initialize: function(a,b,c,d){
		if( document.getElementById(a) && document.getElementById(c)){
			this.aclick = document.getElementById(a).getElementsByTagName(b);
			this.ashow  = document.getElementById(c).getElementsByTagName(d);
			this.whichone();
			}
		},
	whichone  : function(){
		var aclick = this.aclick;
		var ashow  = this.ashow;
		var show   = this.show;
		var hide   = this.hide;
		for(var i=0; i<aclick.length; i++){
			aclick[i].onmouseover = function(){
				show(ashow)
				}
			aclick[i].onmouseout = function(){
				hide(ashow)
				}
			ashow[i].onmouseover = function(){
				show(ashow)
				}
			ashow[i].onmouseout = function(){
				hide(ashow)
				}
			}
		
		},
	show: function(t){
		t[0].style.display = "block"
		},
	hide: function(t){
		for(var i=0; i<t.length; i++){
			t[i].style.display = "none"
			}
		}
	}
new table("i_foot","dt","i_foot","dd");
new table("w_link","dt","w_link","dd")


/*menu*/
var navaddNow = Class.create();
navaddNow.prototype = {
	initialize: function(id,a){
	if(document.getElementById(id)){
		this.nowA = document.getElementById(id).getElementsByTagName("a");
		this.choseOne(a);
		}
	},
	getmenuNow: function(){
		var url = location.href.split("/");
		var rex = /[a-z]+/;
		var res = url[url.length-1].match(rex).toString();
		for(var i=0; i<this.nowA.length; i++){
			var a = this.nowA[i].href.split("/");
			var c = a[url.length-1].match(rex).toString();
			if(c == res){
				this.nowA[i].className = "now";
				return;
				}
			}
	},
	getnavNow: function(){
		var url = location.href.split("/");
		var urlx = url[url.length-1].split(".")[0]; 
		var rex = /\d+/;
		var i = urlx.match(rex);
		i = Number(i);
		this.nowA[i].className = "now";
	},
	choseOne: function(x){
		switch(x){
			case "1" : this.getmenuNow(); break;
			case "2" : this.getnavNow(); break;
			}
		
		}
}
new navaddNow("nav","2");












