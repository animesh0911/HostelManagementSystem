delimiter &
create trigger add_student
before insert on student
for each row
begin
    if((select room_no from rooms where room_no=new.room_no and hostel_id=new.hostel_id)is null) then
        if(new.room_no=101 OR new.room_no=102 OR new.room_no=103)then
            insert into rooms values(new.room_no,'Un-Furnished',3,2,new.hostel_id);
        else
            insert into rooms values(new.room_no,'Furnished',3,2,new.hostel_id);
        end if;
    else
        update rooms set room_availability=room_availability-1 where room_no=new.room_no and hostel_id=new.hostel_id;
    end if;
end
delimiter ;