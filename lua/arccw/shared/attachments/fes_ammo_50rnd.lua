att.PrintName = "50rnd Drum"
att.Icon = Material("entities/acwatt_fes_ammo_50rnd.png", "smooth")
att.Description = "A 50 round drum magazine will keep you shooting longer, but slow down reloading and add weight."
att.Desc_Pros = {
    "+ More ammo",
}
att.Desc_Cons = {
}
att.AutoStats = true
att.Slot = {"fes_ammo_bullet"}

--att.MagExtender = true
--att.OverrideClipSize = 50

att.Model = "models/weapons/arccw/fesiug/c_m1406_magdrum_1.mdl"

att.Mult_SightTime = 1.2
att.Mult_ReloadTime = 1.2
att.Mult_SpeedMult = 0.8
att.Mult_HipDispersion = 1.2


att.Hook_GetCapacity = function(wep, cap)
	return 50
end
--[[
att.Hook_Compatible = function(wep)
    if (wep.RegularClipSize or wep.Primary.ClipSize) == wep.ExtendedClipSize then return false end
end]]