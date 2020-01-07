(("PhysicsEngine"
  DefManager
  (
   ("Car"
	("CAR_ROOT"
	 SetupSpec						2
	 CarId							2109399795
	 ))

   ("Wheel"
	("CAR_WHEEL_LF"
	 InverseMass					0.0206
	 DebugId						1
	 IsSteered						1

	 vecDriveAxleJointPos_VF		+0.300	-2.530	+0.220
	 DriveAxleMountOffset			-0.050
	 vecSteeringAxis_VF				+1.000	+0.000	+0.000

	 WishboneLength					+0.430

	 vecJointMount_VF				+0.310	-2.550	+0.185
	 vecJointAxis_VF				+0.000	-1.000	+0.000
	 vecSteeringMount_VF			+0.270	-2.430	+0.235		; LF

	 vecStrutRodMount_SF			-0.008	+0.115	+0.062
	 vecStrutHubPoint_SF			+0.075	+0.000	+0.110
	 vecStrutHubAxis_SF				+1.000	+0.000	+0.000
	 StrutDimX						-0.090
	 StrutDimZ						+0.465
	 ;StrutDimZ						+0.340
	 WishboneSign					-1.000
	 SteeringSign					-1.000

	 AntiRollBarId					0
	 AntiRollBarSlot				0

	 vecTopMountDeformUpAxis_RF		0.000	0.000	1.000
	 vecTopMountDeformSideAxis_RF	-1.000	0.000	0.000
	 TopMountMaxDeformSide			0.050
	 TopMountMaxDeformUp			0.050

	 vecPosOffset_NGP				-0.015	+0.008	+0.000
	 BumpStopRebound_NGP			1.10

	 SpringDamper
	 ("SpringDamper"
	  InnerBumpRubberPos			0.160
	  OuterBumpRubberPos			0.370
	  DampingBumpRubber				20500
	  BumpRubberStiffness			270000
	  DroopStiffness				600000
	  )

	 Tyre
	 ("Tyre"
	  DebugId						0
	  Performance_NGP				1.0
	  CarcassRadius_NGP				0.310
	  TreadDepth_NGP				0.010
	  CarcassWidth_NGP				0.159
	  TreadWidth_NGP				0.110
	  SideWallHeight_NGP			0.123
	  HubOffset_NGP					-0.028
	  )))

   ("Wheel"
	("CAR_WHEEL_RF"
	 InverseMass					0.0206
	 DebugId						2
	 IsSteered						1

	 vecDriveAxleJointPos_VF		-0.300	-2.530	+0.220
	 DriveAxleMountOffset			-0.050
	 vecSteeringAxis_VF				+1.000	+0.000	+0.000

	 WishboneLength					+0.430

	 vecJointMount_VF				-0.310	-2.550	+0.185
	 vecJointAxis_VF				+0.000	-1.000	+0.000
	 vecSteeringMount_VF			-0.270	-2.430	+0.235		; RF

	 vecStrutRodMount_SF			-0.008	-0.115	+0.062
	 vecStrutHubPoint_SF			+0.075	+0.000	+0.110
	 vecStrutHubAxis_SF				+1.000	+0.000	+0.000
	 StrutDimX						-0.090
	 StrutDimZ						+0.465
	 ;StrutDimZ						+0.340
	 WishboneSign					+1.000
	 SteeringSign					+1.000

	 AntiRollBarId					0
	 AntiRollBarSlot				1

	 vecTopMountDeformUpAxis_RF		0.000	0.000	1.000
	 vecTopMountDeformSideAxis_RF	1.000	0.000	0.000
	 TopMountMaxDeformSide			0.050
	 TopMountMaxDeformUp			0.050

	 vecPosOffset_NGP				+0.015	+0.008	+0.000
	 BumpStopRebound_NGP			1.10

	 SpringDamper
	 ("SpringDamper"
	  InnerBumpRubberPos			0.160
	  OuterBumpRubberPos			0.370
	  DampingBumpRubber				20500
	  BumpRubberStiffness			270000
	  DroopStiffness				600000
	  )

	 Tyre
	 ("Tyre"
	  DebugId						1
	  Performance_NGP				1.0
	  CarcassRadius_NGP				0.310
	  TreadDepth_NGP				0.010
	  CarcassWidth_NGP				0.159
	  TreadWidth_NGP				0.110
	  SideWallHeight_NGP			0.123
	  HubOffset_NGP					-0.028
	  )))

   ("Wheel"
	("CAR_WHEEL_LB"
	 InverseMass					0.0245
	 DebugId						3
	 IsSteered						0

	 vecDriveAxleJointPos_VF		+0.300	+0.000	+0.220
	 DriveAxleMountOffset			-0.050
	 vecSteeringAxis_VF				+1.000	+0.000	+0.000

	 WishboneLength					+0.510

	 vecJointMount_VF				+0.230	+0.000	+0.220
	 vecJointAxis_VF				+0.000	-1.000	+0.000
	 vecSteeringMount_VF			+0.230	+0.150	+0.220

	 vecStrutRodMount_SF			+0.000	+0.150	+0.000
	 vecStrutHubPoint_SF			+0.065	+0.000	+0.110
	 vecStrutHubAxis_SF				+1.000	+0.000	+0.000
	 StrutDimX						-0.130
	 StrutDimZ						+0.465
	 ;StrutDimZ						+0.340
	 WishboneSign					-1.000
	 SteeringSign					-1.000

	 AntiRollBarId					1
	 AntiRollBarSlot				0

	 vecTopMountDeformUpAxis_RF		0.000	0.000	1.000
	 vecTopMountDeformSideAxis_RF	-1.000	0.000	0.000
	 TopMountMaxDeformSide			0.050
	 TopMountMaxDeformUp			0.050

	 vecPosOffset_NGP				-0.015	+0.008	+0.000
	 BumpStopRebound_NGP			1.10

	 SpringDamper
	 ("SpringDamper"
	  InnerBumpRubberPos			0.160
	  OuterBumpRubberPos			0.370
	  DampingBumpRubber				17500
	  BumpRubberStiffness			230000
	  DroopStiffness				600000
	  )

	 Tyre
	 ("Tyre"
	  DebugId						2
	  Performance_NGP				1.0
	  CarcassRadius_NGP				0.310
	  TreadDepth_NGP				0.010
	  CarcassWidth_NGP				0.159
	  TreadWidth_NGP				0.110
	  SideWallHeight_NGP			0.123
	  HubOffset_NGP					-0.028
	  )))

   ("Wheel"
	("CAR_WHEEL_RB"
	 InverseMass					0.0245
	 DebugId						4
	 IsSteered						0

	 vecDriveAxleJointPos_VF		-0.300	+0.000	+0.220
	 DriveAxleMountOffset			-0.050
	 vecSteeringAxis_VF				+1.000	+0.000	+0.000

	 WishboneLength					+0.510

	 vecJointMount_VF				-0.230	+0.000	+0.220
	 vecJointAxis_VF				+0.000	-1.000	+0.000
	 vecSteeringMount_VF			-0.230	+0.150	+0.220

	 vecStrutRodMount_SF			+0.000	-0.150	+0.000
	 vecStrutHubPoint_SF			+0.065	+0.000	+0.110
	 vecStrutHubAxis_SF				+1.000	+0.000	+0.000
	 StrutDimX						-0.130
	 StrutDimZ						+0.465
	 ;StrutDimZ						+0.340
	 WishboneSign					+1.000
	 SteeringSign					+1.000

	 AntiRollBarId					1
	 AntiRollBarSlot				1

	 vecTopMountDeformUpAxis_RF		0.000	0.000	1.000
	 vecTopMountDeformSideAxis_RF	1.000	0.000	0.000
	 TopMountMaxDeformSide			0.050
	 TopMountMaxDeformUp			0.050

	 vecPosOffset_NGP				+0.015	+0.008	+0.000
	 BumpStopRebound_NGP			1.10

	 SpringDamper
	 ("SpringDamper"
	  InnerBumpRubberPos			0.160
	  OuterBumpRubberPos			0.370
	  DampingBumpRubber				17500
	  BumpRubberStiffness			230000
	  DroopStiffness				600000
	  )

	 Tyre
	 ("Tyre"
	  DebugId						3
	  Performance_NGP				1.0
	  CarcassRadius_NGP				0.310
	  TreadDepth_NGP				0.010
	  CarcassWidth_NGP				0.159
	  TreadWidth_NGP				0.110
	  SideWallHeight_NGP			0.123
	  HubOffset_NGP					-0.028
	  )))
   )
))
