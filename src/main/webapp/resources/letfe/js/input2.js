$('#lf_name').autocomplete({
	 source : function(request, response) { //source: 입력시 보일 목록
	     $.ajax({
	           url : "lf_name.do"   
	         , type : "POST"
	         , dataType: "JSON"
	         , data : {value: request.term}	// 검색 키워드
	         , success : function(data){ 	// 성공
	             response(
	                 $.map(data.resultList, function(item) {
	                     return {
	                    	     label : item.LF_NAME  	// 목록에 표시되는 값
	                           , value : item.LF_NAME 		// 선택 시 input창에 표시되는 값
	                           , idx : item.LF_CODE // index
	                     };
	                 })
	             );    //response
	         }
	         ,error : function(){ //실패
	             alert("오류가 발생했습니다.");
	         }
	     });
	 }
		,focus : function(event, ui) { // 방향키로 자동완성단어 선택 가능하게 만들어줌	
			return false;
		},
		minLength: 1,// 최소 글자수
		delay: 100	//autocomplete 딜레이 시간(ms),
		, select : function(evt, ui) { 
      	// 아이템 선택시 실행 ui.item 이 선택된 항목을 나타내는 객체, lavel/value/idx를 가짐
			console.log(ui.item.label);
			console.log(ui.item.idx);
	 }
});

$('#lf_sim_addr').autocomplete({
	 source : function(request, response) { //source: 입력시 보일 목록
	     $.ajax({
	           url : "autocompleteLocation"   
	         , type : "POST"
	         , dataType: "JSON"
	         , data : {value: request.term}	// 검색 키워드
	         , success : function(data){ 	// 성공
	             response(
	                 $.map(data.resultList, function(item) {
	                     return {
	                    	     label : item.LF_SIM_ADDR  	// 목록에 표시되는 값
	                           , value : item.LF_SIM_ADDR	// 선택 시 input창에 표시되는 값
	                           , idx : item.LF_CODE // indexo
	                     };
	                 })
	             );    //response
	         }
	         ,error : function(){ //실패
	             alert("오류가 발생했습니다.");
	         }
	     });
	 }
		,focus : function(event, ui) { // 방향키로 자동완성단어 선택 가능하게 만들어줌	
			return false;
		},
		minLength: 1,// 최소 글자수
		delay: 100	//autocomplete 딜레이 시간(ms),
		, select : function(evt, ui) { 
      	// 아이템 선택시 실행 ui.item 이 선택된 항목을 나타내는 객체, lavel/value/idx를 가짐
			console.log(ui.item.label);
			console.log(ui.item.idx);
	 }
});

$('#lf_start').autocomplete({
	 source : function(request, response) { //source: 입력시 보일 목록
	     $.ajax({
	           url : "autocompleteStart"   
	         , type : "POST"
	         , dataType: "JSON"
	         , data : {value: request.term}	// 검색 키워드
	         , success : function(data){ 	// 성공
	             response(
	                 $.map(data.resultList, function(item) {
	                     return {
	                    	     label : item.LF_START  	// 목록에 표시되는 값
	                           , value : item.LF_START	// 선택 시 input창에 표시되는 값
	                           , idx : item.LF_CODE // indexo
	                     };
	                 })
	             );    //response
	         }
	         ,error : function(){ //실패
	             alert("오류가 발생했습니다.");
	         }
	     });
	 }
		,focus : function(event, ui) { // 방향키로 자동완성단어 선택 가능하게 만들어줌	
			return false;
		},
		minLength: 1,// 최소 글자수
		delay: 100	//autocomplete 딜레이 시간(ms),
		, select : function(evt, ui) { 
      	// 아이템 선택시 실행 ui.item 이 선택된 항목을 나타내는 객체, lavel/value/idx를 가짐
			console.log(ui.item.label);
			console.log(ui.item.idx);
	 }
});



$('#lf_end').autocomplete({
	 source : function(request, response) { //source: 입력시 보일 목록
	     $.ajax({
	           url : "autocompletesmallcat"   
	         , type : "POST"
	         , dataType: "JSON"
	         , data : {value: request.term}	// 검색 키워드
	         , success : function(data){ 	// 성공
	             response(
	                 $.map(data.resultList, function(item) {
	                     return {
	                    	     label : item.LF_END  	// 목록에 표시되는 값
	                           , value : item.LF_END	// 선택 시 input창에 표시되는 값
	                           , idx : item.LF_CODE // indexo
	                     };
	                 })
	             );    //response
	         }
	         ,error : function(){ //실패
	             alert("오류가 발생했습니다.");
	         }
	     });
	 }
		,focus : function(event, ui) { // 방향키로 자동완성단어 선택 가능하게 만들어줌	
			return false;
		},
		minLength: 1,// 최소 글자수
		delay: 100	//autocomplete 딜레이 시간(ms),
		, select : function(evt, ui) { 
      	// 아이템 선택시 실행 ui.item 이 선택된 항목을 나타내는 객체, lavel/value/idx를 가짐
			console.log(ui.item.label);
			console.log(ui.item.idx);
	 }
});



