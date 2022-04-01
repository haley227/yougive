var nameSpace = {};

nameSpace.currentFrame = -1;
nameSpace.wizardContainer = $(".wizard-contents");
nameSpace.wizardSteps = [
  {
    question: "What is your name?",
    button_label: "Next Question" 
  },
  {
    question: "What are your qualifications?",
    button_label: "Next Question"
  },
  {
    question: "Where do you see yourself in 5 years?",
    button_label: "Summary"
  }
];

nameSpace.answers = [];

nameSpace.renderFrame = function () {
  var step = nameSpace.wizardSteps[nameSpace.currentFrame];
  var liveQuestionTemplate = $(document.importNode(document.querySelector('#question_template').content, true));
  liveQuestionTemplate.find(".question, .question-label").html(step.question);
  liveQuestionTemplate.find(".button-label").html(step.button_label);
  nameSpace.wizardContainer.html(liveQuestionTemplate);
  $('#answer').focus();
  nameSpace.currentFrame == 0 ? $(".back-button").hide() : '';
};

nameSpace.saveAnswer = function () {
  var answer = $("#answer").val();
  if (answer) {
    nameSpace.answers[nameSpace.currentFrame] = answer;
  }
};

nameSpace.renderSummary = function () {
  var liveSummaryTemplate = $(document.importNode(document.querySelector('#summary_template').content, true));
  var summaryList = liveSummaryTemplate.find(".summary");
  nameSpace.wizardSteps.forEach(function (step, index) {
    var entry = "<li><span class='summary-question'>Q: " + step.question + "</span><span class='summary-answer'>A: " + nameSpace.answers[index] + "</span></li>";
    summaryList.append(entry);
  });
  nameSpace.wizardContainer.html(liveSummaryTemplate);
};

nameSpace.nextFrame = function () {
  nameSpace.saveAnswer();
  nameSpace.currentFrame++;
  if (nameSpace.currentFrame != nameSpace.wizardSteps.length) {
    nameSpace.renderFrame();
  } else {
    nameSpace.renderSummary();
  }
};

nameSpace.goBack = function () {
  nameSpace.currentFrame--;
  nameSpace.renderFrame();
};