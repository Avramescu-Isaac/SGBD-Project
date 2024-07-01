-- creatung sequences
CREATE SEQUENCE jucatori_seq START WITH 1 INCREMENT BY 1 MINVALUE 1 MAXVALUE 1000;
CREATE SEQUENCE personaje_seq START WITH 1 INCREMENT BY 1 MINVALUE 1 MAXVALUE 1000;
CREATE SEQUENCE conturi_seq START WITH 1 INCREMENT BY 1 MINVALUE 1 MAXVALUE 1000;
CREATE SEQUENCE prieteni_seq START WITH 1 INCREMENT BY 1 MINVALUE 1 MAXVALUE 1000;
CREATE SEQUENCE partide_seq START WITH 1 INCREMENT BY 1 MINVALUE 1 MAXVALUE 1000;
CREATE SEQUENCE leaderboard_seq START WITH 1 INCREMENT BY 1 MINVALUE 1 MAXVALUE 1000;
CREATE SEQUENCE modurijoc_seq START WITH 1 INCREMENT BY 1 MINVALUE 1 MAXVALUE 1000;
CREATE SEQUENCE abilitati_seq START WITH 1 INCREMENT BY 1 MINVALUE 1 MAXVALUE 1000;
CREATE SEQUENCE evenimente_seq START WITH 1 INCREMENT BY 1 MINVALUE 1 MAXVALUE 1000;

-- creating tables
CREATE TABLE Jucatori (
    ID_jucator INTEGER PRIMARY KEY,
    NumeJucator VARCHAR(50),
    NivelJucator INTEGER,
    SoldJucator DECIMAL(10, 2)
);---1

CREATE TABLE Conturi (
ID_cont INTEGER PRIMARY KEY,
ID_jucator INTEGER REFERENCES Jucatori(ID_jucator),
    NumeUtilizator VARCHAR(50),
    Parola VARCHAR(50),
    DataCreare DATE
);---2

CREATE TABLE Personaje (
    ID_personaj INTEGER PRIMARY KEY,
    NumePersonaj VARCHAR(50),
    TipPersonaj VARCHAR(50),
    DescrierePersonaj VARCHAR(2000),
    ID_jucator INTEGER REFERENCES Jucatori(ID_jucator)
);---3

CREATE TABLE Abilitati (
    ID_abilitate INTEGER PRIMARY KEY,
    ID_personaj INTEGER REFERENCES Personaje(ID_personaj),
    NumeAbilitate VARCHAR(50)
);---4

CREATE TABLE Prieteni (
    ID_prieteni INTEGER PRIMARY KEY,
    ID_jucator1 INTEGER REFERENCES Jucatori(ID_jucator),
    ID_jucator2 INTEGER REFERENCES Jucatori(ID_jucator)
);---5

CREATE TABLE Jucatori_Prieteni (
    ID_jucatori_prieteni INTEGER PRIMARY KEY,
    ID_jucator1 INTEGER REFERENCES Jucatori(ID_jucator),
    ID_jucator2 INTEGER REFERENCES Jucatori(ID_jucator)
);---6

CREATE TABLE ModuriJoc (
    ID_modjoc INTEGER PRIMARY KEY,
    NumeModJoc VARCHAR2(50),
    DescriereMod VARCHAR2(4000)
);---7

CREATE TABLE Partide (
    ID_partida INTEGER PRIMARY KEY,
    ID_modjoc INTEGER REFERENCES ModuriJoc(ID_modjoc),
    DataPartida DATE,
    ScorJucator1 INTEGER,
    ID_jucator1 INTEGER REFERENCES Jucatori(ID_jucator),
    ScorJucator2 INTEGER,
    ID_jucator2 INTEGER REFERENCES Jucatori(ID_jucator),
    ScorJucator3 INTEGER,
    ID_jucator3 INTEGER REFERENCES Jucatori(ID_jucator), ScorJucator4 INTEGER,
ID_jucator4 INTEGER REFERENCES Jucatori(ID_jucator)
);---8

CREATE TABLE Partide_Jucatori (
    ID_partida INTEGER REFERENCES Partide(ID_partida),
    ID_jucator INTEGER REFERENCES Jucatori(ID_jucator),
    Scor INTEGER,
    PRIMARY KEY (ID_partida, ID_jucator)
);---9

