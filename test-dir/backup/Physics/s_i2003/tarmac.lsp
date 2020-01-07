(("PhysicsEngine"
  DefManager
  (
   ("Car"
	("CAR_ROOT"
	 SetupSpec						1
	 CarId							2064138633

	 Drive
	 ("Drive"
	  BrakeMass_LF_NGP				16.459
	  BrakeRadiusEff_LF_NGP			0.159
	  BrakePlateArea_LF_NGP			0.108856
	  BrakeVentArea_LF_NGP			0.128450
	  BrakePistonArea_LF_NGP		0.005039

	  BrakeMass_RF_NGP				16.459
	  BrakeRadiusEff_RF_NGP			0.159
	  BrakePlateArea_RF_NGP			0.108856
	  BrakeVentArea_RF_NGP			0.128450
	  BrakePistonArea_RF_NGP		0.005039

	  BrakeMass_LR_NGP				15.324
	  BrakeRadiusEff_LR_NGP			0.152
	  BrakePlateArea_LR_NGP			0.101349
	  BrakeVentArea_LR_NGP			0.119592
	  BrakePistonArea_LR_NGP		0.005039

	  BrakeMass_RR_NGP				15.324
	  BrakeRadiusEff_RR_NGP			0.152
	  BrakePlateArea_RR_NGP			0.101349
	  BrakeVentArea_RR_NGP			0.119592
	  BrakePistonArea_RR_NGP		0.005039
	  )
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

	 vecJointMount_VF				+0.345	-2.520	+0.130
	 vecJointAxis_VF				+0.000	-1.000	+0.000
	 vecSteeringMount_VF			+0.305	-2.400	+0.180		; LF

	 vecStrutRodMount_SF			-0.008	+0.115	+0.064
	 vecStrutHubPoint_SF			+0.075	+0.000	+0.110
	 vecStrutHubAxis_SF				+1.000	+0.000	+0.000
	 StrutDimX						-0.090
	 StrutDimZ						+0.465
	 ;StrutDimZ						+0.375
	 WishboneSign					-1.000
	 SteeringSign					-1.000

	 AntiRollBarId					0
	 AntiRollBarSlot				0

	 vecTopMountDeformUpAxis_RF		0.000	0.000	1.000
	 vecTopMountDeformSideAxis_RF	-1.000	0.000	0.000
	 TopMountMaxDeformSide			0.050
	 TopMountMaxDeformUp			0.050

	 vecPosOffset_NGP				-0.035	+0.000	+0.000
	 BumpStopRebound_NGP			1.10

	 SpringDamper
	 ("SpringDamper"
	  InnerBumpRubberPos			0.160
	  OuterBumpRubberPos			0.320
	  DampingBumpRubber				15000
	  BumpRubberStiffness			168000
	  DroopStiffness				600000
	  )

	 Tyre
	 ("Tyre"
	  DebugId						0
	  Performance_NGP				1.0
	  CarcassRadius_NGP				0.310
	  TreadDepth_NGP				0.010
	  CarcassWidth_NGP				0.228
	  TreadWidth_NGP				0.200
	  SideWallHeight_NGP			0.090
	  HubOffset_NGP					-0.050
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

	 vecJointMount_VF				-0.345	-2.520	+0.130
	 vecJointAxis_VF				+0.000	-1.000	+0.000
	 vecSteeringMount_VF			-0.305	-2.400	+0.180		; RF

	 vecStrutRodMount_SF			-0.008	-0.115	+0.064
	 vecStrutHubPoint_SF			+0.075	+0.000	+0.110
	 vecStrutHubAxis_SF				+1.000	+0.000	+0.000
	 StrutDimX						-0.090
	 StrutDimZ						+0.465
	 ;StrutDimZ						+0.375
	 WishboneSign					+1.000
	 SteeringSign					+1.000

	 AntiRollBarId					0
	 AntiRollBarSlot				1

	 vecTopMountDeformUpAxis_RF		0.000	0.000	1.000
	 vecTopMountDeformSideAxis_RF	1.000	0.000	0.000
	 TopMountMaxDeformSide			0.050
	 TopMountMaxDeformUp			0.050

	 vecPosOffset_NGP				+0.035	+0.000	+0.000
	 BumpStopRebound_NGP			1.10

	 SpringDamper
	 ("SpringDamper"
	  InnerBumpRubberPos			0.160
	  OuterBumpRubberPos			0.320
	  DampingBumpRubber				15000
	  BumpRubberStiffness			168000
	  DroopStiffness				600000
	  )

	 Tyre
	 ("Tyre"
	  DebugId						1
	  Performance_NGP				1.0
	  CarcassRadius_NGP				0.310
	  TreadDepth_NGP				0.010
	  CarcassWidth_NGP				0.228
	  TreadWidth_NGP				0.200
	  SideWallHeight_NGP			0.090
	  HubOffset_NGP					-0.050
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

	 vecJointMount_VF				+0.265	+0.000	+0.130
	 vecJointAxis_VF				+0.000	-1.000	+0.000
	 vecSteeringMount_VF			+0.265	+0.150	+0.130

	 vecStrutRodMount_SF			+0.000	+0.150	+0.000
	 vecStrutHubPoint_SF			+0.065	+0.000	+0.110
	 vecStrutHubAxis_SF				+1.000	+0.000	+0.000
	 StrutDimX						-0.130
	 StrutDimZ						+0.505
	 ;StrutDimZ						+0.415
	 WishboneSign					-1.000
	 SteeringSign					-1.000

	 AntiRollBarId					1
	 AntiRollBarSlot				0

	 vecTopMountDeformUpAxis_RF		0.000	0.000	1.000
	 vecTopMountDeformSideAxis_RF	-1.000	0.000	0.000
	 TopMountMaxDeformSide			0.050
	 TopMountMaxDeformUp			0.050

	 vecPosOffset_NGP				-0.035	+0.010	+0.000
	 BumpStopRebound_NGP			1.10

	 SpringDamper
	 ("SpringDamper"
	  InnerBumpRubberPos			0.160
	  OuterBumpRubberPos			0.320
	  DampingBumpRubber				15500
	  BumpRubberStiffness			172000
	  DroopStiffness				600000
	  )

	 Tyre
	 ("Tyre"
	  DebugId						2
	  Performance_NGP				1.0
	  CarcassRadius_NGP				0.310
	  TreadDepth_NGP				0.010
	  CarcassWidth_NGP				0.228
	  TreadWidth_NGP				0.200
	  SideWallHeight_NGP			0.090
	  HubOffset_NGP					-0.050
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

	 vecJointMount_VF				-0.265	+0.000	+0.130
	 vecJointAxis_VF				+0.000	-1.000	+0.000
	 vecSteeringMount_VF			-0.265	+0.150	+0.130

	 vecStrutRodMount_SF			+0.000	-0.150	+0.000
	 vecStrutHubPoint_SF			+0.065	+0.000	+0.110
	 vecStrutHubAxis_SF				+1.000	+0.000	+0.000
	 StrutDimX						-0.130
	 StrutDimZ						+0.505
	 ;StrutDimZ						+0.415
	 WishboneSign					+1.000
	 SteeringSign					+1.000

	 AntiRollBarId					1
	 AntiRollBarSlot				1

	 vecTopMountDeformUpAxis_RF		0.000	0.000	1.000
	 vecTopMountDeformSideAxis_RF	1.000	0.000	0.000
	 TopMountMaxDeformSide			0.050
	 TopMountMaxDeformUp			0.050

	 vecPosOffset_NGP				+0.035	+0.010	+0.000
	 BumpStopRebound_NGP			1.10

	 SpringDamper
	 ("SpringDamper"
	  InnerBumpRubberPos			0.160
	  OuterBumpRubberPos			0.320
	  DampingBumpRubber				15500
	  BumpRubberStiffness			172000
	  DroopStiffness				600000
	  )

	 Tyre
	 ("Tyre"
	  DebugId						3
	  Performance_NGP				1.0
	  CarcassRadius_NGP				0.310
	  TreadDepth_NGP				0.010
	  CarcassWidth_NGP				0.228
	  TreadWidth_NGP				0.200
	  SideWallHeight_NGP			0.090
	  HubOffset_NGP					-0.050
	  )))
   )
))
