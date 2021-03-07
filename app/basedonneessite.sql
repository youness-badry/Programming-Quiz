-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 07, 2021 at 05:42 PM
-- Server version: 5.7.24
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `basedonneessite`
--

-- --------------------------------------------------------

--
-- Table structure for table `questionsqcm1`
--

CREATE TABLE `questionsqcm1` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `code` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `questionsqcm1`
--

INSERT INTO `questionsqcm1` (`id`, `question`, `code`) VALUES
(1, 'Quelle est la sortie de ce programme C ?', '#include<stdio.h>\r\n#include<stdlib.h>\r\nint main()\r\n{\r\n    int x = 24, y = 39, z = 45;\r\n    z = x + y;\r\n    y = z - y;\r\n    x = z - y;\r\n    printf (\"%d %d %d\", x, y, z);\r\n    system(\"pause\");\r\n    return 0;\r\n}'),
(2, 'Quelle est la sortie du code suivant ?', '#include<stdio.h>\r\n#include<stdlib.h>\r\nint main()\r\n{\r\n\r\n     int m = -10, n = 20;\r\n\r\n     n = (m < 0) ? 0 : 1;\r\n\r\n     printf(\"%d %d\", m, n);\r\n\r\n}'),
(3, 'Quelle est la sortie du programme suivant ?', '#include<stdio.h>\r\n#include<stdlib.h>\r\nint main()\r\n{\r\n\r\n    int x = 14, y = -9;\r\n\r\n	if(x > 10)\r\n	{\r\n\r\n	    if(y < -2)\r\n	    {\r\n		    printf(\"True\");\r\n	    }\r\n\r\n	}\r\n	else\r\n	{	\r\n	     printf(\"False\");\r\n	}\r\n	\r\n}'),
(4, 'Quel est la sortie de ce code C ?', '#include<stdio.h>\r\n#include<stdlib.h>\r\nint main()\r\n{\r\n    int a,b;\r\n    printf(\"Donnez les deux entiers a comparer:\\n\");\r\n    scanf(\"%d%d\",&a,&b);\r\n    if(a==b)\r\n    {\r\n       printf(\"%d=%d\\n\",a,b);\r\n    }\r\n    else\r\n    {\r\n       if(a<b)\r\n       {\r\n          printf(\"%d<%d\\n\",a,b);\r\n       } \r\n       else\r\n       {\r\n          printf(\"%d>%d\\n\",a,b);\r\n       }\r\n    }\r\n    system(\"pause\");\r\n    return 0;\r\n}'),
(5, 'Que fait le code suivant ?', '#include <stdio.h>\r\n\r\n\r\nint main(void)\r\n{\r\n  int n;\r\n\r\n  /* Saisie */\r\n  printf(\"Entrer un entier : \");\r\n  scanf(\"%d\", &n);\r\n  /* Calcul et affichage */\r\n  if (n < 0)\r\n    n = -n;\r\n  printf(\"Abs = %d\\n\", n);\r\n\r\n  return 0;\r\n  \r\n}'),
(6, 'Quelle est la sortie du programme suivant ?', '#include <stdio.h>\r\n#include <math.h>\r\n main()\r\n\r\n{\r\n \r\n     int A, B;\r\n     printf(\"Introduisez deux nombres entiers :\");\r\n     scanf(\"%i %i\", &A, &B);\r\n     if ((A>0 && B>0) || (A<0 && B>0 && fabs(A)<fabs(B)) \r\n                      || (A>0 && B<0 && fabs(A)>fabs(B)))\r\n        printf(\"Le signe de la somme %i + %i est positif\\n\",A,B);\r\n     else if ((A<0 && B<0) || (A<0 && B>0 && fabs(A)>fabs(B)) \r\n                           || (A>0 && B<0 && fabs(A)<fabs(B)))\r\n        printf(\"Le signe de la somme %i + %i est négatif\\n\",A,B);\r\n     else\r\n        printf(\"La somme %i + %i est zéro\\n\", A, B);\r\n        \r\n      return 0;\r\n}'),
(7, 'Que fait le programme suivant ?', '#include <stdio.h>\r\n\r\nint main()\r\n{\r\n      int a, b, tmp;\r\n     \r\n      printf(\"Entrez deux nombre\\n\");\r\n      scanf(\"%d%d\", &a, &b);\r\n     \r\n      printf(\"Avant l\'échange\\nA = %d\\nB = %d\\n\", a, b);\r\n     \r\n      tmp = a;\r\n      a = b;\r\n      b = tmp;\r\n     \r\n      printf(\"Aprés l\'échange\\nA = %d\\nB = %d\\n\", a, b);\r\n     \r\n      return 0;\r\n}'),
(8, 'Quelle est la sortie du programme après le traitement ?', '#include <stdio.h>\r\n\r\nint main()\r\n{\r\n\r\n     int A=7, B=2, C=12;\r\n     int AIDE;\r\n     \r\n     printf(\"Avant le traitement : \\tA = %i\\tB = %i\\tC = %i\\n\", A, B, C);\r\n     \r\n     if (A<B) \r\n     {\r\n          AIDE = A;\r\n          A = B;\r\n          B = AIDE;\r\n     }\r\n     if (A<C)\r\n     {\r\n          AIDE = A;\r\n          A = C;\r\n          C = AIDE;\r\n     }\r\n     \r\n     if (B<C)\r\n     {\r\n          AIDE = B;\r\n          B = C;\r\n          C = AIDE;\r\n     }\r\n     printf(\"Après le traitement : \\tA = %i\\tB = %i\\tC = %i\\n\", A, B, C);\r\n      return 0;\r\n}'),
(9, 'Que fait le programme suivant ?', '#include <stdio.h>\r\n\r\nint main()\r\n{\r\n	int a,b;\r\n	float x;\r\n	printf(\"Entrer a :\");\r\n	scanf(\"%d\",&a);\r\n	printf(\"Entrer b :\");\r\n	scanf(\"%d\",&b);\r\n \r\n	if(a==0)\r\n	{\r\n		if(b==0)\r\n		{ \r\n			printf(\"\\nLa solution de l\'equation %dx + %d est l\'ensemble IR\\n\", a, b);\r\n		}\r\n		else{\r\n		    printf(\"\\nAucun solution  de l\'equation %dx + %d (Ensembre vide)\\n\",a , b);\r\n		}\r\n	}\r\n	else\r\n	{\r\n		x = (float)-b/a;\r\n		printf(\"\\nLa solution de l\'equation %dx + %d est x = %.2f\\n\",a, b, x);\r\n	}\r\n}');

