function move_scroll(id){
	var speed = 500;
	var position = $("#" + id).offset().top;
	$("html, body").animate({scrollTop: position}, speed, "swing");
}

function $value(name){
	return name.value
}
function $get_id(id){
	return document.getElementById(id);
}

function $get_class(name){
	return document.getElementsByClassName(name);
}

function $get_tags(name){
	return document.getElementsByTagName(name);
}

function printchar(name, text, score){
	setInterval(function(){
		if(score < text.length){
			score++;
			name.textContent = text.substring(0, score);		
		}else{
			return false;
		}
	}, 100);
}

