create or replace function character_update_trigger()
returns trigger as $$
begin
    raise notice 'Character % has been updated', new.name;
    return new;
end;
$$ language plpgsql;

create trigger character_update
after update on characters
for each row
execute function character_update_trigger();

