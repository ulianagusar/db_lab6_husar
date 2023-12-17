-- виклик функції
select is_character_alive('Jon Arryn') as is_alive;
select is_character_alive('Jon Snow') as is_alive;

-- виклик процедури
call getcharactersbyhouse('House Stark');

-- виклик тригера (змінюємо значення, яке призведе до виклику тригера)
update characters set house_name = 'House Stark' where name = 'Ned Stark';