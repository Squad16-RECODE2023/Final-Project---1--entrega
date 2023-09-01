-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE Consultoria (
Id_Consultoria VARCHAR(10) PRIMARY KEY,
Id_Empresa VARCHAR(10)
)

CREATE TABLE Eventos (
Id_Evento VARCHAR(10) PRIMARY KEY,
Tema VARCHAR(10),
Duracao VARCHAR(10)
)

CREATE TABLE Equalizer (
Cnpj VARCHAR(10),
Endereco VARCHAR(10),
Telefone VARCHAR(10),
Nome VARCHAR(10),
Id_Empresa VARCHAR(10) PRIMARY KEY
)

CREATE TABLE Empresas / Parceiras (
id_Empresa VARCHAR(10) PRIMARY KEY,
Nome VARCHAR(10),
Endereco VARCHAR(10),
Id_Funcionário VARCHAR(10),
Telefone VARCHAR(10)
)

CREATE TABLE Funcionários (
Nome VARCHAR(10),
Id_Funcionario VARCHAR(10) PRIMARY KEY,
Endereço VARCHAR(10),
Telefone VARCHAR(10),
id_Empresa VARCHAR(10),
FOREIGN KEY(id_Empresa) REFERENCES Empresas / Parceiras (id_Empresa)
)

CREATE TABLE Equalizer_Empresa (
Id_Empresa VARCHAR(10),
-- Erro: nome do campo duplicado nesta tabela!
id_Empresa VARCHAR(10),
FOREIGN KEY(Id_Empresa) REFERENCES Equalizer (Id_Empresa),
FOREIGN KEY(id_Empresa) REFERENCES Empresas / Parceiras (id_Empresa)
)

CREATE TABLE Consultoria_Eventos (
Id_Consultoria VARCHAR(10),
Id_Evento VARCHAR(10),
FOREIGN KEY(Id_Consultoria) REFERENCES Consultoria (Id_Consultoria),
FOREIGN KEY(Id_Evento) REFERENCES Eventos (Id_Evento)
)

CREATE TABLE Equalizer_Consultoria (
Id_Empresa VARCHAR(10),
Id_Consultoria VARCHAR(10),
FOREIGN KEY(Id_Empresa) REFERENCES Equalizer (Id_Empresa),
FOREIGN KEY(Id_Consultoria) REFERENCES Consultoria (Id_Consultoria)
)

