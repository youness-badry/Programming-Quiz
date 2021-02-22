class Question
{
  constructor(qstNbr,question,imageCodeLien,tableauReponses)
  {
    this.questionID=qstNbr;
    this.question=question;
    this.lienCode=imageCodeLien;
    this.reponses=tableauReponses;
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


var labelClassQuestionID = document.querySelector(".question-Nombre");
var labelClassQuestion = document.querySelector(".question-Phrase");
var labelClassLienImageCode = document.querySelector(".lienImage");
var labelClassReponseUn = document.getElementById("Reponse-Un");
var labelClassReponseDeux = document.getElementById("Reponse-Deux");
var labelClassReponseTrois = document.getElementById("Reponse-Trois");
var labelClassQuestUnSideBar = document.getElementById("un");
var labelClassQuestDeuxSideBar = document.getElementById("deux");
var labelClassQuestTroisSideBar = document.getElementById("trois");
var labelClassQuestQuatreSideBar = document.getElementById("quatre");
var labelClassQuestCinqSideBar = document.getElementById("cinq");
var labelClassQuestSixSideBar = document.getElementById("six");
var labelClassQuestSeptSideBar = document.getElementById("sept");
var labelClassQuestHuitSideBar = document.getElementById("huit");
var labelClassQuestNeufSideBar = document.getElementById("neuf");
var labelClassQuestDixSideBar = document.getElementById("dix");
var labelClassBouttonSuivant = document.querySelector(".bouttonSuivant");
var labelClassIdFormulaireTestUn = document.getElementById("formTestUn");
var labelClassBouttonSuiv = document.querySelector(".bouttonSuiv");
var labelClassBouttonFin = document.querySelector(".bouttonFin");




var creerTableauQuestions = function()
{
    var tableauQuestions=[0,0];
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

function modifyQuestionColor(actifOrNotactif,id) {

    var labelClassQuestNumber;
    if(id===1)
    {
      labelClassQuestNumber=labelClassQuestUnSideBar;
    }
    else if(id===2)
    {
      labelClassQuestNumber=labelClassQuestDeuxSideBar;
    }
    else if(id===3)
    {
      labelClassQuestNumber=labelClassQuestTroisSideBar;
    }
    else if(id===4)
    {
      labelClassQuestNumber=labelClassQuestQuatreSideBar;
    }
    else if(id===5)
    {
      labelClassQuestNumber=labelClassQuestCinqSideBar;
    }
    else if(id===6)
    {
      labelClassQuestNumber=labelClassQuestSixSideBar;
    }
    else if(id===7)
    {
      labelClassQuestNumber=labelClassQuestSeptSideBar;
    }
    else if(id===8)
    {
      labelClassQuestNumber=labelClassQuestHuitSideBar;
    }
    else if(id===9)
    {
      labelClassQuestNumber=labelClassQuestNeufSideBar;
    }
     if(actifOrNotactif=='actif')
    {
      labelClassQuestNumber.style.backgroundColor = "green";
      labelClassQuestNumber.style.color = "white";
    }
    else if(actifOrNotactif=='notActif')
    {
      labelClassQuestNumber.style.backgroundColor = "#fff";
      labelClassQuestNumber.style.color = "#606060";
      labelClassQuestNumber.style.opacity="0.4";
    }
    
}



function initQuestion(tableauDeQuestions, id) {
  labelClassQuestionID.textContent =
    "Question " + tableauDeQuestions[id].questionID;
  
  modifyQuestionColor("actif", tableauDeQuestions[id].questionID);
  labelClassQuestion.textContent = tableauDeQuestions[id].question;
  labelClassLienImageCode.src = tableauDeQuestions[id].lienCode;
  labelClassReponseUn.textContent = tableauDeQuestions[id].reponses[0];
  labelClassReponseDeux.textContent = tableauDeQuestions[id].reponses[1];
  labelClassReponseTrois.textContent = tableauDeQuestions[id].reponses[2];
}



var TabQuestions = creerTableauQuestions();
initQuestion(TabQuestions,0);

labelClassBouttonSuivant.addEventListener("click",function() {

    var stringQuestionID=labelClassQuestionID.textContent;
    var diviserString = stringQuestionID.split(' ');
    var IDQuestion = parseInt(diviserString[1],10);
    modifyQuestionColor('notActif', IDQuestion);
    labelClassIdFormulaireTestUn.reset();
    IDQuestion++;
    initQuestion(TabQuestions, IDQuestion-1);

    if(IDQuestion===9)
    {
      labelClassBouttonSuiv.classList.add('cache');
      labelClassBouttonFin.classList.remove('cache');
    }

});


























