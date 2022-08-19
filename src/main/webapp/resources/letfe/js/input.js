//////////////////////////////일단보류
$(function(){
$("#displayList").hide();
// 검색어의 길이가 바뀔 때마다 호출
var wordLength = $(this).val().trim().length;
if(wordLength == 0){
			$("div#displayList").hide();
		} else {
			$.ajax({
				url:"/wordSearchShow.action",
				type:"get",
				data: {"searchWord": $("input#searchWord").val()},
				dataType:"json",
				success:function(json){
					if(json.length > 0){
						// 검색된 데이터가 있는 경우
						var html = "";
						$.each(json, function(index, item){
							var word = item.word;
                            // 검색목록들과 검색단어를 모두 소문자로 바꾼 후 검색단어가 나타난 곳의 index를 표시.
							var index = word.toLowerCase().indexOf( $("input#searchWord").val().toLowerCase() );
							// jaVa -> java
							var len = $("input#searchWord").val().length;
							// 검색한 단어를 파랑색으로 표현
							var result = word.substr(0, index) + "<span style='color:blue;'>"+word.substr(index, len)+"</span>" + word.substr(index+len);
							html += "<span class='result' style='cursor:pointer;'>" + result + "</span><br>";
						});
						
						var input_width = $("input#searchWord").css("width"); // 검색어 input 태그 width 알아오기
						$("div#displayList").css({"width":input_width}); // 검색 결과의 width와 일치시키기
						$("div#displayList").html(html);
						$("div#displayList").show();
					}
					
				},
				error: function(request, status, error){
	                alert("code: "+request.status+"\n"+"message: "+request.responseText+"\n"+"error: "+error);
	            }
				
			});

		}
});//end of main function	        
        // 자동완성 목록을 클릭하면 검색하기
	$(document).on('click', ".result", function(){
		var word = $(this).text();
		$("#searchWord").val(word);
		goSearch(); // 검색기능
	});

