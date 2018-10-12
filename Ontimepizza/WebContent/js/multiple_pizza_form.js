$(document).ready(function(){
	var max_field=25;// maximun input boxes allowed
	var wrapper=$(".wrapper");
	var add_button= $(".add_pizza_field");
	var add='<div class="wrapper"><div class="form-group"><div class="row"><div class="col" id="childpizzaname"><label for="inputPassword" class="control-label "><b>PizzaName</b></label> <select name="pizzaname" class="form-control"><option selected>Choose</option><option>abc</option><option>xyz</option></select></div>'+'<div class="col" id="childpizzasize"><label for="inputPassword" class="control-label"><b>Pizza Size</b></label> <select name="pizzasize" class="form-control"><option selected>Choose</option><option>Small</option><option>Medium</option><option>Large</option></select></div>' +'<div class="col" id="childpizzaquantity"><label for="inputPassword" class="control-label"><b>PizzaQuantity</b></label> <input type="number" class="form-control" id="inputEmail" placeholder="Number of Pizza" min="1" name="pizzanumber"></div></div></div></div>'+'<a href="#" class="remove_field btn btn-danger"><i class="fa fa-times"></a>';
	
	 
	 $(add_button).click(function(e){
		e.preventDefault();
			$(wrapper).append(add);
			i++;
	});
	 $(wrapper).on("click",".remove_field",function(e){
		 e.preventDefault();
		 $(this).parent('div').remove();
		
	 })
});