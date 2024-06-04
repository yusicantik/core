SELECT account.name AS name, SUM (transaction.amount)
FROM account
INNER JOIN transaction ON transaction.account_id = account.account_id
WHERE date_part ('MONTH', transaction.transaction_date) = 5
GROUP BY name
