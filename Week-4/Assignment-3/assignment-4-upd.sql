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