-- --------------------------------------------------------

--
-- Table structure for table `questionsqcm2`
--

CREATE TABLE `questionsqcm2` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `code` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `questionsqcm2`
--

INSERT INTO `questionsqcm2` (`id`, `question`, `code`) VALUES
(1, 'Que fait le programme suivant ?', '#include <stdio.h>\r\nint main()\r\n{\r\n     int N=3,NOMB,I=1,SOM=0,PROD=1;\r\n     \r\n     while(I<=N)\r\n    {\r\n         printf(\"%d. nombre entier: \", I);\r\n         scanf(\"%d\", &NOMB);\r\n         SOM  += NOMB;\r\n         PROD *= NOMB;\r\n         I++;\r\n    }\r\n     \r\n     printf(\"La somme   des %d nombres est %d \\n\", N, SOM);\r\n     printf(\"Le produit des %d nombres est %d\\n\", N, PROD);\r\n     return 0;\r\n}'),
(2, 'Quelle est la sortie du code suivant ?', '#include <stdio.h>\r\nint main()\r\n{\r\n \r\n int T[5]={4,1,9,13,2}; /* tableau donné  */\r\n int N=5,I,SOM;\r\n \r\n printf(\"Tableau :\\n\");\r\n for (I=0; I<N; I++)\r\n     printf(\"%d \", T[I]);\r\n printf(\"\\n\");\r\n for (SOM=0, I=0; I<N; I++)\r\n     SOM += T[I];\r\n\r\n printf(\"Somme de éléments : %d\\n\", SOM);\r\n return 0;\r\n}'),
(3, 'Que fait le programme suivant ?', '#include <stdio.h>\r\nint main()\r\n{\r\n /* Déclarations */\r\n int T[4]={7,0,0,1}; /* tableau donné    */\r\n int N=4,I,J; \r\n\r\n for (I=0, J=0 ; I<N ; I++)\r\n {\r\n     T[J] = T[I];\r\n     if (T[I]) J++;\r\n }\r\n \r\n N = J;\r\n printf(\"Tableau résultant :  { \");\r\n for (I=0; I<N; I++)\r\n     printf(\"%d  \", T[I]);\r\n printf(\"}\\n\");\r\n return 0;\r\n}'),
(4, 'Soit le code suivant :', '#include <stdio.h>\r\nint main()\r\n{\r\n     /* Déclarations */\r\n     int A[5]={8,5,2,19,3}; /* tableau donné */\r\n     int VAL=3,N=5,POS,I;\r\n     \r\n     POS = -1;\r\n     for (I=0 ; (I<N)&&(POS==-1) ; I++)\r\n           if (A[I]==VAL)\r\n               POS=I;\r\n               \r\n     if (POS==-1)\r\n         printf(\"La valeur recherchée ne se trouve pas \"\r\n                \"dans le tableau.\\n\");\r\n      else\r\n         printf(\"La valeur %d se trouve à la position %d. \\n\", VAL, POS);\r\n     return 0;\r\n}'),
(5, 'Que fait le programme C suivant ?', '#include <stdio.h>\r\n\r\n double S(double r);\r\n \r\n int main()\r\n {\r\n      double R;\r\n      printf(\"Introduire le rayon du cercle : \");\r\n      scanf(\"%lf\", &R);\r\n      printf(\"S = %f. \\n\", S(R));\r\n      return 0;\r\n }\r\n\r\n double S(double r)\r\n {\r\n    double PI=3.14159265;\r\n    return PI*r*r;\r\n }'),
(6, 'Soit le programme C suivant :', '#include <stdio.h>\r\n\r\n double MAX(double X, double Y);\r\n \r\nint main()\r\n{\r\n     double A,B,C,D,max;\r\n     /* Traitements */\r\n     printf(\"Introduire 4 réels : \");\r\n     scanf(\"%lf %lf %lf %lf\", &A, &B, &C, &D);\r\n     max = MAX( MAX(A,B), MAX(C,D));\r\n     printf(\"Le maximum des 4 réels est %f \\n\", max); \r\n     return 0;\r\n}\r\n\r\ndouble MAX(double X, double Y)\r\n{\r\n    return (X>Y) ? X : Y;\r\n}'),
(7, 'Quelle est la sortie du code suivant ?', '#include <stdio.h>\r\n\r\nint main()\r\n{\r\n    double FACT(int N);\r\n    int N;\r\n     printf(\"Introduire un nombre entier N : \");\r\n     scanf(\"%d\", &N);\r\n     printf(\"La factorielle de %d est %.0f \\n\",N , FACT(N));\r\n     return 0;\r\n}\r\n\r\ndouble FACT(int N)\r\n{\r\n    return ((N==0) ? 1 : FACT(N-1)*N);\r\n}'),
(8, 'Que fait le programme suivant ?', '#include <stdio.h>\r\n\r\nint main()\r\n{\r\n     int MAX1 (int TAB[], int N);\r\n     int T[5]={49,10,81,96,65}; /* Tableau d\'entiers */\r\n     int DIM=5;    /* Dimension du tableau */ \r\n     printf(\"MAX : %d \\n\",   MAX1(T,DIM)  );\r\n     return 0;\r\n}\r\n\r\nint MAX1(int TAB[], int N)\r\n{\r\n     int MAX,I;  /* variables d\'aide */\r\n     MAX=TAB[0];\r\n     for (I=1; I<N; I++)\r\n         if ( MAX < TAB[I] )\r\n             MAX = TAB[I];\r\n     return MAX;\r\n}'),
(9, 'Quelle est la sortie du code suivant ?', '#include<stdio.h>\r\nint fonction1(int T1[],int T2[],int n);\r\n\r\nint main()\r\n{\r\n	int dim=4,a;\r\n	int T1[4]={2,23,1,0};\r\n	int T2[4]={1,23,1,2};\r\n	a=fonction1(T1,T2,dim);\r\n	\r\n	if(a == 1)\r\n		printf(\"\\nLes deux tableaux sont identiques\");\r\n	else\r\n		printf(\"\\nLes deux tableaux ne sont pas identiques\");\r\n}\r\n\r\nint fonction1(int T1[],int T2[],int n)\r\n{\r\n    	int c = 1;\r\n	for(int i=0;i<n;i++){\r\n   		if(T1[i] != T2[i])\r\n   			c = 0;\r\n	}  \r\n	return c;\r\n}');

