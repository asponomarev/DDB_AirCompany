-- 1 Из какой страны каждый пассажир?
select p.psn_first_name, p.psn_last_name, c.cn_name from passengers p, countries c where p.psn_country = c.cn_code;

-- 2 Количество пассажиров каждого пола
select psn_gender, count(*) cnt from passengers group by psn_gender;

-- 3 Пассажиры, использовавшие паспорт для покупки билета и родившиеся после 1989 года
select psn_last_name from passengers where psn_doctype = 'passport' and psn_birthdate > '1990-01-01' order by psn_last_name desc;

-- 4 Количество пассажиров, использующих идентификационные карты
select cnt from (select psn_doctype, count(*) cnt from passengers where psn_doctype = 'identity card' group by psn_doctype);

-- 5 Пассажиры, у которых количество  бонусных миль выше среднего
select psn_id, psn_email from passengers where psn_bonus_miles > (select avg(psn_bonus_miles) from passengers);
