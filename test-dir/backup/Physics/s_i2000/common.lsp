(("PhysicsEngine"
  DefManager
  (
   ("CarBody"
	("CAR_BODY"
	 vecCenterOfGravity				0 -1.380 0.365
	 ))

   ("Car"
	("CAR_ROOT"
	 InverseMass					0.000704
	 vecLocalInverseInertiaDiagonal	0.000447 0.00218 0.000435

	 EffWheelRadius					0.315
	 iCollisionMesh					1

	 MaxSteeringLock				1.200
	 SteeringRackRatio				-0.048

	 FrontArea						2.110
	 DragCoefficient				0.444

	 SubTics						1

	 FrontDownforce_NGP				50.0
	 RearDownforce_NGP				200.0
	 ForceFeedbackSensitivity_NGP	110.0

	 Engine
	 ("Engine"
	  Turbo							0

	  VE00							0.3
	  VE01							0.3
	  VE02							0.3
	  VE03							0.3
	  VE04							0.3
	  VE05							0.3
	  VE06							0.3
	  VE07							0.0
	  VE08							0.0
	  VE09							0.0
	  VE10							0.0
	  VE11							0.0
	  VE12							0.0
	  VE13							0.0
	  VE14							0.0
	  VE15							0.0

	  EngineType_NGP				11

	  Tq_00_RPM_NGP					0			; 0		VE00
	  Tq_01_RPM_NGP					1000		; 400	VE01
	  Tq_02_RPM_NGP					2000		; 1250	VE02
	  Tq_03_RPM_NGP					3000		; 1875	VE03
	  Tq_04_RPM_NGP					3500		; 2500	VE04
	  Tq_05_RPM_NGP					4000		; 3125	VE05
	  Tq_06_RPM_NGP					4500		; 3750	VE06
	  Tq_07_RPM_NGP					5000		; 4375	VE07
	  Tq_08_RPM_NGP					6250		; 5000	VE08
	  Tq_09_RPM_NGP					7000		; 5625	VE09
	  Tq_10_RPM_NGP					7500		; 6250	VE10
	  Tq_11_RPM_NGP					7750		; 6875	VE11
	  Tq_12_RPM_NGP					9200		; 7500	VE12
	  Tq_13_RPM_NGP					9300		; 8125	VE13
	  Tq_14_RPM_NGP					9350		; 8750	VE14
	  Tq_15_RPM_NGP					9375		; 9375	VE15

	  Tq_00_NGP						0.250
	  Tq_01_NGP						0.300
	  Tq_02_NGP						0.400
	  Tq_03_NGP						0.920
	  Tq_04_NGP						0.970
	  Tq_05_NGP						0.990
	  Tq_06_NGP						1.000
	  Tq_07_NGP						0.960
	  Tq_08_NGP						0.774
	  Tq_09_NGP						0.682
	  Tq_10_NGP						0.624
	  Tq_11_NGP						0.000
	  Tq_12_NGP						0.000
	  Tq_13_NGP						0.000
	  Tq_14_NGP						0.000
	  Tq_15_NGP						0.000

	  CylinderVolume_NGP								0.0004985
	  DissipatedHeatFraction_NGP						0.30
	  InletPipeArea_NGP									0.00124
	  IdleSpeedThrottle_NGP								0.120
	  EngineHeatTransferCoefficient_NGP					2500
	  EngineCoolantDuctArea_NGP							0.750
	  EngineCoolantHeatStateMassUpperBound_NGP			2.3
	  ThermostatOpeningTemperature_NGP					353
	  WaterPumpMassFlowRate_NGP							2.0
	  RadiatorCoolantHeatStateMassUpperBound_NGP		7.5
	  RadiatorCoolantMassLowerBound_NGP					0.5
	  RadiatorCoolantMassUpperBound_NGP					7.5
	  RadiatorArea_NGP									2.0
	  BaseAirCooling_NGP								500.0
	  VelocityAirCooling_NGP							20.0
	  OilCapacity_NGP									4.75
	  OilPumpOutput_NGP									0.0002
	  EngineMass_NGP									40
	  TorqueCut_NGP										0.5
	  )

	 Drive
	 ("Drive"
	  DriveType						0

	  EngineInertia					0.174
	  GearBoxInertiaIn				0.029
	  GearBoxInertiaOut				0.010

	  MaxHandbrakePressure			11000000

	  NumberOfGears					8

	  BrakeMass_LF_NGP				10.110
	  BrakeConvFtr_LF_NGP			50.0
	  BrakeLayerMassPct_LF_NGP		0.10
	  BrakeRadiusEff_LF_NGP			0.127
	  BrakeSpecHeat_LF_NGP			450
	  BrakeHeatAbsRatio_LF_NGP		0.75
	  BrakePlateArea_LF_NGP			0.083585
	  BrakeVentArea_LF_NGP			0.087764
	  BrakeIntConvec_LF_NGP			1200
	  BrakePistonArea_LF_NGP		0.004959

	  BrakeMass_RF_NGP				10.110
	  BrakeConvFtr_RF_NGP			50.0
	  BrakeLayerMassPct_RF_NGP		0.10
	  BrakeRadiusEff_RF_NGP			0.127
	  BrakeSpecHeat_RF_NGP			450
	  BrakeHeatAbsRatio_RF_NGP		0.75
	  BrakePlateArea_RF_NGP			0.083585
	  BrakeVentArea_RF_NGP			0.087764
	  BrakeIntConvec_RF_NGP			1200
	  BrakePistonArea_RF_NGP		0.004959

	  BrakeMass_LR_NGP				10.110
	  BrakeConvFtr_LR_NGP			20.0
	  BrakeLayerMassPct_LR_NGP		0.10
	  BrakeRadiusEff_LR_NGP			0.127
	  BrakeSpecHeat_LR_NGP			450
	  BrakeHeatAbsRatio_LR_NGP		0.75
	  BrakePlateArea_LR_NGP			0.083585
	  BrakeVentArea_LR_NGP			0.087764
	  BrakeIntConvec_LR_NGP			1200
	  BrakePistonArea_LR_NGP		0.003177

	  BrakeMass_RR_NGP				10.110
	  BrakeConvFtr_RR_NGP			20.0
	  BrakeLayerMassPct_RR_NGP		0.10
	  BrakeRadiusEff_RR_NGP			0.127
	  BrakeSpecHeat_RR_NGP			450
	  BrakeHeatAbsRatio_RR_NGP		0.75
	  BrakePlateArea_RR_NGP			0.083585
	  BrakeVentArea_RR_NGP			0.087764
	  BrakeIntConvec_RR_NGP			1200
	  BrakePistonArea_RR_NGP		0.003177

	  BrakeTempThresholdLow_NGP		273150000
	  BrakeTempThresholdMid_NGP		873150000
	  BrakeTempThresholdHigh_NGP	1073150000
	  BrakeTempWearThresholdLow_NGP	523150000
	  BrakeWearFactor_NGP			0.0000000000004
	  BrakeForceWearFactor_NGP		50.0
	  LowBrakeTempCOF_NGP			0.380
	  MidBrakeTempCOF_NGP			0.445
	  HighBrakeTempCOF_NGP			0.01
	  WornBrakeCOF_NGP				0.10
	  BrakeWearLimit_NGP			1500000000
	  0.000 0.400 0.538 0.538 0.538 0.600 0.769 0.880 0.965 1.000
	  1.000 0.988 0.974 0.954 0.934 0.900 0.750 0.500 0.250 0.000
	  0.300 0.400 0.600 0.900 1.500 3.000 6.000 12.00 36.00 180.0

	  GearActuatorEngageTime_NGP	0.080
	  GearActuatorDisengageTime_NGP 0.040
	  ShiftLatency_NGP				0.140
	  )

	 ControlUnit
	 ("ControlUnit"
	  CenterDiffHandbrakeRelease	1.0
	  LeftFootBrakeThreshold		0.0

	  Gear0Upshift					0.0
	  Gear0Downshift				0.0
	  Gear1Upshift					0.0
	  Gear1Downshift				0.0
	  Gear2Upshift					7050.0
	  Gear2Downshift				0.0
	  Gear3Upshift					6710.0
	  Gear3Downshift				4200.0
	  Gear4Upshift					6350.0
	  Gear4Downshift				4470.0
	  Gear5Upshift					6190.0
	  Gear5Downshift				4760.0
	  Gear6Upshift					6110.0
	  Gear6Downshift				4970.0
	  Gear7Upshift					0.0
	  Gear7Downshift				5200.0

	  RPMLimit						7500.0
	  )
	 ))

   ("HingedBody"
	("CAR_DOOR_L"
	 vecHingeAxis_RF				0.0 0.0 1.0
	 vecZeroAxis_RF					0.0 1.0 0.0
	 vecHingePoint_RF				+0.836	-2.025	0.445

	 vecHingeAxis_BF				1.0 0.0 0.0
	 vecZeroAxis_BF					0.0 1.0 0.0
	 vecHingePoint_BF				0.0	-0.5	0.0

	 vecFaceNormal_BF				0.0 0.0 -1.0

	 HingeMinAngle					-2.1
	 HingeMaxAngle					0.01
	 HingeDefaultAngle				0.01

	 InverseMass					0.05
	 vecLocalInverseInertiaDiagonal	1.0 1.0 1.0
	 InertiaHingeAxis				5.0

	 Sleepable						1
	 SleepDelay						0.5
	 LinearSleepVelocity			0.5
	 AngularSleepVelocity			6.0

	 FaceArea						1.0

	 Spring0Type					2
	 Spring0Pos						-0.75
	 Spring0Stiff					5000.0
	 Spring0Damp					100.0
	 Spring0MaxDisp					0.05
	 Spring0Span					0.73

	 BodyId							0
	 ))

   ("HingedBody"
	("CAR_DOOR_R"
	 vecHingeAxis_RF				0.0 0.0 -1.0
	 vecZeroAxis_RF					0.0 1.0 0.0
	 vecHingePoint_RF				-0.836	-2.025	0.445

	 vecHingeAxis_BF				1.0 0.0 0.0
	 vecZeroAxis_BF					0.0 1.0 0.0
	 vecHingePoint_BF				0.0 -0.5	0.0

	 vecFaceNormal_BF				0.0 0.0 -1.0

	 HingeMinAngle					-2.1
	 HingeMaxAngle					0.01
	 HingeDefaultAngle				0.01

	 InverseMass					0.05
	 vecLocalInverseInertiaDiagonal	1.0 1.0 1.0

	 InertiaHingeAxis				5.0

	 Sleepable						1
	 SleepDelay						0.5
	 LinearSleepVelocity			0.5
	 AngularSleepVelocity			6.0

	 FaceArea						1.0

	 Spring0Type					2
	 Spring0Pos						-0.75
	 Spring0Stiff					5000.0
	 Spring0Damp					100.0
	 Spring0MaxDisp					0.05
	 Spring0Span					0.73

	 BodyId							1
	 ))

   ("HingedBody"
	("CAR_BONNET"
	 vecHingeAxis_RF				1.0 0.0 0.0
	 vecZeroAxis_RF					0.0 1.0 0.0
	 vecHingePoint_RF				0.653 -2.140 0.795

	 vecHingeAxis_BF				1.0 0.0 0.0
	 vecZeroAxis_BF					0.0 1.0 0.0
	 vecHingePoint_BF				0.35 0.3 0.0

	 vecFaceNormal_BF				0.0 -0.45  -0.84

	 HingeMinAngle					-1.5
	 HingeMaxAngle					-0.0
	 HingeDefaultAngle				-0.0

	 InverseMass					0.2
	 vecLocalInverseInertiaDiagonal	1.0 1.0 1.0

	 InertiaHingeAxis				1.5

	 FaceArea						2.0

	 Spring0Type					2
	 Spring0Pos						-1.05
	 Spring0Stiff					2000.0
	 Spring0Damp					20.0
	 Spring0MaxDisp					0.07
	 Spring0Span					1.00

	 Sleepable						1
	 SleepDelay						2.0
	 LinearSleepVelocity			0.5
	 AngularSleepVelocity			1.0

	 BodyId							2
	 ))

   ("HingedBody" 
	("CAR_EXHAUSTPIPE"
	 vecHingeAxis_RF				1.0 0.0 0.0
	 vecZeroAxis_RF					0.0 1.0 0.0
	 vecHingePoint_RF				0.273 0.004 0.133

	 vecHingeAxis_BF				1.0 0.0 0.0
	 vecZeroAxis_BF					0.0 1.0 0.0
	 vecHingePoint_BF				0.0 -0.3	0.0

	 HingeMinAngle					-0.8
	 HingeMaxAngle					+0.2
	 HingeDefaultAngle				+0.1

	 InverseMass					0.2
	 vecLocalInverseInertiaDiagonal	1.0 1.0 1.0
	 InertiaHingeAxis				1.5

	 Spring0Type					2
	 Spring0Pos						0.05
	 Spring0Stiff					9000.0
	 Spring0Damp					150.0
	 Spring0MaxDisp					0.5
	 Spring0Span					0.03

	 Sleepable						1
	 SleepDelay						2.0
	 LinearSleepVelocity			0.5
	 AngularSleepVelocity			1.0

	 Unlocked						1

	 BreakChain						1

	 BodyId							3
	 ))

   ("MountedBody"
	("CAR_BUMPER_F"
	 vecBasePoint_PRF				0.0 -3.127 0.185
	 InverseMass					0.2
	 vecLocalInverseInertiaDiagonal	1.0 1.0 1.0

	 Sleepable						1
	 SleepDelay						0.5
	 LinearSleepVelocity			0.5
	 AngularSleepVelocity			6.0

	 BodyId							0
	 ))

   ("MountedBody" 
	("CAR_BUMPER_B"
	 vecBasePoint_PRF				0.0 0.528 0.254
	 InverseMass					0.2
	 vecLocalInverseInertiaDiagonal	1.0 1.0 1.0

	 Sleepable						1
	 SleepDelay						0.5
	 LinearSleepVelocity			0.5
	 AngularSleepVelocity			6.0

	 BodyId							1
	 ))

   ("MountedBody"
	("CAR_WING"
	 vecBasePoint_PRF				0.0 0.582 0.975
	 InverseMass					0.2
	 vecLocalInverseInertiaDiagonal	1.0 1.0 1.0

	 Sleepable						1
	 SleepDelay						0.5
	 LinearSleepVelocity			0.5
	 AngularSleepVelocity			6.0

	 BodyId							2
	 ))
   )
))
