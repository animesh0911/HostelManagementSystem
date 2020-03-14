delimiter &
create trigger delete_student
before delete on student
for each row
begin
    delete from leave2 where student_id=old.student_id;
    delete from attendance where student_id=old.student_id;
    delete from payment where student_id=old.student_id;
    delete from student_mobile where student_id=old.student_id;
    delete from student_arrives_late where student_id=old.student_id;
    delete from gaurdian where student_id=old.student_id;
    if((select room_availability from rooms where room_no=old.room_no and hostel_id=old.hostel_id)<(select room_capacity from rooms where room_no=old.room_no and hostel_id=old.hostel_id))then
    update rooms set room_availability=room_availability+1 where room_no=old.room_no and hostel_id=old.hostel_id;
    end if;
end;