-- --------------------------------------------------------

--
-- Table structure for table `questionsqcm3`
--

CREATE TABLE `questionsqcm3` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `code` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `questionsqcm3`
--

INSERT INTO `questionsqcm3` (`id`, `question`, `code`) VALUES
(1, 'Quelle est la sortie du programme suivant ?', '#include<stdio.h>\r\n\r\nint main()\r\n{\r\n    int A[] = {12, 23, 34, 45, 56, 67, 78, 89, 90};\r\n    int *P;\r\n    P = A;\r\n    printf(\" *P+2 = %d\",*P+2);\r\n    return 0;\r\n}'),
(2, 'Quelle est la sortie du code suivant ?\r\n', '#include<stdio.h>\r\n\r\nint main()\r\n{\r\n    int A[] = {12, 23, 34, 45, 56, 67, 78, 89, 90};\r\n    int *P;\r\n    P = A;\r\n    printf(\" *(P+2) = %d\", *(P+2) );\r\n    return 0;\r\n}'),
(3, 'Quelle est la sortie du code suivant ?', '#include<stdio.h>\r\n\r\nint main()\r\n{\r\n    int A[] = {12, 23, 34, 45, 56, 67, 78, 89, 90};\r\n    int *P;\r\n    P = A;\r\n    printf(\" (A+3) = %d\", A+3 );\r\n    return 0;\r\n}'),
(4, 'Quelle est la sortie du code suivant ?', '#include <stdio.h>\r\n\r\nint main()\r\n{\r\n     int A[5]={1,3,19,24,100};\r\n     int N=5,I; \r\n     \r\n     for (I=0; I<N; I++)\r\n          printf(\"%d \", *(A+I));\r\n     printf(\"\\n\");\r\n     return 0;\r\n}'),
(5, 'Que fait le programme suivant ?', '#include <stdio.h>\r\nint main()\r\n{\r\n /* Déclarations */\r\n     int A[3]={4,1,9};\r\n     int N=3,AIDE;   \r\n     int *P1, *P2; /* pointeurs d\'aide */\r\n      /* Inverser le tableau */\r\n     for (P1=A,P2=A+(N-1); P1<P2; P1++,P2--)\r\n     {\r\n          AIDE = *P1;\r\n          *P1  = *P2;\r\n          *P2  = AIDE;\r\n     }\r\n         \r\n     for (P1=A; P1<A+N; P1++)\r\n          printf(\"%d \", *P1);\r\n      printf(\"\\n\");\r\n     return 0;\r\n}'),
(6, 'Quelle est la sortie du code suivant ?', '#include<stdio.h>\r\n\r\nstruct Point\r\n{\r\n    int x, y, z;\r\n};\r\n \r\nint main()\r\n{\r\n    struct Point p1;\r\n    p1.x=0;\r\n    p1.y=1;\r\n    p1.z=2;\r\n    printf(\"%d %d %d\", p1.x, p1.y, p1.z);\r\n    return 0;\r\n}'),
(7, 'Quelle est la sortie du code suivant ?', '#include<stdio.h>\r\n\r\nstruct node\r\n{\r\n   int i;\r\n   int j;\r\n};\r\n \r\nint main()\r\n{\r\n    struct node s[3] ;\r\n    for(int i=0;i<3;i++)\r\n    {\r\n        s[i].i=1;\r\n        s[i].j=1+i;\r\n    }\r\n    for(int i=0;i<3;i++)\r\n    {\r\n        printf(\"%d \",s[i].i);\r\n        printf(\"%d \",s[i].j);\r\n        printf(\"\\n\");\r\n    }\r\n    return 0;\r\n}'),
(8, 'Que fait le programme C suivant ?', '#include<stdio.h>\r\n \r\nstruct Etudiant  {\r\n	char nom [10];\r\n	char prenom [10];\r\n	int age;\r\n};\r\nvoid afficherEudiant(struct Etudiant e);\r\n\r\nint main()\r\n{\r\n    struct Etudiant E={\"WALID\",\"KARIM\",22};\r\n    afficherEudiant(E);\r\n    return 0;\r\n}\r\n\r\nvoid afficherEudiant(struct Etudiant e)\r\n{\r\n    printf(\"Nom : %s , Prenom : %s , Age : %d\\n\", e.nom, e.prenom, e.age);\r\n}\r\n'),
(9, 'Quelle est la sortie du code suivant ?', '#include<stdio.h> \r\n\r\nstruct st \r\n{ \r\n	int x; \r\n	struct st *next; \r\n}; \r\n\r\nint main() \r\n{ \r\n	struct st temp; \r\n	temp.x = 10; \r\n	temp.next = &temp; \r\n	printf(\"%d\", temp.next->x); \r\n	return 0; \r\n}');