CREATE TABLE Evenimente (
ID_eveniment INTEGER PRIMARY KEY,
NumeEveniment VARCHAR(50)
);---10

CREATE TABLE Evenimente_Jucatori ( 
    ID_eveniment INTEGER REFERENCES Evenimente(ID_eveniment),
    ID_jucator INTEGER REFERENCES Jucatori(ID_jucator),
    PRIMARY KEY (ID_eveniment, ID_jucator)
);---11

CREATE TABLE Leaderboard (
    ID_leaderboard INTEGER PRIMARY KEY,
    ID_jucator INTEGER REFERENCES Jucatori(ID_jucator),
    PozitieLeaderboard INTEGER
);

-- inserting data in table JUCATORI 
INSERT INTO Jucatori (ID_jucator, NumeJucator, NivelJucator, SoldJucator)
VALUES (jucatori_seq.nextval, 'Ion Popescu', 5, 100.00);
INSERT INTO Jucatori (ID_jucator, NumeJucator, NivelJucator, SoldJucator)
VALUES (jucatori_seq.nextval, 'Maria Ionescu', 3, 50.00);
INSERT INTO Jucatori (ID_jucator, NumeJucator, NivelJucator, SoldJucator)
VALUES (jucatori_seq.nextval, 'Mihai Radu', 7, 200.00);
INSERT INTO Jucatori (ID_jucator, NumeJucator, NivelJucator, SoldJucator)
VALUES (jucatori_seq.nextval, 'Ana Petrescu', 4, 75.00);
INSERT INTO Jucatori (ID_jucator, NumeJucator, NivelJucator, SoldJucator)
VALUES (jucatori_seq.nextval, 'Alexandru Andrei', 6, 150.00);
INSERT INTO Jucatori (ID_jucator, NumeJucator, NivelJucator, SoldJucator)
VALUES (jucatori_seq.nextval, 'Andrei Popa', 6, 150.00);
INSERT INTO Jucatori (ID_jucator, NumeJucator, NivelJucator, SoldJucator)
VALUES (jucatori_seq.nextval, 'Maria Avram', 4, 75.00);
INSERT INTO Jucatori (ID_jucator, NumeJucator, NivelJucator, SoldJucator)
VALUES (jucatori_seq.nextval, 'Dragos Iacob', 8, 300.00);
INSERT INTO Jucatori (ID_jucator, NumeJucator, NivelJucator, SoldJucator)
VALUES (jucatori_seq.nextval, 'Isaac Radulescu', 7, 200.00);
INSERT INTO Jucatori (ID_jucator, NumeJucator, NivelJucator, SoldJucator)
VALUES (jucatori_seq.nextval, 'Cristina Petrescu', 5, 100.00);
INSERT INTO Jucatori (ID_jucator, NumeJucator, NivelJucator, SoldJucator)
VALUES (jucatori_seq.nextval, 'Mihai Radu', 7, 200.00);
INSERT INTO Jucatori (ID_jucator, NumeJucator, NivelJucator, SoldJucator)
VALUES (jucatori_seq.nextval, 'Ana Petrescu', 4, 75.00);
INSERT INTO Jucatori (ID_jucator, NumeJucator, NivelJucator, SoldJucator)
VALUES (jucatori_seq.nextval, 'Alexandru Andrei', 6, 150.00);
INSERT INTO Jucatori (ID_jucator, NumeJucator, NivelJucator, SoldJucator)
VALUES (jucatori_seq.nextval, 'Andrei Popa', 6, 150.00);
INSERT INTO Jucatori (ID_jucator, NumeJucator, NivelJucator, SoldJucator)
VALUES (jucatori_seq.nextval, 'Maria Avram', 4, 75.00);
INSERT INTO Jucatori (ID_jucator, NumeJucator, NivelJucator, SoldJucator)
VALUES (jucatori_seq.nextval, 'Dragos Iacob', 8, 300.00);
INSERT INTO Jucatori (ID_jucator, NumeJucator, NivelJucator, SoldJucator)
VALUES (jucatori_seq.nextval, 'Isaac Radulescu', 7, 200.00); 
INSERT INTO Jucatori (ID_jucator, NumeJucator, NivelJucator, SoldJucator)
VALUES (jucatori_seq.nextval, 'Cristina Petrescu', 5, 100.00);

