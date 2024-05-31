SELECT o.surname,
    p.post,
    p.salary
from official o
    JOIN positions p ON o.post_id = p.post_id
WHERE o.department = 4
ORDER BY p.post,
    o.surname;