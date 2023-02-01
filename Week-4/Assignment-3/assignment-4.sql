/*
article table
# with columns for title and content
# a column to store the author of the article
# the author must be one of the users of this system 
*/

/*
 1.Write an SQL statement to select all articles with their author’s email. 
*/
SELECT a.*, b.email 
FROM article AS a 
LEFT OUTER JOIN user AS b 
ON TRIM(a.author) = TRIM(b.name)
; 

/*
 2.Write another SQL statement to select articles from 7th to 12th sorted by id. 
*/
SELECT author, title, content
FROM (
  SELECT a.*, b.id, DENSE_RANK() OVER (ORDER BY b.id) AS ranking  
  FROM article AS a LEFT OUTER JOIN user AS b
  ON TRIM(a.author) = TRIM(b.name)
) AS final
WHERE ranking BETWEEN 7 AND 12
;

/* ============================= */
/* Updated - table: article_ver2 */

/*
 1.
*/
SELECT a.*, b.email 
FROM article_ver2 AS a 
LEFT OUTER JOIN user AS b 
on a.user_id = b.id
;

/*
 2.
*/
SELECT * 
FROM article_ver2
ORDER BY id
LIMIT 6, 6
;
  /* IF SORT BY user_id */
  SELECT * 
  FROM article_ver2
  ORDER BY user_id
  LIMIT 6, 6
  ;
  /* IF SORT (old) article table, BY user.id */
  SELECT a.*, b.id
  FROM article AS a LEFT OUTER JOIN user AS b
  ON TRIM(a.author) = TRIM(b.name)
  ORDER BY b.id
  LIMIT 6, 6
  ;
