(("PhysicsEngine"
  DefManager
  (
   ("Car"
	("CAR_ROOT"
	 SetupSpec						1
	 CarId							2389600794

	 Drive
	 ("Drive"
	  BrakeMass_LF_NGP				15.678
	  BrakeRadiusEff_LF_NGP			0.149
	  BrakePlateArea_LF_NGP			0.113413
	  BrakeVentArea_LF_NGP			0.133827
	  BrakePistonArea_LF_NGP		0.005309

	  BrakeMass_RF_NGP				15.678
	  BrakeRadiusEff_RF_NGP			0.149
	  BrakePlateArea_RF_NGP			0.113413
	  BrakeVentArea_RF_NGP			0.133827
	  BrakePistonArea_RF_NGP		0.005309

	  BrakeMass_LR_NGP				15.678
	  BrakeRadiusEff_LR_NGP			0.149
	  BrakePlateArea_LR_NGP			0.113413
	  BrakeVentArea_LR_NGP			0.133827
	  BrakePistonArea_LR_NGP		0.005309

	  BrakeMass_RR_NGP				15.678
	  BrakeRadiusEff_RR_NGP			0.149
	  BrakePlateArea_RR_NGP			0.113413
	  BrakeVentArea_RR_NGP			0.133827
	  BrakePistonArea_RR_NGP		0.005309
	  )
	 ))

   ("Wheel"
	("CAR_WHEEL_LF"
	 InverseMass					0.0229
	 DebugId						1
	 IsSteered						1

	 vecDriveAxleJointPos_VF		+0.300	-2.530	+0.220
	 DriveAxleMountOffset			-0.050
	 vecSteeringAxis_VF				+1.000	+0.000	+0.000

	 WishboneLength					+0.430

	 vecJointMount_VF				+0.315	-2.490	+0.120
	 vecJointAxis_VF				+0.000	-1.000	+0.000
	 vecSteeringMount_VF			+0.275	-2.370	+0.170		; LF

	 vecStrutRodMount_SF			-0.008	+0.115	+0.064
	 vecStrutHubPoint_SF			+0.075	+0.000	+0.110
	 vecStrutHubAxis_SF				+1.000	+0.000	+0.000
	 StrutDimX						-0.090
	 StrutDimZ						+0.465
	 ;StrutDimZ						+0.380
	 WishboneSign					-1.000
	 SteeringSign					-1.000

	 AntiRollBarId					0
	 AntiRollBarSlot				0

	 vecTopMountDeformUpAxis_RF		0.000	0.000	1.000
	 vecTopMountDeformSideAxis_RF	-1.000	0.000	0.000
	 TopMountMaxDeformSide			0.050
	 TopMountMaxDeformUp			0.050

	 vecPosOffset_NGP				-0.030	+0.000	+0.000
	 BumpStopRebound_NGP			1.10

	 SpringDamper
	 ("SpringDamper"
	  InnerBumpRubberPos			0.160
	  OuterBumpRubberPos			0.320
	  DampingBumpRubber				16500
	  BumpRubberStiffness			190000
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
	 InverseMass					0.0229
	 DebugId						2
	 IsSteered						1

	 vecDriveAxleJointPos_VF		-0.300	-2.530	+0.220
	 DriveAxleMountOffset			-0.050
	 vecSteeringAxis_VF				+1.000	+0.000	+0.000

	 WishboneLength					+0.430

	 vecJointMount_VF				-0.315	-2.490	+0.120
	 vecJointAxis_VF				+0.000	-1.000	+0.000
	 vecSteeringMount_VF			-0.275	-2.370	+0.170		; RF

	 vecStrutRodMount_SF			-0.008	-0.115	+0.064
	 vecStrutHubPoint_SF			+0.075	+0.000	+0.110
	 vecStrutHubAxis_SF				+1.000	+0.000	+0.000
	 StrutDimX						-0.090
	 StrutDimZ						+0.465
	 ;StrutDimZ						+0.380
	 WishboneSign					+1.000
	 SteeringSign					+1.000

	 AntiRollBarId					0
	 AntiRollBarSlot				1

	 vecTopMountDeformUpAxis_RF		0.000	0.000	1.000
	 vecTopMountDeformSideAxis_RF	1.000	0.000	0.000
	 TopMountMaxDeformSide			0.050
	 TopMountMaxDeformUp			0.050

	 vecPosOffset_NGP				+0.030	+0.000	+0.000
	 BumpStopRebound_NGP			1.10

	 SpringDamper
	 ("SpringDamper"
	  InnerBumpRubberPos			0.160
	  OuterBumpRubberPos			0.320
	  DampingBumpRubber				16500
	  BumpRubberStiffness			190000
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
	 InverseMass					0.0228
	 DebugId						3
	 IsSteered						0

	 vecDriveAxleJointPos_VF		+0.300	+0.000	+0.220
	 DriveAxleMountOffset			-0.050
	 vecSteeringAxis_VF				+1.000	+0.000	+0.000

	 WishboneLength					+0.510

	 vecJointMount_VF				+0.240	+0.000	+0.130
	 vecJointAxis_VF				+0.000	-1.000	+0.000
	 vecSteeringMount_VF			+0.240	+0.150	+0.130

	 vecStrutRodMount_SF			+0.000	+0.150	+0.000
	 vecStrutHubPoint_SF			+0.065	+0.000	+0.110
	 vecStrutHubAxis_SF				+1.000	+0.000	+0.000
	 StrutDimX						-0.130
	 StrutDimZ						+0.505
	 ;StrutDimZ						+0.420
	 WishboneSign					-1.000
	 SteeringSign					-1.000

	 AntiRollBarId					1
	 AntiRollBarSlot				0

	 vecTopMountDeformUpAxis_RF		0.000	0.000	1.000
	 vecTopMountDeformSideAxis_RF	-1.000	0.000	0.000
	 TopMountMaxDeformSide			0.050
	 TopMountMaxDeformUp			0.050

	 vecPosOffset_NGP				-0.040	-0.000	+0.000
	 BumpStopRebound_NGP			1.10

	 SpringDamper
	 ("SpringDamper"
	  InnerBumpRubberPos			0.160
	  OuterBumpRubberPos			0.320
	  DampingBumpRubber				16500
	  BumpRubberStiffness			190000
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
	 InverseMass					0.0228
	 DebugId						4
	 IsSteered						0

	 vecDriveAxleJointPos_VF		-0.300	+0.000	+0.220
	 DriveAxleMountOffset			-0.050
	 vecSteeringAxis_VF				+1.000	+0.000	+0.000

	 WishboneLength					+0.510

	 vecJointMount_VF				-0.240	+0.000	+0.130
	 vecJointAxis_VF				+0.000	-1.000	+0.000
	 vecSteeringMount_VF			-0.240	+0.150	+0.130

	 vecStrutRodMount_SF			+0.000	-0.150	+0.000
	 vecStrutHubPoint_SF			+0.065	+0.000	+0.110
	 vecStrutHubAxis_SF				+1.000	+0.000	+0.000
	 StrutDimX						-0.130
	 StrutDimZ						+0.505
	 ;StrutDimZ						+0.420
	 WishboneSign					+1.000
	 SteeringSign					+1.000

	 AntiRollBarId					1
	 AntiRollBarSlot				1

	 vecTopMountDeformUpAxis_RF		0.000	0.000	1.000
	 vecTopMountDeformSideAxis_RF	1.000	0.000	0.000
	 TopMountMaxDeformSide			0.050
	 TopMountMaxDeformUp			0.050

	 vecPosOffset_NGP				+0.040	-0.000	+0.000
	 BumpStopRebound_NGP			1.10

	 SpringDamper
	 ("SpringDamper"
	  InnerBumpRubberPos			0.160
	  OuterBumpRubberPos			0.320
	  DampingBumpRubber				16500
	  BumpRubberStiffness			190000
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
