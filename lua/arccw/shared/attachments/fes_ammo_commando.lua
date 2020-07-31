att.PrintName = "36rnd 9mm Magazine"
att.Icon = Material("entities/acwatt_fes_ammo_commando.png", "smooth")
att.Description = "36 rounds of 9mm. Lighter and faster."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.AutoStats = true
att.Slot = {"fes_ammo_bullet"}

--att.MagExtender = true
--att.OverrideClipSize = 50

att.ActivateElements = {"fuckbullets"}

att.Model = "models/weapons/arccw/fesiug/c_m1406_magstick_2a.mdl"

--att.Mult_SightTime = 0.9
att.Mult_ReloadTime = 0.9
att.Mult_SpeedMult = 1.1

att.Mult_Damage = 0.6
att.Mult_Range = 0.5
att.Mult_DamageMin = 0.6

att.Mult_RPM = 1.14 -- lo

att.Mult_AccuracyMOA = 2

att.Mult_ShootPitch = 1.2

--att.Mult_Recoil = 0.8


att.Hook_GetCapacity = function(wep, cap)
	return 36
end
--[[
att.Hook_Compatible = function(wep)
    if (wep.RegularClipSize or wep.Primary.ClipSize) == wep.ExtendedClipSize then return false end
end]]