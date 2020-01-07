(("PhysicsEngine"
  DefManager
  (
   ("Car"
	("CAR_ROOT"
	 SetupSpec						2
	 CarId							3104784395
	 ))

   ("Wheel"
	("CAR_WHEEL_LF"
	 InverseMass					0.0233
	 DebugId						1
	 IsSteered						1

	 vecDriveAxleJointPos_VF		+0.300	-2.530	+0.220
	 DriveAxleMountOffset			-0.050
	 vecSteeringAxis_VF				+1.000	+0.000	+0.000

	 WishboneLength					+0.430

	 vecJointMount_VF				+0.345	-2.500	+0.135
	 vecJointAxis_VF				+0.000	-1.000	+0.000
	 vecSteeringMount_VF			+0.305	-2.380	+0.185		; LF

	 vecStrutRodMount_SF			-0.008	+0.115	+0.062
	 vecStrutHubPoint_SF			+0.075	+0.000	+0.110
	 vecStrutHubAxis_SF				+1.000	+0.000	+0.000
	 StrutDimX						-0.090
	 StrutDimZ						+0.465
	 ;StrutDimZ						+0.325
	 WishboneSign					-1.000
	 SteeringSign					-1.000

	 AntiRollBarId					0
	 AntiRollBarSlot				0

	 vecTopMountDeformUpAxis_RF		0.000	0.000	1.000
	 vecTopMountDeformSideAxis_RF	-1.000	0.000	0.000
	 TopMountMaxDeformSide			0.050
	 TopMountMaxDeformUp			0.050

	 vecPosOffset_NGP				-0.025	+0.010	+0.000
	 BumpStopRebound_NGP			1.10

	 SpringDamper
	 ("SpringDamper"
	  InnerBumpRubberPos			0.160
	  OuterBumpRubberPos			0.470
	  DampingBumpRubber				15000
	  BumpRubberStiffness			168000
	  DroopStiffness				600000
	  )

	 Tyre
	 ("Tyre"
	  DebugId						0
	  Performance_NGP				1.0
	  CarcassRadius_NGP				0.300
	  TreadDepth_NGP				0.010
	  CarcassWidth_NGP				0.159
	  TreadWidth_NGP				0.110
	  SideWallHeight_NGP			0.123
	  HubOffset_NGP					-0.028
	  )))

   ("Wheel"
	("CAR_WHEEL_RF"
	 InverseMass					0.0233
	 DebugId						2
	 IsSteered						1

	 vecDriveAxleJointPos_VF		-0.300	-2.530	+0.220
	 DriveAxleMountOffset			-0.050
	 vecSteeringAxis_VF				+1.000	+0.000	+0.000

	 WishboneLength					+0.430

	 vecJointMount_VF				-0.345	-2.500	+0.135
	 vecJointAxis_VF				+0.000	-1.000	+0.000
	 vecSteeringMount_VF			-0.305	-2.380	+0.185		; RF

	 vecStrutRodMount_SF			-0.008	-0.115	+0.062
	 vecStrutHubPoint_SF			+0.075	+0.000	+0.110
	 vecStrutHubAxis_SF				+1.000	+0.000	+0.000
	 StrutDimX						-0.090
	 StrutDimZ						+0.465
	 ;StrutDimZ						+0.325
	 WishboneSign					+1.000
	 SteeringSign					+1.000

	 AntiRollBarId					0
	 AntiRollBarSlot				1

	 vecTopMountDeformUpAxis_RF		0.000	0.000	1.000
	 vecTopMountDeformSideAxis_RF	1.000	0.000	0.000
	 TopMountMaxDeformSide			0.050
	 TopMountMaxDeformUp			0.050

	 vecPosOffset_NGP				+0.025	+0.010	+0.000
	 BumpStopRebound_NGP			1.10

	 SpringDamper
	 ("SpringDamper"
	  InnerBumpRubberPos			0.160
	  OuterBumpRubberPos			0.470
	  DampingBumpRubber				15000
	  BumpRubberStiffness			168000
	  DroopStiffness				600000
	  )

	 Tyre
	 ("Tyre"
	  DebugId						1
	  Performance_NGP				1.0
	  CarcassRadius_NGP				0.300
	  TreadDepth_NGP				0.010
	  CarcassWidth_NGP				0.159
	  TreadWidth_NGP				0.110
	  SideWallHeight_NGP			0.123
	  HubOffset_NGP					-0.028
	  )))

   ("Wheel"
	("CAR_WHEEL_LB"
	 InverseMass					0.0227
	 DebugId						3
	 IsSteered						0

	 vecDriveAxleJointPos_VF		+0.300	+0.000	+0.220
	 DriveAxleMountOffset			-0.050
	 vecSteeringAxis_VF				+1.000	+0.000	+0.000

	 WishboneLength					+0.510

	 vecJointMount_VF				+0.265	+0.000	+0.135
	 vecJointAxis_VF				+0.000	-1.000	+0.000
	 vecSteeringMount_VF			+0.265	+0.150	+0.135

	 vecStrutRodMount_SF			+0.000	+0.150	+0.000
	 vecStrutHubPoint_SF			+0.065	+0.000	+0.110
	 vecStrutHubAxis_SF				+1.000	+0.000	+0.000
	 StrutDimX						-0.130
	 StrutDimZ						+0.505
	 ;StrutDimZ						+0.365
	 WishboneSign					-1.000
	 SteeringSign					-1.000

	 AntiRollBarId					1
	 AntiRollBarSlot				0

	 vecTopMountDeformUpAxis_RF		0.000	0.000	1.000
	 vecTopMountDeformSideAxis_RF	-1.000	0.000	0.000
	 TopMountMaxDeformSide			0.050
	 TopMountMaxDeformUp			0.050

	 vecPosOffset_NGP				-0.030	+0.015	+0.000
	 BumpStopRebound_NGP			1.10

	 SpringDamper
	 ("SpringDamper"
	  InnerBumpRubberPos			0.160
	  OuterBumpRubberPos			0.470
	  DampingBumpRubber				15500
	  BumpRubberStiffness			172000
	  DroopStiffness				600000
	  )

	 Tyre
	 ("Tyre"
	  DebugId						2
	  Performance_NGP				1.0
	  CarcassRadius_NGP				0.300
	  TreadDepth_NGP				0.010
	  CarcassWidth_NGP				0.159
	  TreadWidth_NGP				0.110
	  SideWallHeight_NGP			0.123
	  HubOffset_NGP					-0.028
	  )))

   ("Wheel"
	("CAR_WHEEL_RB"
	 InverseMass					0.0227
	 DebugId						4
	 IsSteered						0

	 vecDriveAxleJointPos_VF		-0.300	+0.000	+0.220
	 DriveAxleMountOffset			-0.050
	 vecSteeringAxis_VF				+1.000	+0.000	+0.000

	 WishboneLength					+0.510

	 vecJointMount_VF				-0.265	+0.000	+0.135
	 vecJointAxis_VF				+0.000	-1.000	+0.000
	 vecSteeringMount_VF			-0.265	+0.150	+0.135

	 vecStrutRodMount_SF			+0.000	-0.150	+0.000
	 vecStrutHubPoint_SF			+0.065	+0.000	+0.110
	 vecStrutHubAxis_SF				+1.000	+0.000	+0.000
	 StrutDimX						-0.130
	 StrutDimZ						+0.505
	 ;StrutDimZ						+0.365
	 WishboneSign					+1.000
	 SteeringSign					+1.000

	 AntiRollBarId					1
	 AntiRollBarSlot				1

	 vecTopMountDeformUpAxis_RF		0.000	0.000	1.000
	 vecTopMountDeformSideAxis_RF	1.000	0.000	0.000
	 TopMountMaxDeformSide			0.050
	 TopMountMaxDeformUp			0.050

	 vecPosOffset_NGP				+0.030	+0.015	+0.000
	 BumpStopRebound_NGP			1.10

	 SpringDamper
	 ("SpringDamper"
	  InnerBumpRubberPos			0.160
	  OuterBumpRubberPos			0.470
	  DampingBumpRubber				15500
	  BumpRubberStiffness			172000
	  DroopStiffness				600000
	  )

	 Tyre
	 ("Tyre"
	  DebugId						3
	  Performance_NGP				1.0
	  CarcassRadius_NGP				0.300
	  TreadDepth_NGP				0.010
	  CarcassWidth_NGP				0.159
	  TreadWidth_NGP				0.110
	  SideWallHeight_NGP			0.123
	  HubOffset_NGP					-0.028
	  )))
   )
))
