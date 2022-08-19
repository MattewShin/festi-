function itemChange(){
			
	var music =["락","발라드","힙합"];
	var drink =["맥주","와인","전통주"];
	var food =["음식"]
	var art = ["서양화","동양화","현대미술","사진"];
	var culture = ["민속/전통"];
	var history = ["세계사","국사"];
	var session = ["봄","여름","가을","겨울"];
	var specialties = ["특산물"];
	var nature = ["자연/생태"];
	var sports = ["스포츠/레저"];
	var experience = ["실내","실외"];
	var event = ["행사"];
	var industry = ["산업"];

	var selectItem = $(".u-form-select-wrapper #select-0e5b").val();
	
	var changeItem;
	
	if(selectItem == "음악"){
		changeItem = music;
	}
	else if(selectItem == "주류"){
			changeItem = drink;
	}
	else if(selectItem == "음식"){
			changeItem = food;
	}
	else if(selectItem == "미술"){
			changeItem = art;
	} 
	else if(selectItem == "민속/전통"){
			changeItem = culture;
	}
	else if(selectItem == "인물/역사"){
			changeItem = history;
	}
	else if(selectItem == "계절"){
			changeItem = session;
	}
	else if(selectItem == "특산물"){
			changeItem = specialties;
	}
	else if(selectItem == "자연/생태"){
			changeItem = nature;
	}
	else if(selectItem == "교육/체험"){
			changeItem = experience;
	}
	else if(selectItem == "스포츠/레저"){
			changeItem = sports;
	}
	else if(selectItem == "행사"){
			changeItem = event;
	}
	else if(selectItem == "산업"){
			changeItem = industry;
	}
	
	$('.u-form-select #select-6510').empty();
				
	for(var count = 0; count < changeItem.length; count++){
		var option = $("<option value='"+changeItem[count]+"'>"+changeItem[count]+"</option>");
		$('.u-form-select #select-6510').append(option);
	}
}