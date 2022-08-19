$(function(){

	$('#searchBtn').click(function(){
		let keyword = $('#keyword').val();
		let category = $('#category option:selected').val();

		$.ajax({
			type : 'post',
			url : 'searchPost',
			data : {keyword : keyword, category : category},
			success : function(result){
			
			},
			error : function(err){
			
			}
		}); // end of ajax
	});

}); // end of function