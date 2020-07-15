<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

		<title>Test series</title>
		<link rel="stylesheet" href="quiz.css">
		<link href="https://fonts.googleapis.com/css?family=Josefin+Sans" rel="stylesheet">
	</head>
	<body>
		<div id="container">
            <h1>Quiz on Basic Science</h1>
   			<br/>
  			<div id="quiz"></div>
    		<div class="button" id="next"><a href="#">Next</a></div>
    		<div class="button" id="prev"><a href="#">Prev</a></div> 
    	</div>
        <script src="https://code.jquery.com/jquery-3.4.0.min.js"></script>
		<script src="quiz.js"></script>
	</body>

    
<style>
body 
{
    font-family: 'Josefin Sans', sans-serif;
background-image: url(https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTJGuufUalZisnygZ0RYIJH218oz0FV6zIRW4vlOUI-lBOXye8_);
background-repeat: no-repeat;
background-attachment: fixed;
  background-size:100% 100%;  

}
h1 {

<script>
(function() 
 {
  var allQuestions = [{
    question: "The tree sends downroots from its branches to the soil is know as:",
    options: ["Oak", "Pine", "Banyan", "Palm"],
    answer: 2
  }, {
    question: "Electric bulb filament is made of",
    options: ["Copper", "Aluminum", "lead", "Tungsten"],
    answer: 3
  }, {
    question: "Non Metal that remains liquid at room temprature is",
    options: ["Phophorous", "Bromine", "Clorine","Helium"],
    answer: 1
  },{
    question: "Which of the following is used in Pencils ?",
    options: ["Graphite", "Silicon", "Charcoal", "Phosphorous"],
    answer: 0
  }, {
    question: "Chemical formula of water ?",
    options: ["NaA1O2", "H2O", "Al2O3", "CaSiO3"],
    answer: 1
  },{
    question: "The gas filled in electric bulb is ?",
    options: ["Nitrogen", "Hydrogen", "Carbon Dioxide", "Oxygen"],
    answer: 0
  },{
    question: "Whashing soda is the comman name for",
    options: ["Sodium Carbonate", "Calcium Bicarbonate", "Sodium Bicarbonate", "Calcium Carbonate"],
    answer: 0
  },{
    question: "Which gas is not known as green house gas ?",
    options: ["Methane", "Nitrous oxide", "Carbon Dioxide", "Hydrogen"],
    answer: 3
  },{
    question: "The hardest substance availabe on earth is",
    options: ["Gold", "Iron", "Diamond", "Platinum"],
    answer: 2
  },{
    question: "Used as a lubricant",
    options: ["Graphite", "Silica", "Iron Oxide", "Diamond"],
    answer: 0
    }];
  
  var quesCounter = 0;
  var selectOptions = [];
  var quizSpace = $('#quiz');
    
  nextQuestion();
    
  $('#next').click(function () 
    {
        chooseOption();
        if (isNaN(selectOptions[quesCounter])) 
        {
            alert('Please select an option !');
        } 
        else 
        {
          quesCounter++;
          nextQuestion();
        }
    });
  
  $('#prev').click(function () 
    {
        chooseOption();
        quesCounter--;
        nextQuestion();
    });
  
  function createElement(index) 
    {
        var element = $('<div>',{id: 'question'});
        var header = $('<h2>Question No. ' + (index + 1) + ' :</h2>');
        element.append(header);

        var question = $('<p>').append(allQuestions[index].question);
        element.append(question);

        var radio = radioButtons(index);
        element.append(radio);

        return element;
    }
  
  function radioButtons(index) 
    {
        var radioItems = $('<ul>');
        var item;
        var input = '';
        for (var i = 0; i < allQuestions[index].options.length; i++) {
          item = $('<li>');
          input = '<input type="radio" name="answer" value=' + i + ' />';
          input += allQuestions[index].options[i];
          item.append(input);
          radioItems.append(item);
        }
        return radioItems;
  }
  
  function chooseOption() 
    {
        selectOptions[quesCounter] = +$('input[name="answer"]:checked').val();
    }
   
  function nextQuestion() 
    {
        quizSpace.fadeOut(function() 
            {
              $('#question').remove();
              if(quesCounter < allQuestions.length)
                {
                    var nextQuestion = createElement(quesCounter);
                    quizSpace.append(nextQuestion).fadeIn();
                    if (!(isNaN(selectOptions[quesCounter]))) 
                    {
                      $('input[value='+selectOptions[quesCounter]+']').prop('checked', true);
                    }
                    if(quesCounter === 1)
                    {
                      $('#prev').show();
                    } 
                    else if(quesCounter === 0)
                    {
                      $('#prev').hide();
                      $('#next').show();
                    }
                }
              else 
                {
                    var scoreRslt = displayResult();
                    quizSpace.append(scoreRslt).fadeIn();
                    $('#next').hide();
                    $('#prev').hide();
                }
        });
    }
  
  function displayResult() 
    {
        var score = $('<p>',{id: 'question'});
        var correct = 0;
        for (var i = 0; i < selectOptions.length; i++) 
        {
          if (selectOptions[i] === allQuestions[i].answer) 
          {
            correct++;
          }
        }
        score.append('You scored ' + correct + ' out of ' +allQuestions.length);
        return score;
  }
})();
</script>
</html>