-- inserting data in table PERSONAJE
INSERT INTO Personaje (ID_personaj, NumePersonaj, TipPersonaj, DescrierePersonaj, ID_jucator)
VALUES (personaje_seq.nextval, 'Călărețul', 'Melee', 'Un călăreț priceput cu armură grea și o sabie puternică.', 1);
INSERT INTO Personaje (ID_personaj, NumePersonaj, TipPersonaj, DescrierePersonaj, ID_jucator)
VALUES (personaje_seq.nextval, 'Vrăjitorul', 'Magic', 'Un maestru al artelor magice, aruncând vrăji distructive.', 2);
INSERT INTO Personaje (ID_personaj, NumePersonaj, TipPersonaj, DescrierePersonaj, ID_jucator)
VALUES (personaje_seq.nextval, 'Luptătorul', 'Melee', 'Un luptător experimentat, folosind diverse arme.', 3);
INSERT INTO Personaje (ID_personaj, NumePersonaj, TipPersonaj, DescrierePersonaj, ID_jucator)
VALUES (personaje_seq.nextval, 'Vânătorul', 'Ranged', 'Un expert în vânătoare, folosind arme de distanță.', 4);
INSERT INTO Personaje (ID_personaj, NumePersonaj, TipPersonaj, DescrierePersonaj, ID_jucator)
VALUES (personaje_seq.nextval, 'Fermierul', 'Support', 'Un fermier priceput în vindecarea rănilor.', 5);
INSERT INTO Personaje (ID_personaj, NumePersonaj, TipPersonaj, DescrierePersonaj, ID_jucator)
VALUES (personaje_seq.nextval, 'Asasinul', 'Melee', 'Un maestru al furtului și al atacurilor rapide.', 6);
INSERT INTO Personaje (ID_personaj, NumePersonaj, TipPersonaj, DescrierePersonaj, ID_jucator)
VALUES (personaje_seq.nextval, 'Arcanistul', 'Magic', 'Un căutător de mistere, dezvăluind secrete cu puterile sale magice.', 7);

-- inserting data in table ABILITATI
INSERT INTO Abilitati (ID_abilitate, ID_personaj, NumeAbilitate)
VALUES (abilitati_seq.nextval, 1, 'Atac puternic');
INSERT INTO Abilitati (ID_abilitate, ID_personaj, NumeAbilitate)
VALUES (abilitati_seq.nextval, 1, 'Încăierare');
INSERT INTO Abilitati (ID_abilitate, ID_personaj, NumeAbilitate) 
VALUES (abilitati_seq.nextval, 2, 'Lovitura de fulger');
INSERT INTO Abilitati (ID_abilitate, ID_personaj, NumeAbilitate)
VALUES (abilitati_seq.nextval, 2, 'Blestem');
INSERT INTO Abilitati (ID_abilitate, ID_personaj, NumeAbilitate)
VALUES (abilitati_seq.nextval, 3, 'Taie în viteză');
INSERT INTO Abilitati (ID_abilitate, ID_personaj, NumeAbilitate)
VALUES (abilitati_seq.nextval, 3, 'Apărare impunătoare');
INSERT INTO Abilitati (ID_abilitate, ID_personaj, NumeAbilitate)
VALUES (abilitati_seq.nextval, 4, 'Șarpele mortal');
INSERT INTO Abilitati (ID_abilitate, ID_personaj, NumeAbilitate)
VALUES (abilitati_seq.nextval, 4, 'Săgeata precisă');
INSERT INTO Abilitati (ID_abilitate, ID_personaj, NumeAbilitate)
VALUES (abilitati_seq.nextval, 5, 'Vindecare rapidă');
INSERT INTO Abilitati (ID_abilitate, ID_personaj, NumeAbilitate)
VALUES (abilitati_seq.nextval, 5, 'Recuperare');
INSERT INTO Abilitati (ID_abilitate, ID_personaj, NumeAbilitate)
VALUES (abilitati_seq.nextval, 6, 'Atac furtiv');
INSERT INTO Abilitati (ID_abilitate, ID_personaj, NumeAbilitate)
VALUES (abilitati_seq.nextval, 6, 'Înjunghiere precisă');
INSERT INTO Abilitati (ID_abilitate, ID_personaj, NumeAbilitate)
VALUES (abilitati_seq.nextval, 7, 'Fulger înțepător');
INSERT INTO Abilitati (ID_abilitate, ID_personaj, NumeAbilitate)
VALUES (abilitati_seq.nextval, 7, 'Teleportare');

