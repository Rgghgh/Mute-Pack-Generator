$(document).ready(function() {
	
	$('#navButton').click(toggleMenu);
	$('#navShade').click(toggleMenu);
	$('.closeTopForm').click(clearSearch);
	
	$('.optionLabel').click(function(e) {
		$(this).parent().find('.optionSubs').slideToggle();		
		$(this).parent().toggleClass('optionOpen');	
		
		$('.optionSubs').not($(this).parent().find('.optionSubs')).slideUp();
		$('.option').not($(this).parent()).removeClass('optionOpen');
	});
	
	$('.subInput').change(function() {
		var checked = $(this).parent().parent().find(':checked').size();
		var total = $(this).parent().parent().children().size();
		var label = $(this).parent().parent().siblings();
		
		if(checked == 0)
			label.css('background-image', 'url("res/check0.png")');
		if(checked > 0)
			label.css('background-image', 'url("res/check1.png")');
		if(checked == total)
			label.css('background-image', 'url("res/check2.png")');
		
	});
	
	$('.checkAll').click(function() {
		var state = $(this).parent().siblings().find(':checked').size();
		if(state > 0)
			$(this).parent().siblings().find('.subInput').prop('checked', false).triggerHandler('change');
		else
			$(this).parent().siblings().find('.subInput').prop('checked', true).triggerHandler('change');
	});
	
	/*
	$('.play').click(function() {
		$('.stop').not(this).toggleClass('stop');
		$(this).toggleClass('stop');
	});
	*/
	
	$('.tabsMenu li').click(function() {
		$('.tabsMenu li').removeClass('current');
		$('.tabsCards li').removeClass('current');
		var nth = $(this).index() + 1;
		$('.tabsMenu li:nth-child(' + nth + ')').addClass('current');
		$('.tabsCards li:nth-child(' + nth + ')').addClass('current');
	});
	
	
	function h(e) {
	    $(e).css({'height':'auto','overflow-y':'hidden'}).height(e.scrollHeight);
	}
	$('textarea').each(function () {
	  h(this);
	}).on('input', function () {
	  h(this);
	});
	
});

/*
 *  FUNCTIONS
 */

function toggleMenu() {
	$('nav').toggleClass('open');
	$('#navShade').toggleClass('open');
}

function validForm() {
	var name = $("[name='name']").val();
	var email = $("[name='email']").val();
	var content = $("[name='content']").val();
	
	if(isEmpty(name) || !valChars(name)) {
		errForm("[name='name']");
		return false;
	}
	okForm("[name='name']");
	
	if(isEmpty(email) || !valEmail(email)) {
		errForm("[name='email']");
		return false;
	}
	okForm("[name='email']");
	
	if(isEmpty(content)) {
		errForm("[name='content']");
		return false;
	}
	okForm("[name='content']");
	
	return true;
}

function clearSearch() {
	location.search = '';
}

function valGen() {
	if($(':checked').size() > 0)
		return true;
	$('.err').html('Please select at least one sound.');
	window.location.href = '#';
	return false;
}


function errForm(element) {
	$(element).addClass('formErr');
}

function okForm(element) {
	$(element).removeClass('formErr');
}

function valChars(text) {
	var reg = new RegExp('[a-zA-Z]');
	return reg.test(text);
}

function isEmpty(text) {
	return text == "";
} 

function valEmail(email) {
    var re = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/i;
    return re.test(email);
}

