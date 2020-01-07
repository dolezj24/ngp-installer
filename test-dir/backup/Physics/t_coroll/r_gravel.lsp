(("(null)"
  CarOptions
  ("(null)"
   MaxSteeringLockRangeMax			1.501
   MaxSteeringLockRangeMin			1.499
   MaxSteeringLockRangeStep			0.010

   FrontRollBarStiffnessMax			50000.0
   FrontRollBarStiffnessMin			0.0
   FrontRollBarStiffnessStep		200.0

   RearRollBarStiffnessMax			50000.0
   RearRollBarStiffnessMin			0.0
   RearRollBarStiffnessStep			200.0

   vecCenterOfGravity				0 -0.980 0.290
   InverseMass						0.000862

   Tq00								0.0
   Tq05								45.0
   Tq10								92.0
   Tq15								134.0
   Tq20								163.0
   Tq25								176.0
   Tq30								189.0
   Tq35								201.0
   Tq40								228.0
   Tq45								248.0
   Tq50								262.0
   Tq55								271.0
   Tq60								274.0
   Tq65								276.0
   Tq70								265.0
   Tq75								250.0
   Tq80								234.0
   Tq85								226.0
   Tq90								0.0
   Tq95								0.0
   )

  DriveOptions
  ("(null)"
   Gears							7

   DriveTrainLoss_NGP				8
   FrontBrakeVelSlope_NGP			0.0030
   RearBrakeVelSlope_NGP			0.0030

   FrontBrakePressureMax			9000000.0
   FrontBrakePressureMin			0.0
   FrontBrakePressureStep			10000.0

   RearBrakePressureMax				9000000.0
   RearBrakePressureMin				0.0
   RearBrakePressureStep			10000.0

   FrontBrake0PistonArea			0.004536
   FrontBrake0RadiusEff				0.127

   RearBrake0PistonArea				0.004536
   RearBrake0RadiusEff				0.130

   CenterDiffTorqueMax				0.000000
   CenterDiffTorqueMin				0.000000
   CenterDiffTorqueStep				0.000000

   FrontDiffTorqueMax				0.000000
   FrontDiffTorqueMin				0.000000
   FrontDiffTorqueStep				0.000000

   RearDiffTorqueMax				250.000000
   RearDiffTorqueMin				0.000000
   RearDiffTorqueStep				10.000000

   GearList00Pinion					0
   GearList00Gear					0
   GearList00TorqueMax				10000.0
   GearList00TorqueMin				-8000.0

   GearList01Pinion					12
   GearList01Gear					-38
   GearList01TorqueMax				10000.0
   GearList01TorqueMin				-8000.0

   GearList02Pinion					0
   GearList02Gear					0
   GearList02TorqueMax				10000.0
   GearList02TorqueMin				-8000.0

   GearList03Pinion					11
   GearList03Gear					35
   GearList03TorqueMax				10000.0
   GearList03TorqueMin				-8000.0

   GearList04Pinion					16
   GearList04Gear					35
   GearList04TorqueMax				10000.0
   GearList04TorqueMin				-8000.0

   GearList05Pinion					20
   GearList05Gear					32
   GearList05TorqueMax				10000.0
   GearList05TorqueMin				-8000.0

   GearList06Pinion					23
   GearList06Gear					29
   GearList06TorqueMax				10000.0
   GearList06TorqueMin				-8000.0

   GearList07Pinion					26			; direct gear
   GearList07Gear					26
   GearList07TorqueMax				10000.0
   GearList07TorqueMin				-8000.0

   GearList08Pinion					0
   GearList08Gear					0
   GearList08TorqueMax				10000.0
   GearList08TorqueMin				-8000.0

   GearList09Pinion					26
   GearList09Gear					26
   GearList09TorqueMax				10000.0
   GearList09TorqueMin				-8000.0

   GearList10Pinion					41			; 5.125
   GearList10Gear					8
   GearList10TorqueMax				10000.0
   GearList10TorqueMin				-8000.0

   GearList11Pinion					37			; 4.625
   GearList11Gear					8
   GearList11TorqueMax				10000.0
   GearList11TorqueMin				-8000.0

   GearList12Pinion					38			; 4.222
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
   ; RWD with mechanical rear diff:
   ; 5 + 4 * 4096 = 5 + 16384 = 16389
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
   Features_NGP						16389

   CenterDiffMapLockPctMin_NGP		0
   CenterDiffMapLockPctMax_NGP		0

   FrontDiffMapLockPctMin_NGP		0
   FrontDiffMapLockPctMax_NGP		0

   RearDiffMapLockPctMin_NGP		0
   RearDiffMapLockPctMax_NGP		75
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
   CenterDiffHandbrakeReleaseRangeMin	1.000000
   CenterDiffHandbrakeReleaseRangeStep	0.000000

   LeftFootBrakeThresholdRangeMax		0.000000
   LeftFootBrakeThresholdRangeMin		0.000000
   LeftFootBrakeThresholdRangeStep		0.000000
   )

  EngineOptions
  ("(null)"
   IdleRPM_NGP						1000
   MaxTorque_NGP					300
   BrakeCoefficient_NGP				30
   )

  SpringDamperOptionsLF
  ("(null)"
   SpringLengthMax					0.500
   SpringLengthMin					0.010
   SpringLengthStep					0.005

   SpringStiffnessMax				100000.0
   SpringStiffnessMin				15000.0
   SpringStiffnessStep				100.0

   HelperSpringLengthMax			0.0
   HelperSpringLengthMin			0.0
   HelperSpringLengthStep			0.0

   HelperSpringStiffnessMax			0.0
   HelperSpringStiffnessMin			0.0
   HelperSpringStiffnessStep		0.0

   DampBumpMin						1000.0
   DampBumpMax						10000.0
   DampBumpStep						10.0

   DampReboundMin					1000.0
   DampReboundMax					10000.0
   DampReboundStep					10.0

   DampBumpHiSpeedMin				0.0
   DampBumpHiSpeedMax				0.0
   DampBumpHiSpeedStep				0.0

   DampSpeedBrakeMin				0.0
   DampSpeedBrakeMax				0.0
   DampSpeedBrakeStep				0.0
   )
  SpringDamperOptionsRF
  ("(null)"
   SpringLengthMax					0.500
   SpringLengthMin					0.010
   SpringLengthStep					0.005

   SpringStiffnessMax				100000.0
   SpringStiffnessMin				15000.0
   SpringStiffnessStep				100.0

   HelperSpringLengthMax			0.0
   HelperSpringLengthMin			0.0
   HelperSpringLengthStep			0.0

   HelperSpringStiffnessMax			0.0
   HelperSpringStiffnessMin			0.0
   HelperSpringStiffnessStep		0.0

   DampBumpMin						1000.0
   DampBumpMax						10000.0
   DampBumpStep						10.0

   DampReboundMin					1000.0
   DampReboundMax					10000.0
   DampReboundStep					10.0

   DampBumpHiSpeedMin				0.0
   DampBumpHiSpeedMax				0.0
   DampBumpHiSpeedStep				0.0

   DampSpeedBrakeMin				0.0
   DampSpeedBrakeMax				0.0
   DampSpeedBrakeStep				0.0
   )
  SpringDamperOptionsLB
  ("(null)"
   SpringLengthMax					0.500
   SpringLengthMin					0.010
   SpringLengthStep					0.005

   SpringStiffnessMax				100000.0
   SpringStiffnessMin				15000.0
   SpringStiffnessStep				100.0

   HelperSpringLengthMax			0.0
   HelperSpringLengthMin			0.0
   HelperSpringLengthStep			0.0

   HelperSpringStiffnessMax			0.0
   HelperSpringStiffnessMin			0.0
   HelperSpringStiffnessStep		0.0

   DampBumpMin						1000.0
   DampBumpMax						10000.0
   DampBumpStep						10.0

   DampReboundMin					1000.0
   DampReboundMax					10000.0
   DampReboundStep					10.0

   DampBumpHiSpeedMin				0.0
   DampBumpHiSpeedMax				0.0
   DampBumpHiSpeedStep				0.0

   DampSpeedBrakeMin				0.0
   DampSpeedBrakeMax				0.0
   DampSpeedBrakeStep				0.0
   )
  SpringDamperOptionsRB
  ("(null)"
   SpringLengthMax					0.500
   SpringLengthMin					0.010
   SpringLengthStep					0.005

   SpringStiffnessMax				100000.0
   SpringStiffnessMin				15000.0
   SpringStiffnessStep				100.0

   HelperSpringLengthMax			0.0
   HelperSpringLengthMin			0.0
   HelperSpringLengthStep			0.0

   HelperSpringStiffnessMax			0.0
   HelperSpringStiffnessMin			0.0
   HelperSpringStiffnessStep		0.0

   DampBumpMin						1000.0
   DampBumpMax						10000.0
   DampBumpStep						10.0

   DampReboundMin					1000.0
   DampReboundMax					10000.0
   DampReboundStep					10.0

   DampBumpHiSpeedMin				0.0
   DampBumpHiSpeedMax				0.0
   DampBumpHiSpeedStep				0.0

   DampSpeedBrakeMin				0.0
   DampSpeedBrakeMax				0.0
   DampSpeedBrakeStep				0.0
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
   vecTopMount00					+0.501	-2.216	+0.705
   vecTopMount01					+0.499	-2.214	+0.705
   vecTopMount02					+0.497	-2.212	+0.705
   vecTopMount03					+0.495	-2.210	+0.705
   vecTopMount04					+0.493	-2.208	+0.705
   vecTopMount05					+0.491	-2.206	+0.705
   vecTopMount06					+0.489	-2.204	+0.705
   vecTopMount07					+0.487	-2.202	+0.705

   SteeringRodMin					0.329
   SteeringRodMax					0.339
   SteeringRodStep					0.00001

   WheelAxisInclMin					-0.200
   WheelAxisInclMax					+0.000
   WheelAxisInclStep				+0.000175

   PlatformHeightMin				0.030
   PlatformHeightMax				0.050
   PlatformHeightStep				0.001

   WishboneLength					+0.320

   vecJointMount_VF					+0.335	-2.285	+0.100
   vecJointAxis_VF					+0.000	-1.000	+0.000
   vecSteeringMount_VF				+0.325	-2.405	+0.150		; LF
   ;vecSteeringMount_VF				+0.378	-2.405	+0.150		; LF (lock)

   vecStrutRodMount_SF				+0.009	-0.115	+0.043
   vecStrutHubPoint_SF				+0.075	+0.000	+0.110
   vecStrutHubAxis_SF				+1.000	+0.000	+0.000
   StrutDimX						-0.090
   StrutDimZ						+0.465
   WishboneSign						-1.000
   SteeringSign						+1.000

   AntiRollBarId					0
   AntiRollBarSlot					0

   InnerBumpRubberPos				0.150
   OuterBumpRubberPos				0.320
   )
  WheelOptionsRF
  ("(null)"
   nTopMountPositions				7
   vecTopMount00					-0.501	-2.216	+0.705
   vecTopMount01					-0.499	-2.214	+0.705
   vecTopMount02					-0.497	-2.212	+0.705
   vecTopMount03					-0.495	-2.210	+0.705
   vecTopMount04					-0.493	-2.208	+0.705
   vecTopMount05					-0.491	-2.206	+0.705
   vecTopMount06					-0.489	-2.204	+0.705
   vecTopMount07					-0.487	-2.202	+0.705

   SteeringRodMin					0.329
   SteeringRodMax					0.339
   SteeringRodStep					0.00001

   WheelAxisInclMin					-0.200
   WheelAxisInclMax					+0.000
   WheelAxisInclStep				+0.000175

   PlatformHeightMin				0.030
   PlatformHeightMax				0.050
   PlatformHeightStep				0.001

   WishboneLength					+0.320

   vecJointMount_VF					-0.335	-2.285	+0.100
   vecJointAxis_VF					+0.000	-1.000	+0.000
   vecSteeringMount_VF				-0.325	-2.405	+0.150		; RF
   ;vecSteeringMount_VF				-0.272	-2.405	+0.150		; RF (lock)

   vecStrutRodMount_SF				+0.009	+0.115	+0.043
   vecStrutHubPoint_SF				+0.075	+0.000	+0.110
   vecStrutHubAxis_SF				+1.000	+0.000	+0.000
   StrutDimX						-0.090
   StrutDimZ						+0.465
   WishboneSign						+1.000
   SteeringSign						-1.000

   AntiRollBarId					0
   AntiRollBarSlot					1

   InnerBumpRubberPos				0.150
   OuterBumpRubberPos				0.320
   )
  WheelOptionsLB
  ("(null)"
   nTopMountPositions				0
   vecTopMount00					+0.535	+0.000	+0.745

   SteeringRodMin					1.225
   SteeringRodMax					1.235
   SteeringRodStep					0.00005

   WheelAxisInclMin					-0.100
   WheelAxisInclMax					+0.100
   WheelAxisInclStep				+0.000175

   PlatformHeightMin				0.030
   PlatformHeightMax				0.050
   PlatformHeightStep				0.001

   WishboneLength					+1.230

   vecJointMount_VF					-0.535	+0.000	+0.100
   vecJointAxis_VF					+0.000	-1.000	+0.000
   vecSteeringMount_VF				-0.535	+0.150	+0.100

   vecStrutRodMount_SF				+0.000	+0.150	+0.000
   vecStrutHubPoint_SF				+0.065	+0.000	+0.110
   vecStrutHubAxis_SF				+1.000	+0.000	+0.000
   StrutDimX						-0.130
   StrutDimZ						+0.505
   WishboneSign						-1.000
   SteeringSign						-1.000

   AntiRollBarId					1
   AntiRollBarSlot					0

   InnerBumpRubberPos				0.140
   OuterBumpRubberPos				0.320
   )
  WheelOptionsRB
  ("(null)"
   nTopMountPositions				0
   vecTopMount00					-0.535	+0.000	+0.745

   SteeringRodMin					1.225
   SteeringRodMax					1.235
   SteeringRodStep					0.00005

   WheelAxisInclMin					-0.100
   WheelAxisInclMax					+0.100
   WheelAxisInclStep				+0.000175

   PlatformHeightMin				0.030
   PlatformHeightMax				0.050
   PlatformHeightStep				0.001

   WishboneLength					+1.230

   vecJointMount_VF					+0.535	+0.000	+0.100
   vecJointAxis_VF					+0.000	-1.000	+0.000
   vecSteeringMount_VF				+0.535	+0.150	+0.100

   vecStrutRodMount_SF				+0.000	-0.150	+0.000
   vecStrutHubPoint_SF				+0.065	+0.000	+0.110
   vecStrutHubAxis_SF				+1.000	+0.000	+0.000
   StrutDimX						-0.130
   StrutDimZ						+0.505
   WishboneSign						+1.000
   SteeringSign						+1.000

   AntiRollBarId					1
   AntiRollBarSlot					1

   InnerBumpRubberPos				0.140
   OuterBumpRubberPos				0.320
   )
))
