{ALGRORITHME LE JEU DE L'OIE
BUT: Crée le jeu de l'oie
PRINCIPE: demandez les jets de dès à l'utilisateur fois que ceci est fait on les aditionne de manière à faire avancer le joueur sur les cases, on ajoute des conditions pour
les cas comme: tomber sur la case 58 ou une oie, ou encore dépasser 68.
ENTREE:Lancé de deux dès 6 faces
SORTIE:Vous avez gagné !
VAR D1,D2,Dtotal,position:ENTIER
	
	DEBUT
		position<-0
		ECRIRE("bienenue sur le jeu de l'oie")
		REPETER
			ECRIRE"Indiquez le chiffre de votre premier dès"
			LIRE D1
			ECRIRE"Iniquez le chiffre de votre second lancer"
			LIRE D2
			Dtotal<-D1+D2
			ECRIRE"votre premier lancer est",D1,"votre second lancer est",D2,"le total de vos deux lancer est",Dtotal
			position<-position+Dtotal
			ECRIRE"votre position est",position
				SI (position>66) ALORS
					position<-66-(position-66)
					ECRIRE"vous avez depasser la casse 66 reculer sur la case:",position
				SINON SI (position=58) ALORS
					position<-0
					ECRIRE"vous êtes sur la tête de mort retourner sur la case",position
				SINON SI ((position MOD 9=0) and (position <>63))
					position<-position+Dtotal
					ECRIRE"vous etes sur une oie, vous doublez votre chiffre, votre position est donc:",position
				FIN SI
		JUSQUA (position=66)
		ECRIRE "vous avez gagne"
	FIN



		}


PROGRAM Jeu_de_l_oie;
USES crt;
var D1,D2,Dtotal,position:integer;//D1 et D2 représente les deux les deux lancer de dés
	entrer1,entrer2:char;
begin
	clrscr;
	Randomize;
	position:=0;
	writeln('bienvenu sur le jeu de l''oie');
	 {Version1 :
		repeat
		writeln('entrer votre premier des')
		readln(D1)
		writeln('entrer votre second des')
		readln(D2)}
	 repeat
		writeln('Appuyer sur entrer pour lancer le premier des');
		entrer1:=readkey;
			if entrer1=#13 then
				begin
				D1:=random(6)+1;//le random va de 0 à 5 en ajoutant +1 on va donc de 1 à 6
				writeln('Votre premier lancer de des est:',D1);
				end;
		writeln('');
		writeln('Appuyer sur entrer pour lancer le second des');
		entrer2:=readkey;
			if entrer2=#13 Then
				begin
				D2:=random(6)+1;
				writeln('Votre second lancer de des est:',D2);
				end;
				while (D1<1) and (D1>6) and (D2<1) and (D2>6) DO
				begin
				D1:=random(6)+1;
				D2:=random(6)+1;
				end;
		begin
		writeln('');
		Dtotal:=D1+D2;
		writeln('Le total de vos deux des est:',Dtotal);
		writeln('');
		position:=position+Dtotal;
		writeln('vous etes sur la case : ',position);
		writeln('');
				if (position>66) Then
					begin
					position:=66-(position-66);
					writeln('vous depasser la case 66 reculer sur la case : ',position);
					writeln('');
					end				

					else if (position=58) Then
					begin
					writeln('vous êtes sur la tête de mort ! Retournez au debut');
					position:=0;
					writeln('vous êtes sur la case: ',position)
					end
				else if ((position MOD 9=0) and (position<>63)) then
				begin
				writeln('votre position est: ',position);
				writeln('vous etes sur une oie, vous doublez votre jet');
				position:=position+Dtotal;
				writeln('vous etes sur la case : ',position);
				end;

end;
	until position=66;
	writeln('Vous avez gagne !');
	readkey;

end.
