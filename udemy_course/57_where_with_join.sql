select
    photos.user_id,
    comments.user_id
from
    comments
    inner join photos on comments.photo_id = photos.id
    and comments.user_id = photos.user_id;