--Article Views I
select distinct author_id as id from views v
where v.author_id = v.viewer_id 
order by id asc