$(function(){
/*i_table*/
var $table_li = $("#i_table").find("li")
var $table_dt = $("#i_table").find("dt")
$table_li.eq(0).addClass("on")
$table_dt.eq(0).show().siblings("dt").hide();
$table_li.click(function(){
	$(this).addClass("on").siblings("li").removeClass("on")
	var i = $table_li.index($(this));
	$table_dt.eq(i).show().siblings("dt").hide();
	})
/**/








	
})