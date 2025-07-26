CREATE TABLE Clients (
  ID NUMBER PRIMARY KEY,
  Nom VARCHAR2(50),
  Prenom VARCHAR2(50),
  DateNaissance DATE
);

CREATE TABLE Médicaments (
  ID NUMBER PRIMARY KEY,
  Nom VARCHAR2(50),
  Prix NUMBER(10,2),
  Stock NUMBER,
  NecessiteOrdonnance CHAR(1) -- 'O' ou 'N'
);


CREATE TABLE Ventes (
  ID NUMBER PRIMARY KEY,
  ID_Client NUMBER,
  DateVente DATE,
  MontantTotal NUMBER(10,2),
  FOREIGN KEY (ID_Client) REFERENCES Clients(ID)
);

CREATE TABLE Vente_Médicament (
  ID_Vente NUMBER,
  ID_Médicament NUMBER,
  Quantité NUMBER,
  PRIMARY KEY (ID_Vente, ID_Médicament),
  FOREIGN KEY (ID_Vente) REFERENCES Ventes(ID),
  FOREIGN KEY (ID_Médicament) REFERENCES Médicaments(ID)
);
