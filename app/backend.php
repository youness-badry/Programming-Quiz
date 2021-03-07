<?php




if(isset($_GET['qcm']))
{
    getQuestions($_GET['qcm']);

} else {
    if (preg_match('/\.(?:png|jpg|jpeg|gif|html)$/', $_SERVER["REQUEST_URI"])) {
        return false;    // retourne la requête telle quelle.
    } else {
         echo 'API is working';
    }
   
}

function getQuestions($QcmNumber) {
    
    // connect to Mysql
    try
    {
        // On se connecte à MySQL
        $bdd = new PDO('mysql:host=localhost;dbname=basedonneessite;charset=utf8', 'root', 'root',array(PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION));
        
    }
    catch(Exception $e)
    {
        // En cas d'erreur, on affiche un message et on arrête tout
            die('Erreur : '.$e->getMessage());
    }
    // Select questions from table Questions
    $tableName='questionsqcm'.$QcmNumber;
    $reponse = $bdd->query("SELECT * FROM `".$tableName."`");
    
    // On affiche chaque entrée une à une
    $questions=[];
    while ($donnees = $reponse->fetch())
    {
        array_push($questions,$donnees);
        
    }

    $tableName='reponsesqcm'.$QcmNumber;
    $reponse = $bdd->query("SELECT * FROM `".$tableName."`");
    // On affiche chaque entrée une à une
    $answers=[];
    while ($donnees = $reponse->fetch())
    {
        array_push($answers,$donnees);
        
    }

    $formattedQuestions = [];
/* { 
    "id": 1,
    "text": "text","lienCode":"code", 
    "answers": [
        { "id": 1, "text": "text", "correct": false},
    ]
}
 */
    $i = 0;

    foreach ($questions as $key => $question) {
        
        $id=$question['id'];
        $formattedAnswers = [];

        foreach ($answers as $key => $answer) {
            if ($answer['idQuestion'] == $id) {
                array_push($formattedAnswers, [
                    "id" => $answer['id'],
                    "text" => $answer['reponse'],
                    "correct" => $answer['reponseJuste']
                ]);
            }
        }
        
        $formattedQuestions[$i] = [
            "id" => $id,
            "text" => $question['question'],
            "answers" => $formattedAnswers,
            "code" => $question['code']
        ];
        $i++;
    }
    
    echo json_encode($formattedQuestions);

$reponse->closeCursor(); // Termine le traitement de la requête */

   /*  echo json_encode([
        "test" => "Helllo from api"
    ]); */
}




/* { 
    "id": 1,
    "text": "text","lienCode":"code", 
    "answers": [
        { "id": 1, "text": "text", "correct": false},
    ]
}
 */

/* 
Nous avons deux solutuions: 

1 - formatted object
2 - Sql Query
 */