-- inserting data in table CONTURI
INSERT INTO Conturi (ID_cont, ID_jucator, NumeUtilizator, Parola, DataCreare) 
VALUES (conturi_seq.nextval, 1, 'ionpopescu23', 'parola123', TO_DATE('2022-01-15', 'YYYY-MM-DD'));
INSERT INTO Conturi (ID_cont, ID_jucator, NumeUtilizator, Parola, DataCreare)
VALUES (conturi_seq.nextval, 2, 'mariaionescu87', 'parola456', TO_DATE('2022-03-02', 'YYYY-MM-DD'));
INSERT INTO Conturi (ID_cont, ID_jucator, NumeUtilizator, Parola, DataCreare)
VALUES (conturi_seq.nextval, 3, 'user1', 'password1', TO_DATE('2022-04-10', 'YYYY-MM-DD'));
INSERT INTO Conturi (ID_cont, ID_jucator, NumeUtilizator, Parola, DataCreare)
VALUES (conturi_seq.nextval, 4, 'user2', 'password2', TO_DATE('2022-05-05', 'YYYY-MM-DD'));
INSERT INTO Conturi (ID_cont, ID_jucator, NumeUtilizator, Parola, DataCreare)
VALUES (conturi_seq.nextval, 5, 'user3', 'password3', TO_DATE('2022-06-20', 'YYYY-MM-DD'));
INSERT INTO Conturi (ID_cont, ID_jucator, NumeUtilizator, Parola, DataCreare)
VALUES (conturi_seq.nextval, 6, 'user4', 'password4', TO_DATE('2022-07-18', 'YYYY-MM-DD'));
INSERT INTO Conturi (ID_cont, ID_jucator, NumeUtilizator, Parola, DataCreare)
VALUES (conturi_seq.nextval, 7, 'user5', 'password5', TO_DATE('2022-08-29', 'YYYY-MM-DD'));
INSERT INTO Conturi (ID_cont, ID_jucator, NumeUtilizator, Parola, DataCreare)
VALUES (conturi_seq.nextval, 8, 'user6', 'password6', TO_DATE('2022-09-07', 'YYYY-MM-DD'));
INSERT INTO Conturi (ID_cont, ID_jucator, NumeUtilizator, Parola, DataCreare)
VALUES (conturi_seq.nextval, 9, 'user7', 'password7', TO_DATE('2022-10-12', 'YYYY-MM-DD'));
INSERT INTO Conturi (ID_cont, ID_jucator, NumeUtilizator, Parola, DataCreare)
VALUES (conturi_seq.nextval, 10, 'user8', 'password8', TO_DATE('2022-11-23', 'YYYY-MM-DD'));
INSERT INTO Conturi (ID_cont, ID_jucator, NumeUtilizator, Parola, DataCreare)
VALUES (conturi_seq.nextval, 11, 'user9', 'password9', TO_DATE('2022-12-31', 'YYYY-MM-DD'));
INSERT INTO Conturi (ID_cont, ID_jucator, NumeUtilizator, Parola, DataCreare)
VALUES (conturi_seq.nextval, 12, 'user10', 'password10', TO_DATE('2023-01-09', 'YYYY-MM-DD'));
INSERT INTO Conturi (ID_cont, ID_jucator, NumeUtilizator, Parola, DataCreare)
VALUES (conturi_seq.nextval, 13, 'user11', 'password11', TO_DATE('2023-02-15', 'YYYY-MM-DD'));
INSERT INTO Conturi (ID_cont, ID_jucator, NumeUtilizator, Parola, DataCreare)
VALUES (conturi_seq.nextval, 14, 'user12', 'password12', TO_DATE('2023-03-27', 'YYYY-MM-DD'));
INSERT INTO Conturi (ID_cont, ID_jucator, NumeUtilizator, Parola, DataCreare)
VALUES (conturi_seq.nextval, 15, 'user13', 'password13', TO_DATE('2023-04-08', 'YYYY-MM-DD'));
INSERT INTO Conturi (ID_cont, ID_jucator, NumeUtilizator, Parola, DataCreare)
VALUES (conturi_seq.nextval, 16, 'user14', 'password14', TO_DATE('2023-05-13', 'YYYY-MM-DD'));
INSERT INTO Conturi (ID_cont, ID_jucator, NumeUtilizator, Parola, DataCreare)
VALUES (conturi_seq.nextval, 17, 'user15', 'password15', TO_DATE('2023-06-24', 'YYYY-MM-DD'));
INSERT INTO Conturi (ID_cont, ID_jucator, NumeUtilizator, Parola, DataCreare)
VALUES (conturi_seq.nextval, 18, 'user16', 'password16', TO_DATE('2023-07-02', 'YYYY-MM-DD'));

