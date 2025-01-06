
-- Tohtarov Hosilbek Fn 28 5 oy 1 dasr 

--------------------------------------------------------

-- 1. foydalanuvchilar jadvallari


DROP TABLE IF EXISTS jadvalar;

CREATE TABLE jadvalar(
	user_id SERIAL PRIMARY KEY,
	ism VARCHAR(30) UNIQUE,
	yosh INTEGER ,
	manzil VARCHAR(50)
);

select * from jadvalar;

INSERT INTO jadvalar(ism , yosh , manzil) values
('Hosilbek' , 22 , 'Andijon'),
('Asilbek' , 18 , 'Fargona'),
('Habibullo' , 21 , 'Andijon');

--------------------------------------------------------

-- 2. mahsulotlar jadvallari

DROP TABLE IF EXISTS jadvlar2;

CREATE TABLE IF NOT EXISTS jadvlar2(
	user_id SERIAL NOT NULL UNIQUE,
	nom VARCHAR(25) UNIQUE,
	narx INTEGER ,
	tavsif VARCHAR(50)
);

INSERT INTO jadvlar2(nom , narx , tavsif) values
('Sabzi' , 5600 , '1 chi tafsif'),
('Piyoz' , 6000 , '2 chi tafsif'),
('Sholgom' , 7000 , '3 chi tafsif');

select * from jadvlar2;


--------------------------------------------------------

-- 3. buyurtmalar jadvallari


DROP TABLE IF EXISTS jadvlar3;

CREATE TABLE IF NOT EXISTS jadvlar3(
	user_id SERIAL NOT NULL UNIQUE,
	foydalanuvchi VARCHAR(35),
	mahsulot VARCHAR(50),
	miqdor INTEGER 
);

INSERT INTO jadvlar3(foydalanuvchi , mahsulot , miqdor) values
('Hosilbek' , 'buyutma1' , 7000),
('Sobir' , 'buyutma2' , 8000),
('Temur' , 'buyutma3' , 10000);


select * from jadvlar3;


--------------------------------------------------------

-- 4. xodimlar jadvallari




DROP TABLE IF EXISTS jadvalar4;

CREATE TABLE IF NOT EXISTS jadvalar4(
	user_id SERIAL PRIMARY KEY,
	ism VARCHAR(30) UNIQUE,
	lavozimi VARCHAR(50),
	yillik_ish_haqi INTEGER
);


select * from jadvalar4;

INSERT INTO jadvalar4(ism , lavozimi , yillik_ish_haqi) values
('Hosilbek' , 'Becend dasturchi' , 5000000),
('Asilbek' , 'Fulstek dasturchi' , 10000000),
('Habibullo' ,  'Fronted dasturchi' , 8000000);



--------------------------------------------------------

-- 5. yetkazib_beruvchilar jadvallari



DROP TABLE IF EXISTS jadvalar5;

CREATE TABLE jadvalar5(
	user_id SERIAL PRIMARY KEY,
	kompaniya_nomi VARCHAR(30) UNIQUE,
	telefon_raqam VARCHAR(18),
	manzil VARCHAR(30)
	
);


select * from jadvalar5;

INSERT INTO jadvalar5(kompaniya_nomi , telefon_raqam , manzil) values
('UzMotors' , '+998940010102' , 'Andijon'),
('AvoMotor' , '+998940010818' , 'Namangan'),
('EcoMotor' , '+998940012229' , 'Fargona');
























