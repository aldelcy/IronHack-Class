var read = require('read');

// read({ prompt: "ONE" }, function () {

// 	setTimeout(function () {
// 		read({ prompt: "TWO" }, function () {
// 			read({ prompt: "THREE" }, function () {
// 				console.log("DONE")
// 			})
// 		})
// 	}, 50)
// })

function question(ask, answer, id, bonus){
	this.ask = ask;
	this.answer = answer;
	this.id = id;
	this.point = 10;
}


var q1 = new question('What is the color of the sky during a sunny day?','blue',1, '');
var q2 = new question('What high value tech company has the name of a fruit?','apple',2, '');
var q3 = new question('What Brickell "tech collaboration" company can use it\'s name in 3 different ways?','building',3, '');
var q4 = new question('A human is to "hair", what a cat is to _____?','fur',4, 'bonus');
var q5 = new question('A duck is a duck is a ____?','duck',5, '');

var questions = [];
questions.push(q1,q2,q3,q4,q5);


var a = 0;
quiz(a)


function quiz(x){
	options = {
		prompt: questions[x].ask +"\n>",
		answer: questions[x].answer
	};

	console.log("Question "+questions[x].id+": ");
	setTimeout(function () {
		read(options, checkAnswer);
	}, 50);
}


var points = 0;


function checkAnswer (err, answer){

	var lwr_ans = answer.toLowerCase();

	if(lwr_ans==="exit"){
		return false;
	}

	if(lwr_ans!==options.answer){
		console.log("TRY AGAIN.\n");
		quiz(a)
	}else if(lwr_ans===options.answer){
		console.log("CORRECT\n");
		
		points +
		
		if(a<(questions.length - 1)){
			a++;
			quiz(a)
		}else{
			console.log("====> AWESOME, YOU PASSED!!!!! <=====");
			return true;
		}
	}
}