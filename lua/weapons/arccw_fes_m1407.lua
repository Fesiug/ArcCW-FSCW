SWEP.Base = "arccw_base"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - FSCW" -- edit this if you like
SWEP.AdminOnly = false

SWEP.PrintName = "M-14/07"
SWEP.Trivia_Class = "Assault Carbine"
SWEP.Trivia_Desc = ""
SWEP.Trivia_Manufacturer = nil--"Gryphon Arms"
SWEP.Trivia_Calibre = nil--"5.56x45mm NATO"
SWEP.Trivia_Mechanism = nil--"Gas-Operated"
SWEP.Trivia_Country = nil--"USA"
SWEP.Trivia_Year = nil--1994

SWEP.Slot = 2

SWEP.UseHands = true

SWEP.ViewModel = "models/weapons/arccw/fesiug/c_m1406_16.mdl"
SWEP.WorldModel = "models/weapons/arccw/mk4.mdl"
SWEP.ViewModelFOV = 60

SWEP.DefaultBodygroups = "000000"

SWEP.Damage = 29
SWEP.DamageMin = 20 -- damage done at maximum range
SWEP.Range = 110 -- in METRES
SWEP.Penetration = 7
SWEP.DamageType = DMG_BULLET
SWEP.ShootEntity = nil -- entity to fire, if any
SWEP.MuzzleVelocity = 900 -- projectile or phys bullet muzzle velocity
-- IN M/S

SWEP.TracerNum = 1 -- tracer every X
SWEP.TracerCol = Color(255, 25, 25)
SWEP.TracerWidth = 3

SWEP.ChamberSize = 1 -- how many rounds can be chambered.
SWEP.Primary.ClipSize = 30 -- DefaultClip is automatically set.
SWEP.ExtendedClipSize = 60
SWEP.ReducedClipSize = 15

SWEP.Recoil = 1
SWEP.RecoilSide = 0.75
SWEP.RecoilRise = 0.5

SWEP.Delay = 60 / 750 -- 60 / RPM.
SWEP.Num = 1 -- number of shots per trigger pull.
SWEP.Firemodes = {
    {
        Mode = 2,
    },
    {
        Mode = 1,
    },
    {
        Mode = 0
    }
}

SWEP.NPCWeaponType = {"weapon_ar2", "weapon_smg1"}
SWEP.NPCWeight = 150

SWEP.AccuracyMOA = 5 -- accuracy in Minutes of Angle. There are 60 MOA in a degree.
SWEP.HipDispersion = 500 -- inaccuracy added by hip firing.
SWEP.MoveDispersion = 250

SWEP.Primary.Ammo = "smg1" -- what ammo type the gun uses
SWEP.MagID = "stanag" -- the magazine pool this gun draws from

SWEP.ShootVol = 110 -- volume of shoot sound
SWEP.ShootPitch = 90 -- pitch of shoot sound

SWEP.ShootSound = "weapons/fesiug/m1407/m1407.wav"
SWEP.ShootSoundSilenced = "weapons/fesiug/m1407/m1407_sil.wav"
SWEP.DistantShootSound = "weapons/fesiug/m1407/m1407_dist.wav"

SWEP.MuzzleEffect = "muzzleflash_4"
SWEP.ShellModel = "models/shells/shell_556.mdl"
SWEP.ShellPitch = 95
SWEP.ShellScale = 1.5

SWEP.MuzzleEffectAttachment = 1 -- which attachment to put the muzzle on
SWEP.CaseEffectAttachment = 2 -- which attachment to put the case effect on

SWEP.SpeedMult = 0.96
SWEP.SightedSpeedMult = 0.70
SWEP.SightTime = 0.2

SWEP.BulletBones = { -- the bone that represents bullets in gun/mag
    [1] = "Bullet_1",
    [2] = "Bullet_2",
    [3] = "Bullet_3",
}

SWEP.ProceduralRegularFire = false
SWEP.ProceduralIronFire = true

SWEP.CaseBones = {}

SWEP.IronSightStruct = {
    Pos = Vector(-5.018, -4.255, 0.407),
    Ang = Angle(0, 0.1, 0),
    Magnification = 1.1,
    SwitchToSound = "", -- sound that plays when switching to this sight
}

SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "ar2"
SWEP.HoldtypeSights = "rpg"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2

SWEP.ActivePos = Vector(-0.5, 3, 0.5)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.CustomizePos = Vector(10.479, 2, 0)
SWEP.CustomizeAng = Angle(10.2, 39.4, 14.8)

SWEP.HolsterPos = Vector(6, 0, 0)
SWEP.HolsterAng = Angle(-12.036, 30.016, 0)

