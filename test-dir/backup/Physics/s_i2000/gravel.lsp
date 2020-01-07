(("PhysicsEngine"
  DefManager
  (
   ("Car"
	("CAR_ROOT"
	 SetupSpec						0
	 CarId							113807539
	 ))

   ("Wheel"
	("CAR_WHEEL_LF"
	 InverseMass					0.0208
	 DebugId						1
	 IsSteered						1

	 vecDriveAxleJointPos_VF		+0.300	-2.530	+0.220
	 DriveAxleMountOffset			-0.050
	 vecSteeringAxis_VF				+1.000	+0.000	+0.000

	 WishboneLength					+0.320

	 vecJointMount_VF				+0.365	-2.560	+0.120
	 vecJointAxis_VF				+0.000	-1.000	+0.000
	 vecSteeringMount_VF			+0.355	-2.680	+0.170		; LF

	 vecStrutRodMount_SF			+0.006	-0.115	+0.048
	 vecStrutHubPoint_SF			+0.075	+0.000	+0.110
	 vecStrutHubAxis_SF				+1.000	+0.000	+0.000
	 StrutDimX						-0.090
	 StrutDimZ						+0.465
	 ;StrutDimZ						+0.355
	 WishboneSign					-1.000
	 SteeringSign					+1.000

	 AntiRollBarId					0
	 AntiRollBarSlot				0

	 vecTopMountDeformUpAxis_RF		0.000	0.000	1.000
	 vecTopMountDeformSideAxis_RF	-1.000	0.000	0.000
	 TopMountMaxDeformSide			0.050
	 TopMountMaxDeformUp			0.050

	 vecPosOffset_NGP				-0.035	+0.005	+0.000
	 BumpStopRebound_NGP			1.00

	 SpringDamper
	 ("SpringDamper"
	  InnerBumpRubberPos			0.140
	  OuterBumpRubberPos			0.320
	  DampingBumpRubber				27000
	  BumpRubberStiffness			470000
	  DroopStiffness				600000
	  )

	 Tyre
	 ("Tyre"
	  DebugId						0
	  Performance_NGP				1.0
	  CarcassRadius_NGP				0.305
	  TreadDepth_NGP				0.010
	  CarcassWidth_NGP				0.205
	  TreadWidth_NGP				0.164
	  SideWallHeight_NGP			0.131
	  HubOffset_NGP					-0.041
	  )))

   ("Wheel"
	("CAR_WHEEL_RF"
	 InverseMass					0.0208
	 DebugId						2
	 IsSteered						1

	 vecDriveAxleJointPos_VF		-0.300	-2.530	+0.220
	 DriveAxleMountOffset			-0.050
	 vecSteeringAxis_VF				+1.000	+0.000	+0.000

	 WishboneLength					+0.320

	 vecJointMount_VF				-0.365	-2.560	+0.120
	 vecJointAxis_VF				+0.000	-1.000	+0.000
	 vecSteeringMount_VF			-0.355	-2.680	+0.170		; RF

	 vecStrutRodMount_SF			+0.006	+0.115	+0.048
	 vecStrutHubPoint_SF			+0.075	+0.000	+0.110
	 vecStrutHubAxis_SF				+1.000	+0.000	+0.000
	 StrutDimX						-0.090
	 StrutDimZ						+0.465
	 ;StrutDimZ						+0.355
	 WishboneSign					+1.000
	 SteeringSign					-1.000

	 AntiRollBarId					0
	 AntiRollBarSlot				1

	 vecTopMountDeformUpAxis_RF		0.000	0.000	1.000
	 vecTopMountDeformSideAxis_RF	1.000	0.000	0.000
	 TopMountMaxDeformSide			0.050
	 TopMountMaxDeformUp			0.050

	 vecPosOffset_NGP				+0.035	+0.005	+0.000
	 BumpStopRebound_NGP			1.00

	 SpringDamper
	 ("SpringDamper"
	  InnerBumpRubberPos			0.140
	  OuterBumpRubberPos			0.320
	  DampingBumpRubber				27000
	  BumpRubberStiffness			470000
	  DroopStiffness				600000
	  )

	 Tyre
	 ("Tyre"
	  DebugId						1
	  Performance_NGP				1.0
	  CarcassRadius_NGP				0.305
	  TreadDepth_NGP				0.010
	  CarcassWidth_NGP				0.205
	  TreadWidth_NGP				0.164
	  SideWallHeight_NGP			0.131
	  HubOffset_NGP					-0.041
	  )))

   ("Wheel"
	("CAR_WHEEL_LB"
	 InverseMass					0.0245
	 DebugId						3
	 IsSteered						0

	 vecDriveAxleJointPos_VF		+0.300	+0.000	+0.220
	 DriveAxleMountOffset			-0.050
	 vecSteeringAxis_VF				+1.000	+0.000	+0.000

	 WishboneLength					+0.320

	 vecJointMount_VF				+0.375	+0.000	+0.155
	 vecJointAxis_VF				+0.000	-1.000	+0.000
	 vecSteeringMount_VF			+0.375	+0.150	+0.155

	 vecStrutRodMount_SF			+0.000	+0.150	+0.000
	 vecStrutHubPoint_SF			+0.065	+0.000	+0.110
	 vecStrutHubAxis_SF				+1.000	+0.000	+0.000
	 StrutDimX						-0.130
	 StrutDimZ						+0.505
	 ;StrutDimZ						+0.395
	 WishboneSign					-1.000
	 SteeringSign					-1.000

	 AntiRollBarId					1
	 AntiRollBarSlot				0

	 vecTopMountDeformUpAxis_RF		0.000	0.000	1.000
	 vecTopMountDeformSideAxis_RF	-1.000	0.000	0.000
	 TopMountMaxDeformSide			0.050
	 TopMountMaxDeformUp			0.050

	 vecPosOffset_NGP				-0.025	+0.000	+0.000
	 BumpStopRebound_NGP			1.00

	 SpringDamper
	 ("SpringDamper"
	  InnerBumpRubberPos			0.140
	  OuterBumpRubberPos			0.320
	  DampingBumpRubber				23000
	  BumpRubberStiffness			400000
	  DroopStiffness				600000
	  )

	 Tyre
	 ("Tyre"
	  DebugId						2
	  Performance_NGP				1.0
	  CarcassRadius_NGP				0.305
	  TreadDepth_NGP				0.010
	  CarcassWidth_NGP				0.205
	  TreadWidth_NGP				0.164
	  SideWallHeight_NGP			0.131
	  HubOffset_NGP					-0.041
	  )))

   ("Wheel"
	("CAR_WHEEL_RB"
	 InverseMass					0.0245
	 DebugId						4
	 IsSteered						0

	 vecDriveAxleJointPos_VF		-0.300	+0.000	+0.220
	 DriveAxleMountOffset			-0.050
	 vecSteeringAxis_VF				+1.000	+0.000	+0.000

	 WishboneLength					+0.320

	 vecJointMount_VF				-0.375	+0.000	+0.155
	 vecJointAxis_VF				+0.000	-1.000	+0.000
	 vecSteeringMount_VF			-0.375	+0.150	+0.155

	 vecStrutRodMount_SF			+0.000	-0.150	+0.000
	 vecStrutHubPoint_SF			+0.065	+0.000	+0.110
	 vecStrutHubAxis_SF				+1.000	+0.000	+0.000
	 StrutDimX						-0.130
	 StrutDimZ						+0.505
	 ;StrutDimZ						+0.395
	 WishboneSign					+1.000
	 SteeringSign					+1.000

	 AntiRollBarId					1
	 AntiRollBarSlot				1

	 vecTopMountDeformUpAxis_RF		0.000	0.000	1.000
	 vecTopMountDeformSideAxis_RF	1.000	0.000	0.000
	 TopMountMaxDeformSide			0.050
	 TopMountMaxDeformUp			0.050

	 vecPosOffset_NGP				+0.025	+0.000	+0.000
	 BumpStopRebound_NGP			1.00

	 SpringDamper
	 ("SpringDamper"
	  InnerBumpRubberPos			0.140
	  OuterBumpRubberPos			0.320
	  DampingBumpRubber				23000
	  BumpRubberStiffness			400000
	  DroopStiffness				600000
	  )

	 Tyre
	 ("Tyre"
	  DebugId						3
	  Performance_NGP				1.0
	  CarcassRadius_NGP				0.305
	  TreadDepth_NGP				0.010
	  CarcassWidth_NGP				0.205
	  TreadWidth_NGP				0.164
	  SideWallHeight_NGP			0.131
	  HubOffset_NGP					-0.041
	  )))
   )
))
