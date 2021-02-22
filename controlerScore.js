class Question {
  constructor(qstNbr, question, imageCodeLien, tableauReponses) {
    this.questionID = qstNbr;
    this.question = question;
    this.lienCode = imageCodeLien;
    this.reponses = tableauReponses;
  }
}

var data = {
  idQuestion: [1, 2, 3, 4, 5, 6, 7, 8, 9],
  question: [
    "Que fait le programme suivant ?",
    "Quel est la sortie de ce code C ?",
    "Que fait le programme suivant ?",
    "Soit le code suivant :",
    "Quel est la sortie de ce programme ?",
    "Soit le programme suivant :",
    "Que fait le programme suivant ?",
    "Quel est la sortie de ce programme ?",
    "Que fait le programme suivant ?",
  ],
  lienImageDuCode: [
    "img-Test1/code-Question1-Test1.png",
    "img-Test1/code-Question2-Test1.png",
    "img-Test1/code-Question3-Test1.png",
    "img-Test1/code-Question4-Test1.png",
    "img-Test1/code-Question5-Test1.png",
    "img-Test1/code-Question6-Test1.png",
    "img-Test1/code-Question7-Test1.png",
    "img-Test1/code-Question8-Test1.png",
    "img-Test1/code-Question9-Test1.png",
  ],
  reponsesQst: new Map([
    [
      0,
      [
        "Tester si un nombre est divisible par 9",
        "Tester si un nombre est premier",
        "Tester si un entier est pair ou impair",
      ],
    ],
    [
      1,
      [
        "Comparer deux entiers a et b",
        "Addition de deux entiers a et b",
        "Tester si un nombre est un multiple de 2",
      ],
    ],
    [
      2,
      [
        "Tester si un nombre est impair",
        "Tester si un nombre est un entier",
        "Tester si un nombre est un divseur de 32",
      ],
    ],
    [
      3,
      [
        "C'est un programme C qui affiche une chaine de caractères inversée",
        "C'est un programme C qui calcule la valeur absolue de deux nombres",
        "C'est un programme C qui affiche le maximum de deux nombres",
      ],
    ],
    [
      4,
      [
        "Afficher le minimum de deux nombres",
        "Calculer la multiplication de deux nombres",
        "Permuter deux nombres",
      ],
    ],
    [
      5,
      [
        "C'est un programme C qui calcule la multiplication de trois nombres",
        "C'est un programme C qui calcule la division de deux nombres",
        "C'est un programme C qui affiche le signe du produit de deux entiers sans faire la multiplication",
      ],
    ],
    [
      6,
      [
        "Trier par ordre décroissant trois entiers en échangeant les valeurs",
        "Calculer le max de trois nombres",
        "Trier par ordre croissant trois entiers",
      ],
    ],
    [
      7,
      [
        "Caluler la somme de trois nombres",
        "Afficher le signe de la somme de deux entiers sans faire l'addition",
        "Trier par ordre croissant deux entiers",
      ],
    ],
    [
      8,
      [
        "Inverser le signe d'un nombre entier",
        "Afficher la valeur absolue d'un entier",
        "Convertir un nombre entier en un réel négatif",
      ],
    ],
  ]),
};

var labelClassScore = document.querySelector(".scoreEtCorrection");

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
