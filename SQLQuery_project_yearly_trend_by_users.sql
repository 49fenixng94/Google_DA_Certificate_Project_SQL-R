-- Yearly Trend of Ride Usage by user types in the past 12 months (April 2020 - March 2021)--

SELECT 
db.member_casual AS user_type,
year(db.started_at)as yr,
month(db.started_at) as mth,
count(ride_id) as num_users

FROM bike_share.dbo.[12mth_combined] AS db
group by db.member_casual, year(db.started_at), month(db.started_at)
order by db.member_casual, year(db.started_at), month(db.started_at)

