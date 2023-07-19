AddCSLuaFile()
DEFINE_BASECLASS("weapon_zm_basemelee")

if CLIENT then
    SWEP.PrintName             = "Improvised/C-bar"
    SWEP.ViewModelFOV          = 65
    SWEP.WeaponSelectIconLetter = "h"
end

SWEP.ViewModel                 = "models/weapons/c_improvised_zm.mdl"
SWEP.WorldModel                = "models/weapons/w_crowbar.mdl"
SWEP.UseHands                  = true

SWEP.Slot                      = 2
SWEP.HoldType                  = "melee"

SWEP.Primary.MinDamage         = GetConVar("zm_weapon_damage_improvised"):GetInt()
SWEP.Primary.MaxDamage         = GetConVar("zm_weapon_damage_improvised"):GetInt()
SWEP.Primary.Force             = SWEP.Primary.Damage
SWEP.Primary.Reach             = 50
SWEP.Primary.HitSound          = "Weapon_Crowbar.Melee_HitWorld"
SWEP.Primary.HitFleshSound     = "Weapon_Crowbar.Melee_Hit"
SWEP.Primary.MissSound         = "Weapon_Crowbar.Single"
SWEP.Primary.Delay             = 1