--[[########################################################
						L7D's XP System
				Copyright ( C ) 2014 ~ 'L7D'
		You have any question? steam friend invite me!
						ID : smhjyh2009
//////////////////////////////////////////////////////////--]]

XPSys = XPSys or {}
XPSys.Config = XPSys.Config or {}
XPSys.Config.SysVersion = "1.0" -- Do not change this!

XPSys.Config.MenuShowConsoleCommand = "XPSys_Show" -- Set menu open console command.

XPSys.Config.UseRewardSystem = false -- You added pointshop?, this config is use reward system.

XPSys.Config.RankRewardTimer = 100 -- Set rank reward timer ( sec )

XPSys.Config.RankNoticeTimer = 150 -- Set rank notice timer ( sec )

XPSys.Config.DataSaveInterval = 150 -- Set data save interval timer ( sec )

XPSys.Config.LogSystem_Enabled = true -- Recommended.

XPSys.Config.XPAntiHackSystem_Enabled = true -- Set AntiHack system status.
XPSys.Config.XPAntiHackSystem_BanTime = 3 -- Set AntiHack system ban time ( min )
XPSys.Config.XPAntiHackSystem_BanReason = "[XP Anti Hack]조작 감지됨." -- Set AntiHack system ban reason.

XPSys.Config.RankReward = {}
XPSys.Config.RankReward[1] = 300 -- 1st reward.
XPSys.Config.RankReward[2] = 100 -- 2st reward.
XPSys.Config.RankReward[3] = 50 -- 3st reward.

XPSys.Config.PermissionGroup = function( pl )
	return pl:IsSuperAdmin()
end

if ( SERVER ) then
	XPSys.XPHook = {}
	XPSys.XPLevel = {}
	XPSys.BlackList = {}

	XPSys.core.XPHookAdd( "PlayerSay", "Say", "", "0.01" )
	XPSys.core.XPHookAdd( "PlayerSpawnProp", "Prop Spawn", "", "0.05" )
	XPSys.core.XPHookAdd( "PlayerSpawnRagdoll", "Ragdoll Spawn", "", "0.08" )
	XPSys.core.XPHookAdd( "PropBreak", "Prop Break", "", "0.03" )

	XPSys.core.XPHookInfoAdd( 1, "Item Buy", "", "0.1" )
	XPSys.core.XPHookInfoAdd( 2, "Item Sell", "", "0.1" )

	XPSys.core.LevelAdd( 0, 1, 5 )
	XPSys.core.LevelAdd( 1, 30, 10 )
	XPSys.core.LevelAdd( 2, 50, 50 )
	XPSys.core.LevelAdd( 3, 80, 100 )
	XPSys.core.LevelAdd( 4, 110, 120 )
	XPSys.core.LevelAdd( 5, 140, 150 )
	XPSys.core.LevelAdd( 6, 180, 180 )
	XPSys.core.LevelAdd( 7, 230, 250 )
	XPSys.core.LevelAdd( 8, 270, 300 )
	XPSys.core.LevelAdd( 9, 290, 500 )
	XPSys.core.LevelAdd( 10, 350, 700 )
	XPSys.core.LevelAdd( 11, 560, 900 )
	XPSys.core.LevelAdd( 12, 800, 1100 )
	XPSys.core.LevelAdd( 13, 1200, 1300 )
	XPSys.core.LevelAdd( 14, 2300, 1700 )
	XPSys.core.LevelAdd( 15, 3000, 2000 )
	XPSys.core.LevelAdd( 16, 4000, 5000 )
	XPSys.core.LevelAdd( 17, 5000, 10000 )
	XPSys.core.LevelAdd( 18, 7000, 15000 )
	XPSys.core.LevelAdd( 19, 9000, 20000 )
	XPSys.core.LevelAdd( 20, 20000, 25000 )
	XPSys.core.LevelAdd( 21, 30000, 30000 )
	XPSys.core.LevelAdd( 22, 40000, 45000 )
	XPSys.core.LevelAdd( 23, 50000, 50000 )
	XPSys.core.LevelAdd( 24, 80000, 80000 )
	XPSys.core.LevelAdd( 25, 150000, 100000 )
	XPSys.core.LevelAdd( 26, 300000, 200000 )
	XPSys.core.LevelAdd( 27, 500000, 300000 )
	XPSys.core.LevelAdd( 28, 800000, 400000 )
	XPSys.core.LevelAdd( 29, 1200000, 500000 )
	XPSys.core.LevelAdd( 30, 1500000, 10000000 )
	
--	XPSys.core.BlacklistAdd( "" )
end


