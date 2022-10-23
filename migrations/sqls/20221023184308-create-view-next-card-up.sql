CREATE VIEW LEARN.NEXT_CARD AS 
	SELECT *
	FROM learn.card
	WHERE review_after <= now()
	ORDER BY seq, review_after,
ID; 