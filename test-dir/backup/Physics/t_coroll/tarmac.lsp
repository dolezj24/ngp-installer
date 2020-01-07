(("PhysicsEngine"
  DefManager
  (
   ("CarBody"
	("CAR_BODY"
	 vecCenterOfGravity				0 -0.980 0.300
	 ))

   ("Car"
	("CAR_ROOT"
	 SetupSpec						1
	 CarId							1937905160
	 ))

   ("Wheel"
	("CAR_WHEEL_LF"
	 InverseMass					0.0320
	 DebugId						1
	 IsSteered						1

	 vecDriveAxleJointPos_VF		+0.300	-2.530	+0.220
	 DriveAxleMountOffset			-0.050
	 vecSteeringAxis_VF				+1.000	+0.000	+0.000

	 WishboneLength					+0.320

	 vecJointMount_VF				+0.335	-2.285	+0.100
	 vecJointAxis_VF				+0.000	-1.000	+0.000
	 vecSteeringMount_VF			+0.325	-2.405	+0.150	  ; LF

	 vecStrutRodMount_SF			+0.009	-0.115	+0.041
	 vecStrutHubPoint_SF			+0.075	+0.000	+0.110
	 vecStrutHubAxis_SF				+1.000	+0.000	+0.000
	 StrutDimX						-0.090
	 StrutDimZ						+0.465
	 ;StrutDimZ						+0.395
	 WishboneSign					-1.000
	 SteeringSign					+1.000

	 AntiRollBarId					0
	 AntiRollBarSlot				0

	 vecTopMountDeformUpAxis_RF		0.000	0.000	1.000
	 vecTopMountDeformSideAxis_RF	-1.000	0.000	0.000
	 TopMountMaxDeformSide			0.050
	 TopMountMaxDeformUp			0.050

	 vecPosOffset_NGP				+0.035	-0.000	+0.000
	 BumpStopRebound_NGP			1.11

	 SpringDamper
	 ("SpringDamper"
	  InnerBumpRubberPos			0.150
	  OuterBumpRubberPos			0.320
	  DampingBumpRubber				17500
	  BumpRubberStiffness			305000
	  DroopStiffness				600000
	  )

	 Tyre
	 ("Tyre"
	  DebugId						0
	  Performance_NGP				0.985
	  CarcassRadius_NGP				0.293
	  TreadDepth_NGP				0.010
	  CarcassWidth_NGP				0.205
	  TreadWidth_NGP				0.180
	  SideWallHeight_NGP			0.113
	  HubOffset_NGP					-0.045
	  )))

   ("Wheel"
	("CAR_WHEEL_RF"
	 InverseMass					0.0320
	 DebugId						2
	 IsSteered						1

	 vecDriveAxleJointPos_VF		-0.300	-2.530	+0.220
	 DriveAxleMountOffset			-0.050
	 vecSteeringAxis_VF				+1.000	+0.000	+0.000

	 WishboneLength					+0.320

	 vecJointMount_VF				-0.335	-2.285	+0.100
	 vecJointAxis_VF				+0.000	-1.000	+0.000
	 vecSteeringMount_VF			-0.325	-2.405	+0.150	  ; RF

	 vecStrutRodMount_SF			+0.009	+0.115	+0.041
	 vecStrutHubPoint_SF			+0.075	+0.000	+0.110
	 vecStrutHubAxis_SF				+1.000	+0.000	+0.000
	 StrutDimX						-0.090
	 StrutDimZ						+0.465
	 ;StrutDimZ						+0.395
	 WishboneSign					+1.000
	 SteeringSign					-1.000

	 AntiRollBarId					0
	 AntiRollBarSlot				1

	 vecTopMountDeformUpAxis_RF		0.000	0.000	1.000
	 vecTopMountDeformSideAxis_RF	1.000	0.000	0.000
	 TopMountMaxDeformSide			0.050
	 TopMountMaxDeformUp			0.050

	 vecPosOffset_NGP				-0.035	-0.000	+0.000
	 BumpStopRebound_NGP			1.11

	 SpringDamper
	 ("SpringDamper"
	  InnerBumpRubberPos			0.150
	  OuterBumpRubberPos			0.320
	  DampingBumpRubber				17500
	  BumpRubberStiffness			305000
	  DroopStiffness				600000
	  )

	 Tyre
	 ("Tyre"
	  DebugId						1
	  Performance_NGP				0.985
	  CarcassRadius_NGP				0.293
	  TreadDepth_NGP				0.010
	  CarcassWidth_NGP				0.205
	  TreadWidth_NGP				0.180
	  SideWallHeight_NGP			0.113
	  HubOffset_NGP					-0.045
	  )))

   ("Wheel"
	("CAR_WHEEL_LB"
	 InverseMass					0.0243
	 DebugId						3
	 IsSteered						0

	 vecDriveAxleJointPos_VF		+0.300	+0.000	+0.220
	 DriveAxleMountOffset			-0.050
	 vecSteeringAxis_VF				+1.000	+0.000	+0.000

	 WishboneLength					+1.230

	 vecJointMount_VF				-0.535	+0.000	+0.100
	 vecJointAxis_VF				+0.000	-1.000	+0.000
	 vecSteeringMount_VF			-0.535	+0.150	+0.100

	 vecStrutRodMount_SF			+0.000	+0.150	+0.000
	 vecStrutHubPoint_SF			+0.065	+0.000	+0.110
	 vecStrutHubAxis_SF				+1.000	+0.000	+0.000
	 StrutDimX						-0.130
	 StrutDimZ						+0.505
	 ;StrutDimZ						+0.425
	 WishboneSign					-1.000
	 SteeringSign					-1.000

	 AntiRollBarId					1
	 AntiRollBarSlot				0

	 vecTopMountDeformUpAxis_RF		0.000	0.000	1.000
	 vecTopMountDeformSideAxis_RF	-1.000	0.000	0.000
	 TopMountMaxDeformSide			0.050
	 TopMountMaxDeformUp			0.050

	 vecPosOffset_NGP				+0.035	+0.000	+0.000
	 BumpStopRebound_NGP			1.11

	 SpringDamper
	 ("SpringDamper"
	  InnerBumpRubberPos			0.140
	  OuterBumpRubberPos			0.320
	  DampingBumpRubber				23000
	  BumpRubberStiffness			405000
	  DroopStiffness				600000
	  )

	 Tyre
	 ("Tyre"
	  DebugId						2
	  Performance_NGP				1.015
	  CarcassRadius_NGP				0.293
	  TreadDepth_NGP				0.010
	  CarcassWidth_NGP				0.225
	  TreadWidth_NGP				0.200
	  SideWallHeight_NGP			0.113
	  HubOffset_NGP					-0.050
	  )))

   ("Wheel"
	("CAR_WHEEL_RB"
	 InverseMass					0.0243
	 DebugId						4
	 IsSteered						0

	 vecDriveAxleJointPos_VF		-0.300	+0.000	+0.220
	 DriveAxleMountOffset			-0.050
	 vecSteeringAxis_VF				+1.000	+0.000	+0.000

	 WishboneLength					+1.230

	 vecJointMount_VF				+0.535	+0.000	+0.100
	 vecJointAxis_VF				+0.000	-1.000	+0.000
	 vecSteeringMount_VF			+0.535	+0.150	+0.100

	 vecStrutRodMount_SF			+0.000	-0.150	+0.000
	 vecStrutHubPoint_SF			+0.065	+0.000	+0.110
	 vecStrutHubAxis_SF				+1.000	+0.000	+0.000
	 StrutDimX						-0.130
	 StrutDimZ						+0.505
	 ;StrutDimZ						+0.425
	 WishboneSign					+1.000
	 SteeringSign					+1.000

	 AntiRollBarId					1
	 AntiRollBarSlot				1

	 vecTopMountDeformUpAxis_RF		0.000	0.000	1.000
	 vecTopMountDeformSideAxis_RF	1.000	0.000	0.000
	 TopMountMaxDeformSide			0.050
	 TopMountMaxDeformUp			0.050

	 vecPosOffset_NGP				-0.035	+0.000	+0.000
	 BumpStopRebound_NGP			1.11

	 SpringDamper
	 ("SpringDamper"
	  InnerBumpRubberPos			0.140
	  OuterBumpRubberPos			0.320
	  DampingBumpRubber				23000
	  BumpRubberStiffness			405000
	  DroopStiffness				600000
	  )

	 Tyre
	 ("Tyre"
	  DebugId						3
	  Performance_NGP				1.015
	  CarcassRadius_NGP				0.293
	  TreadDepth_NGP				0.010
	  CarcassWidth_NGP				0.225
	  TreadWidth_NGP				0.200
	  SideWallHeight_NGP			0.113
	  HubOffset_NGP					-0.050
	  )))
   )
))
