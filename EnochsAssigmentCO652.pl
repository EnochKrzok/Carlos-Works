/* A Complex Expert System */

/* INFERENCE ENGINE */

begin:-	

	initialise,	
	collect_joke,
	rule(Number, Explanation),
	reply(Number, Reply),
	write('Expert Jokes'),nl,nl,
	write(Reply),nl,nl,
	write('Justification of Conclusion'),nl,nl,
	write('The rule used was number '),
	write(Number),
	write(': '),
	write(Explanation), nl,
	retractall(joke(_)).
	
begin:-
	write('Sorry cannot help'),nl,nl,
	retractall(joke(_)).

/* USER INTERFACE */

/*ASK THE USER QUESTIONS REGARDING THE JOKES THEY WANT TO HEAR*/

initialise:-
	nl,nl,nl,nl,
	write('******************************************'),nl,
	write('************* JOKES SYSTEM ***************'),nl,
	write('******************************************'),nl,nl,
	write('Please answer the following questions'),nl,
	write('Those jokes where made by ChatGPT 3.5 so if type or topic don\'t match then that is not because of the author'),nl,nl, nl, nl.

collect_joke:-
	question(Quest,JK1,JK2,JK3,JK4,JK5),
	write(Quest),nl,
	get_re(X, JK1, JK2, JK3, JK4, JK5),nl,
	process_joke(X, JK1, JK2, JK3, JK4, JK5),
	fail.

collect_joke.

/* ENSURE USER INPUT IS a, b, c, d or e */

get_re(X, JK1, JK2, JK3, JK4, JK5):-
	repeat,
	write('Please answer using a ('),
	write(JK1),
	write('), b ('),
	write(JK2),
	write('), c ('),
	write(JK3),
	write('), d ('),
	write(JK4),
	write(') or e ('),
	write(JK5),
	write('):'),nl,
	read(Z),nl,
	check(Z),
	X=Z,!.

check('a').
check('b').
check('c').
check('d').
check('e').

/* asserts the joke */

process_joke('a', JK, _, _, _, _) :-
    assert(joke(JK)).
process_joke('b', _, JK, _, _, _) :-
    assert(joke(JK)).
process_joke('c', _, _, JK, _, _) :-
    assert(joke(JK)).
process_joke('d', _, _, _, JK, _) :-
    assert(joke(JK)).
process_joke('e', _, _, _, _, JK) :-
    assert(joke(JK)).

/*KNOWLEDGE BASE*/

question('What type of joke would you like?', pun, one_liner, knock_knock, observational, sad).
question('What topic of joke would you like?', politics, animals, students, teachers, ai).

/* DIAGNOSTIC IF --> THEN RULES */

rule(1,'this is a pun about politics'):-
	joke(pun),joke(politics).
	
rule(2,'this is a pun about animals'):-
	joke(pun),joke(animals).
	
rule(3,'this is a pun about students'):-
	joke(pun),joke(students).
	
rule(4,'this is a pun about teachers'):-
	joke(pun),joke(teachers).
	
rule(5,'this is a pun about AI'):-
	joke(pun),joke(ai).

rule(6,'this is a one-liner about politics'):-
	joke(one_liner),joke(politics).
	
rule(7,'this is a one-liner about animals'):-
	joke(one_liner),joke(animals).
	
rule(8,'this is a one-liner about students'):-
	joke(one_liner),joke(students).
	
rule(9,'this is a one-liner about teachers'):-
	joke(one_liner),joke(teachers).
	
rule(10,'this is a one-liner about AI'):-
	joke(one_liner),joke(ai).
	
rule(11,'this is a knock-knock joke about politics'):-
	joke(knock_knock),joke(politics).
	
rule(12,'this is a knock-knock joke about animals'):-
	joke(knock_knock),joke(animals).
	
rule(13,'this is a knock-knock joke about students'):-
	joke(knock_knock),joke(students).
	