-- inserting data in table PRIETENI
INSERT INTO Prieteni (ID_Prieteni, ID_jucator1, ID_jucator2)
VALUES (prieteni_seq.nextval, 1, 2);
INSERT INTO Prieteni (ID_Prieteni, ID_jucator1, ID_jucator2)
VALUES (prieteni_seq.nextval, 2, 3);
INSERT INTO Prieteni (ID_Prieteni, ID_jucator1, ID_jucator2)
VALUES (prieteni_seq.nextval, 3, 4);
INSERT INTO Prieteni (ID_Prieteni, ID_jucator1, ID_jucator2)
VALUES (prieteni_seq.nextval, 4, 5);
INSERT INTO Prieteni (ID_Prieteni, ID_jucator1, ID_jucator2)
VALUES (prieteni_seq.nextval, 5, 6);
INSERT INTO Prieteni (ID_Prieteni, ID_jucator1, ID_jucator2)
VALUES (prieteni_seq.nextval, 6, 4);
INSERT INTO Prieteni (ID_Prieteni, ID_jucator1, ID_jucator2)
VALUES (prieteni_seq.nextval, 7, 8);
INSERT INTO Prieteni (ID_Prieteni, ID_jucator1, ID_jucator2)
VALUES (prieteni_seq.nextval, 8, 9);
INSERT INTO Prieteni (ID_Prieteni, ID_jucator1, ID_jucator2)
VALUES (prieteni_seq.nextval, 9, 2);
INSERT INTO Prieteni (ID_Prieteni, ID_jucator1, ID_jucator2)
VALUES (prieteni_seq.nextval, 10, 1);

-- inserting data in table JUCATORI_PRIETENI
INSERT INTO Jucatori_Prieteni (ID_jucatori_prieteni, ID_jucator1, ID_jucator2)
VALUES (prieteni_seq.nextval, 1, 2);
INSERT INTO Jucatori_Prieteni (ID_jucatori_prieteni, ID_jucator1, ID_jucator2)
VALUES (prieteni_seq.nextval, 2, 3);
INSERT INTO Jucatori_Prieteni (ID_jucatori_prieteni, ID_jucator1, ID_jucator2)
VALUES (prieteni_seq.nextval, 3, 4);
INSERT INTO Jucatori_Prieteni (ID_jucatori_prieteni, ID_jucator1, ID_jucator2)
VALUES (prieteni_seq.nextval, 4, 5);
INSERT INTO Jucatori_Prieteni (ID_jucatori_prieteni, ID_jucator1, ID_jucator2)
VALUES (prieteni_seq.nextval, 5, 6);
INSERT INTO Jucatori_Prieteni (ID_jucatori_prieteni, ID_jucator1, ID_jucator2)
VALUES (prieteni_seq.nextval, 6, 4);
INSERT INTO Jucatori_Prieteni (ID_jucatori_prieteni, ID_jucator1, ID_jucator2)
VALUES (prieteni_seq.nextval, 7, 8);
INSERT INTO Jucatori_Prieteni (ID_jucatori_prieteni, ID_jucator1, ID_jucator2)
VALUES (prieteni_seq.nextval, 8, 9);
INSERT INTO Jucatori_Prieteni (ID_jucatori_prieteni, ID_jucator1, ID_jucator2)
VALUES (prieteni_seq.nextval, 9, 2);
INSERT INTO Jucatori_Prieteni (ID_jucatori_prieteni, ID_jucator1, ID_jucator2)
VALUES (prieteni_seq.nextval, 10, 1);

