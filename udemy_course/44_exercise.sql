-- for each comment, show the contents of comment and uesrname of user who wrote it
select
    comments.contents,
    users.username
from
    comments
    left join users on users.id = comments.user_id;