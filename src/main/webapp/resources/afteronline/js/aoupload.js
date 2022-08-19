// 이미지파일 미리보기
$(function(){
	$('#aofile').change(function(){
    	setImageFromFile(this, '#preview');
	});

	function setImageFromFile(input, expression) {
	    if (input.files && input.files[0]) {
	        var reader = new FileReader();
	        reader.onload = function (e) {
	            $(expression).attr('src', e.target.result);
	        }
	        reader.readAsDataURL(input.files[0]);
	    }
	}

	$('#aonload').click(function(evt){
		
		// 이벤트 막기
		// evt.xxxxxxx();
	
		//alert('aonload 서브밋누름');
	
	});
	

});		// end of main
