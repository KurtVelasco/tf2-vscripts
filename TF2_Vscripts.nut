
function helloworld()
{
  printl("Hello World")
   local ply = Entities.FindByClassname(null, "player")   
      for (local i = 1; i <= Constants.Server.MAX_PLAYERS; i++)
      {
         local player = PlayerInstanceFromIndex(i)
         if (player == null) continue       
         printl(player)
      }
   ply.AddCondEx(57,2.0,null)
}
function health_button()
{
   printl("Health Restored")
   local ply = Entities.FindByClassname(null, "player")   
   local HealthCurrent = ply.GetHealth()
   local HealthMax = ply.GetMaxHealth()
   printl(HealthCurrent - HealthMax + " Has Been Restored")
   
   ply.SetHealth(HealthMax)
   
}
function ammo_button()
{
   printl("Ammo Restored")
   local ply = Entities.FindByClassname(null, "player")   
}
