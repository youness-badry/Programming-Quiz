class Question {
  constructor(qstNbr, question, imageCodeLien, tableauReponses) {
    this.questionID = qstNbr;
    this.question = question;
    this.lienCode = imageCodeLien;
    this.reponses = tableauReponses;
  }
}


var creerTableauQuestions = function () {
  var tableauQuestions = [0, 0];
  for (var i = 0; i < data.idQuestion.length; i++) {
    tableauQuestions[i] = new Question(
      data.idQuestion[i],
      data.question[i],
      data.lienImageDuCode[i],
      data.reponsesQst.get(i)
    );
  }
  return tableauQuestions;
};

var TabQuestions = creerTableauQuestions();

var ajouterCorrection = function () {

    for (var i = 0; i < data.idQuestion.length; i++) {
        var htmlString =
        '<div class="question"><div class="questionNbr"><p>• Question ' +
        TabQuestions[i].questionID +
        '</p> </div><div class="enonce-question"><p class="question-Phrase">' +
        TabQuestions[i].question +
        '</p></div><div class="capture-question"><img src="' +
        TabQuestions[i].lienCode +
        '" alt="img-Question" class="lienImage" /></div></div><div class="partieReponses"><h4>La bonne réponse est : </h4><div class="reponse" id="reponseUn">' +
        TabQuestions[i].reponses[0] +
        '</div><div class="reponse" id="reponseDeux">' +
        TabQuestions[i].reponses[1] +
        '</div><div class="reponse" id="reponseTrois">' +
        TabQuestions[i].reponses[2] +
        "</div></div>";
        labelClassScore.insertAdjacentHTML("beforeend", htmlString);
    }

};

ajouterCorrection();


/*Get data from an api*/