-- --------------------------------------------------------

--
-- Table structure for table `reponsesqcm1`
--

CREATE TABLE `reponsesqcm1` (
  `id` int(11) NOT NULL,
  `idQuestion` int(11) NOT NULL,
  `reponse` text NOT NULL,
  `reponseJuste` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `reponsesqcm1`
--

INSERT INTO `reponsesqcm1` (`id`, `idQuestion`, `reponse`, `reponseJuste`) VALUES
(1, 1, '24  39  63', 0),
(2, 1, '24  39  45', 0),
(3, 1, '39  24  63', 1),
(4, 2, '-10  0', 1),
(5, 2, '0  1', 0),
(6, 2, '10  20', 0),
(7, 3, 'False', 0),
(8, 3, 'Erreur', 0),
(9, 3, 'True', 1),
(10, 4, 'Comparer deux entiers a et b', 1),
(11, 4, 'Addition de deux entiers a et b', 0),
(12, 4, 'Tester si un nombre est un multiple de 2', 0),
(13, 5, 'Inverser le signe d\'un nombre entier', 0),
(14, 5, 'Afficher la valeur absolue d\'un entier', 1),
(15, 5, 'Convertir un nombre entier en un réel négatif', 0),
(16, 6, 'Calculer la somme de trois nombres', 0),
(17, 6, 'Afficher le signe de la somme de deux entiers sans faire l\'addition', 1),
(18, 6, 'Trier par ordre croissant deux entiers', 0),
(19, 7, 'Afficher le minimum de deux nombres', 0),
(20, 7, 'Calculer la multiplication de deux nombres', 0),
(21, 7, 'Permuter deux nombres', 1),
(22, 8, 'A = 12   B = 7   C = 2', 1),
(23, 8, 'A = 7   B = 2   C = 2', 0),
(24, 8, 'A = 2   B = 12   C = 7', 0),
(25, 9, 'Calculer la solution d\'une équation du second degré', 0),
(26, 9, 'Evaluer le signe d\'une equation de premier degré', 0),
(27, 9, 'Calculer la solution d\'une équation du premier degré', 1);

-- --------------------------------------------------------

--
-- Table structure for table `reponsesqcm2`
--

CREATE TABLE `reponsesqcm2` (
  `id` int(11) NOT NULL,
  `idQuestion` int(11) NOT NULL,
  `reponse` text NOT NULL,
  `reponseJuste` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `reponsesqcm2`
--

INSERT INTO `reponsesqcm2` (`id`, `idQuestion`, `reponse`, `reponseJuste`) VALUES
(1, 1, 'Calculer la somme de deux nombres entiers', 0),
(2, 1, 'Evaluer le signe de trois nombres entiers', 0),
(3, 1, 'Calculer la somme et le produit de trois nombres', 1),
(4, 2, 'Calculer la somme d\'un tableau de 6 cases', 0),
(5, 2, 'Afficher les éléments d\'un tableau et calculer leur somme', 1),
(6, 2, 'Calculer la somme et le produit des éléments d\'un tableau', 0),
(7, 3, 'Permuter les éléments d\'un tableau', 0),
(8, 3, 'Trier les éléments d\'un tableau par ordre croissant', 0),
(9, 3, 'Effacer les zéros d\'un tableau', 1),
(10, 4, 'Le programme recherche l\'indice du dernier élément d\'un tableau', 0),
(11, 4, 'Le programme recherche une valeur dans un tableau', 1),
(12, 4, 'Le programme initialise un tableau de cinq éléments', 0),
(13, 5, 'Calculer la surface d\'un cercle', 1),
(14, 5, 'Caluculer le périmètre d\'un cercle', 0),
(15, 5, 'Afficher le diamètre d\'un cercle', 0),
(16, 6, 'Le programme affiche le minimum de quatre nombres', 0),
(17, 6, 'Le programme trie quatre nombres par ordre croissant', 0),
(18, 6, 'Le programme affiche le maximum de quatre nombres saisies', 1),
(19, 7, 'Calculer le produit d\'un nombre N fois', 0),
(20, 7, 'Calculer la factorielle d\'un nombre', 1),
(21, 7, 'Calculer N fois la somme d\'un nombre', 0),
(22, 8, 'Retourner le maximum des éléments d\'un tableau', 1),
(23, 8, 'Trier les éléments d\'un tableau', 0),
(24, 8, 'Retourner le minimum des éléments d\'un tableau', 0),
(25, 9, 'Les deux tableaux sont identiques', 0),
(26, 9, 'Les deux tableaux ne sont pas identiques', 1),
(27, 9, 'Les deux tableaux sont différents', 0);

-- --------------------------------------------------------

--
-- Table structure for table `reponsesqcm3`
--

CREATE TABLE `reponsesqcm3` (
  `id` int(11) NOT NULL,
  `idQuestion` int(11) NOT NULL,
  `reponse` text NOT NULL,
  `reponseJuste` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `reponsesqcm3`
--

INSERT INTO `reponsesqcm3` (`id`, `idQuestion`, `reponse`, `reponseJuste`) VALUES
(1, 1, '*P+2 = 25960391', 0),
(2, 1, '*P+2 = 34', 0),
(3, 1, '*P+2 = 14', 1),
(4, 2, '*(P+2) = 34', 1),
(5, 2, '*(P+2) = 45', 0),
(6, 2, '*(P+2) = 38950054', 0),
(7, 3, '(A+3) contient la valeur 7', 0),
(8, 3, '(A+3) contient l\'adresse de l\'élément A[3]', 1),
(9, 3, '(A+3) contient l\'adresse de l\'élément A[1]', 0),
(10, 4, '1 3 19 24 100', 1),
(11, 4, '748102875', 0),
(12, 4, 'Le programme affiche les adresses de tous les éléments du tableau', 0),
(13, 5, 'Inverser un tableau et l\'afficher', 1),
(14, 5, 'Changer les adresses des éléments d\'un tableau', 0),
(15, 5, 'Afficher les adresses de tous les éléments du tableau en sens inverse', 0),
(16, 6, '0  1  2', 1),
(17, 6, 'Le programme affiche les adresses des coordonnées du point', 0),
(18, 6, '23203002    2450098    36999752', 0),
(19, 7, 'Initialiser un tableau d\'entiers', 0),
(20, 7, 'Initialiser et afficher un tableau de type node', 1),
(21, 7, 'Afficher la somme des éléments d\'un tableau de type node', 0),
(22, 8, 'Initialiser et afficher la variable E de type Etudiant', 1),
(23, 8, 'Afficher le contenu d\'un tableau E de type Etudiant', 0),
(24, 8, 'Afficher le contenu d\'une chaine de caractères', 0),
(25, 9, 'Erreur de compilation', 0),
(26, 9, '10', 1),
(27, 9, '4932501767', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `questionsqcm1`
--
ALTER TABLE `questionsqcm1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questionsqcm2`
--
ALTER TABLE `questionsqcm2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questionsqcm3`
--
ALTER TABLE `questionsqcm3`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reponsesqcm1`
--
ALTER TABLE `reponsesqcm1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reponsesqcm2`
--
ALTER TABLE `reponsesqcm2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reponsesqcm3`
--
ALTER TABLE `reponsesqcm3`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `questionsqcm1`
--
ALTER TABLE `questionsqcm1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `questionsqcm2`
--
ALTER TABLE `questionsqcm2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `questionsqcm3`
--
ALTER TABLE `questionsqcm3`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `reponsesqcm1`
--
ALTER TABLE `reponsesqcm1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `reponsesqcm2`
--
ALTER TABLE `reponsesqcm2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `reponsesqcm3`
--
ALTER TABLE `reponsesqcm3`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