-- inserting data in table MODURIJOC
INSERT INTO ModuriJoc (ID_modjoc, NumeModJoc, DescriereMod)
VALUES (modurijoc_seq.nextval, 'Team Deathmatch', 'Lupta în echipă pentru eliminarea adversarilor.');
INSERT INTO ModuriJoc (ID_modjoc, NumeModJoc, DescriereMod)
VALUES (modurijoc_seq.nextval, 'Domination', 'Cucerirea și menținerea anumitor puncte strategice pe harta.');
INSERT INTO ModuriJoc (ID_modjoc, NumeModJoc, DescriereMod)
VALUES (modurijoc_seq.nextval, 'Escort', 'Escoratul unui obiectiv valoros în siguranță la destinație.');
INSERT INTO ModuriJoc (ID_modjoc, NumeModJoc, DescriereMod)
VALUES (modurijoc_seq.nextval, 'Survival', 'Supraviețuirea împotriva valurilor de inamici într-un mediu ostil.');
INSERT INTO ModuriJoc (ID_modjoc, NumeModJoc, DescriereMod)
VALUES (modurijoc_seq.nextval, 'Capture and Hold', 'Capturarea și menținerea punctelor strategice pe parcursul jocului.');

-- inserting data in table PARTIDE
INSERT INTO Partide (ID_partida, ID_modjoc, DataPartida, ScorJucator1, ID_jucator1, ScorJucator2, ID_jucator2, ScorJucator3, ID_jucator3, ScorJucator4, ID_jucator4)
VALUES (partide_seq.nextval, 1, TO_DATE('2022-05-10', 'YYYY-MM-DD'), 10, 1, 8, 2, NULL, NULL, NULL, NULL);
INSERT INTO Partide (ID_partida, ID_modjoc, DataPartida, ScorJucator1, ID_jucator1, ScorJucator2, ID_jucator2, ScorJucator3, ID_jucator3, ScorJucator4, ID_jucator4)
VALUES (partide_seq.nextval, 4, TO_DATE('2022-06-20', 'YYYY-MM-DD'), 6, 3, 4, 4, 2, 2, 8, 1);
INSERT INTO Partide (ID_partida, ID_modjoc, DataPartida, ScorJucator1, ID_jucator1, ScorJucator2, ID_jucator2, ScorJucator3, ID_jucator3, ScorJucator4, ID_jucator4)
VALUES (partide_seq.nextval, 4, TO_DATE('2022-07-05', 'YYYY-MM-DD'), 12, 5, 10, 6, NULL, NULL, NULL, NULL);
INSERT INTO Partide (ID_partida, ID_modjoc, DataPartida, ScorJucator1, ID_jucator1, ScorJucator2, ID_jucator2, ScorJucator3, ID_jucator3, ScorJucator4, ID_jucator4)
VALUES (partide_seq.nextval, 4, TO_DATE('2022-08-18', 'YYYY-MM-DD'), 8, 7, 6, 8, 4, 9, 2, 10);
INSERT INTO Partide (ID_partida, ID_modjoc, DataPartida, ScorJucator1, ID_jucator1, ScorJucator2, ID_jucator2, ScorJucator3, ID_jucator3, ScorJucator4, ID_jucator4)
VALUES (partide_seq.nextval, 1, TO_DATE('2022-09-10', 'YYYY-MM-DD'), 5, 12, 7, 11, NULL, NULL, NULL, NULL);
INSERT INTO Partide (ID_partida, ID_modjoc, DataPartida, ScorJucator1, ID_jucator1, ScorJucator2, ID_jucator2, ScorJucator3, ID_jucator3, ScorJucator4, ID_jucator4)
VALUES (partide_seq.nextval, 2, TO_DATE('2022-10-25', 'YYYY-MM-DD'), 9, 9, 7, 15, 8, 16, 4, 14);
INSERT INTO Partide (ID_partida, ID_modjoc, DataPartida, ScorJucator1, ID_jucator1, ScorJucator2, ID_jucator2, ScorJucator3, ID_jucator3, ScorJucator4, ID_jucator4)
VALUES (partide_seq.nextval, 2, TO_DATE('2022-11-12', 'YYYY-MM-DD'), 7, 13, 4, 16, NULL, NULL, NULL, NULL);
INSERT INTO Partide (ID_partida, ID_modjoc, DataPartida, ScorJucator1, ID_jucator1, ScorJucator2, ID_jucator2, ScorJucator3, ID_jucator3, ScorJucator4, ID_jucator4)
VALUES (partide_seq.nextval, 2, TO_DATE('2022-12-03', 'YYYY-MM-DD'), 11, 10, 5, 18, 9, 17, 3, 12);
INSERT INTO Partide (ID_partida, ID_modjoc, DataPartida, ScorJucator1, ID_jucator1, ScorJucator2, ID_jucator2, ScorJucator3, ID_jucator3, ScorJucator4, ID_jucator4)
VALUES (partide_seq.nextval, 3, TO_DATE('2023-01-17', 'YYYY-MM-DD'), 8, 14, 9, 15, NULL, NULL, NULL, NULL);
INSERT INTO Partide (ID_partida, ID_modjoc, DataPartida, ScorJucator1, ID_jucator1, ScorJucator2, ID_jucator2, ScorJucator3, ID_jucator3, ScorJucator4, ID_jucator4)
VALUES (partide_seq.nextval, 1, TO_DATE('2022-05-10', 'YYYY-MM-DD'), 10, 1, 8, 2, NULL, NULL, NULL, NULL);
INSERT INTO Partide (ID_partida, ID_modjoc, DataPartida, ScorJucator1, ID_jucator1, ScorJucator2, ID_jucator2, ScorJucator3, ID_jucator3, ScorJucator4, ID_jucator4)
VALUES (partide_seq.nextval, 5, TO_DATE('2022-06-20', 'YYYY-MM-DD'), 6, 3, 4, 4, NULL, NULL, NULL, NULL);
INSERT INTO Partide (ID_partida, ID_modjoc, DataPartida, ScorJucator1, ID_jucator1, ScorJucator2, ID_jucator2, ScorJucator3, ID_jucator3, ScorJucator4, ID_jucator4)
VALUES (partide_seq.nextval, 3, TO_DATE('2022-07-05', 'YYYY-MM-DD'), 12, 5, 10, 6, NULL, NULL, NULL, NULL);

