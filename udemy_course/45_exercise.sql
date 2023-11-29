-- for each comment, list the contents of the comment and url of the photo
--  the comment was added to
select
    contents,
    url
from
    comments
    left join photos on photos.id = comments.photo_id;