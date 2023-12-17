--виводить усіх персонажів ,що належать певному дому 
create or replace procedure getcharactersbyhouse(in_house_name varchar(50))
as $$
declare
    character_record record;
begin
    for character_record in (select * from characters where house_name = in_house_name) loop
        raise notice 'Character: %, House: %', character_record.name, character_record.house_name;
    end loop;
end;
$$ language plpgsql;