-- inserting data in table PARTIDE_JUCATORI
INSERT INTO Partide_Jucatori (ID_partida, ID_jucator, Scor)
VALUES (1, 2, 8);
INSERT INTO Partide_Jucatori (ID_partida, ID_jucator, Scor)
VALUES (2, 3, 6);
INSERT INTO Partide_Jucatori (ID_partida, ID_jucator, Scor)
VALUES (2, 4, 4);
INSERT INTO Partide_Jucatori (ID_partida, ID_jucator, Scor)
VALUES (3, 5, 10);
INSERT INTO Partide_Jucatori (ID_partida, ID_jucator, Scor)
VALUES (3, 6, 6);
INSERT INTO Partide_Jucatori (ID_partida, ID_jucator, Scor)
VALUES (3, 7, 8);
INSERT INTO Partide_Jucatori (ID_partida, ID_jucator, Scor)
VALUES (3, 8, 1);
INSERT INTO Partide_Jucatori (ID_partida, ID_jucator, Scor)
VALUES (4, 9, 8);
INSERT INTO Partide_Jucatori (ID_partida, ID_jucator, Scor)
VALUES (4, 10, 6);
INSERT INTO Partide_Jucatori (ID_partida, ID_jucator, Scor)
VALUES (4, 11, 4);
INSERT INTO Partide_Jucatori (ID_partida, ID_jucator, Scor)
VALUES (4, 12, 2);
INSERT INTO Partide_Jucatori (ID_partida, ID_jucator, Scor)
VALUES (5, 13, 5);
INSERT INTO Partide_Jucatori (ID_partida, ID_jucator, Scor)
VALUES (5, 14, 7);
INSERT INTO Partide_Jucatori (ID_partida, ID_jucator, Scor)
VALUES (5, 15, 3);
INSERT INTO Partide_Jucatori (ID_partida, ID_jucator, Scor)
VALUES (5, 16, 2);
INSERT INTO Partide_Jucatori (ID_partida, ID_jucator, Scor)
VALUES (6, 9, 9);
INSERT INTO Partide_Jucatori (ID_partida, ID_jucator, Scor)
VALUES (6, 15, 7);
INSERT INTO Partide_Jucatori (ID_partida, ID_jucator, Scor)
VALUES (6, 8, 8);
INSERT INTO Partide_Jucatori (ID_partida, ID_jucator, Scor)
VALUES (6, 16, 4);
INSERT INTO Partide_Jucatori (ID_partida, ID_jucator, Scor)
VALUES (1, 1, 10);
INSERT INTO Partide_Jucatori (ID_partida, ID_jucator, Scor)
VALUES (2, 1, 8);
INSERT INTO Partide_Jucatori (ID_partida, ID_jucator, Scor)
VALUES (2, 2, 2);

