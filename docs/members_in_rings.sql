select *
from experian
where experian.is_member = 'YES'
-- 1,3,5,8
select *
from off_br_1526_rings
where off_br_1526_rings.radiussize = '5'

SELECT *
into members_between_rings_3_and_5
FROM experian
WHERE experian.is_member = 'YES'
AND ST_WITHIN(experian.geom,(SELECT geom from off_br_1526_rings where radiussize = '5'))
and not ST_WITHIN(experian.geom,(SELECT geom from off_br_1526_rings where radiussize = '3'))

select * from members_between_rings_3_and_5

SELECT *
into members_between_rings_1_and_3
FROM experian
WHERE experian.is_member = 'YES'
AND ST_WITHIN(experian.geom,(SELECT geom from off_br_1526_rings where radiussize = '3'))
and not ST_WITHIN(experian.geom,(SELECT geom from off_br_1526_rings where radiussize = '1'))

SELECT *
into members_between_rings_5_and_8
FROM experian
WHERE experian.is_member = 'YES'
AND ST_WITHIN(experian.geom,(SELECT geom from off_br_1526_rings where radiussize = '8'))
and not ST_WITHIN(experian.geom,(SELECT geom from off_br_1526_rings where radiussize = '5'))

SELECT *
into members_outside_ring_8
FROM experian
WHERE experian.is_member = 'YES'
AND not ST_WITHIN(experian.geom,(SELECT geom from off_br_1526_rings where radiussize = '8'))


 as ring_5,
) as ring_3