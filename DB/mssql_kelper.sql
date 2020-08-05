
CREATE TABLE helper(
rno int IDENTITY(1,1) PRIMARY KEY NOT NULL, --널값이 들어갈 수 없음
uno int NOT NULL,
daysta date NOT NULL,
dayend date NOT NULL,
rplace int NOT NULL,
moving int,
hospital int,
immigration int,
lno int NOT NULL,
r_intro nvarchar(300)
)

CREATE TABLE helpee(
eno int IDENTITY(1,1) PRIMARY KEY NOT NULL, --널값이 들어갈 수 없음
uno int NOT NULL,
daydate date NOT NULL,
eplace int NOT NULL,
moving int,
hospital int,
immigration int,
lno int NOT NULL,
e_intro nvarchar(300)
)

CREATE TABLE klperuser(
uno int IDENTITY(1,1) PRIMARY KEY NOT NULL, --널값이 들어갈 수 없음
email nvarchar(50) UNIQUE NOT NULL,
pw nvarchar(20) NOT NULL,
uname nvarchar(50) NOT NULL,
gender int NOT NULL,
umoney int NOT NULL,
phone nvarchar(30)
)

CREATE TABLE matching(
mno int IDENTITY(1,1) PRIMARY KEY NOT NULL, --널값이 들어갈 수 없음
seno int NOT NULL,
rcno int NOT NULL,
rno int NOT NULL,
eno int NOT NULL,
mdate date NOT NULL,
mplace int NOT NULL,
mservice int NOT NULL,
lno int NOT NULL,
mstate int NOT NULL
)

CREATE TABLE r_review(
r_vno int IDENTITY(1,1) PRIMARY KEY NOT NULL, --널값이 들어갈 수 없음
rno int NOT NULL,
eno int NOT NULL,
rcomment nvarchar(500) NOT NULL,
rscore int NOT NULL
)

CREATE TABLE e_review(
e_vno int IDENTITY(1,1) PRIMARY KEY NOT NULL, --널값이 들어갈 수 없음
eno int NOT NULL,
rno int NOT NULL,
ecomment nvarchar(500) NOT NULL,
escore int NOT NULL
)

CREATE TABLE helplanguage(
lno int PRIMARY KEY NOT NULL, --널값이 들어갈 수 없음
hlanguage nvarchar(50) NOT NULL
)

CREATE TABLE seoul(
dno int IDENTITY(1,1) PRIMARY KEY NOT NULL, --널값이 들어갈 수 없음
district nvarchar(50) NOT NULL
)

INSERT INTO helplanguage(lno, hlanguage)
VALUES
(1, 'English'),
(2, 'German'),
(3, 'French'),
(4, 'Italian')

INSERT INTO seoul(district)
VALUES
('Gangbuk-gu'),
('Gangdong-gu'),
('Gangnam-gu'),
('Gangseo-gu'),
('Geumcheon-gu'),
('Guro-gu'),
('Gwanak-gu'),
('Gwangjin-gu'),
('Nowon-gu'),
('Dobong-gu'),
('Dongdaemun-gu'),
('Dongjak-gu'),
('Mapo-gu'),
('Seocho-gu'),
('Seodaemun-gu'),
('Seongbuk-gu'),
('Seongdong-gu'),
('Songpa-gu'),
('Yangcheon-gu'),
('Yeongdeungpo-gu'),
('Yongsan-gu'),
('Eunpyeong-gu'),
('Jongno-gu'),
('Jungnang-gu'),
('Jung-gu')

INSERT INTO klperuser(email, pw, uname, gender, umoney, phone)
VALUES
('arav@gmail.com', '1234', 'ARAV', 1, 0, '010-1111-1111'),
('test@gmail.com', '1234', 'DEEPAK', 1, 0, '010-1111-1111'),
('test2@gmail.com', '1234', 'Naco', 1, 0, '010-1111-1111'),
('test3@gmail.com', '1234', 'Crystal', 1, 0, '010-1111-1111'),
('test4@gmail.com', '1234', 'MJJANG', 1, 0, '010-1111-1111')

INSERT INTO helper(uno, daysta, dayend, rplace, moving, hospital, immigration, lno, r_intro)
VALUES
(1, '2020-08-20', '2020-08-22', 4, 1, 0, 0, 2, 'Hi. Im ARAV.'),
(1, '2020-08-30', '2020-09-04', 4, 0, 1, 0, 2, 'Hi. Im ARAV2.'),
(2, '2020-09-11', '2020-09-12', 10, 1, 1, 1, 1, 'DEEPAKKLKK.'),
(2, '2020-08-21', '2020-08-22', 1, 1, 0, 1, 1, 'Hi. Im ARAV.'),
(3, '2020-09-20', '2020-09-22', 2, 1, 1, 1, 3, 'Hi. Im ARAV.'),
(3, '2020-10-20', '2020-10-22', 3, 1, 1, 1, 3, 'Hi. Im ARAV.'),
(3, '2020-11-20', '2020-11-22', 4, 1, 1, 1, 3, 'Hi. Im ARAV.'),
(3, '2020-12-20', '2020-12-22', 5, 0, 0, 1, 4, 'Hi. Im ARAV.'),
(3, '2021-01-20', '2021-08-22', 5, 0, 0, 1, 4, 'Hi. Im ARAV.')

INSERT INTO r_review(rno, eno, rcomment, rscore)
VALUES
(1, 4, '아라브 ㄱㅊㄱㅊ', 4),
(1, 5, '아라브 머하는거야?', 2),
(1, 4, 'what the;;', 1),
(1, 5, 'fuxxxxxxxx', 1),
(2, 4, 'yeeeeeee deepak gut', 5),
(2, 5, 'gooood', 4),
(3, 4, 'naco gud', 3)

INSERT INTO matching(seno, rcno, rno, eno, mdate, mplace, mservice, lno, mstate)
VALUES
(4, 1, 1, 4, '2020-08-21', 4, 1, 2, 1),
(4, 1, 1, 4, '2020-06-21', 4, 1, 2, 2),
(4, 1, 1, 4, '2020-05-21', 4, 1, 2, 3),
(4, 1, 1, 4, '2020-04-21', 4, 1, 2, 4),
(5, 2, 2, 5, '2020-06-21', 4, 2, 1, 4)
