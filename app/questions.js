// 1- get questions from mock server OK
// 2- construct questions html

let loadingQuestions = true;
let questions = [];
let score = 0;
let step = 0;
let userAnswers = [];



getQuestionsFromBackend();

function getQuestionsFromBackend() {
  loadingQuestions = true;
  var label = document.querySelector(".section1");
  var titreQCM = label.firstElementChild.textContent;
  const str = titreQCM.split(" ");
  const numeroQCM = str[2];
  var xhttp = new XMLHttpRequest();
  xhttp.open("GET", `http://localhost:81/backend.php?qcm=${numeroQCM}`, true);
  xhttp.send();
  xhttp.addEventListener("load", () => {
    questions = JSON.parse(xhttp.response);
    loadingQuestions = false;
    constructQuestionsHtml();
  });
}

function constructQuestionsHtml() {
  if (loadingQuestions === false) {
    insertQuestion();
    insertAnswers();
    updateNavigation();
    updateSideBar("first");
  }
}

function insertQuestion() {
  const question = getVisibleQuestion();
  const elementStep = document.getElementsByClassName("question-step")[0];
  elementStep.textContent = `Question ${question.id} :`;
  const element = document.getElementsByClassName("question-text")[0];
  element.textContent = question.text;
  const elementImageCode = document.getElementsByClassName("question-image")[0];
  elementImageCode.innerHTML = "";
  var myCodeMirror = CodeMirror(elementImageCode, {
    value: question.code,
    lineNumbers: true,
    mode: "clike",
    theme: "neo",
    readOnly: true,
  });

   elementImageCode.style.marginLeft = "45px";
  elementCodeMirror = document.querySelector(".CodeMirror");
  elementCodeMirror.style.backgroundColor = "#fefefe";
  elementCodeMirror.style.border = "solid #d1d0d0 2px";
  elementCodeMirror.style.borderRadius ="10px";
  elementCodeMirror.style.fontSize = "15px";
  elementCodeMirror.style.height = "auto";
}

function insertAnswers() {
  const question = getVisibleQuestion();
  const element = document.getElementsByClassName("answers-holder")[0];
  const answers = question.answers;

  const answersHtml = answers.map((answer) => {
    const checked = userAnswers[step] == answer.id ? "checked" : "";

    return `
            <input ${checked} 
                value="${answer.id}" 
                type="radio" id="${answer.id}" 
                name="answer" >
            <label for="${answer.id}">${answer.text}</label><br>
        `;
  });

  element.innerHTML = "";
  element.innerHTML = answersHtml.join("");
}

function updateNavigation() {
  const isPreviousVisible = step > 0;
  const isNextVisible = step < questions.length - 1;
  const isScoreVisible = step == questions.length - 1;
  const perviousBtn = document.getElementsByClassName("previous-button")[0];
  const nextBtn = document.getElementsByClassName("next-button")[0];
  const scoreBtn = document.getElementsByClassName("score-button")[0];

  if (isPreviousVisible) {
    perviousBtn.classList.remove("button-disabled");
  } else {
    perviousBtn.classList.add("button-disabled");
  }

  if (isNextVisible) {
    nextBtn.classList.remove("button-disabled");
  } else {
    nextBtn.classList.add("button-disabled");
  }

  if (isScoreVisible) {
    scoreBtn.classList.remove("button-disabled");
  } else {
    scoreBtn.classList.add("button-disabled");
  }
}

