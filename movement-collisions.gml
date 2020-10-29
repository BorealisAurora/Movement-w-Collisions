//--CREATE EVENT--
movespeed = 4;



//--STEP EVENT--
///Main

//Create variables
var hspd = 0;
var vspd = 0;
var key_left = keyboard_check(vk_left) || keyboard_check(ord('A'));  //The "||" represents "or"
var key_left = keyboard_check(vk_right) || keyboard_check(ord('D'));
var key_up = keyboard_check(vk_up) || keyboard_check(ord('W'));
var key_down = keyboard_check(vk_down) || keyboard_check(ord('S'));

//Controls
if (key_left)
{
    hspd -= movespeed;  //Move by whatever the value of "movespeed" is set to in the CREATE event
}

if (key_right)
{
    hspd += movespeed;  
}

if (key_up)
{
    vspd -= movespeed;  
}

if (key_down)
{
    hspd += movespeed;  
}

//Collisions
//If normal movement gives collision, move 1 pixel at a time until colliding
//Horizontal Collision
if (place_meeting(x+hspd,y,obj_wall)
{
  while (!place_meeting(x+sign(hspd),y,obj_wall))
  {
    x += sign(hspd);
  }
}
else
{
    x += hspd;
}

//Vertical Collision
if (place_meeting(x,y+vspd,obj_wall))
{
   while (!place_meeting(x,y+sign(vspd),obj_wall))
   {
    y += sign(vspd);
   }
}
else
{
    y += vspd;
}
