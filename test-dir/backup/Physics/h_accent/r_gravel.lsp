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
   InverseMass						0.000714

   Tq00								188.0
   Tq05								206.0
   Tq10								224.0
   Tq15								260.0
   Tq20								295.0
   Tq25								330.0
   Tq30								355.0
   Tq35								360.0
   Tq40								367.0
   Tq45								370.0
   Tq50								374.0
   Tq55								344.0
   Tq60								322.0
   Tq65								298.0
   Tq70								273.0
   Tq75								248.0
   Tq80								230.0
   Tq85								212.0
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

   FrontBrake0PistonArea			0.004549
   FrontBrake0RadiusEff				0.126

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

   GearList01Pinion					15
   GearList01Gear					-46
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

   GearList09Pinion					25
   GearList09Gear					40
   GearList09TorqueMax				10000.0
   GearList09TorqueMin				-8000.0

   GearList10Pinion					27
   GearList10Gear					9
   GearList10TorqueMax				10000.0
   GearList10TorqueMin				-8000.0

   GearList11Pinion					25
   GearList11Gear					9
   GearList11TorqueMax				10000.0
   GearList11TorqueMin				-8000.0

   GearList12Pinion					23
   GearList12Gear					9
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
   Features_NGP						214070

   CenterDiffMapLockPctMin_NGP		0
   CenterDiffMapLockPctMax_NGP		0

   FrontDiffMapLockPctMin_NGP		0
   FrontDiffMapLockPctMax_NGP		75

   RearDiffMapLockPctMin_NGP		0
   RearDiffMapLockPctMax_NGP		75

   BumpStopStiffnessMin_NGP			50000
   BumpStopStiffnessMax_NGP			750000
   BumpStopStiffnessStep_NGP		2500
   BumpStopDampingMin_NGP			5000
   BumpStopDampingMax_NGP			75000
   BumpStopDampingStep_NGP			250
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
   MaxTorque_NGP					425
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
   vecTopMount00					+0.591	-2.446	+0.725
   vecTopMount01					+0.589	-2.444	+0.725
   vecTopMount02					+0.587	-2.442	+0.725
   vecTopMount03					+0.585	-2.440	+0.725
   vecTopMount04					+0.583	-2.438	+0.725
   vecTopMount05					+0.581	-2.436	+0.725
   vecTopMount06					+0.579	-2.434	+0.725
   vecTopMount07					+0.577	-2.432	+0.725

   SteeringRodMin					0.450
   SteeringRodMax					0.460
   SteeringRodStep					0.00001

   WheelAxisInclMin					-0.200
   WheelAxisInclMax					+0.000
   WheelAxisInclStep				+0.000175

   PlatformHeightMin				0.005
   PlatformHeightMax				0.050
   PlatformHeightStep				0.001

   WishboneLength					+0.430

   vecJointMount_VF					+0.315	-2.490	+0.120
   vecJointAxis_VF					+0.000	-1.000	+0.000
   vecSteeringMount_VF				+0.275	-2.370	+0.170		; LF
   ;vecSteeringMount_VF				+0.317	-2.370	+0.170		; LF (lock)

   vecStrutRodMount_SF				-0.008	+0.115	+0.062
   vecStrutHubPoint_SF				+0.075	+0.000	+0.110
   vecStrutHubAxis_SF				+1.000	+0.000	+0.000
   StrutDimX						-0.090
   StrutDimZ						+0.465
   WishboneSign						-1.000
   SteeringSign						-1.000

   AntiRollBarId					0
   AntiRollBarSlot					0

   InnerBumpRubberPos				0.160
   OuterBumpRubberPos				0.420
   )
  WheelOptionsRF
  ("(null)"
   nTopMountPositions				7
   vecTopMount00					-0.591	-2.446	+0.725
   vecTopMount01					-0.589	-2.444	+0.725
   vecTopMount02					-0.587	-2.442	+0.725
   vecTopMount03					-0.585	-2.440	+0.725
   vecTopMount04					-0.583	-2.438	+0.725
   vecTopMount05					-0.581	-2.436	+0.725
   vecTopMount06					-0.579	-2.434	+0.725
   vecTopMount07					-0.577	-2.432	+0.725

   SteeringRodMin					0.450
   SteeringRodMax					0.460
   SteeringRodStep					0.00001

   WheelAxisInclMin					-0.200
   WheelAxisInclMax					+0.000
   WheelAxisInclStep				+0.000175

   PlatformHeightMin				0.005
   PlatformHeightMax				0.050
   PlatformHeightStep				0.001

   WishboneLength					+0.430

   vecJointMount_VF					-0.315	-2.490	+0.120
   vecJointAxis_VF					+0.000	-1.000	+0.000
   vecSteeringMount_VF				-0.275	-2.370	+0.170		; RF
   ;vecSteeringMount_VF				-0.233	-2.370	+0.170		; RF (lock)

   vecStrutRodMount_SF				-0.008	-0.115	+0.062
   vecStrutHubPoint_SF				+0.075	+0.000	+0.110
   vecStrutHubAxis_SF				+1.000	+0.000	+0.000
   StrutDimX						-0.090
   StrutDimZ						+0.465
   WishboneSign						+1.000
   SteeringSign						+1.000

   AntiRollBarId					0
   AntiRollBarSlot					1

   InnerBumpRubberPos				0.160
   OuterBumpRubberPos				0.420
   )
  WheelOptionsLB
  ("(null)"
   nTopMountPositions				0
   vecTopMount00					+0.590	+0.000	+0.775

   SteeringRodMin					0.505
   SteeringRodMax					0.515
   SteeringRodStep					0.00005

   WheelAxisInclMin					-0.100
   WheelAxisInclMax					+0.100
   WheelAxisInclStep				+0.000175

   PlatformHeightMin				0.005
   PlatformHeightMax				0.050
   PlatformHeightStep				0.001

   WishboneLength					+0.510

   vecJointMount_VF					+0.240	+0.000	+0.130
   vecJointAxis_VF					+0.000	-1.000	+0.000
   vecSteeringMount_VF				+0.240	+0.150	+0.130

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
   OuterBumpRubberPos				0.420
   )
  WheelOptionsRB
  ("(null)"
   nTopMountPositions				0
   vecTopMount00					-0.590	+0.000	+0.775

   SteeringRodMin					0.505
   SteeringRodMax					0.515
   SteeringRodStep					0.00005

   WheelAxisInclMin					-0.100
   WheelAxisInclMax					+0.100
   WheelAxisInclStep				+0.000175

   PlatformHeightMin				0.005
   PlatformHeightMax				0.050
   PlatformHeightStep				0.001

   WishboneLength					+0.510

   vecJointMount_VF					-0.240	+0.000	+0.130
   vecJointAxis_VF					+0.000	-1.000	+0.000
   vecSteeringMount_VF				-0.240	+0.150	+0.130

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
   OuterBumpRubberPos				0.420
   )
))
