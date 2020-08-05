CREATE VIEW helper_ranking_view AS
SELECT u.uno, u.uname, CONVERT(decimal(2,1), ROUND(AVG(r.rscore), 1)) AS avg, count(r.rno) AS cnt
FROM r_review AS r
JOIN klperuser AS u ON u.uno = r.rno
GROUP BY u.uno, u.uname

CREATE VIEW helpee_ranking_view AS
SELECT u.uno, u.uname, CONVERT(decimal(2,1), ROUND(AVG(e.escore), 1)) AS avg, count(e.eno) AS cnt
FROM e_review AS e
JOIN klperuser AS u ON u.uno = e.eno
GROUP BY u.uno, u.uname

CREATE VIEW helper_view AS
SELECT h.rno, h.daysta, h.dayend, h.moving, h.hospital, h.immigration, h.r_intro, u.uno, u.uname, s.dno, s.district, l.lno, l.hlanguage, ISNULL(rr.avg, 0) AS avg, rr.cnt 
FROM helper AS h JOIN klperuser AS u ON h.uno=u.uno
JOIN helplanguage AS l ON h.lno=l.lno
JOIN seoul AS s ON s.dno=h.rplace
LEFT JOIN helper_ranking_view AS rr ON rr.uno=h.uno

CREATE VIEW helpee_view
AS
SELECT h.eno, h.daydate, h.moving, h.hospital, h.immigration, h.e_intro, u.uno, u.uname, s.dno, s.district, l.lno, l.hlanguage, ISNULL(er.avg, 0) AS avg, er.cnt 
FROM helpee AS h 
JOIN klperuser AS u ON h.uno=u.uno 
JOIN helplanguage AS l ON h.lno=l.lno 
JOIN seoul AS s ON s.dno=h.eplace 
LEFT JOIN helpee_ranking_view AS er ON er.uno = h.uno

CREATE VIEW matching_view AS
SELECT m.mno, m.seno, m.rcno, m.rno, m.eno, m.mdate, m.mplace, m.mservice, m.mstate, u1.uname AS sename, u2.uname AS rcname, u3.uname AS rname, u4.uname AS ename, d.district
FROM matching AS m
LEFT JOIN klperuser AS u1 ON u1.uno = m.seno
LEFT JOIN klperuser AS u2 ON u2.uno = m.rcno
LEFT JOIN klperuser AS u3 ON u3.uno = m.rno
LEFT JOIN klperuser AS u4 ON u4.uno = m.eno
JOIN seoul AS d ON d.dno = m.mplace