
  var items = [	
			"Day1: Setup",	
			"Day2: Adminstration",
			"Day3: User",
			"Day4: Order",
			"Day5: Theme",
			"Day6: Refactor",
			"Day7: Performance",
			"Day8: Conclusion"]


function displayMenu(menu) {
    $("#menu0").css({"display": "none"});
    $("#menu1").css({"display": "none"});
		$("#menu2").css({"display": "none"});
    $("#menu3").css({"display": "none"});
		$("#menu4").css({"display": "none"});
		$(menu).css({"display": "block"});
}
$("#mi_0").click(function(e) {
		e.preventDefault();
		displayMenu("#menu0");
});
$("#mi_1").click(function(e) {
		e.preventDefault();
		displayMenu("#menu1");
});
$("#mi_2").click(function(e) {
		e.preventDefault();
		displayMenu("#menu2");
});
$("#mi_3").click(function(e) {
		e.preventDefault();
		displayMenu("#menu3");
});
$("#mi_4").click(function(e) {
		e.preventDefault();
		displayMenu("#menu4");
});

$("#btnDisplayIndex").click(function(e) {
		e.preventDefault();
    $("#wrapper").toggleClass("toggled");
});
$("#btnChangeTheme").click(function(e) {
		e.preventDefault();
		alert("Change Theme");
});
