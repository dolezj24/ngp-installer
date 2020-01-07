(("(null)"
  CarOptions
  ("(null)"
   MaxSteeringLockRangeMax			1.201
   MaxSteeringLockRangeMin			0.199
   MaxSteeringLockRangeStep			0.010

   FrontRollBarStiffnessMax			50000.0
   FrontRollBarStiffnessMin			0.0
   FrontRollBarStiffnessStep		200.0

   RearRollBarStiffnessMax			50000.0
   RearRollBarStiffnessMin			0.0
   RearRollBarStiffnessStep			200.0

   vecCenterOfGravity				0 -1.380 0.365
   InverseMass						0.000704

   Tq00								99.0
   Tq05								109.0
   Tq10								119.0
   Tq15								138.0
   Tq20								158.0
   Tq25								260.0
   Tq30								364.0
   Tq35								384.0
   Tq40								392.0
   Tq45								396.0
   Tq50								380.0
   Tq55								350.0
   Tq60								321.0
   Tq65								294.0
   Tq70								270.0
   Tq75								247.0
   Tq80								225.0
   Tq85								0.0
   Tq90								0.0
   Tq95								0.0
   )

  DriveOptions
  ("(null)"
   Gears							8

   DriveTrainLoss_NGP				12
   FrontBrakeVelSlope_NGP			0.0030
   RearBrakeVelSlope_NGP			0.0030

   FrontBrakePressureMax			9000000.0
   FrontBrakePressureMin			0.0
   FrontBrakePressureStep			10000.0

   RearBrakePressureMax				9000000.0
   RearBrakePressureMin				0.0
   RearBrakePressureStep			10000.0

   FrontBrake0PistonArea			0.004959
   FrontBrake0RadiusEff				0.127

   RearBrake0PistonArea				0.003177
   RearBrake0RadiusEff				0.127

   CenterDiffTorqueMax				0.000000
   CenterDiffTorqueMin				0.000000
   CenterDiffTorqueStep				0.000000

   FrontDiffTorqueMax				0.000000
   FrontDiffTorqueMin				0.000000
   FrontDiffTorqueStep				0.000000

   RearDiffTorqueMax				0.000000
   RearDiffTorqueMin				0.000000
   RearDiffTorqueStep				0.000000

   GearList00Pinion					0
   GearList00Gear					0
   GearList00TorqueMax				10000.0
   GearList00TorqueMin				-8000.0

   GearList01Pinion					14
   GearList01Gear					-30
   GearList01TorqueMax				10000.0
   GearList01TorqueMin				-8000.0

   GearList02Pinion					0
   GearList02Gear					0
   GearList02TorqueMax				10000.0
   GearList02TorqueMin				-8000.0

   GearList03Pinion					15
   GearList03Gear					27
   GearList03TorqueMax				10000.0
   GearList03TorqueMin				-8000.0

   GearList04Pinion					19
   GearList04Gear					24
   GearList04TorqueMax				10000.0
   GearList04TorqueMin				-8000.0

   GearList05Pinion					22
   GearList05Gear					21
   GearList05TorqueMax				10000.0
   GearList05TorqueMin				-8000.0

   GearList06Pinion					23
   GearList06Gear					18
   GearList06TorqueMax				10000.0
   GearList06TorqueMin				-8000.0

   GearList07Pinion					24
   GearList07Gear					16
   GearList07TorqueMax				10000.0
   GearList07TorqueMin				-8000.0

   GearList08Pinion					24
   GearList08Gear					14
   GearList08TorqueMax				10000.0
   GearList08TorqueMin				-8000.0

   GearList09Pinion					16
   GearList09Gear					27
   GearList09TorqueMax				10000.0
   GearList09TorqueMin				-8000.0

   GearList10Pinion					37
   GearList10Gear					8
   GearList10TorqueMax				10000.0
   GearList10TorqueMin				-8000.0

   GearList11Pinion					31
   GearList11Gear					7
   GearList11TorqueMax				10000.0
   GearList11TorqueMin				-8000.0

   GearList12Pinion					37
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
   ; 5 := Viscous coupling
   ;
   ; Features_NGP
   ;		= "drive train type"
   ;		+ "center diff type" * "center diff multiplier"
   ;		+ "front diff type"  * "front diff multiplier"
   ;		+ "rear diff type"	 * "rear diff multiplier"
   ;
   ; AWD with torque split, VC center, VC front/rear diffs:
   ; 7 + 5 * 16 + 5 * 256 + 5 * 4096 = 21847
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
   Features_NGP						21847

   CenterDiffMapLockPctMin_NGP		0
   CenterDiffMapLockPctMax_NGP		100

   FrontDiffMapLockPctMin_NGP		0
   FrontDiffMapLockPctMax_NGP		100

   RearDiffMapLockPctMin_NGP		0
   RearDiffMapLockPctMax_NGP		100

   TorqueSplit_NGP					65
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
   CenterDiffHandbrakeReleaseRangeMin	1.000000
   CenterDiffHandbrakeReleaseRangeStep	0.000000

   LeftFootBrakeThresholdRangeMax		0.000000
   LeftFootBrakeThresholdRangeMin		0.000000
   LeftFootBrakeThresholdRangeStep		0.000000
   )

  EngineOptions
  ("(null)"
   IdleRPM_NGP						1000
   MaxTorque_NGP					450
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
   vecTopMount00					+0.531	-2.516	+0.725
   vecTopMount01					+0.529	-2.514	+0.725
   vecTopMount02					+0.527	-2.512	+0.725
   vecTopMount03					+0.525	-2.510	+0.725
   vecTopMount04					+0.523	-2.508	+0.725
   vecTopMount05					+0.521	-2.506	+0.725
   vecTopMount06					+0.519	-2.504	+0.725
   vecTopMount07					+0.517	-2.502	+0.725

   SteeringRodMin					0.325
   SteeringRodMax					0.335
   SteeringRodStep					0.00001

   WheelAxisInclMin					-0.200
   WheelAxisInclMax					+0.000
   WheelAxisInclStep				+0.000175

   PlatformHeightMin				0.030
   PlatformHeightMax				0.050
   PlatformHeightStep				0.001

   WishboneLength					+0.320

   vecJointMount_VF					+0.365	-2.560	+0.120
   vecJointAxis_VF					+0.000	-1.000	+0.000
   vecSteeringMount_VF				+0.355	-2.680	+0.170		; LF
   ;vecSteeringMount_VF				+0.413	-2.680	+0.170		; LF (lock)

   vecStrutRodMount_SF				+0.006	-0.115	+0.048
   vecStrutHubPoint_SF				+0.075	+0.000	+0.110
   vecStrutHubAxis_SF				+1.000	+0.000	+0.000
   StrutDimX						-0.090
   StrutDimZ						+0.465
   WishboneSign						-1.000
   SteeringSign						+1.000

   AntiRollBarId					0
   AntiRollBarSlot					0

   InnerBumpRubberPos				0.140
   OuterBumpRubberPos				0.320
   )
  WheelOptionsRF
  ("(null)"
   nTopMountPositions				7
   vecTopMount00					-0.531	-2.516	+0.725
   vecTopMount01					-0.529	-2.514	+0.725
   vecTopMount02					-0.527	-2.512	+0.725
   vecTopMount03					-0.525	-2.510	+0.725
   vecTopMount04					-0.523	-2.508	+0.725
   vecTopMount05					-0.521	-2.506	+0.725
   vecTopMount06					-0.519	-2.504	+0.725
   vecTopMount07					-0.517	-2.502	+0.725

   SteeringRodMin					0.325
   SteeringRodMax					0.335
   SteeringRodStep					0.00001

   WheelAxisInclMin					-0.200
   WheelAxisInclMax					+0.000
   WheelAxisInclStep				+0.000175

   PlatformHeightMin				0.030
   PlatformHeightMax				0.050
   PlatformHeightStep				0.001

   WishboneLength					+0.320

   vecJointMount_VF					-0.365	-2.560	+0.120
   vecJointAxis_VF					+0.000	-1.000	+0.000
   vecSteeringMount_VF				-0.355	-2.680	+0.170		; RF
   ;vecSteeringMount_VF				-0.297	-2.680	+0.170		; RF (lock)

   vecStrutRodMount_SF				+0.006	+0.115	+0.048
   vecStrutHubPoint_SF				+0.075	+0.000	+0.110
   vecStrutHubAxis_SF				+1.000	+0.000	+0.000
   StrutDimX						-0.090
   StrutDimZ						+0.465
   WishboneSign						+1.000
   SteeringSign						-1.000

   AntiRollBarId					0
   AntiRollBarSlot					1

   InnerBumpRubberPos				0.140
   OuterBumpRubberPos				0.320
   )
  WheelOptionsLB
  ("(null)"
   nTopMountPositions				0
   vecTopMount00					+0.535	+0.000	+0.800

   SteeringRodMin					0.315
   SteeringRodMax					0.325
   SteeringRodStep					0.00005

   WheelAxisInclMin					-0.100
   WheelAxisInclMax					+0.100
   WheelAxisInclStep				+0.000175

   PlatformHeightMin				0.030
   PlatformHeightMax				0.050
   PlatformHeightStep				0.001

   WishboneLength					+0.320

   vecJointMount_VF					+0.375	+0.000	+0.155
   vecJointAxis_VF					+0.000	-1.000	+0.000
   vecSteeringMount_VF				+0.375	+0.150	+0.155

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
   vecTopMount00					-0.535	+0.000	+0.800

   SteeringRodMin					0.315
   SteeringRodMax					0.325
   SteeringRodStep					0.00005

   WheelAxisInclMin					-0.100
   WheelAxisInclMax					+0.100
   WheelAxisInclStep				+0.000175

   PlatformHeightMin				0.030
   PlatformHeightMax				0.050
   PlatformHeightStep				0.001

   WishboneLength					+0.320

   vecJointMount_VF					-0.375	+0.000	+0.155
   vecJointAxis_VF					+0.000	-1.000	+0.000
   vecSteeringMount_VF				-0.375	+0.150	+0.155

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
