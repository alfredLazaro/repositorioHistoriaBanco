create DataBase Banco

use Banco

IF EXISTS(SELECT 1 FROM sys.tables WHERE object_id = OBJECT_ID('Usuario'))
BEGIN;
    DROP TABLE [Usuario];
END;
GO

CREATE TABLE [Usuario] (
    [codUsu] INTEGER NOT NULL IDENTITY(311122777, 1),
    [contraUs] VARCHAR(255) NULL,
    [nombUs] VARCHAR(255) NULL,
    [apPat] VARCHAR(255) NULL,
    [apMat] VARCHAR(255) NULL,
    [estaActivo] VARCHAR(255) NULL,
    PRIMARY KEY ([codUsu])
);
GO

INSERT INTO Usuario([contraUs],[nombUs],[apPat],[apMat],[estaActivo]) VALUES('elmundo888','Martha','Cherry','Mccray','no'),('inframundo555','Adrian','Torres','Chen','no'),('orgullo222','Hu','Sawyer','Wood','no'),('candyman333','Madeline','Curry','Dennis','si'),('inframundo555','Tanek','Ford','Lara','si'),('candidato111','Stone','Glenn','Valenzuela','no'),('orgullo222','Jana','Ramirez','Avery','si'),('inframundo555','Kibo','Freeman','Raymond','no'),('comadrejavoladora222','Marsden','Villarreal','Floyd','si'),('comadrejavoladora222','Wallace','Washington','Hill','no');
INSERT INTO Usuario([contraUs],[nombUs],[apPat],[apMat],[estaActivo]) VALUES('orgullo222','Jaden','Allison','Floyd','no'),('candidato111','Idola','Newton','Collins','no'),('elmundo888','Amy','Weber','Riley','no'),('orgullo222','Gillian','Dominguez','Watson','no'),('comadrejavoladora222','Latifah','Banks','Cochran','si'),('candidato111','Signe','Gillespie','Foreman','si'),('candyman333','Garrison','Klein','Dunlap','no'),('inframundo555','Hammett','Garcia','Ryan','si'),('comadrejavoladora222','Hanna','Johnson','Peck','si'),('inframundo555','Chadwick','Spence','Holmes','si');
INSERT INTO Usuario([contraUs],[nombUs],[apPat],[apMat],[estaActivo]) VALUES('elmundo888','September','Durham','Jensen','si'),('inframundo555','Kevyn','Bird','Fletcher','si'),('elmundo888','Winter','Cannon','Gardner','no'),('orgullo222','Ivana','Patrick','Ball','si'),('comadrejavoladora222','Yen','Parsons','Kelley','no'),('candyman333','Ina','Rocha','Warner','no'),('comadrejavoladora222','Eaton','Rosario','Hoover','si'),('inframundo555','Baxter','Mason','Bender','no'),('elmundo888','Thor','Cain','Mathews','no'),('candyman333','Eric','Blackwell','Fisher','no');
INSERT INTO Usuario([contraUs],[nombUs],[apPat],[apMat],[estaActivo]) VALUES('inframundo555','Sage','Jarvis','Newman','no'),('orgullo222','Naomi','Knapp','Clayton','si'),('elmundo888','Clark','Franklin','Richard','si'),('candyman333','Orli','William','Conner','si'),('candyman333','Aspen','Sherman','Reynolds','no'),('elmundo888','Oprah','Emerson','Underwood','no'),('comadrejavoladora222','Cadman','Macias','Kirkland','no'),('orgullo222','Zeus','Noel','Pena','no'),('comadrejavoladora222','Ian','Oneal','Todd','si'),('orgullo222','Carly','Kelley','York','no');
INSERT INTO Usuario([contraUs],[nombUs],[apPat],[apMat],[estaActivo]) VALUES('comadrejavoladora222','Rigel','Moon','Henderson','si'),('elmundo888','George','Weaver','Cooke','si'),('comadrejavoladora222','Charde','Patrick','Whitley','no'),('orgullo222','Preston','Hammond','Bush','si'),('comadrejavoladora222','Martina','Olson','Meadows','no'),('inframundo555','Luke','Horne','Hoffman','no'),('elmundo888','Isaac','Stephens','Savage','no'),('elmundo888','Risa','Golden','Watkins','si'),('orgullo222','Evan','Gilmore','Nixon','no'),('candyman333','Winter','Russo','Mcintosh','si');
INSERT INTO Usuario([contraUs],[nombUs],[apPat],[apMat],[estaActivo]) VALUES('candyman333','Elvis','Evans','Mcpherson','si'),('elmundo888','Fitzgerald','Rogers','Pitts','si'),('inframundo555','Keiko','Boyle','Mckinney','si'),('elmundo888','Maxwell','Best','Boyer','si'),('candyman333','Jackson','Ingram','Waller','si'),('candyman333','Keely','Thomas','Livingston','no'),('candyman333','Marsden','Arnold','Rose','si'),('inframundo555','Sylvia','Ellison','Mcmahon','si'),('candyman333','Patience','Larson','Sanders','si'),('comadrejavoladora222','Daquan','Hammond','Sawyer','no');
INSERT INTO Usuario([contraUs],[nombUs],[apPat],[apMat],[estaActivo]) VALUES('comadrejavoladora222','Linus','Carroll','Odom','si'),('candidato111','Justin','Roach','Conley','no'),('inframundo555','Tanner','Clements','Nicholson','no'),('orgullo222','Knox','Reese','Hobbs','si'),('candyman333','Madison','Walker','Guerra','no'),('orgullo222','Perry','Saunders','Ochoa','no'),('comadrejavoladora222','Nola','Rutledge','Moore','si'),('orgullo222','Haviva','Rhodes','Evans','no'),('elmundo888','Nigel','Randall','David','no'),('inframundo555','Casey','Francis','Guerra','no');
INSERT INTO Usuario([contraUs],[nombUs],[apPat],[apMat],[estaActivo]) VALUES('candidato111','Pascale','Nichols','Deleon','no'),('orgullo222','Elliott','Ray','Flynn','no'),('candidato111','Uriah','Brewer','Mcguire','no'),('elmundo888','Victor','Burt','Wallace','si'),('orgullo222','Charde','Shaffer','Maynard','si'),('comadrejavoladora222','Ivor','Blackwell','Byers','no'),('candidato111','Cade','Dominguez','Nguyen','si'),('candyman333','Alfonso','Herring','Slater','no'),('candyman333','Orlando','Roman','Massey','no'),('candyman333','Nerea','Levine','Combs','si');
INSERT INTO Usuario([contraUs],[nombUs],[apPat],[apMat],[estaActivo]) VALUES('inframundo555','Mariko','Tate','Obrien','si'),('inframundo555','Megan','Giles','Nixon','no'),('candidato111','Kimberley','Acevedo','Myers','si'),('candidato111','Hermione','Bowman','Leach','si'),('candyman333','Kermit','Noble','Madden','no'),('comadrejavoladora222','Hunter','Berger','Shelton','no'),('orgullo222','Chadwick','Gomez','Landry','si'),('inframundo555','Colleen','Mendez','King','no'),('candidato111','Driscoll','Schmidt','Gay','si'),('candyman333','Alfonso','Sheppard','Holden','no');
INSERT INTO Usuario([contraUs],[nombUs],[apPat],[apMat],[estaActivo]) VALUES('candidato111','Rae','Reed','Morrow','si'),('candyman333','Chantale','Byrd','Mcfarland','no'),('inframundo555','Hayley','Patterson','Downs','si'),('comadrejavoladora222','Keely','Salas','Salinas','no'),('comadrejavoladora222','Myles','Aguirre','Torres','no'),('comadrejavoladora222','Courtney','Vance','Finch','no'),('orgullo222','Madeson','Vazquez','Sweeney','si'),('candidato111','Gisela','Hill','West','si'),('orgullo222','Bernard','Grant','Mccullough','no'),('candyman333','Aurelia','Odom','Fitzgerald','si');

