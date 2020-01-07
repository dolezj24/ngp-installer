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

   vecCenterOfGravity				0 -1.240 0.310
   InverseMass						0.000719

   Tq00								195.0
   Tq05								215.0
   Tq10								234.0
   Tq15								271.0
   Tq20								308.0
   Tq25								345.0
   Tq30								372.0
   Tq35								378.0
   Tq40								384.0
   Tq45								390.0
   Tq50								392.0
   Tq55								392.0
   Tq60								392.0
   Tq65								360.0
   Tq70								330.0
   Tq75								300.0
   Tq80								277.0
   Tq85								256.0
   Tq90								0.0
   Tq95								0.0
   )

  DriveOptions
  ("(null)"
   Gears							8

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

   FrontBrake0PistonArea			0.005039
   FrontBrake0RadiusEff				0.159

   RearBrake0PistonArea				0.005039
   RearBrake0RadiusEff				0.152

   CenterDiffTorqueMax				6000.000000
   CenterDiffTorqueMin				0.000000
   CenterDiffTorqueStep				10.000000

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

   GearList01Pinion					12
   GearList01Gear					-43
   GearList01TorqueMax				10000.0
   GearList01TorqueMin				-8000.0

   GearList02Pinion					0
   GearList02Gear					0
   GearList02TorqueMax				10000.0
   GearList02TorqueMin				-8000.0

   GearList03Pinion					12
   GearList03Gear					36
   GearList03TorqueMax				10000.0
   GearList03TorqueMin				-8000.0

   GearList04Pinion					13
   GearList04Gear					31
   GearList04TorqueMax				10000.0
   GearList04TorqueMin				-8000.0

   GearList05Pinion					14
   GearList05Gear					27
   GearList05TorqueMax				10000.0
   GearList05TorqueMin				-8000.0

   GearList06Pinion					19
   GearList06Gear					30
   GearList06TorqueMax				10000.0
   GearList06TorqueMin				-8000.0

   GearList07Pinion					22
   GearList07Gear					29
   GearList07TorqueMax				10000.0
   GearList07TorqueMin				-8000.0

   GearList08Pinion					25
   GearList08Gear					28
   GearList08TorqueMax				10000.0
   GearList08TorqueMin				-8000.0

   GearList09Pinion					63
   GearList09Gear					64
   GearList09TorqueMax				10000.0
   GearList09TorqueMin				-8000.0

   GearList10Pinion					39
   GearList10Gear					8
   GearList10TorqueMax				10000.0
   GearList10TorqueMin				-8000.0

   GearList11Pinion					35
   GearList11Gear					8
   GearList11TorqueMax				10000.0
   GearList11TorqueMin				-8000.0

   GearList12Pinion					32
   GearList12Gear					8
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
   ; AWD with torque split and active center, mechanical front, mechanical rear
   ; 7 + 1 * 16 + 4 * 256 + 4 * 4096 = 17431
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
   Features_NGP						214039

   CenterDiffMapLockPctMin_NGP		0
   CenterDiffMapLockPctMax_NGP		100

   FrontDiffMapLockPctMin_NGP		0
   FrontDiffMapLockPctMax_NGP		75

   RearDiffMapLockPctMin_NGP		0
   RearDiffMapLockPctMax_NGP		75

   TorqueSplit_NGP					60

   BumpStopStiffnessMin_NGP			50000
   BumpStopStiffnessMax_NGP			750000
   BumpStopStiffnessStep_NGP		2500
   BumpStopDampingMin_NGP			5000
   BumpStopDampingMax_NGP			75000
   BumpStopDampingStep_NGP			250
   )

  ControlOptions
  ("(null)"
   DiffMapLockRangeMax				1.000000
   DiffMapLockRangeMin				0.000000
   DiffMapLockRangeStep				0.050000

   DiffMapSpeedRangeMax				70.000000
   DiffMapSpeedRangeMin				0.000000
   DiffMapSpeedRangeStep			0.55555556

   CenterDiffHandbrakeReleaseRangeMax	1.000000
   CenterDiffHandbrakeReleaseRangeMin	0.000000
   CenterDiffHandbrakeReleaseRangeStep	0.050000

   LeftFootBrakeThresholdRangeMax		1.000000
   LeftFootBrakeThresholdRangeMin		0.000000
   LeftFootBrakeThresholdRangeStep		0.050000
   )

  EngineOptions
  ("(null)"
   IdleRPM_NGP						1200
   MaxTorque_NGP					445
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
   vecTopMount00					+0.621	-2.476	+0.735
   vecTopMount01					+0.619	-2.474	+0.735
   vecTopMount02					+0.617	-2.472	+0.735
   vecTopMount03					+0.615	-2.470	+0.735
   vecTopMount04					+0.613	-2.468	+0.735
   vecTopMount05					+0.611	-2.466	+0.735
   vecTopMount06					+0.609	-2.464	+0.735
   vecTopMount07					+0.607	-2.462	+0.735

   SteeringRodMin					0.450
   SteeringRodMax					0.460
   SteeringRodStep					0.00001

   WheelAxisInclMin					-0.200
   WheelAxisInclMax					+0.000
   WheelAxisInclStep				+0.000175

   PlatformHeightMin				0.000
   PlatformHeightMax				0.050
   PlatformHeightStep				0.001

   WishboneLength					+0.430

   vecJointMount_VF					+0.345	-2.520	+0.130
   vecJointAxis_VF					+0.000	-1.000	+0.000
   vecSteeringMount_VF				+0.305	-2.400	+0.180		; LF
   ;vecSteeringMount_VF				+0.347	-2.400	+0.180		; LF (lock)

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
   vecTopMount00					-0.621	-2.476	+0.735
   vecTopMount01					-0.619	-2.474	+0.735
   vecTopMount02					-0.617	-2.472	+0.735
   vecTopMount03					-0.615	-2.470	+0.735
   vecTopMount04					-0.613	-2.468	+0.735
   vecTopMount05					-0.611	-2.466	+0.735
   vecTopMount06					-0.609	-2.464	+0.735
   vecTopMount07					-0.607	-2.462	+0.735

   SteeringRodMin					0.450
   SteeringRodMax					0.460
   SteeringRodStep					0.00001

   WheelAxisInclMin					-0.200
   WheelAxisInclMax					+0.000
   WheelAxisInclStep				+0.000175

   PlatformHeightMin				0.000
   PlatformHeightMax				0.050
   PlatformHeightStep				0.001

   WishboneLength					+0.430

   vecJointMount_VF					-0.345	-2.520	+0.130
   vecJointAxis_VF					+0.000	-1.000	+0.000
   vecSteeringMount_VF				-0.305	-2.400	+0.180		; RF
   ;vecSteeringMount_VF				-0.263	-2.400	+0.180		; RF (lock)

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
   vecTopMount00					+0.615	+0.000	+0.775

   SteeringRodMin					0.505
   SteeringRodMax					0.515
   SteeringRodStep					0.00005

   WheelAxisInclMin					-0.100
   WheelAxisInclMax					+0.100
   WheelAxisInclStep				+0.000175

   PlatformHeightMin				0.000
   PlatformHeightMax				0.050
   PlatformHeightStep				0.001

   WishboneLength					+0.510

   vecJointMount_VF					+0.265	+0.000	+0.130
   vecJointAxis_VF					+0.000	-1.000	+0.000
   vecSteeringMount_VF				+0.265	+0.150	+0.130

   vecStrutRodMount_SF				+0.000	+0.150	+0.000
   vecStrutHubPoint_SF				+0.065	+0.000	+0.110
   vecStrutHubAxis_SF				+1.000	+0.000	+0.000
   StrutDimX						-0.130
   StrutDimZ						+0.505
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
   vecTopMount00					-0.615	+0.000	+0.775

   SteeringRodMin					0.505
   SteeringRodMax					0.515
   SteeringRodStep					0.00005

   WheelAxisInclMin					-0.100
   WheelAxisInclMax					+0.100
   WheelAxisInclStep				+0.000175

   PlatformHeightMin				0.000
   PlatformHeightMax				0.050
   PlatformHeightStep				0.001

   WishboneLength					+0.510

   vecJointMount_VF					-0.265	+0.000	+0.130
   vecJointAxis_VF					+0.000	-1.000	+0.000
   vecSteeringMount_VF				-0.265	+0.150	+0.130

   vecStrutRodMount_SF				+0.000	-0.150	+0.000
   vecStrutHubPoint_SF				+0.065	+0.000	+0.110
   vecStrutHubAxis_SF				+1.000	+0.000	+0.000
   StrutDimX						-0.130
   StrutDimZ						+0.505
   WishboneSign						+1.000
   SteeringSign						+1.000

   AntiRollBarId					1
   AntiRollBarSlot					1

   InnerBumpRubberPos				0.160
   OuterBumpRubberPos				0.320
   )
))