function updateSideBar(direction) {
  if (direction === "next") {
    document.getElementById(`sideBarQ${step + 1}`).style.backgroundColor =
      "green";
    document.getElementById(`sideBarQ${step + 1}`).style.color = "white";
    document.getElementById(`sideBarQ${step}`).style.backgroundColor = "#fff";
    document.getElementById(`sideBarQ${step}`).style.color = "#606060";
  } else if (direction === "previous") {
    document.getElementById(`sideBarQ${step + 1}`).style.backgroundColor =
      "green";
    document.getElementById(`sideBarQ${step + 1}`).style.color = "white";
    document.getElementById(`sideBarQ${step + 2}`).style.backgroundColor =
      "#fff";
    document.getElementById(`sideBarQ${step + 2}`).style.color = "#606060";
  } else if (direction === "first") {
    document.getElementById(`sideBarQ${step + 1}`).style.backgroundColor =
      "green";
    document.getElementById(`sideBarQ${step + 1}`).style.color = "white";
  }
}

function getVisibleQuestion() {
  return questions[step];
}

function nextStep() {
  saveUserAnswer();
  window.scroll(0, 0);
  if (step < questions.length - 1) {
    step++;
    constructQuestionsHtml();
    updateSideBar("next");
  }
}

function previousStep() {
  saveUserAnswer();
  window.scroll(0, 0);
  if (step > 0) {
    step--;
    constructQuestionsHtml();
    updateSideBar("previous");
  }
}

function saveUserAnswer() {
  userAnswers[step] = getUserAnswer();
}

function getUserAnswer() {
  const answer = document.querySelector('input[name="answer"]:checked');
  if (answer) {
    return answer.value;
  }
  return false;
}

function getScore() {
  saveUserAnswer();
  window.scroll(0, 0);

  questions.forEach(function (question, idStep) {
    const correctAnswer = question.answers.find((answer) =>
      parseInt(answer.correct)
    );

    if (userAnswers[idStep] == correctAnswer.id) {
      score++;
    }
  });

  const elementSectionTest = document.getElementsByClassName("section1")[0];
  elementSectionTest.classList.add("cache");
  const elementSectionScore = document.getElementsByClassName(
    "sectionScoreEtCorrection"
  )[0];
  elementSectionScore.classList.remove("cache");
  const elementScore = document.getElementsByClassName("scoreEtCorrection")[0];

  const scoreNumerateur = document.getElementsByClassName(
    "score-Numerateur"
  )[0];
  scoreNumerateur.textContent = score;

  questions.forEach(function (question) {
    var questionHtml = `
        <div class="questionScore">
            <div class="questionNbr">
                <p>• Question ${question.id}</p>
            </div>
            <div class="capture-question" id="capture-question${question.id}">
                
            </div>
        </div>`;

    
    var reponsesFormatHtml = "";

    question.answers.forEach((answer) => {
      reponsesFormatHtml += `
                <div class="reponse" id="question${question.id}-reponse${answer.id}">
                    ${answer.text}
                </div>
            `;
    });

    var reponsesHtml = `<div class="partieReponses">
            <h4>La bonne réponse est : </h4>
            ${reponsesFormatHtml}
        </div>
      `;

    var htmlStringCorrection = questionHtml + reponsesHtml;
    elementScore.insertAdjacentHTML("beforeend", htmlStringCorrection);
  });
  questions.forEach(function (question) {
    const correctAnswer = question.answers.find((answer) =>
      parseInt(answer.correct)
    );
    const elementReponseJuste = document.getElementById(
      `question${question.id}-reponse${correctAnswer.id}`
    );
    elementReponseJuste.style.backgroundColor = "chartreuse";
  });

  questions.forEach(function (question) {
        const elementImageCode = document.getElementById(`capture-question${question.id}`);

        var myCodeMirror = CodeMirror(elementImageCode, {
          value: question.code,
          lineNumbers: true,
          mode: "clike",
          theme: "neo",
          readOnly: true,
        });
        elementImageCode.style.marginLeft = "45px";
         elementImageCode.style.backgroundColor = "#fefefe";
         elementImageCode.style.border = "solid #d1d0d0 2px";
         elementImageCode.style.borderRadius = "5px";
         elementImageCode.style.fontSize = "15px";
        elementImageCode.style.height = "auto";
        
  });

  
  
 
}