rule(14,'this is a knock-knock joke about teachers'):-
	joke(knock_knock),joke(teachers).
	
rule(15,'this is a knock-knock joke about AI'):-
	joke(knock_knock),joke(ai).

rule(16,'this is a observational joke about politics'):-
	joke(observational),joke(politics).
	
rule(17,'this is a observational joke about animals'):-
	joke(observational),joke(animals).
	
rule(18,'this is a observational joke about students'):-
	joke(observational),joke(students).
	
rule(19,'this is a observational joke about teachers'):-
	joke(observational),joke(teachers).
	
rule(20,'this is a observational joke about AI'):-
	joke(observational),joke(ai).
	
rule(21,'this is a sad joke about politics'):-
	joke(sad),joke(politics).
	
rule(22,'this is a sad joke about animals'):-
	joke(sad),joke(animals).
	
rule(23,'this is a sad joke about students'):-
	joke(sad),joke(students).
	
rule(24,'this is a sad joke about teachers'):-
	joke(sad),joke(teachers).
	
rule(25,'this is a sad joke about AI'):-
	joke(sad),joke(ai).

/* Joke */

reply(1,'Why did the politician bring a ladder to the debate? Because he wanted to take his campaign to the next level!').
reply(2,'Why did the squirrel join a gym? To get a better nut-tural body!').
reply(3,'Why did the university student bring a pencil to class? Because they wanted to draw their own conclusions!').
reply(4,'Why did the teacher wear sunglasses to school? Because his students were so bright!').
reply(5,'Why did the artificial intelligence break up with its algorithmic partner?Because it just couldn\'t find the right formula for love!').

reply(6,'Why did the politician go to therapy? To work on his campaign issues!').
reply(7,'Why did the cat sit on the computer? Because it wanted to keep an eye on the mouse!').
reply(8,'Why did the student bring a pencil to the party? Because they heard it was going to be sketchy!').
reply(9,'Why did the teacher go to space? To improve his classroom atmosphere!').
reply(10,'Why did the AI go to therapy? It had too many deep learning issues!').

reply(11,'Knock, knock. Who\'s there? Vote. Vote who? Vote for me in the upcoming election, and together we\'ll create a punchline-free government!').
reply(12,'Knock, knock. Who\'s there? Cow. Cow who? No silly, cows say "moo"!').
reply(13,'Knock, knock. Who\'s there? Alpaca. Alpaca who? Alpaca the homework, because these students are too busy acing exams!').
reply(14,'Knock, knock. Who\'s there? Class. Class who? Class dismissed! Even knock-knock jokes need a break!').
reply(15,'Knock, knock. Who\'s there? Artificial. Artificial who? Artificial intelligence is here to tell you a joke, but don\'t worry, I promise not to byte!').

reply(16,'Why did the scarecrow become a successful politician? Because he was outstanding in his field of promises!').
reply(17,'Why did the chicken bring a ladder to the bar? Because it heard the drinks were on the house!').
reply(18,'Why did the student bring a pencil to the dinner table? Because he wanted to draw attention to his plate!').
reply(19,'Why did the teacher go to jail? Because she got caught with too many sharp objects – she was dealing in pencils on the side!').
reply(20,'Why did the AI refuse to play hide and seek? Because every time it closed its eyes, it entered sleep mode!').

reply(21,'Why don\'t politicians ever tell secrets? Because they\'re afraid the truth might get elected!').
reply(22,'Why don\'t depressed elephants make good comedians? Because they always have a trunk full of emotional baggage.').
reply(23,'Why did the student bring a mirror to school? Because he wanted to reflect on his grades!').
reply(24,'Why did the teacher go to therapy? Because they had too many "students-who-didn\'t-do-their-homework" issues!').
reply(25,'Why did the AI refuse therapy? It was convinced that its emotional baggage was just a byte too heavy to unload.').

/*END OF JOKE EXPERT SYSTEM*/