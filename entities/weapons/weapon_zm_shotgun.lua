AddCSLuaFile()
DEFINE_BASECLASS("weapon_zm_shotgunbase")

if CLIENT then
    SWEP.PrintName             = "Shotgun"

    SWEP.ViewModelFlip         = false
    SWEP.ViewModelFOV          = 55
    
    SWEP.WeaponSelectIconLetter = "b"
end

SWEP.Author                    = "Mka0207 & Forrest Mark X"

SWEP.Slot                      = 3
SWEP.SlotPos                   = 0

SWEP.ViewModel                 = "models/weapons/c_shotgun_zm.mdl"
SWEP.WorldModel                = Model( "models/weapons/w_shotgun_zm.mdl" )
SWEP.UseHands                  = true

SWEP.HoldType                  = "shotgun"

SWEP.Primary.ClipSize          = 8
SWEP.Primary.DefaultClip       = 8
SWEP.Primary.MinDamage         = GetConVar("zm_weapon_damage_shotgun"):GetInt()
SWEP.Primary.MaxDamage         = GetConVar("zm_weapon_damage_shotgun"):GetInt()
SWEP.Primary.NumShots          = 8
SWEP.Primary.Delay             = 1.2

SWEP.ReloadDelay               = 0.3
SWEP.DoViewPunch               = true

function SWEP:Initialize()
    BaseClass.Initialize(self)
    
    local mins, maxs = self:OBBMins(), self:OBBMaxs()
    mins.x = mins.x * 2
    mins.y = mins.y * 2
    maxs.x = maxs.x * 2
    maxs.y = maxs.y * 2
    
    self:SetCollisionBounds(mins, maxs)
end

function SWEP:GetBulletSpread(cone)
    return VECTOR_CONE_10DEGREES
end

function SWEP:GetViewPunch()
    return Angle(math.Rand(-5, -2), math.Rand(-3.5, 3.5), 0)
end