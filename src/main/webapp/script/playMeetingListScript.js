	function checkAll(checkAll){
		let checkboxes=document.getElementsByName("checkbox");
		console.log(checkboxes);
		checkboxes.forEach((checkbox)=>{
			console.log(checkbox);
			checkbox.checked=checkAll.checked;
		})
	}