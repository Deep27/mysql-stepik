use billing_simple;

SET SQL_SAFE_UPDATES = 0;

select * from billing;
select payer_email, sum from billing;
select * from billing WHERE sum > 900;

select * from billing WHERE sum>900 AND currency='CHF';

select * from billing WHERE sum>900 AND currency IN ('CHF', 'GBP');

select * from billing WHERE sum>900 AND currency NOT IN ('CHF', 'GBP');

-- INSERT INTO billing VALUES(
-- 	'pendalf@mail.com',
--     'terminator@mail.com',
--     '500.00', 'BTC',
--     '2019-03-16', 'Don\'t kill Conor.'
-- );

-- INSERT INTO billing(payer_email, recipient_email, sum, currency, billing_date)
-- 	VALUES('pendalf@mail.com', 'terminator@mail.com', '1.00', 'BTC', '2019-03-16');

UPDATE billing SET currency='FC' WHERE payer_email='pendalf@mail.com';
UPDATE billing SET payer_email='pendalf@mail.com' WHERE payer_email='alex@mail.com';
DELETE FROM billing
	WHERE NULLIF(payer_email, '') IS NULL
    OR NULLIF(recipient_email, '') IS NULL
    OR comment IS NULL;
select * from billing WHERE payer_email='pendalf@mail.com';