select * from Usuario

IF EXISTS(SELECT 1 FROM sys.tables WHERE object_id = OBJECT_ID('Cuenta'))
BEGIN;
    DROP TABLE [Cuenta];
END;
GO

CREATE TABLE [Cuenta] (
    [codUsu] INTEGER NOT NULL IDENTITY(311122777, 1),
    [montoTotal] INTEGER NULL,
    constraint FK_cuenta_cosUsu foreign key(codUsu) references Usuario (codUsu)
);
GO

INSERT INTO Cuenta([montoTotal]) VALUES(5770574),(6797124),(7510421),(1721722),(7777550),(4497616),(8087180),(5481054),(4019970),(3397091);
INSERT INTO Cuenta([montoTotal]) VALUES(9399612),(8744163),(9718882),(8210060),(3895395),(2107446),(1780563),(4206460),(9429363),(7163782);
INSERT INTO Cuenta([montoTotal]) VALUES(7881261),(6934889),(2417165),(9210184),(9617335),(8571809),(9150797),(9772127),(3421425),(9766661);
INSERT INTO Cuenta([montoTotal]) VALUES(6141829),(3062032),(3706747),(8709046),(8237745),(9117624),(6017968),(9456915),(7180367),(1512438);
INSERT INTO Cuenta([montoTotal]) VALUES(4770498),(4477803),(5660313),(2077996),(7786722),(2862615),(3985438),(5469113),(1013874),(5749643);
INSERT INTO Cuenta([montoTotal]) VALUES(6999235),(7685095),(4412520),(2398987),(7679120),(2370254),(2633445),(5856247),(9834950),(2910870);
INSERT INTO Cuenta([montoTotal]) VALUES(7533612),(4545200),(7873828),(5115166),(3532736),(1892624),(4598240),(6915406),(2762357),(3387504);
INSERT INTO Cuenta([montoTotal]) VALUES(2030725),(9077634),(2027137),(9843842),(6354424),(1366251),(4713967),(1944928),(6909529),(3390662);
INSERT INTO Cuenta([montoTotal]) VALUES(8964041),(7107758),(7342471),(2501436),(3030221),(7709099),(8750736),(8901331),(9332509),(7526246);
INSERT INTO Cuenta([montoTotal]) VALUES(6987522),(6550453),(2357756),(5465022),(2360469),(7251898),(1758569),(5307300),(8790987),(9635337);

select * from Cuenta
--tabla de recibos
select * from cuenta where codUsu=311122777

create table Recibo(
	[codUsu] Integer not null,
	[fechAct] char(70),
	[nombUs] char(50),
	[apPat] char(80),
	[apMat] char(80),
	[montoRetirado] Integer ,
	[montoAct] integer
	constraint FK_recibo_cosUsu foreign key(codUsu) references Usuario (codUsu)
);
select * from recibo





---borrdo de tablas
drop table Usuario