SWEP.BarrelOffsetSighted = Vector(0, 0, -1)
SWEP.BarrelOffsetHip = Vector(2, 0, -2)



SWEP.BarrelLength = 27

SWEP.AttachmentElements = {
	["noch"] = {
		VMBodygroups = {{ind = 1, bg = 1}},
		--WMBodygroups = {{ind = 2, bg = 1}},
	},
	["stock"] = {
		VMBodygroups = {{ind = 2, bg = 1}},
		--WMBodygroups = {{ind = 2, bg = 1}},
	},
	["stock_m16"] = {
		VMBodygroups = {{ind = 2, bg = 2}},
		--WMBodygroups = {{ind = 2, bg = 1}},
	},
	["nomag"] = {
		VMBodygroups = {{ind = 3, bg = 1}},
		--WMBodygroups = {{ind = 1, bg = 1}},
	},
	["fuckbullets"] = {
		VMBodygroups = {{ind = 4, bg = 1}},
		--WMBodygroups = {{ind = 1, bg = 2}},
	},
	["fuckbulletsharder"] = {
		VMBodygroups = {{ind = 4, bg = 2}},
		--WMBodygroups = {{ind = 1, bg = 2}},
	},
    ["bkrail"] = {
		VMElements = {
				{
					Model = "models/weapons/arccw/atts/backup_rail.mdl",
					Bone = "Weapon_Reciever",
					Offset = {
					pos = Vector(1.5, -3.6, 15),
					ang = Angle(0, 0, 0),
				},
			},
		}
    },	
}

SWEP.ExtraSightDist = 5

SWEP.Hook_SelectReloadAnimation = function(wep, anim)
    if wep:GetCapacity() >= 50 then return anim .. "_mg" end
end

local common_none = Material("entities/acwatt_fes_common_none.png", "smooth")

SWEP.RejectAttachments = {
    ["muzz_hbar"] = true,
    ["muzz_lbar"] = true,
}

SWEP.Attachments = {
    {
        PrintName = "Optic", -- print name
        DefaultAttName = "Carry Handle",
		DefaultAttIcon = Material("entities/acwatt_fes_m1407_carryhandle.png", "smooth"),
        Slot = "optic", -- what kind of attachments can fit here, can be string or table
        Bone = "Weapon_Reciever", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(0, 0, 0), -- offset that the attachment will be relative to the bone
            vang = Angle(90, 0, -90),
            wang = Angle(0, 0, 0)
        },
        SlideAmount = { -- how far this attachment can slide in both directions.
            -- overrides Offset.
            vmin = Vector(0, -5, 0.5),
            vmax = Vector(0, -5, 5),
            wmin = Vector(0, 0, 0),
            wmax = Vector(0, 0, 0),
        },
        InstalledEles = {"noch"},
    },
    {
        PrintName = "Backup Optic", -- print name
        Slot = "optic_lp", -- what kind of attachments can fit here, can be string or table
        Bone = "Weapon_Reciever", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(2, -4.35, 15), -- offset that the attachment will be relative to the bone
            vang = Angle(90, 0, -135),
            wpos = Vector(90, 0, -90),
            wang = Angle(0, 0, 0)
        },
        InstalledEles = {"bkrail"},		
		ExtraSightDist = 10,
        KeepBaseIrons = true,
        DefaultAttName = "None",
		DefaultAttIcon = common_none
    },
    {
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        Slot = "muzzle",
        Bone = "Weapon_Reciever",
        Offset = {
            vpos = Vector(0, -3.6, 21),
            vang = Angle(90, 0, -90),
            wpos = Vector(0, 0, 0),
            wang = Angle(0, 0, 0)
        },
		DefaultAttIcon = common_none
    },
    {
        PrintName = "Underbarrel",
        Slot = {"foregrip", "ubgl", "bipod", "style_pistol"},
        Bone = "Weapon_Reciever",
        Offset = {
            vpos = Vector(10, 0, 0),
            vang = Angle(90, 0, -90),
            wpos = Vector(0, 0, 0),
            wang = Angle(0, 0, 0)
        },
        SlideAmount = {
            vmin = Vector(0, -2.3, 9),
            vmax = Vector(0, -2.3, 15),
            wmin = Vector(0, 0, 0),
            wmax = Vector(0, 0, 0),
        },
        DefaultAttName = "RIS",
		DefaultAttIcon = common_none
    },
    {
        PrintName = "Tactical",
        Slot = "tac",
        Bone = "Weapon_Reciever",
        Offset = {
            vpos = Vector(-1.4, -3.5, 12), -- offset that the attachment will be relative to the bone
            vang = Angle(90, 0, -180),
            wpos = Vector(0, 0, 0),
            wang = Angle(0, 0, 0)
        },
        DefaultAttName = "None",
		DefaultAttIcon = common_none
    },
    {
        PrintName = "Stock",
        Slot = "fes_stock",
        DefaultAttName = "Patriot",
        Bone = "Weapon_Reciever",
		DefaultAttIcon = Material("entities/acwatt_fes_stock_patriot.png", "smooth"),
        Offset = {
            vpos = Vector(0, -2.5385, 5.2657),
            vang = Angle(90, 0, -90),
            wpos = Vector(0, 0, 0),
            wang = Angle(0, 0, 0)
        },
    },
    {
        PrintName = "Fire Control Group",
        Slot = "fcg",
        DefaultAttName = "Automatic",
		DefaultAttIcon = Material("entities/acwatt_fcg_auto.png", "smooth")
    },
    {
        PrintName = "Ammunition",
        Slot = "fes_ammo_bullet",
        DefaultAttName = "30rnd Magazine",
        Bone = "Magazine",
        Offset = {
            vpos = Vector(0, 0, 0),
            vang = Angle(90, 0, -90),
            wpos = Vector(0, 0, 0),
            wang = Angle(0, 0, 0)
        },
        InstalledEles = {"nomag"},
		DefaultAttIcon = Material("entities/acwatt_fes_ammo_stanag.png", "smooth")
    },
    {
        PrintName = "Perk",
        Slot = "perk",
        DefaultAttName = "None",
		DefaultAttIcon = common_none
    },
    {
        PrintName = "Charm",
        Slot = "charm",
        FreeSlot = true,
        Bone = "Weapon_Reciever",
        Offset = {
            vpos = Vector(0.5, -3.4, 6),
            vang = Angle(90, 0, -90),
            wpos = Vector(0, 0, 0),
            wang = Angle(0, 0, 0)
        },
        DefaultAttName = "None"
    },
}

SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
        Time = 30/1
    },
    ["draw"] = {
        Source = "draw",
        Time = 30/30,
        SoundTable = {{s = "weapons/fesiugmw2/foley/wpfoly_m4ben_reload_lift_v1.wav", t = 0}},
        LHIK = false,
        LHIKIn = 0,
        LHIKOut = 1,
    },
    ["ready"] = {
        Source = "ready",
        Time = 97/30,
        SoundTable = {
						{s = "weapons/fesiug/m1407/m1407_raise.wav", 		t = 0},
						{s = "weapons/fesiug/m1407/m1407_reach.wav", 		t = 11/30},
						{s = "weapons/fesiug/m1407/m1407_rattle.wav", 		t = 21/30},
						{s = "weapons/fesiug/m1407/m1407_maggoing.wav", 	t = 30/30},
						{s = "weapons/fesiug/m1407/m1407_magin.wav", 		t = 40/30},
						{s = "weapons/fesiug/m1407/m1407_boltforward.wav", 		t = 56/30},
						{s = "weapons/fesiug/m1407/m1407_boltback.wav", 		t = 67/30},
						{s = "weapons/fesiug/m1407/m1407_rattle.wav", 		t = 74/30},
						{s = "weapons/fesiug/m1407/m1407_reach.wav", 		t = 86/30},
						{s = "weapons/fesiug/m1407/m1407_rattle.wav", 		t = 90/30},
					},
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.8,
    },
    ["fire"] = {
        Source = "fire",
        Time = 9/30,
        ShellEjectAt = 0,
    },
    ["bash"] = {
        Source = "bash",
        Time = 45/50,
    },
    ["reload"] = {
        Source = "reload_tac",
        Time = 108/30 * 0.8,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        SoundTable = {
						{s = "weapons/fesiug/m1407/m1407_raise.wav", 	t = 0},
						{s = "weapons/fesiug/m1407/m1407_magout.wav", 	t = 0.2},
						{s = "weapons/fesiug/m1407/m1407_reach.wav", 	t = 1.1},
						{s = "weapons/fesiug/m1407/m1407_rattle.wav", 	t = 1.2},
						{s = "weapons/fesiug/m1407/m1407_maggoing.wav", 	t = 1.9},
						{s = "weapons/fesiug/m1407/m1407_magin.wav", 		t = 2},
						{s = "weapons/fesiug/m1407/m1407_raise.wav", 	t = 2.35},
					},
        LastClip1OutTime = 1,
        LHIK = true,
        LHIKIn = 0.2,
        LHIKOut = 0.7,
    },
    ["reload_empty"] = {
        Source = "reload_dry",
        Time = 123/30 * 0.8,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        SoundTable = {
						{s = "weapons/fesiug/m1407/m1407_raise.wav", 	t = 0},
						{s = "weapons/fesiug/m1407/m1407_magout.wav", 	t = 0.1},
						{s = "weapons/fesiug/m1407/m1407_reach.wav", 	t = 0.8},
						{s = "weapons/fesiug/m1407/m1407_raise.wav", 	t = 1.1},
						{s = "weapons/fesiug/m1407/m1407_rattle.wav", 	t = 1.2},
						{s = "weapons/fesiug/m1407/m1407_magin.wav", 		t = 1.6},
						{s = "weapons/fesiug/m1407/m1407_magfinish.wav", 	t = 2},
						{s = "weapons/fesiug/m1407/m1407_raise.wav", 	t = 2.7},
					},
        LastClip1OutTime = 0.5,
        LHIK = true,
        LHIKIn = 0.3,
        LHIKOut = 0.7,
    },
    ["reload_mg"] = {
        Source = "reload_tac1",
        Time = 108/30 * 0.8,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        SoundTable = {
						{s = "weapons/fesiug/m1407/m1407_raise.wav", 	t = 0},
						{s = "weapons/fesiug/m1407/m1407_magout.wav", 	t = 0.2},
						{s = "weapons/fesiug/m1407/m1407_reach.wav", 	t = 1.1},
						{s = "weapons/fesiug/m1407/m1407_rattle.wav", 	t = 1.2},
						{s = "weapons/fesiug/m1407/m1407_maggoing.wav", 	t = 1.6},
						{s = "weapons/fesiug/m1407/m1407_magin.wav", 		t = 1.8},
						{s = "weapons/fesiug/m1407/m1407_raise.wav", 	t = 2.35},
					},
        LastClip1OutTime = 1,
        LHIK = true,
        LHIKIn = 0.2,
        LHIKOut = 0.8,
    },
    ["reload_empty_mg"] = {
        Source = "reload_dry1",
        Time = 123/30 * 0.8,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        SoundTable = {
						{s = "weapons/fesiug/m1407/m1407_raise.wav", 	t = 0},
						{s = "weapons/fesiug/m1407/m1407_magout.wav", 	t = 0.1},
						{s = "weapons/fesiug/m1407/m1407_reach.wav", 	t = 0.8},
						{s = "weapons/fesiug/m1407/m1407_raise.wav", 	t = 1.1},
						{s = "weapons/fesiug/m1407/m1407_rattle.wav", 	t = 1.2},
						{s = "weapons/fesiug/m1407/m1407_magin.wav", 		t = 1.6},
						{s = "weapons/fesiug/m1407/m1407_magfinish.wav", 	t = 2},
						{s = "weapons/fesiug/m1407/m1407_raise.wav", 	t = 2.7},
					},
        LastClip1OutTime = 0.5,
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.8,
    },
}

			
--[[ Classic MW2 sounds
	wet
		{s = "weapons/fesiugmw2/foley/wpfoly_mp9_reload_lift_v1.wav", 		t = 0},
		{s = "weapons/fesiugmw2/foley/wpfoly_scar_reload_clipout_v1.wav", 	t = 0.2 * 0.8},
		{s = "weapons/fesiugmw2/foley/wpfoly_p90_pickup_lift_v1.wav", 		t = 0.9},
		{s = "weapons/fesiugmw2/foley/wpfoly_rpd_reload_lift_v1.wav", 		t = 1.4},
		{s = "weapons/fesiugmw2/foley/wpfoly_m4reload_clipin_v10.wav", 		t = 2 * 0.8},
		{s = "weapons/fesiugmw2/foley/wpfoly_scar_reload_chamber_v1.wav", 	t = 2.7 * 0.8},
		{s = "weapons/fesiugmw2/foley/wpfoly_mp5k_reload_lift_v1.wav", 		t = 2.7},

	dry
		{s = "weapons/fesiugmw2/foley/wpfoly_mp9_reload_lift_v1.wav", 		t = 0},
		{s = "weapons/fesiugmw2/foley/wpfoly_m4reload_clipout_v10.wav", 	t = 0.2 * 0.8},
		{s = "weapons/fesiugmw2/foley/wpfoly_p90_pickup_lift_v1.wav", 		t = 1.1},
		{s = "weapons/fesiugmw2/foley/wpfoly_rpd_reload_lift_v1.wav", 		t = 1.6},
		{s = "weapons/fesiugmw2/foley/wpfoly_m4reload_clipin_v10.wav", 		t = 2.4 * 0.8},
		{s = "weapons/fesiugmw2/foley/wpfoly_mp5k_reload_lift_v1.wav", 		t = 2.3	},
]]