(("PhysicsEngine"
  DefManager
  (
   ("Car"
	("CAR_ROOT"
	 SetupSpec						1
	 CarId							3129611095

	 Drive
	 ("Drive"
	  BrakeMass_LF_NGP				9.880
	  BrakeRadiusEff_LF_NGP			0.132
	  BrakePlateArea_LF_NGP			0.081681
	  BrakeVentArea_LF_NGP			0.085765
	  BrakePistonArea_LF_NGP		0.005790

	  BrakeMass_RF_NGP				9.880
	  BrakeRadiusEff_RF_NGP			0.132
	  BrakePlateArea_RF_NGP			0.081681
	  BrakeVentArea_RF_NGP			0.085765
	  BrakePistonArea_RF_NGP		0.005790

	  BrakeMass_LR_NGP				3.321
	  BrakeRadiusEff_LR_NGP			0.108
	  BrakePlateArea_LR_NGP			0.069266
	  BrakeVentArea_LR_NGP			0.0
	  BrakePistonArea_LR_NGP		0.002679

	  BrakeMass_RR_NGP				3.321
	  BrakeRadiusEff_RR_NGP			0.108
	  BrakePlateArea_RR_NGP			0.069266
	  BrakeVentArea_RR_NGP			0.0
	  BrakePistonArea_RR_NGP		0.002679
	  )
	 ))

   ("Wheel"
	("CAR_WHEEL_LF"
	 InverseMass					0.0206
	 DebugId						1
	 IsSteered						1

	 vecDriveAxleJointPos_VF		+0.300	-2.530	+0.220
	 DriveAxleMountOffset			-0.050
	 vecSteeringAxis_VF				+1.000	+0.000	+0.000

	 WishboneLength					+0.320

	 vecJointMount_VF				+0.355	-2.320	+0.075
	 vecJointAxis_VF				+0.000	-1.000	+0.000
	 vecSteeringMount_VF			+0.315	-2.200	+0.125		; LF

	 vecStrutRodMount_SF			-0.006	+0.115	+0.062
	 vecStrutHubPoint_SF			+0.075	+0.000	+0.110
	 vecStrutHubAxis_SF				+1.000	+0.000	+0.000
	 StrutDimX						-0.090
	 StrutDimZ						+0.465
	 ;StrutDimZ						+0.360
	 WishboneSign					-1.000
	 SteeringSign					-1.000

	 AntiRollBarId					0
	 AntiRollBarSlot				0

	 vecTopMountDeformUpAxis_RF		0.000	0.000	1.000
	 vecTopMountDeformSideAxis_RF	-1.000	0.000	0.000
	 TopMountMaxDeformSide			0.050
	 TopMountMaxDeformUp			0.050

	 vecPosOffset_NGP				-0.020	+0.000	+0.000
	 BumpStopRebound_NGP			1.11

	 SpringDamper
	 ("SpringDamper"
	  InnerBumpRubberPos			0.120
	  OuterBumpRubberPos			0.320
	  DampingBumpRubber				24500
	  BumpRubberStiffness			380000
	  DroopStiffness				600000
	  )

	 Tyre
	 ("Tyre"
	  DebugId						0
	  Performance_NGP				1.0
	  CarcassRadius_NGP				0.295
	  TreadDepth_NGP				0.010
	  CarcassWidth_NGP				0.198
	  TreadWidth_NGP				0.180
	  SideWallHeight_NGP			0.098
	  HubOffset_NGP					-0.045
	  )))

   ("Wheel"
	("CAR_WHEEL_RF"
	 InverseMass					0.0206
	 DebugId						2
	 IsSteered						1

	 vecDriveAxleJointPos_VF		-0.300	-2.530	+0.220
	 DriveAxleMountOffset			-0.050
	 vecSteeringAxis_VF				+1.000	+0.000	+0.000

	 WishboneLength					+0.320

	 vecJointMount_VF				-0.355	-2.320	+0.075
	 vecJointAxis_VF				+0.000	-1.000	+0.000
	 vecSteeringMount_VF			-0.315	-2.200	+0.125		; RF

	 vecStrutRodMount_SF			-0.006	-0.115	+0.062
	 vecStrutHubPoint_SF			+0.075	+0.000	+0.110
	 vecStrutHubAxis_SF				+1.000	+0.000	+0.000
	 StrutDimX						-0.090
	 StrutDimZ						+0.465
	 ;StrutDimZ						+0.360
	 WishboneSign					+1.000
	 SteeringSign					+1.000

	 AntiRollBarId					0
	 AntiRollBarSlot				1

	 vecTopMountDeformUpAxis_RF		0.000	0.000	1.000
	 vecTopMountDeformSideAxis_RF	1.000	0.000	0.000
	 TopMountMaxDeformSide			0.050
	 TopMountMaxDeformUp			0.050

	 vecPosOffset_NGP				+0.020	+0.000	+0.000
	 BumpStopRebound_NGP			1.11

	 SpringDamper
	 ("SpringDamper"
	  InnerBumpRubberPos			0.120
	  OuterBumpRubberPos			0.320
	  DampingBumpRubber				24500
	  BumpRubberStiffness			380000
	  DroopStiffness				600000
	  )

	 Tyre
	 ("Tyre"
	  DebugId						1
	  Performance_NGP				1.0
	  CarcassRadius_NGP				0.295
	  TreadDepth_NGP				0.010
	  CarcassWidth_NGP				0.198
	  TreadWidth_NGP				0.180
	  SideWallHeight_NGP			0.098
	  HubOffset_NGP					-0.045
	  )))

   ("Wheel"
	("CAR_WHEEL_LB"
	 InverseMass					0.0353
	 DebugId						3
	 IsSteered						0

	 vecDriveAxleJointPos_VF		+0.300	+0.000	+0.220
	 DriveAxleMountOffset			-0.050
	 vecSteeringAxis_VF				+1.000	+0.000	+0.000

	 WishboneLength					+1.190

	 vecJointMount_VF				-0.515	+0.000	+0.065
	 vecJointAxis_VF				+0.000	-1.000	+0.000
	 vecSteeringMount_VF			-0.515	+0.150	+0.065

	 vecStrutRodMount_SF			+0.000	+0.150	+0.000
	 vecStrutHubPoint_SF			+0.065	+0.000	+0.110
	 vecStrutHubAxis_SF				+1.000	+0.000	+0.000
	 StrutDimX						-0.130
	 StrutDimZ						+0.505
	 ;StrutDimZ						+0.400
	 WishboneSign					-1.000
	 SteeringSign					-1.000

	 AntiRollBarId					1
	 AntiRollBarSlot				0

	 vecTopMountDeformUpAxis_RF		0.000	0.000	1.000
	 vecTopMountDeformSideAxis_RF	-1.000	0.000	0.000
	 TopMountMaxDeformSide			0.050
	 TopMountMaxDeformUp			0.050

	 vecPosOffset_NGP				-0.025	-0.010	+0.000
	 BumpStopRebound_NGP			1.11

	 SpringDamper
	 ("SpringDamper"
	  InnerBumpRubberPos			0.120
	  OuterBumpRubberPos			0.320
	  DampingBumpRubber				14000
	  BumpRubberStiffness			220000
	  DroopStiffness				600000
	  )

	 Tyre
	 ("Tyre"
	  DebugId						2
	  Performance_NGP				1.0
	  CarcassRadius_NGP				0.295
	  TreadDepth_NGP				0.010
	  CarcassWidth_NGP				0.198
	  TreadWidth_NGP				0.180
	  SideWallHeight_NGP			0.098
	  HubOffset_NGP					-0.045
	  )))

   ("Wheel"
	("CAR_WHEEL_RB"
	 InverseMass					0.0353
	 DebugId						4
	 IsSteered						0

	 vecDriveAxleJointPos_VF		-0.300	+0.000	+0.220
	 DriveAxleMountOffset			-0.050
	 vecSteeringAxis_VF				+1.000	+0.000	+0.000

	 WishboneLength					+1.190

	 vecJointMount_VF				+0.515	+0.000	+0.065
	 vecJointAxis_VF				+0.000	-1.000	+0.000
	 vecSteeringMount_VF			+0.515	+0.150	+0.065

	 vecStrutRodMount_SF			+0.000	-0.150	+0.000
	 vecStrutHubPoint_SF			+0.065	+0.000	+0.110
	 vecStrutHubAxis_SF				+1.000	+0.000	+0.000
	 StrutDimX						-0.130
	 StrutDimZ						+0.505
	 ;StrutDimZ						+0.400
	 WishboneSign					+1.000
	 SteeringSign					+1.000

	 AntiRollBarId					1
	 AntiRollBarSlot				1

	 vecTopMountDeformUpAxis_RF		0.000	0.000	1.000
	 vecTopMountDeformSideAxis_RF	1.000	0.000	0.000
	 TopMountMaxDeformSide			0.050
	 TopMountMaxDeformUp			0.050

	 vecPosOffset_NGP				+0.025	-0.010	+0.000
	 BumpStopRebound_NGP			1.11

	 SpringDamper
	 ("SpringDamper"
	  InnerBumpRubberPos			0.120
	  OuterBumpRubberPos			0.320
	  DampingBumpRubber				14000
	  BumpRubberStiffness			220000
	  DroopStiffness				600000
	  )

	 Tyre
	 ("Tyre"
	  DebugId						3
	  Performance_NGP				1.0
	  CarcassRadius_NGP				0.295
	  TreadDepth_NGP				0.010
	  CarcassWidth_NGP				0.198
	  TreadWidth_NGP				0.180
	  SideWallHeight_NGP			0.098
	  HubOffset_NGP					-0.045
	  )))
   )
))