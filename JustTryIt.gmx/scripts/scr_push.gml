///scr_push(speed)

//Load arguments
spd = argument0;

//Push from the left
if place_meeting(x+spd, y, obj_box) //Check for box
{
    var box = instance_place(x+spd, y, obj_box); //Asign the box instance to the variable box
    with (box)
    {
        if keyboard_check(ord('D'))//Check for keyboard pressing right, if other player is not in the way
        {
            x+=obj_player.spd; //Move box
        }
    }
}

//Push from the right
if place_meeting(x-spd, y, obj_box) //Check for box
{
    var box = instance_place(x-spd, y, obj_box); //Asign the box instance to the variable box
    with (box)
    {
        if keyboard_check(ord('A'))//Check for keyboard pressing left, if other player is not in the way
        {
            x-=obj_player.spd; //Move box
        }
    }
}