-- inserting data in table LEADERBOARD
INSERT INTO Leaderboard (ID_leaderboard, ID_jucator, PozitieLeaderboard)
SELECT leaderboard_seq.nextval, ID_jucator, ROWNUM
FROM (
    SELECT ID_jucator
    FROM Jucatori
    ORDER BY Niveljucator DESC
)
WHERE ROWNUM <= 10;

-- inserting data in table EVENIMENTE
INSERT INTO Evenimente (ID_eveniment, NumeEveniment)
VALUES (evenimente_seq.nextval, 'Turneu de luptă');
INSERT INTO Evenimente (ID_eveniment, NumeEveniment)
VALUES (evenimente_seq.nextval, 'Cursa de mașini');
INSERT INTO Evenimente (ID_eveniment, NumeEveniment)
VALUES (evenimente_seq.nextval, 'Competiție de înot');
INSERT INTO Evenimente (ID_eveniment, NumeEveniment)
VALUES (evenimente_seq.nextval, 'Maraton de alergare');
INSERT INTO Evenimente (ID_eveniment, NumeEveniment)
VALUES (evenimente_seq.nextval, 'Concurs de trivia');
INSERT INTO Evenimente (ID_eveniment, NumeEveniment)
VALUES (evenimente_seq.nextval, 'Turneu de șah');
INSERT INTO Evenimente (ID_eveniment, NumeEveniment)
VALUES (evenimente_seq.nextval, 'Concert în aer liber');
INSERT INTO Evenimente (ID_eveniment, NumeEveniment)
VALUES (evenimente_seq.nextval, 'Expoziție de artă');
INSERT INTO Evenimente (ID_eveniment, NumeEveniment)
VALUES (evenimente_seq.nextval, 'Festival de film');
INSERT INTO Evenimente (ID_eveniment, NumeEveniment)
VALUES (evenimente_seq.nextval, 'Spectacol de magie');

-- inserting data in table EVENIMENTE_JUCATORI
INSERT INTO Evenimente_Jucatori (ID_eveniment, ID_jucator)
VALUES (1, 1);
INSERT INTO Evenimente_Jucatori (ID_eveniment, ID_jucator)
VALUES (1, 2);
INSERT INTO Evenimente_Jucatori (ID_eveniment, ID_jucator)
VALUES (2, 3);
INSERT INTO Evenimente_Jucatori (ID_eveniment, ID_jucator)
VALUES (2, 4);
INSERT INTO Evenimente_Jucatori (ID_eveniment, ID_jucator)
VALUES (3, 1);
INSERT INTO Evenimente_Jucatori (ID_eveniment, ID_jucator)
VALUES (3, 3);
INSERT INTO Evenimente_Jucatori (ID_eveniment, ID_jucator)
VALUES (4, 2);
INSERT INTO Evenimente_Jucatori (ID_eveniment, ID_jucator)
VALUES (4, 4);
INSERT INTO Evenimente_Jucatori (ID_eveniment, ID_jucator)
VALUES (5, 5);
INSERT INTO Evenimente_Jucatori (ID_eveniment, ID_jucator)
VALUES (5, 6);