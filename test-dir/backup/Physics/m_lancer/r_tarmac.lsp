(("(null)"
  CarOptions
  ("(null)"
   MaxSteeringLockRangeMax			0.751
   MaxSteeringLockRangeMin			0.749
   MaxSteeringLockRangeStep			0.010

   FrontRollBarStiffnessMax			50000.0
   FrontRollBarStiffnessMin			0.0
   FrontRollBarStiffnessStep		200.0

   RearRollBarStiffnessMax			50000.0
   RearRollBarStiffnessMin			0.0
   RearRollBarStiffnessStep			200.0

   vecCenterOfGravity				0 -1.380 0.395
   InverseMass						0.000699

   Tq00								185.0
   Tq05								203.0
   Tq10								222.0
   Tq15								257.0
   Tq20								291.0
   Tq25								326.0
   Tq30								351.0
   Tq35								358.0
   Tq40								370.0
   Tq45								366.0
   Tq50								347.0
   Tq55								320.0
   Tq60								291.0
   Tq65								268.0
   Tq70								245.0
   Tq75								223.0
   Tq80								0.0
   Tq85								0.0
   Tq90								0.0
   Tq95								0.0
   )

  DriveOptions
  ("(null)"
   Gears							7

   TyrePerformancePctT_NGP			115
   TyrePerformancePctG_NGP			105
   TyrePerformancePctS_NGP			105
   DriveTrainLoss_NGP				12
   FrontBrakeVelSlope_NGP			0.0027
   RearBrakeVelSlope_NGP			0.0027

   FrontBrakePressureMax			9000000.0
   FrontBrakePressureMin			0.0
   FrontBrakePressureStep			10000.0

   RearBrakePressureMax				9000000.0
   RearBrakePressureMin				0.0
   RearBrakePressureStep			10000.0

   FrontBrake0PistonArea			0.005309
   FrontBrake0RadiusEff				0.149

   RearBrake0PistonArea				0.004549
   RearBrake0RadiusEff				0.126

   CenterDiffTorqueMax				0.000000
   CenterDiffTorqueMin				0.000000
   CenterDiffTorqueStep				0.000000

   FrontDiffTorqueMax				250.000000
   FrontDiffTorqueMin				0.000000
   FrontDiffTorqueStep				10.000000

   RearDiffTorqueMax				250.000000
   RearDiffTorqueMin				0.000000
   RearDiffTorqueStep				10.000000

   GearList00Pinion					0
   GearList00Gear					0
   GearList00TorqueMax				10000.0
   GearList00TorqueMin				-8000.0

   GearList01Pinion					14
   GearList01Gear					-44
   GearList01TorqueMax				10000.0
   GearList01TorqueMin				-8000.0

   GearList02Pinion					0
   GearList02Gear					0
   GearList02TorqueMax				10000.0
   GearList02TorqueMin				-8000.0

   GearList03Pinion					12
   GearList03Gear					39
   GearList03TorqueMax				10000.0
   GearList03TorqueMin				-8000.0

   GearList04Pinion					14
   GearList04Gear					35
   GearList04TorqueMax				10000.0
   GearList04TorqueMin				-8000.0

   GearList05Pinion					16
   GearList05Gear					32
   GearList05TorqueMax				10000.0
   GearList05TorqueMin				-8000.0

   GearList06Pinion					17
   GearList06Gear					28
   GearList06TorqueMax				10000.0
   GearList06TorqueMin				-8000.0

   GearList07Pinion					18
   GearList07Gear					25
   GearList07TorqueMax				10000.0
   GearList07TorqueMin				-8000.0

   GearList08Pinion					0
   GearList08Gear					0
   GearList08TorqueMax				10000.0
   GearList08TorqueMin				-8000.0

   GearList09Pinion					63
   GearList09Gear					65
   GearList09TorqueMax				10000.0
   GearList09TorqueMin				-8000.0

   GearList10Pinion					51
   GearList10Gear					14
   GearList10TorqueMax				10000.0
   GearList10TorqueMin				-8000.0

   GearList11Pinion					52
   GearList11Gear					15
   GearList11TorqueMax				10000.0
   GearList11TorqueMin				-8000.0

   GearList12Pinion					50
   GearList12Gear					16
   GearList12TorqueMax				10000.0
   GearList12TorqueMin				-8000.0

   FinalDriveOptionsMin				9
   FinalDriveOptionsMax				9

   DropGearOptionsMin				10
   DropGearOptionsMax				12

   ; Drive Train Specification
   ; ---------------------------------
   ;
   ; 1 := AWD genuine RBR active diffs
   ; 2 := unused
   ; 3 := FWD genuine RBR active front diff
   ;
   ; ---------------------------------
   ; otherwise encoded as sum of drive train type and differential types:
   ;
   ; drive train types:
   ; 4 := FWD
   ; 5 := RWD
   ; 6 := AWD w/o torque split (50:50)
   ; 7 := AWD with torque split
   ;
   ; differential type:
   ;
   ; differential	multiplier
   ; -------------------------------
   ; CENTER			1*16	 = 16
   ; FRONT			16*16	 = 256
   ; REAR			16*16*16 = 4096
   ;
   ; differential types:
   ; 0 := None
   ; 1 := Active
   ; 2 := Open
   ; 3 := Spool
   ; 4 := Mechanical
   ;
   ; Features_NGP
   ;		= "drive train type"
   ;		+ "center diff type" * "center diff multiplier"
   ;		+ "front diff type"  * "front diff multiplier"
   ;		+ "rear diff type"	 * "rear diff multiplier"
   ;
   ; AWD with locked center, mechanical front, mechanical rear
   ; 6 + 3 * 16 + 4 * 256 + 4 * 4096 = 6 + 48 + 1024 + 16384 = 17462
   ; 
   ; NGP Features
   ; ---------------------------------
   ;
   ; multiplier		16*16*16*16 = 65536
   ;
   ; features
   ; 0 := 2-way/3-way dampers
   ; 1 := 4-way dampers
   ; 2 := progressive bump stops
   ;
   Features_NGP						17462

   CenterDiffMapLockPctMin_NGP		0
   CenterDiffMapLockPctMax_NGP		0

   FrontDiffMapLockPctMin_NGP		0
   FrontDiffMapLockPctMax_NGP		75

   RearDiffMapLockPctMin_NGP		0
   RearDiffMapLockPctMax_NGP		75

   BumpStopStiffnessMin_NGP			50000
   BumpStopStiffnessMax_NGP			500000
   BumpStopStiffnessStep_NGP		5000
   BumpStopDampingMin_NGP			5000
   BumpStopDampingMax_NGP			50000
   BumpStopDampingStep_NGP			500
   )

  ControlOptions
  ("(null)"
   DiffMapLockRangeMax				0.750000
   DiffMapLockRangeMin				0.000000
   DiffMapLockRangeStep				0.050000

   DiffMapSpeedRangeMax				70.000000
   DiffMapSpeedRangeMin				0.000000
   DiffMapSpeedRangeStep			0.55555556

   CenterDiffHandbrakeReleaseRangeMax	1.000000
   CenterDiffHandbrakeReleaseRangeMin	0.000000
   CenterDiffHandbrakeReleaseRangeStep	0.050000

   LeftFootBrakeThresholdRangeMax		0.000000
   LeftFootBrakeThresholdRangeMin		0.000000
   LeftFootBrakeThresholdRangeStep		0.000000
   )

  EngineOptions
  ("(null)"
   IdleRPM_NGP						1200
   MaxTorque_NGP					420
   BrakeCoefficient_NGP				25
   )

  SpringDamperOptionsLF
  ("(null)"
   SpringLengthMax					0.500
   SpringLengthMin					0.010
   SpringLengthStep					0.005

   SpringStiffnessMax				100000.0
   SpringStiffnessMin				15000.0
   SpringStiffnessStep				100.0

   HelperSpringLengthMax			0.300
   HelperSpringLengthMin			0.000
   HelperSpringLengthStep			0.005

   HelperSpringStiffnessMax			100000.0
   HelperSpringStiffnessMin			0.0
   HelperSpringStiffnessStep		100.0

   DampBumpMin						1000.0
   DampBumpMax						10000.0
   DampBumpStep						10.0

   DampReboundMin					1000.0
   DampReboundMax					10000.0
   DampReboundStep					10.0

   DampBumpHiSpeedMin				1000.0
   DampBumpHiSpeedMax				10000.0
   DampBumpHiSpeedStep				10.0

   DampSpeedBrakeMin				0.00
   DampSpeedBrakeMax				1.00
   DampSpeedBrakeStep				0.01
   )
  SpringDamperOptionsRF
  ("(null)"
   SpringLengthMax					0.500
   SpringLengthMin					0.010
   SpringLengthStep					0.005

   SpringStiffnessMax				100000.0
   SpringStiffnessMin				15000.0
   SpringStiffnessStep				100.0

   HelperSpringLengthMax			0.300
   HelperSpringLengthMin			0.000
   HelperSpringLengthStep			0.005

   HelperSpringStiffnessMax			100000.0
   HelperSpringStiffnessMin			0.0
   HelperSpringStiffnessStep		100.0

   DampBumpMin						1000.0
   DampBumpMax						10000.0
   DampBumpStep						10.0

   DampReboundMin					1000.0
   DampReboundMax					10000.0
   DampReboundStep					10.0

   DampBumpHiSpeedMin				1000.0
   DampBumpHiSpeedMax				10000.0
   DampBumpHiSpeedStep				10.0

   DampSpeedBrakeMin				0.00
   DampSpeedBrakeMax				1.00
   DampSpeedBrakeStep				0.01
   )
  SpringDamperOptionsLB
  ("(null)"
   SpringLengthMax					0.500
   SpringLengthMin					0.010
   SpringLengthStep					0.005

   SpringStiffnessMax				100000.0
   SpringStiffnessMin				15000.0
   SpringStiffnessStep				100.0

   HelperSpringLengthMax			0.300
   HelperSpringLengthMin			0.000
   HelperSpringLengthStep			0.005

   HelperSpringStiffnessMax			100000.0
   HelperSpringStiffnessMin			0.0
   HelperSpringStiffnessStep		100.0

   DampBumpMin						1000.0
   DampBumpMax						10000.0
   DampBumpStep						10.0

   DampReboundMin					1000.0
   DampReboundMax					10000.0
   DampReboundStep					10.0

   DampBumpHiSpeedMin				1000.0
   DampBumpHiSpeedMax				10000.0
   DampBumpHiSpeedStep				10.0

   DampSpeedBrakeMin				0.00
   DampSpeedBrakeMax				1.00
   DampSpeedBrakeStep				0.01
   )
  SpringDamperOptionsRB
  ("(null)"
   SpringLengthMax					0.500
   SpringLengthMin					0.010
   SpringLengthStep					0.005

   SpringStiffnessMax				100000.0
   SpringStiffnessMin				15000.0
   SpringStiffnessStep				100.0

   HelperSpringLengthMax			0.300
   HelperSpringLengthMin			0.000
   HelperSpringLengthStep			0.005

   HelperSpringStiffnessMax			100000.0
   HelperSpringStiffnessMin			0.0
   HelperSpringStiffnessStep		100.0

   DampBumpMin						1000.0
   DampBumpMax						10000.0
   DampBumpStep						10.0

   DampReboundMin					1000.0
   DampReboundMax					10000.0
   DampReboundStep					10.0

   DampBumpHiSpeedMin				1000.0
   DampBumpHiSpeedMax				10000.0
   DampBumpHiSpeedStep				10.0

   DampSpeedBrakeMin				0.00
   DampSpeedBrakeMax				1.00
   DampSpeedBrakeStep				0.01
   )
  TyreOptionsLF
  ("(null)"
   PressureMax						350000.0
   PressureMin						150000.0
   PressureStep						1000.0
   )
  TyreOptionsRF
  ("(null)"
   PressureMax						350000.0
   PressureMin						150000.0
   PressureStep						1000.0
   )
  TyreOptionsLB
  ("(null)"
   PressureMax						350000.0
   PressureMin						150000.0
   PressureStep						1000.0
   )
  TyreOptionsRB
  ("(null)"
   PressureMax						350000.0
   PressureMin						150000.0
   PressureStep						1000.0
   )
  WheelOptionsLF
  ("(null)"
   nTopMountPositions				7
   vecTopMount00					+0.586	-2.506	+0.790
   vecTopMount01					+0.584	-2.504	+0.790
   vecTopMount02					+0.582	-2.502	+0.790
   vecTopMount03					+0.580	-2.500	+0.790
   vecTopMount04					+0.578	-2.498	+0.790
   vecTopMount05					+0.576	-2.496	+0.790
   vecTopMount06					+0.574	-2.494	+0.790
   vecTopMount07					+0.572	-2.492	+0.790

   SteeringRodMin					0.450
   SteeringRodMax					0.460
   SteeringRodStep					0.00001

   WheelAxisInclMin					-0.200
   WheelAxisInclMax					+0.000
   WheelAxisInclStep				+0.000175

   PlatformHeightMin				0.015
   PlatformHeightMax				0.050
   PlatformHeightStep				0.001

   WishboneLength					+0.430

   vecJointMount_VF					+0.310	-2.550	+0.185
   vecJointAxis_VF					+0.000	-1.000	+0.000
   vecSteeringMount_VF				+0.270	-2.430	+0.235		; LF
   ;vecSteeringMount_VF				+0.312	-2.430	+0.235		; LF (lock)

   vecStrutRodMount_SF				-0.008	+0.115	+0.064
   vecStrutHubPoint_SF				+0.075	+0.000	+0.110
   vecStrutHubAxis_SF				+1.000	+0.000	+0.000
   StrutDimX						-0.090
   StrutDimZ						+0.465
   WishboneSign						-1.000
   SteeringSign						-1.000

   AntiRollBarId					0
   AntiRollBarSlot					0

   InnerBumpRubberPos				0.160
   OuterBumpRubberPos				0.320
   )
  WheelOptionsRF
  ("(null)"
   nTopMountPositions				7
   vecTopMount00					-0.586	-2.506	+0.790
   vecTopMount01					-0.584	-2.504	+0.790
   vecTopMount02					-0.582	-2.502	+0.790
   vecTopMount03					-0.580	-2.500	+0.790
   vecTopMount04					-0.578	-2.498	+0.790
   vecTopMount05					-0.576	-2.496	+0.790
   vecTopMount06					-0.574	-2.494	+0.790
   vecTopMount07					-0.572	-2.492	+0.790

   SteeringRodMin					0.450
   SteeringRodMax					0.460
   SteeringRodStep					0.00001

   WheelAxisInclMin					-0.200
   WheelAxisInclMax					+0.000
   WheelAxisInclStep				+0.000175

   PlatformHeightMin				0.015
   PlatformHeightMax				0.050
   PlatformHeightStep				0.001

   WishboneLength					+0.430

   vecJointMount_VF					-0.310	-2.550	+0.185
   vecJointAxis_VF					+0.000	-1.000	+0.000
   vecSteeringMount_VF				-0.270	-2.430	+0.235		; RF
   ;vecSteeringMount_VF				-0.228	-2.430	+0.235		; RF (lock)

   vecStrutRodMount_SF				-0.008	-0.115	+0.064
   vecStrutHubPoint_SF				+0.075	+0.000	+0.110
   vecStrutHubAxis_SF				+1.000	+0.000	+0.000
   StrutDimX						-0.090
   StrutDimZ						+0.465
   WishboneSign						+1.000
   SteeringSign						+1.000

   AntiRollBarId					0
   AntiRollBarSlot					1

   InnerBumpRubberPos				0.160
   OuterBumpRubberPos				0.320
   )
  WheelOptionsLB
  ("(null)"
   nTopMountPositions				0
   vecTopMount00					+0.580	+0.000	+0.825

   SteeringRodMin					0.505
   SteeringRodMax					0.515
   SteeringRodStep					0.00005

   WheelAxisInclMin					-0.100
   WheelAxisInclMax					+0.100
   WheelAxisInclStep				+0.000175

   PlatformHeightMin				0.015
   PlatformHeightMax				0.050
   PlatformHeightStep				0.001

   WishboneLength					+0.510

   vecJointMount_VF					+0.230	+0.000	+0.220
   vecJointAxis_VF					+0.000	-1.000	+0.000
   vecSteeringMount_VF				+0.230	+0.150	+0.220

   vecStrutRodMount_SF				+0.000	+0.150	+0.000
   vecStrutHubPoint_SF				+0.065	+0.000	+0.110
   vecStrutHubAxis_SF				+1.000	+0.000	+0.000
   StrutDimX						-0.130
   StrutDimZ						+0.465
   WishboneSign						-1.000
   SteeringSign						-1.000

   AntiRollBarId					1
   AntiRollBarSlot					0

   InnerBumpRubberPos				0.160
   OuterBumpRubberPos				0.320
   )
  WheelOptionsRB
  ("(null)"
   nTopMountPositions				0
   vecTopMount00					-0.580	+0.000	+0.825

   SteeringRodMin					0.505
   SteeringRodMax					0.515
   SteeringRodStep					0.00005

   WheelAxisInclMin					-0.100
   WheelAxisInclMax					+0.100
   WheelAxisInclStep				+0.000175

   PlatformHeightMin				0.015
   PlatformHeightMax				0.050
   PlatformHeightStep				0.001

   WishboneLength					+0.510

   vecJointMount_VF					-0.230	+0.000	+0.220
   vecJointAxis_VF					+0.000	-1.000	+0.000
   vecSteeringMount_VF				-0.230	+0.150	+0.220

   vecStrutRodMount_SF				+0.000	-0.150	+0.000
   vecStrutHubPoint_SF				+0.065	+0.000	+0.110
   vecStrutHubAxis_SF				+1.000	+0.000	+0.000
   StrutDimX						-0.130
   StrutDimZ						+0.465
   WishboneSign						+1.000
   SteeringSign						+1.000

   AntiRollBarId					1
   AntiRollBarSlot					1

   InnerBumpRubberPos				0.160
   OuterBumpRubberPos				0.320
   )
))
