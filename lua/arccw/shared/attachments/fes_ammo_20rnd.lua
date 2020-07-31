att.PrintName = "20rnd Magazine"
att.Icon = Material("entities/acwatt_fes_ammo_20rnd.png", "smooth")
att.Description = "Reduced-capacity magazines. Easier to load and far more reliable."
att.Desc_Pros = {
}
att.Desc_Cons = {
    "- Less ammo",
}
att.AutoStats = true
att.Slot = {"fes_ammo_bullet"}
--att.ActivateElements = {"fuckbulletsharder"}

att.Mult_SightTime = 0.9
att.Mult_ReloadTime = 0.9
att.Mult_SpeedMult = 1.1

att.Model = "models/weapons/arccw/fesiug/c_m1406_mag20_5b.mdl"

att.Hook_GetCapacity = function(wep, cap)
	return 20
end