$(function(){
	
	replyList();
	
	$('#reply_content').focusin(function(){
	  	if($('#mem_id').val() == ''){
			alert('로그인 후 작성이 가능합니다.');
			$(this).blur();
		}
	});
 
	
	//댓글 등록해주는 함수
	$('#insertReply').click(function(){
		
		
		let params = $('#replyForm').serialize();
		
		$.ajax({
			type : 'post',
			url : 'insertReply',
			data : params,
			success : function(result){
				replyList();
			},
			error : function(err){
				alert('에러');
				console.log(err);
			}	
		});
	
	}); //end of click
	
	//댓글 목록 가져와서 템플릿 스타일에 맞춰 동적 생성해주는 함수
	function replyList(){
		
		let params = $('#replyForm').serialize();
		
		
		
		$.ajax({
		
			type : 'get',
			url : 'selectReply',
			data : params,
			dataType : 'json',
			success : function(result){
					console.log(result);

					let uList = $('#replyList');
					uList.empty();
				for(i of result){
					let same = i['same'];
					let list = $('<li class="comment"/>');
					let first = $('<div class="vcard bio"/>');
					let img = $('<img src="resources/images/person_1.jpg" alt="Image placeholder">');
					let second = $('<div class="comment-body reply_content"/>');
					let replyCode = $('<input type="hidden" value="'+ i['reply_code'] +'"/>');
					let h = $('<h3>').html(i['mem_id']);
					let postDate = $('<div class="meta">').html(i['reply_date']);
					let content = $('<p/>').html(i['reply_content']);
					let btn = $('<p><a class="reply modifyBtn" style="cursor: pointer">수정</a>&nbsp&nbsp<a class="reply deleteBtn" style="cursor: pointer">삭제</a></p>');
					
					

					if(same == "ok"){
					first.append(img);
					
					second.append(replyCode, h, postDate, content, btn);
					
					list.append(first, second);
					
					uList.append(list);
					}
					
					else{
					first.append(img);
					
					second.append(replyCode, h, postDate, content);
					
					list.append(first, second);
					
					uList.append(list);
					}
					
				}

			},
			error : function(err){
					alert('에러');
				console.log(err);
			}
		}); //end of ajax
	}//end of replyList()
	
		$('#replyList').on('click', 'a', function(){
			let btn = $(this);
			let replyCode = btn.parents('div').children('input').val();

			if(btn.text() == '삭제'){
				$.ajax({
					type : 'delete',
					url : 'deleteReply/' + replyCode,
					success : function(result){
						replyList();
					},
					error : function(err){
						alert('삭제실패');
						console.log(err);
					}
				});// end of ajax
			}// end of if
			
			else if(btn.text() == '수정'){
				replyModifyForm();
			
			}// end of 수정
			
			else if(btn.text() == '수정하기'){
				replyModify();
			
			
			}// end of 수정하기
			
		function replyModify(){
			
			let afterReply = btn.parents('div').children().eq(3).children('input').val();
			
			$.ajax({
				type : 'put',
				url : 'modifyReply/' + replyCode,
				data : afterReply,
				success: function(result){
					replyList();
				},
				error : function(err){
					alert('수정실패');
					console.log(err);
				}
			});//end of ajax
			
		}// end of replyModify
			
			
		//수정버튼 눌리면 수정창 뜨도록 해주는 함수
		function replyModifyForm(){
		let replyContent = btn.parents('div').children().eq(3);
		let replyModify = replyContent.text();
		
		replyContent.text('');
		replyContent.append('<input type="text" name="reply_content" value="' + replyModify + '">');
		
		btn.text('수정하기');
		
		}// end of replyModifyForm
		
	});// end of click()
		
		
		
		
}); //end of function