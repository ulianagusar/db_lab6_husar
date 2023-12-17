--функція перевіряє чи помер персонаж

create or replace function is_character_alive(character_name varchar(50))
returns boolean
as $$
declare
    alive boolean;
begin
    select count(*) > 0
    into alive
    from characters
    where name = character_name
        and name not in (
            select killed_name from deaths
        );

    return alive;
end;
$$ language plpgsql;



