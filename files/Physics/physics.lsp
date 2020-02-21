(("PhysicsEngine"
  DefManager (("Ground" ("GROUND"
                         Width 32768
                         Height 32768
                         Top -16384
                         Left -16384))

              ("Solid" ("GENERIC"
                        iCollisionMesh  3
                        ))

              ("Solid" ("TRAFFIC_CONE"

                      InverseMass                       0.2
                      vecLocalInverseInertiaDiagonal    1.0 1.0 1.5

                      VerySoft                          1
                      Sleepable                         1
                      SleepDelay                        0.75
                      LinearSleepVelocity               0.5
                      AngularSleepVelocity              1.0

              ))


              ("Solid" ("PIG"

                      InverseMass                       0.000333
                      vecLocalInverseInertiaDiagonal    0.00125 0.00125 0.00125
                      Sleepable                         1
                      SleepDelay                        1.0
                      LinearSleepVelocity               2.0
                      AngularSleepVelocity              9.0

              ))

              ("Solid" ("STREET_SIGN"

                      InverseMass                       0.1
                      vecLocalInverseInertiaDiagonal    0.5 0.5 0.5

                      VerySoft                          1
                      Sleepable                         1
                      SleepDelay                        0.75
                      LinearSleepVelocity               0.5
                      AngularSleepVelocity              1.0

              ))

              ("Solid" ("BANNER_FENCE"

                      InverseMass                       0.01
                      vecLocalInverseInertiaDiagonal    0.01 0.01 0.01
                      Sleepable                         1
                      SleepDelay                        1.0
                      LinearSleepVelocity               2.0
                      AngularSleepVelocity              6.0

              ))

              ("Solid" ("LOG"

                      InverseMass                       0.03
                      vecLocalInverseInertiaDiagonal    0.075 0.075 0.075
                      Sleepable                         1
                      SleepDelay                        0.5
                      LinearSleepVelocity               2.0
                      AngularSleepVelocity              6.0

              ))

              ("Solid" ("LOG_POLE"

                      InverseMass                       0.001
                      vecLocalInverseInertiaDiagonal    0.01 0.01 0.01
                      Sleepable                         1
                      SleepDelay                        1.0
                      LinearSleepVelocity               2.0
                      AngularSleepVelocity              6.0

              ))

              ("Solid" ("WOODEN_FENCE_BAR"

                      InverseMass                       0.003
                      vecLocalInverseInertiaDiagonal    0.003 0.003 0.003
                      Sleepable                         1
                      SleepDelay                        0.5
                      LinearSleepVelocity               2.0
                      AngularSleepVelocity              6.0

              ))

              ("Solid" ("WOODEN_FENCE_POLE"

                      InverseMass                       0.0005
                      vecLocalInverseInertiaDiagonal    0.002 0.002 0.002
                      Sleepable                         1
                      SleepDelay                        1.0
                      LinearSleepVelocity               2.0
                      AngularSleepVelocity              3.0

              ))

              ("Car" ("CAR_ROOT"
                      ForceFeedbackSensitivity_NGP      100.0

                      DangerousAcceleration     1000000.0

                      SubTics         1
                      Drive           ("Drive"
                                       )

                      LightSystem   ("LightSystem"

                            BrakeLight0     1
                            BrakeLight1     1

                            LowBeam0        1
                            LowBeam1        1

                            HighBeam0       1
                            HighBeam1       1

                            ReverseLight0   1
                            ReverseLight1   1

                            RearLight0      1
                            RearLight1      1

                                )

                      ControlUnit   ("ControlUnit"
                            )

                      iCollisionMesh    1
                      )))

  MaxTimeStep  0.0070
  MinTimeDelta 0.0002

  BrakeWallBuffer 2.0
  BrakeWallFactor 2.0
  BrakeWallDamping 2.0

  ForceMaterial 9

  vecGravity 0 0 -9.81

  PhysicsRevision_NGP 758

  Flags
  +FACE_COLL
  +EDGE_COLL
  +FACE_PENETR
  +EDGE_PENETR
  +CHECK_COLL
  +CHECK_PENETR
  +GROUND_COLL
  +REJECT_BAD_MESHES
  +BLOCK_MAP_CULLING
  +BLOCK_MAP_CULLING_FIX
  -SETI
  +SIGCG
  +TYRE_REACTION
  +STUFF_ROTATION
  +COLLISIONSOLVER_TEST
  +SUB_STEPPING
  +BLOCKMAP_NEW_GETBLOCK
  +ENABLE_SINGLESTEPPING
  +INTERNAL_SINGLESTEP
  +CHECK_WHEEL_COLL
  -FORCE_MATERIAL
  +ENABLE_DAMAGE

  DbgFlags
  -RENDER_TRINODE_COLLISION
  -RENDER_FORCES
  -RENDER_COLLISION_MESHES
  -INVALID_MATERIAL_ALERT
  -RENDER_SUSPENSION_GEOMETRY
  -RENDER_CAR_COG
  -RENDER_GG_DIAG
  -RENDER_MATERIAL
  -RENDER_ENGINE_PRESSURES
  -RENDER_ENGINE_TORQUE
  -RENDER_TURBO
  -RENDER_DIFF_INFO
  -RENDER_SUSPENSION_TRAVEL
  +RENDER_PENETRATION_EVENTS
  +RENDER_COLLISION_EVENTS
  -RENDER_COLLSOLVER_INFO
  -RENDER_ENGINE_COND
  -RENDER_DRIVE_COND
  -RENDER_CAR_COND
  -RENDER_DRIVE_COND
  -RENDER_BRAKEWALL_DATA
  -RENDER_TYRE_THERMO
  -RENDER_HINGED_BODY
  -RENDER_DAMAGE_INFO
  -RENDER_LINEMESH_ZONECHECK
  -RENDER_EDGE_ZONECHECK

  LogFlags
  -COLLISIONMESH
  -SEGMENT
  -CHECK_SEGMENT
  -SIRAP
  -STUFF
  -TRINODE_TRACKING
  -CHECK_INTERSECTION
  -COLLISIONEVENT
  -COLLISIONSOLVER

  CollisionSolver ("collision solver"
                   Restitution      0.10000
                   HyperRestitution 0.000000
                   MinInvEffRedMass 0.000010
                   nSteps 2
                   )
  MaterialManager ("surface types"
; rev. 42
Undefined                               ("Undefined" ; id 0, rev 42
                                         myStatic           0.3
                                         myKinetic          0.225
                                         myStaticSoil       0.24
                                         myKineticSoil      0.18
                                         SinkFactor         0.0000002
                                         SolidGroundOffset  0
                                         SoilThickness      0.01
                                         SoilDensity        1000
                                         RollingResistance  0.1
                                         WaterFactor        0
                                         BumpFrequency      0.5
                                         BumpAmplitude      0.001
                                         CollMyHigh         0.8
                                         CollMyLow          0.3
                                         eHigh              0.05
                                         eLow               0.02
                                         Type               0
                                         Flags              +HARD +VALID  
)

Gravel_Fine_Shallow_Dry                 ("Gravel_Fine_Shallow_Dry" ; id 17, rev 42
                                         myStatic           0.3
                                         myKinetic          0.225
                                         myStaticSoil       0.24
                                         myKineticSoil      0.18
                                         SinkFactor         0.0000002
                                         SolidGroundOffset  0
                                         SoilThickness      0.01
                                         SoilDensity        1000
                                         RollingResistance  0.1
                                         WaterFactor        0
                                         BumpFrequency      0.8
                                         BumpAmplitude      0.001667
                                         CollMyHigh         0.8
                                         CollMyLow          0.3
                                         eHigh              0.05
                                         eLow               0.02
                                         Type               1
                                         Flags              +HARD +VALID  
)

US2_Gravel_Fine_Shallow_Dry             ("US2_Gravel_Fine_Shallow_Dry" ; id 177, rev 42
                                         myStatic           0.3
                                         myKinetic          0.225
                                         myStaticSoil       0.24
                                         myKineticSoil      0.18
                                         SinkFactor         0.0000002
                                         SolidGroundOffset  0
                                         SoilThickness      0.01
                                         SoilDensity        1000
                                         RollingResistance  0.1
                                         WaterFactor        0
                                         BumpFrequency      0.8
                                         BumpAmplitude      0.001667
                                         CollMyHigh         0.8
                                         CollMyLow          0.3
                                         eHigh              0.05
                                         eLow               0.02
                                         Type               1
                                         Flags              +HARD +VALID  
)

Gravel_Fine_Deep_Dry                    ("Gravel_Fine_Deep_Dry" ; id 9, rev 42
                                         myStatic           0.3
                                         myKinetic          0.225
                                         myStaticSoil       0.24
                                         myKineticSoil      0.18
                                         SinkFactor         0.0000002
                                         SolidGroundOffset  0
                                         SoilThickness      0.01
                                         SoilDensity        1000
                                         RollingResistance  0.1
                                         WaterFactor        0
                                         BumpFrequency      0.8
                                         BumpAmplitude      0.001667
                                         CollMyHigh         0.8
                                         CollMyLow          0.3
                                         eHigh              0.05
                                         eLow               0.02
                                         Type               1
                                         Flags              +HARD +VALID  
)

US2_Gravel_Fine_Deep_Dry                ("US2_Gravel_Fine_Deep_Dry" ; id 185, rev 42
                                         myStatic           0.3
                                         myKinetic          0.225
                                         myStaticSoil       0.24
                                         myKineticSoil      0.18
                                         SinkFactor         0.0000002
                                         SolidGroundOffset  0
                                         SoilThickness      0.01
                                         SoilDensity        1000
                                         RollingResistance  0.1
                                         WaterFactor        0
                                         BumpFrequency      0.8
                                         BumpAmplitude      0.001667
                                         CollMyHigh         0.8
                                         CollMyLow          0.3
                                         eHigh              0.05
                                         eLow               0.02
                                         Type               1
                                         Flags              +HARD +VALID  
)

Gravel_Fine_Deeper_Dry                  ("Gravel_Fine_Deeper_Dry" ; id 1, rev 42
                                         myStatic           0.3
                                         myKinetic          0.225
                                         myStaticSoil       0.24
                                         myKineticSoil      0.18
                                         SinkFactor         0.0000002
                                         SolidGroundOffset  0
                                         SoilThickness      0.01
                                         SoilDensity        1000
                                         RollingResistance  0.1
                                         WaterFactor        0
                                         BumpFrequency      0.8
                                         BumpAmplitude      0.001667
                                         CollMyHigh         0.8
                                         CollMyLow          0.3
                                         eHigh              0.05
                                         eLow               0.02
                                         Type               1
                                         Flags              +HARD +VALID  
)

US2_Gravel_Fine_Deeper_Dry              ("US2_Gravel_Fine_Deeper_Dry" ; id 193, rev 42
                                         myStatic           0.3
                                         myKinetic          0.225
                                         myStaticSoil       0.24
                                         myKineticSoil      0.18
                                         SinkFactor         0.0000002
                                         SolidGroundOffset  0
                                         SoilThickness      0.01
                                         SoilDensity        1000
                                         RollingResistance  0.1
                                         WaterFactor        0
                                         BumpFrequency      0.8
                                         BumpAmplitude      0.001667
                                         CollMyHigh         0.8
                                         CollMyLow          0.3
                                         eHigh              0.05
                                         eLow               0.02
                                         Type               1
                                         Flags              +HARD +VALID  
)

Gravel_Medium_Shallow_Dry               ("Gravel_Medium_Shallow_Dry" ; id 21, rev 42
                                         myStatic           0.3
                                         myKinetic          0.225
                                         myStaticSoil       0.24
                                         myKineticSoil      0.18
                                         SinkFactor         0.0000002
                                         SolidGroundOffset  0
                                         SoilThickness      0.01
                                         SoilDensity        1000
                                         RollingResistance  0.1
                                         WaterFactor        0
                                         BumpFrequency      0.6
                                         BumpAmplitude      0.001667
                                         CollMyHigh         0.8
                                         CollMyLow          0.3
                                         eHigh              0.05
                                         eLow               0.02
                                         Type               1
                                         Flags              +HARD +VALID  
)

Gravel_Medium_Deep_Dry                  ("Gravel_Medium_Deep_Dry" ; id 13, rev 42
                                         myStatic           0.3
                                         myKinetic          0.225
                                         myStaticSoil       0.24
                                         myKineticSoil      0.18
                                         SinkFactor         0.0000002
                                         SolidGroundOffset  0
                                         SoilThickness      0.01
                                         SoilDensity        1000
                                         RollingResistance  0.1
                                         WaterFactor        0
                                         BumpFrequency      0.6
                                         BumpAmplitude      0.001667
                                         CollMyHigh         0.8
                                         CollMyLow          0.3
                                         eHigh              0.05
                                         eLow               0.02
                                         Type               1
                                         Flags              +HARD +VALID  
)

Gravel_Medium_Deeper_Dry                ("Gravel_Medium_Deeper_Dry" ; id 5, rev 42
                                         myStatic           0.3
                                         myKinetic          0.225
                                         myStaticSoil       0.24
                                         myKineticSoil      0.18
                                         SinkFactor         0.0000002
                                         SolidGroundOffset  0
                                         SoilThickness      0.01
                                         SoilDensity        1000
                                         RollingResistance  0.1
                                         WaterFactor        0
                                         BumpFrequency      0.6
                                         BumpAmplitude      0.001667
                                         CollMyHigh         0.8
                                         CollMyLow          0.3
                                         eHigh              0.05
                                         eLow               0.02
                                         Type               1
                                         Flags              +HARD +VALID  
)

Gravel_Coarse_Shallow_Dry               ("Gravel_Coarse_Shallow_Dry" ; id 49, rev 42
                                         myStatic           0.3
                                         myKinetic          0.225
                                         myStaticSoil       0.24
                                         myKineticSoil      0.18
                                         SinkFactor         0.0000002
                                         SolidGroundOffset  0
                                         SoilThickness      0.01
                                         SoilDensity        1000
                                         RollingResistance  0.1
                                         WaterFactor        0
                                         BumpFrequency      0.4
                                         BumpAmplitude      0.001667
                                         CollMyHigh         0.8
                                         CollMyLow          0.3
                                         eHigh              0.05
                                         eLow               0.02
                                         Type               1
                                         Flags              +HARD +VALID  
)

BR2_Gravel_Coarse_Shallow_Dry           ("BR2_Gravel_Coarse_Shallow_Dry" ; id 181, rev 42
                                         myStatic           0.3
                                         myKinetic          0.225
                                         myStaticSoil       0.24
                                         myKineticSoil      0.18
                                         SinkFactor         0.0000002
                                         SolidGroundOffset  0
                                         SoilThickness      0.01
                                         SoilDensity        1000
                                         RollingResistance  0.1
                                         WaterFactor        0
                                         BumpFrequency      0.4
                                         BumpAmplitude      0.001667
                                         CollMyHigh         0.8
                                         CollMyLow          0.3
                                         eHigh              0.05
                                         eLow               0.02
                                         Type               1
                                         Flags              +HARD +VALID  
)

Gravel_Coarse_Deep_Dry                  ("Gravel_Coarse_Deep_Dry" ; id 41, rev 42
                                         myStatic           0.3
                                         myKinetic          0.225
                                         myStaticSoil       0.24
                                         myKineticSoil      0.18
                                         SinkFactor         0.0000002
                                         SolidGroundOffset  0
                                         SoilThickness      0.01
                                         SoilDensity        1000
                                         RollingResistance  0.1
                                         WaterFactor        0
                                         BumpFrequency      0.4
                                         BumpAmplitude      0.001667
                                         CollMyHigh         0.8
                                         CollMyLow          0.3
                                         eHigh              0.05
                                         eLow               0.02
                                         Type               1
                                         Flags              +HARD +VALID  
)

BR2_Gravel_Coarse_Deep_Dry              ("BR2_Gravel_Coarse_Deep_Dry" ; id 189, rev 42
                                         myStatic           0.3
                                         myKinetic          0.225
                                         myStaticSoil       0.24
                                         myKineticSoil      0.18
                                         SinkFactor         0.0000002
                                         SolidGroundOffset  0
                                         SoilThickness      0.01
                                         SoilDensity        1000
                                         RollingResistance  0.1
                                         WaterFactor        0
                                         BumpFrequency      0.4
                                         BumpAmplitude      0.001667
                                         CollMyHigh         0.8
                                         CollMyLow          0.3
                                         eHigh              0.05
                                         eLow               0.02
                                         Type               1
                                         Flags              +HARD +VALID  
)

Gravel_Coarse_Deeper_Dry                ("Gravel_Coarse_Deeper_Dry" ; id 33, rev 42
                                         myStatic           0.3
                                         myKinetic          0.225
                                         myStaticSoil       0.24
                                         myKineticSoil      0.18
                                         SinkFactor         0.0000002
                                         SolidGroundOffset  0
                                         SoilThickness      0.01
                                         SoilDensity        1000
                                         RollingResistance  0.1
                                         WaterFactor        0
                                         BumpFrequency      0.4
                                         BumpAmplitude      0.001667
                                         CollMyHigh         0.8
                                         CollMyLow          0.3
                                         eHigh              0.05
                                         eLow               0.02
                                         Type               1
                                         Flags              +HARD +VALID  
)

BR2_Gravel_Coarse_Deeper_Dry            ("BR2_Gravel_Coarse_Deeper_Dry" ; id 197, rev 42
                                         myStatic           0.3
                                         myKinetic          0.225
                                         myStaticSoil       0.24
                                         myKineticSoil      0.18
                                         SinkFactor         0.0000002
                                         SolidGroundOffset  0
                                         SoilThickness      0.01
                                         SoilDensity        1000
                                         RollingResistance  0.1
                                         WaterFactor        0
                                         BumpFrequency      0.4
                                         BumpAmplitude      0.001667
                                         CollMyHigh         0.8
                                         CollMyLow          0.3
                                         eHigh              0.05
                                         eLow               0.02
                                         Type               1
                                         Flags              +HARD +VALID  
)

Gravel_Fine_Shallow_Damp                ("Gravel_Fine_Shallow_Damp" ; id 18, rev 42
                                         myStatic           0.3
                                         myKinetic          0.225
                                         myStaticSoil       0.24
                                         myKineticSoil      0.18
                                         SinkFactor         0.0000002
                                         SolidGroundOffset  0
                                         SoilThickness      0.01
                                         SoilDensity        1000
                                         RollingResistance  0.1
                                         WaterFactor        0.5
                                         BumpFrequency      0.8
                                         BumpAmplitude      0.001667
                                         CollMyHigh         0.9
                                         CollMyLow          0.3
                                         eHigh              0.05
                                         eLow               0.02
                                         Type               1
                                         Flags              +HARD +VALID  
)

US2_Gravel_Fine_Shallow_Damp            ("US2_Gravel_Fine_Shallow_Damp" ; id 178, rev 42
                                         myStatic           0.3
                                         myKinetic          0.225
                                         myStaticSoil       0.24
                                         myKineticSoil      0.18
                                         SinkFactor         0.0000002
                                         SolidGroundOffset  0
                                         SoilThickness      0.01
                                         SoilDensity        1000
                                         RollingResistance  0.1
                                         WaterFactor        0.5
                                         BumpFrequency      0.8
                                         BumpAmplitude      0.001667
                                         CollMyHigh         0.9
                                         CollMyLow          0.3
                                         eHigh              0.05
                                         eLow               0.02
                                         Type               1
                                         Flags              +HARD +VALID  
)

Gravel_Fine_Deep_Damp                   ("Gravel_Fine_Deep_Damp" ; id 10, rev 42
                                         myStatic           0.3
                                         myKinetic          0.225
                                         myStaticSoil       0.24
                                         myKineticSoil      0.18
                                         SinkFactor         0.0000002
                                         SolidGroundOffset  0
                                         SoilThickness      0.01
                                         SoilDensity        1000
                                         RollingResistance  0.1
                                         WaterFactor        0.5
                                         BumpFrequency      0.8
                                         BumpAmplitude      0.001667
                                         CollMyHigh         0.9
                                         CollMyLow          0.3
                                         eHigh              0.05
                                         eLow               0.02
                                         Type               1
                                         Flags              +HARD +VALID  
)

US2_Gravel_Fine_Deep_Damp               ("US2_Gravel_Fine_Deep_Damp" ; id 186, rev 42
                                         myStatic           0.3
                                         myKinetic          0.225
                                         myStaticSoil       0.24
                                         myKineticSoil      0.18
                                         SinkFactor         0.0000002
                                         SolidGroundOffset  0
                                         SoilThickness      0.01
                                         SoilDensity        1000
                                         RollingResistance  0.1
                                         WaterFactor        0.5
                                         BumpFrequency      0.8
                                         BumpAmplitude      0.001667
                                         CollMyHigh         0.9
                                         CollMyLow          0.3
                                         eHigh              0.05
                                         eLow               0.02
                                         Type               1
                                         Flags              +HARD +VALID  
)

Gravel_Fine_Deeper_Damp                 ("Gravel_Fine_Deeper_Damp" ; id 2, rev 42
                                         myStatic           0.3
                                         myKinetic          0.225
                                         myStaticSoil       0.24
                                         myKineticSoil      0.18
                                         SinkFactor         0.0000002
                                         SolidGroundOffset  0
                                         SoilThickness      0.01
                                         SoilDensity        1000
                                         RollingResistance  0.1
                                         WaterFactor        0.5
                                         BumpFrequency      0.8
                                         BumpAmplitude      0.001667
                                         CollMyHigh         0.9
                                         CollMyLow          0.3
                                         eHigh              0.05
                                         eLow               0.02
                                         Type               1
                                         Flags              +HARD +VALID  
)

US2_Gravel_Fine_Deeper_Damp             ("US2_Gravel_Fine_Deeper_Damp" ; id 194, rev 42
                                         myStatic           0.3
                                         myKinetic          0.225
                                         myStaticSoil       0.24
                                         myKineticSoil      0.18
                                         SinkFactor         0.0000002
                                         SolidGroundOffset  0
                                         SoilThickness      0.01
                                         SoilDensity        1000
                                         RollingResistance  0.1
                                         WaterFactor        0.5
                                         BumpFrequency      0.8
                                         BumpAmplitude      0.001667
                                         CollMyHigh         0.9
                                         CollMyLow          0.3
                                         eHigh              0.05
                                         eLow               0.02
                                         Type               1
                                         Flags              +HARD +VALID  
)

Gravel_Medium_Shallow_Damp              ("Gravel_Medium_Shallow_Damp" ; id 22, rev 42
                                         myStatic           0.3
                                         myKinetic          0.225
                                         myStaticSoil       0.24
                                         myKineticSoil      0.18
                                         SinkFactor         0.0000002
                                         SolidGroundOffset  0
                                         SoilThickness      0.01
                                         SoilDensity        1000
                                         RollingResistance  0.1
                                         WaterFactor        0.5
                                         BumpFrequency      0.6
                                         BumpAmplitude      0.001667
                                         CollMyHigh         0.9
                                         CollMyLow          0.3
                                         eHigh              0.05
                                         eLow               0.02
                                         Type               1
                                         Flags              +HARD +VALID  
)

Gravel_Medium_Deep_Damp                 ("Gravel_Medium_Deep_Damp" ; id 14, rev 42
                                         myStatic           0.3
                                         myKinetic          0.225
                                         myStaticSoil       0.24
                                         myKineticSoil      0.18
                                         SinkFactor         0.0000002
                                         SolidGroundOffset  0
                                         SoilThickness      0.01
                                         SoilDensity        1000
                                         RollingResistance  0.1
                                         WaterFactor        0.5
                                         BumpFrequency      0.6
                                         BumpAmplitude      0.001667
                                         CollMyHigh         0.9
                                         CollMyLow          0.3
                                         eHigh              0.05
                                         eLow               0.02
                                         Type               1
                                         Flags              +HARD +VALID  
)

Gravel_Medium_Deeper_Damp               ("Gravel_Medium_Deeper_Damp" ; id 6, rev 42
                                         myStatic           0.3
                                         myKinetic          0.225
                                         myStaticSoil       0.24
                                         myKineticSoil      0.18
                                         SinkFactor         0.0000002
                                         SolidGroundOffset  0
                                         SoilThickness      0.01
                                         SoilDensity        1000
                                         RollingResistance  0.1
                                         WaterFactor        0.5
                                         BumpFrequency      0.6
                                         BumpAmplitude      0.001667
                                         CollMyHigh         0.9
                                         CollMyLow          0.3
                                         eHigh              0.05
                                         eLow               0.02
                                         Type               1
                                         Flags              +HARD +VALID  
)

Gravel_Fine_Shallow_Wet                 ("Gravel_Fine_Shallow_Wet" ; id 19, rev 42
                                         myStatic           0.3
                                         myKinetic          0.225
                                         myStaticSoil       0.24
                                         myKineticSoil      0.18
                                         SinkFactor         0.0000002
                                         SolidGroundOffset  0
                                         SoilThickness      0.01
                                         SoilDensity        1000
                                         RollingResistance  0.1
                                         WaterFactor        1
                                         BumpFrequency      0.8
                                         BumpAmplitude      0.001667
                                         CollMyHigh         0.9
                                         CollMyLow          0.3
                                         eHigh              0.05
                                         eLow               0.02
                                         Type               1
                                         Flags              +HARD +VALID  
)

US2_Gravel_Fine_Shallow_Wet             ("US2_Gravel_Fine_Shallow_Wet" ; id 179, rev 42
                                         myStatic           0.3
                                         myKinetic          0.225
                                         myStaticSoil       0.24
                                         myKineticSoil      0.18
                                         SinkFactor         0.0000002
                                         SolidGroundOffset  0
                                         SoilThickness      0.01
                                         SoilDensity        1000
                                         RollingResistance  0.1
                                         WaterFactor        1
                                         BumpFrequency      0.8
                                         BumpAmplitude      0.001667
                                         CollMyHigh         0.9
                                         CollMyLow          0.3
                                         eHigh              0.05
                                         eLow               0.02
                                         Type               1
                                         Flags              +HARD +VALID  
)

Gravel_Fine_Deep_Wet                    ("Gravel_Fine_Deep_Wet" ; id 11, rev 42
                                         myStatic           0.3
                                         myKinetic          0.225
                                         myStaticSoil       0.24
                                         myKineticSoil      0.18
                                         SinkFactor         0.0000002
                                         SolidGroundOffset  0
                                         SoilThickness      0.01
                                         SoilDensity        1000
                                         RollingResistance  0.1
                                         WaterFactor        1
                                         BumpFrequency      0.8
                                         BumpAmplitude      0.001667
                                         CollMyHigh         0.9
                                         CollMyLow          0.3
                                         eHigh              0.05
                                         eLow               0.02
                                         Type               1
                                         Flags              +HARD +VALID  
)

US2_Gravel_Fine_Deep_Wet                ("US2_Gravel_Fine_Deep_Wet" ; id 187, rev 42
                                         myStatic           0.3
                                         myKinetic          0.225
                                         myStaticSoil       0.24
                                         myKineticSoil      0.18
                                         SinkFactor         0.0000002
                                         SolidGroundOffset  0
                                         SoilThickness      0.01
                                         SoilDensity        1000
                                         RollingResistance  0.1
                                         WaterFactor        1
                                         BumpFrequency      0.8
                                         BumpAmplitude      0.001667
                                         CollMyHigh         0.9
                                         CollMyLow          0.3
                                         eHigh              0.05
                                         eLow               0.02
                                         Type               1
                                         Flags              +HARD +VALID  
)

Gravel_Fine_Deeper_Wet                  ("Gravel_Fine_Deeper_Wet" ; id 3, rev 42
                                         myStatic           0.3
                                         myKinetic          0.225
                                         myStaticSoil       0.24
                                         myKineticSoil      0.18
                                         SinkFactor         0.0000002
                                         SolidGroundOffset  0
                                         SoilThickness      0.01
                                         SoilDensity        1000
                                         RollingResistance  0.1
                                         WaterFactor        1
                                         BumpFrequency      0.8
                                         BumpAmplitude      0.001667
                                         CollMyHigh         0.9
                                         CollMyLow          0.3
                                         eHigh              0.05
                                         eLow               0.02
                                         Type               1
                                         Flags              +HARD +VALID  
)

US2_Gravel_Fine_Deeper_Wet              ("US2_Gravel_Fine_Deeper_Wet" ; id 195, rev 42
                                         myStatic           0.3
                                         myKinetic          0.225
                                         myStaticSoil       0.24
                                         myKineticSoil      0.18
                                         SinkFactor         0.0000002
                                         SolidGroundOffset  0
                                         SoilThickness      0.01
                                         SoilDensity        1000
                                         RollingResistance  0.1
                                         WaterFactor        1
                                         BumpFrequency      0.8
                                         BumpAmplitude      0.001667
                                         CollMyHigh         0.9
                                         CollMyLow          0.3
                                         eHigh              0.05
                                         eLow               0.02
                                         Type               1
                                         Flags              +HARD +VALID  
)

Gravel_Coarse_Shallow_Damp              ("Gravel_Coarse_Shallow_Damp" ; id 50, rev 42
                                         myStatic           0.3
                                         myKinetic          0.225
                                         myStaticSoil       0.24
                                         myKineticSoil      0.18
                                         SinkFactor         0.0000002
                                         SolidGroundOffset  0
                                         SoilThickness      0.01
                                         SoilDensity        1000
                                         RollingResistance  0.1
                                         WaterFactor        0.5
                                         BumpFrequency      0.4
                                         BumpAmplitude      0.001667
                                         CollMyHigh         0.9
                                         CollMyLow          0.3
                                         eHigh              0.05
                                         eLow               0.02
                                         Type               1
                                         Flags              +HARD +VALID  
)

BR2_Gravel_Coarse_Shallow_Damp          ("BR2_Gravel_Coarse_Shallow_Damp" ; id 182, rev 42
                                         myStatic           0.3
                                         myKinetic          0.225
                                         myStaticSoil       0.24
                                         myKineticSoil      0.18
                                         SinkFactor         0.0000002
                                         SolidGroundOffset  0
                                         SoilThickness      0.01
                                         SoilDensity        1000
                                         RollingResistance  0.1
                                         WaterFactor        0.5
                                         BumpFrequency      0.4
                                         BumpAmplitude      0.001667
                                         CollMyHigh         0.9
                                         CollMyLow          0.3
                                         eHigh              0.05
                                         eLow               0.02
                                         Type               1
                                         Flags              +HARD +VALID  
)

Gravel_Coarse_Deep_Damp                 ("Gravel_Coarse_Deep_Damp" ; id 42, rev 42
                                         myStatic           0.3
                                         myKinetic          0.225
                                         myStaticSoil       0.24
                                         myKineticSoil      0.18
                                         SinkFactor         0.0000002
                                         SolidGroundOffset  0
                                         SoilThickness      0.01
                                         SoilDensity        1000
                                         RollingResistance  0.1
                                         WaterFactor        0.5
                                         BumpFrequency      0.4
                                         BumpAmplitude      0.001667
                                         CollMyHigh         0.9
                                         CollMyLow          0.3
                                         eHigh              0.05
                                         eLow               0.02
                                         Type               1
                                         Flags              +HARD +VALID  
)

BR2_Gravel_Coarse_Deep_Damp             ("BR2_Gravel_Coarse_Deep_Damp" ; id 190, rev 42
                                         myStatic           0.3
                                         myKinetic          0.225
                                         myStaticSoil       0.24
                                         myKineticSoil      0.18
                                         SinkFactor         0.0000002
                                         SolidGroundOffset  0
                                         SoilThickness      0.01
                                         SoilDensity        1000
                                         RollingResistance  0.1
                                         WaterFactor        0.5
                                         BumpFrequency      0.4
                                         BumpAmplitude      0.001667
                                         CollMyHigh         0.9
                                         CollMyLow          0.3
                                         eHigh              0.05
                                         eLow               0.02
                                         Type               1
                                         Flags              +HARD +VALID  
)

Gravel_Coarse_Deeper_Damp               ("Gravel_Coarse_Deeper_Damp" ; id 34, rev 42
                                         myStatic           0.3
                                         myKinetic          0.225
                                         myStaticSoil       0.24
                                         myKineticSoil      0.18
                                         SinkFactor         0.0000002
                                         SolidGroundOffset  0
                                         SoilThickness      0.01
                                         SoilDensity        1000
                                         RollingResistance  0.1
                                         WaterFactor        0.5
                                         BumpFrequency      0.4
                                         BumpAmplitude      0.001667
                                         CollMyHigh         0.9
                                         CollMyLow          0.3
                                         eHigh              0.05
                                         eLow               0.02
                                         Type               1
                                         Flags              +HARD +VALID  
)

BR2_Gravel_Coarse_Deeper_Damp           ("BR2_Gravel_Coarse_Deeper_Damp" ; id 198, rev 42
                                         myStatic           0.3
                                         myKinetic          0.225
                                         myStaticSoil       0.24
                                         myKineticSoil      0.18
                                         SinkFactor         0.0000002
                                         SolidGroundOffset  0
                                         SoilThickness      0.01
                                         SoilDensity        1000
                                         RollingResistance  0.1
                                         WaterFactor        0.5
                                         BumpFrequency      0.4
                                         BumpAmplitude      0.001667
                                         CollMyHigh         0.9
                                         CollMyLow          0.3
                                         eHigh              0.05
                                         eLow               0.02
                                         Type               1
                                         Flags              +HARD +VALID  
)

Gravel_Coarse_Shallow_Wet               ("Gravel_Coarse_Shallow_Wet" ; id 51, rev 42
                                         myStatic           0.3
                                         myKinetic          0.225
                                         myStaticSoil       0.24
                                         myKineticSoil      0.18
                                         SinkFactor         0.0000002
                                         SolidGroundOffset  0
                                         SoilThickness      0.01
                                         SoilDensity        1000
                                         RollingResistance  0.1
                                         WaterFactor        1
                                         BumpFrequency      0.4
                                         BumpAmplitude      0.001667
                                         CollMyHigh         0.9
                                         CollMyLow          0.3
                                         eHigh              0.05
                                         eLow               0.02
                                         Type               1
                                         Flags              +HARD +VALID  
)

BR2_Gravel_Coarse_Shallow_Wet           ("BR2_Gravel_Coarse_Shallow_Wet" ; id 183, rev 42
                                         myStatic           0.3
                                         myKinetic          0.225
                                         myStaticSoil       0.24
                                         myKineticSoil      0.18
                                         SinkFactor         0.0000002
                                         SolidGroundOffset  0
                                         SoilThickness      0.01
                                         SoilDensity        1000
                                         RollingResistance  0.1
                                         WaterFactor        1
                                         BumpFrequency      0.4
                                         BumpAmplitude      0.001667
                                         CollMyHigh         0.9
                                         CollMyLow          0.3
                                         eHigh              0.05
                                         eLow               0.02
                                         Type               1
                                         Flags              +HARD +VALID  
)

Gravel_Coarse_Deep_Wet                  ("Gravel_Coarse_Deep_Wet" ; id 43, rev 42
                                         myStatic           0.3
                                         myKinetic          0.225
                                         myStaticSoil       0.24
                                         myKineticSoil      0.18
                                         SinkFactor         0.0000002
                                         SolidGroundOffset  0
                                         SoilThickness      0.01
                                         SoilDensity        1000
                                         RollingResistance  0.1
                                         WaterFactor        1
                                         BumpFrequency      0.4
                                         BumpAmplitude      0.001667
                                         CollMyHigh         0.9
                                         CollMyLow          0.3
                                         eHigh              0.05
                                         eLow               0.02
                                         Type               1
                                         Flags              +HARD +VALID  
)

BR2_Gravel_Coarse_Deep_Wet              ("BR2_Gravel_Coarse_Deep_Wet" ; id 191, rev 42
                                         myStatic           0.3
                                         myKinetic          0.225
                                         myStaticSoil       0.24
                                         myKineticSoil      0.18
                                         SinkFactor         0.0000002
                                         SolidGroundOffset  0
                                         SoilThickness      0.01
                                         SoilDensity        1000
                                         RollingResistance  0.1
                                         WaterFactor        1
                                         BumpFrequency      0.4
                                         BumpAmplitude      0.001667
                                         CollMyHigh         0.9
                                         CollMyLow          0.3
                                         eHigh              0.05
                                         eLow               0.02
                                         Type               1
                                         Flags              +HARD +VALID  
)

Gravel_Coarse_Deeper_Wet                ("Gravel_Coarse_Deeper_Wet" ; id 35, rev 42
                                         myStatic           0.3
                                         myKinetic          0.225
                                         myStaticSoil       0.24
                                         myKineticSoil      0.18
                                         SinkFactor         0.0000002
                                         SolidGroundOffset  0
                                         SoilThickness      0.01
                                         SoilDensity        1000
                                         RollingResistance  0.1
                                         WaterFactor        1
                                         BumpFrequency      0.4
                                         BumpAmplitude      0.001667
                                         CollMyHigh         0.9
                                         CollMyLow          0.3
                                         eHigh              0.05
                                         eLow               0.02
                                         Type               1
                                         Flags              +HARD +VALID  
)

BR2_Gravel_Coarse_Deeper_Wet            ("BR2_Gravel_Coarse_Deeper_Wet" ; id 199, rev 42
                                         myStatic           0.3
                                         myKinetic          0.225
                                         myStaticSoil       0.24
                                         myKineticSoil      0.18
                                         SinkFactor         0.0000002
                                         SolidGroundOffset  0
                                         SoilThickness      0.01
                                         SoilDensity        1000
                                         RollingResistance  0.1
                                         WaterFactor        1
                                         BumpFrequency      0.4
                                         BumpAmplitude      0.001667
                                         CollMyHigh         0.9
                                         CollMyLow          0.3
                                         eHigh              0.05
                                         eLow               0.02
                                         Type               1
                                         Flags              +HARD +VALID  
)

SnowOnGravel_Shallow                    ("SnowOnGravel_Shallow" ; id 101, rev 42
                                         myStatic           0.3
                                         myKinetic          0.225
                                         myStaticSoil       0.24
                                         myKineticSoil      0.18
                                         SinkFactor         0.0000002
                                         SolidGroundOffset  0
                                         SoilThickness      0.01
                                         SoilDensity        1000
                                         RollingResistance  0.1
                                         WaterFactor        0
                                         BumpFrequency      1
                                         BumpAmplitude      0.0001
                                         CollMyHigh         0.9
                                         CollMyLow          0.3
                                         eHigh              0.05
                                         eLow               0.02
                                         Type               3
                                         Flags              +HARD +VALID  
)

SnowOnGravel_Medium                     ("SnowOnGravel_Medium" ; id 102, rev 42
                                         myStatic           0.3
                                         myKinetic          0.225
                                         myStaticSoil       0.24
                                         myKineticSoil      0.18
                                         SinkFactor         0.0000002
                                         SolidGroundOffset  0
                                         SoilThickness      0.01
                                         SoilDensity        1000
                                         RollingResistance  0.1
                                         WaterFactor        0
                                         BumpFrequency      1
                                         BumpAmplitude      0.0001
                                         CollMyHigh         0.9
                                         CollMyLow          0.3
                                         eHigh              0.05
                                         eLow               0.02
                                         Type               3
                                         Flags              +HARD +VALID  
)

SnowOnGravel_Deep                       ("SnowOnGravel_Deep" ; id 103, rev 42
                                         myStatic           0.3
                                         myKinetic          0.225
                                         myStaticSoil       0.24
                                         myKineticSoil      0.18
                                         SinkFactor         0.0000002
                                         SolidGroundOffset  0
                                         SoilThickness      0.01
                                         SoilDensity        1000
                                         RollingResistance  0.1
                                         WaterFactor        0
                                         BumpFrequency      1
                                         BumpAmplitude      0.0001
                                         CollMyHigh         0.9
                                         CollMyLow          0.3
                                         eHigh              0.05
                                         eLow               0.02
                                         Type               3
                                         Flags              +HARD +VALID  
)

Snowwall_Bottom                         ("Snowwall Bottom" ; id 88, rev 42
                                         myStatic           0.3
                                         myKinetic          0.225
                                         myStaticSoil       0.24
                                         myKineticSoil      0.18
                                         SinkFactor         0.0000002
                                         SolidGroundOffset  0
                                         SoilThickness      0.01
                                         SoilDensity        1000
                                         RollingResistance  0.1
                                         WaterFactor        0
                                         BumpFrequency      1
                                         BumpAmplitude      0.0001
                                         CollMyHigh         0.9
                                         CollMyLow          0.3
                                         eHigh              0.05
                                         eLow               0.02
                                         Type               3
                                         Flags              +HARD +VALID  
)

Gravel_Medium_Shallow_Wet               ("Gravel_Medium_Shallow_Wet" ; id 23, rev 42
                                         myStatic           0.3
                                         myKinetic          0.225
                                         myStaticSoil       0.24
                                         myKineticSoil      0.18
                                         SinkFactor         0.0000002
                                         SolidGroundOffset  0
                                         SoilThickness      0.01
                                         SoilDensity        1000
                                         RollingResistance  0.1
                                         WaterFactor        1
                                         BumpFrequency      0.6
                                         BumpAmplitude      0.001667
                                         CollMyHigh         0.9
                                         CollMyLow          0.3
                                         eHigh              0.05
                                         eLow               0.02
                                         Type               1
                                         Flags              +HARD +VALID  
)

Gravel_Medium_Deep_Wet                  ("Gravel_Medium_Deep_Wet" ; id 15, rev 42
                                         myStatic           0.3
                                         myKinetic          0.225
                                         myStaticSoil       0.24
                                         myKineticSoil      0.18
                                         SinkFactor         0.0000002
                                         SolidGroundOffset  0
                                         SoilThickness      0.01
                                         SoilDensity        1000
                                         RollingResistance  0.1
                                         WaterFactor        1
                                         BumpFrequency      0.6
                                         BumpAmplitude      0.001667
                                         CollMyHigh         0.9
                                         CollMyLow          0.3
                                         eHigh              0.05
                                         eLow               0.02
                                         Type               1
                                         Flags              +HARD +VALID  
)

Gravel_Medium_Deeper_Wet                ("Gravel_Medium_Deeper_Wet" ; id 7, rev 42
                                         myStatic           0.3
                                         myKinetic          0.225
                                         myStaticSoil       0.24
                                         myKineticSoil      0.18
                                         SinkFactor         0.0000002
                                         SolidGroundOffset  0
                                         SoilThickness      0.01
                                         SoilDensity        1000
                                         RollingResistance  0.1
                                         WaterFactor        1
                                         BumpFrequency      0.6
                                         BumpAmplitude      0.001667
                                         CollMyHigh         0.9
                                         CollMyLow          0.3
                                         eHigh              0.05
                                         eLow               0.02
                                         Type               1
                                         Flags              +HARD +VALID  
)

Tarmac_Fine_Clean_Dry                   ("Tarmac_Fine_Clean_Dry" ; id 37, rev 42
                                         myStatic           0.3
                                         myKinetic          0.225
                                         myStaticSoil       0.24
                                         myKineticSoil      0.18
                                         SinkFactor         0.0000002
                                         SolidGroundOffset  0
                                         SoilThickness      0.01
                                         SoilDensity        1000
                                         RollingResistance  0.1
                                         WaterFactor        0
                                         BumpFrequency      0.75
                                         BumpAmplitude      0.0005
                                         CollMyHigh         0.5
                                         CollMyLow          0.2
                                         eHigh              0.05
                                         eLow               0.02
                                         Type               2
                                         Flags              +HARD +VALID  
)

Tarmac_Fine_Clean_Damp                  ("Tarmac_Fine_Clean_Damp" ; id 38, rev 42
                                         myStatic           0.3
                                         myKinetic          0.225
                                         myStaticSoil       0.24
                                         myKineticSoil      0.18
                                         SinkFactor         0.0000002
                                         SolidGroundOffset  0
                                         SoilThickness      0.01
                                         SoilDensity        1000
                                         RollingResistance  0.1
                                         WaterFactor        0.5
                                         BumpFrequency      0.725
                                         BumpAmplitude      0.0005
                                         CollMyHigh         0.5
                                         CollMyLow          0.2
                                         eHigh              0.05
                                         eLow               0.02
                                         Type               2
                                         Flags              +HARD +VALID  
)

Tarmac_Fine_Clean_Wet                   ("Tarmac_Fine_Clean_Wet" ; id 39, rev 42
                                         myStatic           0.3
                                         myKinetic          0.225
                                         myStaticSoil       0.24
                                         myKineticSoil      0.18
                                         SinkFactor         0.0000002
                                         SolidGroundOffset  0
                                         SoilThickness      0.01
                                         SoilDensity        1000
                                         RollingResistance  0.1
                                         WaterFactor        1
                                         BumpFrequency      0.7
                                         BumpAmplitude      0.0005
                                         CollMyHigh         0.5
                                         CollMyLow          0.2
                                         eHigh              0.05
                                         eLow               0.02
                                         Type               2
                                         Flags              +HARD +VALID  
)

Tarmac_Medium_Clean_Dry                 ("Tarmac_Medium_Clean_Dry" ; id 65, rev 42
                                         myStatic           0.3
                                         myKinetic          0.225
                                         myStaticSoil       0.24
                                         myKineticSoil      0.18
                                         SinkFactor         0.0000002
                                         SolidGroundOffset  0
                                         SoilThickness      0.01
                                         SoilDensity        1000
                                         RollingResistance  0.1
                                         WaterFactor        0
                                         BumpFrequency      0.55
                                         BumpAmplitude      0.0008
                                         CollMyHigh         0.5
                                         CollMyLow          0.2
                                         eHigh              0.05
                                         eLow               0.02
                                         Type               2
                                         Flags              +HARD +VALID  
)

Tarmac_Medium_Clean_Damp                ("Tarmac_Medium_Clean_Damp" ; id 66, rev 42
                                         myStatic           0.3
                                         myKinetic          0.225
                                         myStaticSoil       0.24
                                         myKineticSoil      0.18
                                         SinkFactor         0.0000002
                                         SolidGroundOffset  0
                                         SoilThickness      0.01
                                         SoilDensity        1000
                                         RollingResistance  0.1
                                         WaterFactor        0.5
                                         BumpFrequency      0.525
                                         BumpAmplitude      0.0008
                                         CollMyHigh         0.5
                                         CollMyLow          0.2
                                         eHigh              0.05
                                         eLow               0.02
                                         Type               2
                                         Flags              +HARD +VALID  
)

Tarmac_Medium_Clean_Wet                 ("Tarmac_Medium_Clean_Wet" ; id 67, rev 42
                                         myStatic           0.3
                                         myKinetic          0.225
                                         myStaticSoil       0.24
                                         myKineticSoil      0.18
                                         SinkFactor         0.0000002
                                         SolidGroundOffset  0
                                         SoilThickness      0.01
                                         SoilDensity        1000
                                         RollingResistance  0.1
                                         WaterFactor        1
                                         BumpFrequency      0.5
                                         BumpAmplitude      0.0008
                                         CollMyHigh         0.5
                                         CollMyLow          0.2
                                         eHigh              0.05
                                         eLow               0.02
                                         Type               2
                                         Flags              +HARD +VALID  
)

Tarmac_Coarse_Clean_Dry                 ("Tarmac_Coarse_Clean_Dry" ; id 69, rev 42
                                         myStatic           0.3
                                         myKinetic          0.225
                                         myStaticSoil       0.24
                                         myKineticSoil      0.18
                                         SinkFactor         0.0000002
                                         SolidGroundOffset  0
                                         SoilThickness      0.01
                                         SoilDensity        1000
                                         RollingResistance  0.1
                                         WaterFactor        0
                                         BumpFrequency      0.35
                                         BumpAmplitude      0.001
                                         CollMyHigh         0.5
                                         CollMyLow          0.2
                                         eHigh              0.05
                                         eLow               0.02
                                         Type               2
                                         Flags              +HARD +VALID  
)

Tarmac_Coarse_Clean_Damp                ("Tarmac_Coarse_Clean_Damp" ; id 70, rev 42
                                         myStatic           0.3
                                         myKinetic          0.225
                                         myStaticSoil       0.24
                                         myKineticSoil      0.18
                                         SinkFactor         0.0000002
                                         SolidGroundOffset  0
                                         SoilThickness      0.01
                                         SoilDensity        1000
                                         RollingResistance  0.1
                                         WaterFactor        0.5
                                         BumpFrequency      0.325
                                         BumpAmplitude      0.001
                                         CollMyHigh         0.5
                                         CollMyLow          0.2
                                         eHigh              0.05
                                         eLow               0.02
                                         Type               2
                                         Flags              +HARD +VALID  
)

Tarmac_Coarse_Clean_Wet                 ("Tarmac_Coarse_Clean_Wet" ; id 71, rev 42
                                         myStatic           0.3
                                         myKinetic          0.225
                                         myStaticSoil       0.24
                                         myKineticSoil      0.18
                                         SinkFactor         0.0000002
                                         SolidGroundOffset  0
                                         SoilThickness      0.01
                                         SoilDensity        1000
                                         RollingResistance  0.1
                                         WaterFactor        1
                                         BumpFrequency      0.3
                                         BumpAmplitude      0.001
                                         CollMyHigh         0.5
                                         CollMyLow          0.2
                                         eHigh              0.05
                                         eLow               0.02
                                         Type               2
                                         Flags              +HARD +VALID  
)

Gravel_Fine_Shallow_Dry_Clone           ("Gravel_Fine_Shallow_Dry_Clone" ; id 153, rev 42
                                         myStatic           0.3
                                         myKinetic          0.225
                                         myStaticSoil       0.24
                                         myKineticSoil      0.18
                                         SinkFactor         0.0000002
                                         SolidGroundOffset  0
                                         SoilThickness      0.01
                                         SoilDensity        1000
                                         RollingResistance  0.1
                                         WaterFactor        0
                                         BumpFrequency      0.7
                                         BumpAmplitude      0.001667
                                         CollMyHigh         0.8
                                         CollMyLow          0.3
                                         eHigh              0.05
                                         eLow               0.02
                                         Type               1
                                         Flags              +HARD +VALID  
)

Gravel_Fine_Shallow_Damp_Clone          ("Gravel_Fine_Shallow_Damp_Clone" ; id 154, rev 42
                                         myStatic           0.3
                                         myKinetic          0.225
                                         myStaticSoil       0.24
                                         myKineticSoil      0.18
                                         SinkFactor         0.0000002
                                         SolidGroundOffset  0
                                         SoilThickness      0.01
                                         SoilDensity        1000
                                         RollingResistance  0.1
                                         WaterFactor        0.5
                                         BumpFrequency      0.7
                                         BumpAmplitude      0.001667
                                         CollMyHigh         0.9
                                         CollMyLow          0.3
                                         eHigh              0.05
                                         eLow               0.02
                                         Type               1
                                         Flags              +HARD +VALID  
)

Gravel_Fine_Shallow_Wet_Clone           ("Gravel_Fine_Shallow_Wet_Clone" ; id 155, rev 42
                                         myStatic           0.3
                                         myKinetic          0.225
                                         myStaticSoil       0.24
                                         myKineticSoil      0.18
                                         SinkFactor         0.0000002
                                         SolidGroundOffset  0
                                         SoilThickness      0.01
                                         SoilDensity        1000
                                         RollingResistance  0.1
                                         WaterFactor        1
                                         BumpFrequency      0.7
                                         BumpAmplitude      0.001667
                                         CollMyHigh         0.9
                                         CollMyLow          0.3
                                         eHigh              0.05
                                         eLow               0.02
                                         Type               1
                                         Flags              +HARD +VALID  
)

Tarmac_Fine_Sprinkled_Dry               ("Tarmac_Fine_Sprinkled_Dry" ; id 45, rev 42
                                         myStatic           0.3
                                         myKinetic          0.225
                                         myStaticSoil       0.24
                                         myKineticSoil      0.18
                                         SinkFactor         0.0000002
                                         SolidGroundOffset  0
                                         SoilThickness      0.01
                                         SoilDensity        1000
                                         RollingResistance  0.1
                                         WaterFactor        0
                                         BumpFrequency      0.75
                                         BumpAmplitude      0.0005
                                         CollMyHigh         0.5
                                         CollMyLow          0.2
                                         eHigh              0.05
                                         eLow               0.02
                                         Type               2
                                         Flags              +HARD +VALID  
)

Tarmac_Fine_Sprinkled_Damp              ("Tarmac_Fine_Sprinkled_Damp" ; id 46, rev 42
                                         myStatic           0.3
                                         myKinetic          0.225
                                         myStaticSoil       0.24
                                         myKineticSoil      0.18
                                         SinkFactor         0.0000002
                                         SolidGroundOffset  0
                                         SoilThickness      0.01
                                         SoilDensity        1000
                                         RollingResistance  0.1
                                         WaterFactor        0.5
                                         BumpFrequency      0.725
                                         BumpAmplitude      0.0005
                                         CollMyHigh         0.5
                                         CollMyLow          0.2
                                         eHigh              0.05
                                         eLow               0.02
                                         Type               2
                                         Flags              +HARD +VALID  
)

Tarmac_Fine_Sprinkled_Wet               ("Tarmac_Fine_Sprinkled_Wet" ; id 47, rev 42
                                         myStatic           0.3
                                         myKinetic          0.225
                                         myStaticSoil       0.24
                                         myKineticSoil      0.18
                                         SinkFactor         0.0000002
                                         SolidGroundOffset  0
                                         SoilThickness      0.01
                                         SoilDensity        1000
                                         RollingResistance  0.1
                                         WaterFactor        1
                                         BumpFrequency      0.7
                                         BumpAmplitude      0.0005
                                         CollMyHigh         0.5
                                         CollMyLow          0.2
                                         eHigh              0.05
                                         eLow               0.02
                                         Type               2
                                         Flags              +HARD +VALID  
)

Tarmac_Fine_Covered_Dry                 ("Tarmac_Fine_Covered_Dry" ; id 53, rev 42
                                         myStatic           0.3
                                         myKinetic          0.225
                                         myStaticSoil       0.24
                                         myKineticSoil      0.18
                                         SinkFactor         0.0000002
                                         SolidGroundOffset  0
                                         SoilThickness      0.01
                                         SoilDensity        1000
                                         RollingResistance  0.1
                                         WaterFactor        0
                                         BumpFrequency      0.75
                                         BumpAmplitude      0.0005
                                         CollMyHigh         0.5
                                         CollMyLow          0.2
                                         eHigh              0.05
                                         eLow               0.02
                                         Type               2
                                         Flags              +HARD +VALID  
)

Tarmac_Fine_Covered_Damp                ("Tarmac_Fine_Covered_Damp" ; id 54, rev 42
                                         myStatic           0.3
                                         myKinetic          0.225
                                         myStaticSoil       0.24
                                         myKineticSoil      0.18
                                         SinkFactor         0.0000002
                                         SolidGroundOffset  0
                                         SoilThickness      0.01
                                         SoilDensity        1000
                                         RollingResistance  0.1
                                         WaterFactor        0.5
                                         BumpFrequency      0.725
                                         BumpAmplitude      0.0005
                                         CollMyHigh         0.5
                                         CollMyLow          0.2
                                         eHigh              0.05
                                         eLow               0.02
                                         Type               2
                                         Flags              +HARD +VALID  
)

Tarmac_Fine_Covered_Wet                 ("Tarmac_Fine_Covered_Wet" ; id 55, rev 42
                                         myStatic           0.3
                                         myKinetic          0.225
                                         myStaticSoil       0.24
                                         myKineticSoil      0.18
                                         SinkFactor         0.0000002
                                         SolidGroundOffset  0
                                         SoilThickness      0.01
                                         SoilDensity        1000
                                         RollingResistance  0.1
                                         WaterFactor        1
                                         BumpFrequency      0.7
                                         BumpAmplitude      0.0005
                                         CollMyHigh         0.5
                                         CollMyLow          0.2
                                         eHigh              0.05
                                         eLow               0.02
                                         Type               2
                                         Flags              +HARD +VALID  
)

Tarmac_Medium_Sprinkled_Dry             ("Tarmac_Medium_Sprinkled_Dry" ; id 73, rev 42
                                         myStatic           0.3
                                         myKinetic          0.225
                                         myStaticSoil       0.24
                                         myKineticSoil      0.18
                                         SinkFactor         0.0000002
                                         SolidGroundOffset  0
                                         SoilThickness      0.01
                                         SoilDensity        1000
                                         RollingResistance  0.1
                                         WaterFactor        0
                                         BumpFrequency      0.55
                                         BumpAmplitude      0.0008
                                         CollMyHigh         0.5
                                         CollMyLow          0.2
                                         eHigh              0.05
                                         eLow               0.02
                                         Type               2
                                         Flags              +HARD +VALID  
)

Tarmac_Medium_Sprinkled_Damp            ("Tarmac_Medium_Sprinkled_Damp" ; id 74, rev 42
                                         myStatic           0.3
                                         myKinetic          0.225
                                         myStaticSoil       0.24
                                         myKineticSoil      0.18
                                         SinkFactor         0.0000002
                                         SolidGroundOffset  0
                                         SoilThickness      0.01
                                         SoilDensity        1000
                                         RollingResistance  0.1
                                         WaterFactor        0.5
                                         BumpFrequency      0.525
                                         BumpAmplitude      0.0008
                                         CollMyHigh         0.5
                                         CollMyLow          0.2
                                         eHigh              0.05
                                         eLow               0.02
                                         Type               2
                                         Flags              +HARD +VALID  
)

Tarmac_Medium_Sprinkled_Wet             ("Tarmac_Medium_Sprinkled_Wet" ; id 75, rev 42
                                         myStatic           0.3
                                         myKinetic          0.225
                                         myStaticSoil       0.24
                                         myKineticSoil      0.18
                                         SinkFactor         0.0000002
                                         SolidGroundOffset  0
                                         SoilThickness      0.01
                                         SoilDensity        1000
                                         RollingResistance  0.1
                                         WaterFactor        1
                                         BumpFrequency      0.5
                                         BumpAmplitude      0.0008
                                         CollMyHigh         0.5
                                         CollMyLow          0.2
                                         eHigh              0.05
                                         eLow               0.02
                                         Type               2
                                         Flags              +HARD +VALID  
)

Tarmac_Coarse_Sprinkled_Dry             ("Tarmac_Coarse_Sprinkled_Dry" ; id 77, rev 42
                                         myStatic           0.3
                                         myKinetic          0.225
                                         myStaticSoil       0.24
                                         myKineticSoil      0.18
                                         SinkFactor         0.0000002
                                         SolidGroundOffset  0
                                         SoilThickness      0.01
                                         SoilDensity        1000
                                         RollingResistance  0.1
                                         WaterFactor        0
                                         BumpFrequency      0.35
                                         BumpAmplitude      0.001
                                         CollMyHigh         0.5
                                         CollMyLow          0.2
                                         eHigh              0.05
                                         eLow               0.02
                                         Type               2
                                         Flags              +HARD +VALID  
)

Tarmac_Coarse_Sprinkled_Damp            ("Tarmac_Coarse_Sprinkled_Damp" ; id 78, rev 42
                                         myStatic           0.3
                                         myKinetic          0.225
                                         myStaticSoil       0.24
                                         myKineticSoil      0.18
                                         SinkFactor         0.0000002
                                         SolidGroundOffset  0
                                         SoilThickness      0.01
                                         SoilDensity        1000
                                         RollingResistance  0.1
                                         WaterFactor        0.5
                                         BumpFrequency      0.325
                                         BumpAmplitude      0.001
                                         CollMyHigh         0.5
                                         CollMyLow          0.2
                                         eHigh              0.05
                                         eLow               0.02
                                         Type               2
                                         Flags              +HARD +VALID  
)

Tarmac_Coarse_Sprinkled_Wet             ("Tarmac_Coarse_Sprinkled_Wet" ; id 79, rev 42
                                         myStatic           0.3
                                         myKinetic          0.225
                                         myStaticSoil       0.24
                                         myKineticSoil      0.18
                                         SinkFactor         0.0000002
                                         SolidGroundOffset  0
                                         SoilThickness      0.01
                                         SoilDensity        1000
                                         RollingResistance  0.1
                                         WaterFactor        1
                                         BumpFrequency      0.3
                                         BumpAmplitude      0.001
                                         CollMyHigh         0.5
                                         CollMyLow          0.2
                                         eHigh              0.05
                                         eLow               0.02
                                         Type               2
                                         Flags              +HARD +VALID  
)

Tarmac_Medium_Covered_Dry               ("Tarmac_Medium_Covered_Dry" ; id 81, rev 42
                                         myStatic           0.3
                                         myKinetic          0.225
                                         myStaticSoil       0.24
                                         myKineticSoil      0.18
                                         SinkFactor         0.0000002
                                         SolidGroundOffset  0
                                         SoilThickness      0.01
                                         SoilDensity        1000
                                         RollingResistance  0.1
                                         WaterFactor        0
                                         BumpFrequency      0.55
                                         BumpAmplitude      0.0008
                                         CollMyHigh         0.5
                                         CollMyLow          0.2
                                         eHigh              0.05
                                         eLow               0.02
                                         Type               2
                                         Flags              +HARD +VALID  
)

Tarmac_Medium_Covered_Damp              ("Tarmac_Medium_Covered_Damp" ; id 82, rev 42
                                         myStatic           0.3
                                         myKinetic          0.225
                                         myStaticSoil       0.24
                                         myKineticSoil      0.18
                                         SinkFactor         0.0000002
                                         SolidGroundOffset  0
                                         SoilThickness      0.01
                                         SoilDensity        1000
                                         RollingResistance  0.1
                                         WaterFactor        0.5
                                         BumpFrequency      0.525
                                         BumpAmplitude      0.0008
                                         CollMyHigh         0.5
                                         CollMyLow          0.2
                                         eHigh              0.05
                                         eLow               0.02
                                         Type               2
                                         Flags              +HARD +VALID  
)

Tarmac_Medium_Covered_Wet               ("Tarmac_Medium_Covered_Wet" ; id 83, rev 42
                                         myStatic           0.3
                                         myKinetic          0.225
                                         myStaticSoil       0.24
                                         myKineticSoil      0.18
                                         SinkFactor         0.0000002
                                         SolidGroundOffset  0
                                         SoilThickness      0.01
                                         SoilDensity        1000
                                         RollingResistance  0.1
                                         WaterFactor        1
                                         BumpFrequency      0.5
                                         BumpAmplitude      0.0008
                                         CollMyHigh         0.5
                                         CollMyLow          0.2
                                         eHigh              0.05
                                         eLow               0.02
                                         Type               2
                                         Flags              +HARD +VALID  
)

Tarmac_Coarse_Covered_Dry               ("Tarmac_Coarse_Covered_Dry" ; id 85, rev 42
                                         myStatic           0.3
                                         myKinetic          0.225
                                         myStaticSoil       0.24
                                         myKineticSoil      0.18
                                         SinkFactor         0.0000002
                                         SolidGroundOffset  0
                                         SoilThickness      0.01
                                         SoilDensity        1000
                                         RollingResistance  0.1
                                         WaterFactor        0
                                         BumpFrequency      0.35
                                         BumpAmplitude      0.001
                                         CollMyHigh         0.5
                                         CollMyLow          0.2
                                         eHigh              0.05
                                         eLow               0.02
                                         Type               2
                                         Flags              +HARD +VALID  
)

Tarmac_Coarse_Covered_Damp              ("Tarmac_Coarse_Covered_Damp" ; id 86, rev 42
                                         myStatic           0.3
                                         myKinetic          0.225
                                         myStaticSoil       0.24
                                         myKineticSoil      0.18
                                         SinkFactor         0.0000002
                                         SolidGroundOffset  0
                                         SoilThickness      0.01
                                         SoilDensity        1000
                                         RollingResistance  0.1
                                         WaterFactor        0.5
                                         BumpFrequency      0.325
                                         BumpAmplitude      0.001
                                         CollMyHigh         0.5
                                         CollMyLow          0.2
                                         eHigh              0.05
                                         eLow               0.02
                                         Type               2
                                         Flags              +HARD +VALID  
)

Tarmac_Coarse_Covered_Wet               ("Tarmac_Coarse_Covered_Wet" ; id 87, rev 42
                                         myStatic           0.3
                                         myKinetic          0.225
                                         myStaticSoil       0.24
                                         myKineticSoil      0.18
                                         SinkFactor         0.0000002
                                         SolidGroundOffset  0
                                         SoilThickness      0.01
                                         SoilDensity        1000
                                         RollingResistance  0.1
                                         WaterFactor        1
                                         BumpFrequency      0.3
                                         BumpAmplitude      0.001
                                         CollMyHigh         0.5
                                         CollMyLow          0.2
                                         eHigh              0.05
                                         eLow               0.02
                                         Type               2
                                         Flags              +HARD +VALID  
)

Grass_Hard_Dry                          ("Grass_Hard_Dry" ; id 97, rev 42
                                         myStatic           0.3
                                         myKinetic          0.225
                                         myStaticSoil       0.24
                                         myKineticSoil      0.18
                                         SinkFactor         0.0000002
                                         SolidGroundOffset  0
                                         SoilThickness      0.01
                                         SoilDensity        1000
                                         RollingResistance  0.1
                                         WaterFactor        0
                                         BumpFrequency      1
                                         BumpAmplitude      0.002
                                         CollMyHigh         1
                                         CollMyLow          0.3
                                         eHigh              0.05
                                         eLow               0.02
                                         Type               5
                                         Flags              +HARD +VALID  
)

Grass_Hard_Damp                         ("Grass_Hard_Damp" ; id 98, rev 42
                                         myStatic           0.3
                                         myKinetic          0.225
                                         myStaticSoil       0.24
                                         myKineticSoil      0.18
                                         SinkFactor         0.0000002
                                         SolidGroundOffset  0
                                         SoilThickness      0.01
                                         SoilDensity        1000
                                         RollingResistance  0.1
                                         WaterFactor        0.5
                                         BumpFrequency      1
                                         BumpAmplitude      0.002
                                         CollMyHigh         1
                                         CollMyLow          0.4
                                         eHigh              0.05
                                         eLow               0.02
                                         Type               5
                                         Flags              +HARD +VALID  
)

Grass_Hard_Wet                          ("Grass_Hard_Wet" ; id 99, rev 42
                                         myStatic           0.3
                                         myKinetic          0.225
                                         myStaticSoil       0.24
                                         myKineticSoil      0.18
                                         SinkFactor         0.0000002
                                         SolidGroundOffset  0
                                         SoilThickness      0.01
                                         SoilDensity        1000
                                         RollingResistance  0.1
                                         WaterFactor        1
                                         BumpFrequency      1
                                         BumpAmplitude      0.002
                                         CollMyHigh         1.2
                                         CollMyLow          0.4
                                         eHigh              0.05
                                         eLow               0.02
                                         Type               5
                                         Flags              +HARD +VALID  
)

Grass_Medium_Dry                        ("Grass_Medium_Dry" ; id 105, rev 42
                                         myStatic           0.3
                                         myKinetic          0.225
                                         myStaticSoil       0.24
                                         myKineticSoil      0.18
                                         SinkFactor         0.0000002
                                         SolidGroundOffset  0
                                         SoilThickness      0.01
                                         SoilDensity        1000
                                         RollingResistance  0.1
                                         WaterFactor        0
                                         BumpFrequency      0.8
                                         BumpAmplitude      0.002
                                         CollMyHigh         0.9
                                         CollMyLow          0.5
                                         eHigh              0.05
                                         eLow               0.02
                                         Type               5
                                         Flags              +HARD +VALID  
)

Grass_Medium_Damp                       ("Grass_Medium_Damp" ; id 106, rev 42
                                         myStatic           0.3
                                         myKinetic          0.225
                                         myStaticSoil       0.24
                                         myKineticSoil      0.18
                                         SinkFactor         0.0000002
                                         SolidGroundOffset  0
                                         SoilThickness      0.01
                                         SoilDensity        1000
                                         RollingResistance  0.1
                                         WaterFactor        0.5
                                         BumpFrequency      0.8
                                         BumpAmplitude      0.002
                                         CollMyHigh         1.2
                                         CollMyLow          0.4
                                         eHigh              0.05
                                         eLow               0.02
                                         Type               5
                                         Flags              +HARD +VALID  
)

Grass_Medium_Wet                        ("Grass_Medium_Wet" ; id 107, rev 42
                                         myStatic           0.3
                                         myKinetic          0.225
                                         myStaticSoil       0.24
                                         myKineticSoil      0.18
                                         SinkFactor         0.0000002
                                         SolidGroundOffset  0
                                         SoilThickness      0.01
                                         SoilDensity        1000
                                         RollingResistance  0.1
                                         WaterFactor        1
                                         BumpFrequency      0.8
                                         BumpAmplitude      0.002
                                         CollMyHigh         1.2
                                         CollMyLow          0.4
                                         eHigh              0.05
                                         eLow               0.02
                                         Type               5
                                         Flags              +HARD +VALID  
)

Grass_Soft_Dry                          ("Grass_Soft_Dry" ; id 113, rev 42
                                         myStatic           0.3
                                         myKinetic          0.225
                                         myStaticSoil       0.24
                                         myKineticSoil      0.18
                                         SinkFactor         0.0000002
                                         SolidGroundOffset  0
                                         SoilThickness      0.01
                                         SoilDensity        1000
                                         RollingResistance  0.1
                                         WaterFactor        0
                                         BumpFrequency      0.6
                                         BumpAmplitude      0.002
                                         CollMyHigh         0.9
                                         CollMyLow          0.5
                                         eHigh              0.05
                                         eLow               0.02
                                         Type               5
                                         Flags              +HARD +VALID  
)

Grass_Soft_Damp                         ("Grass_Soft_Damp" ; id 114, rev 42
                                         myStatic           0.3
                                         myKinetic          0.225
                                         myStaticSoil       0.24
                                         myKineticSoil      0.18
                                         SinkFactor         0.0000002
                                         SolidGroundOffset  0
                                         SoilThickness      0.01
                                         SoilDensity        1000
                                         RollingResistance  0.1
                                         WaterFactor        0.5
                                         BumpFrequency      0.6
                                         BumpAmplitude      0.002
                                         CollMyHigh         1.2
                                         CollMyLow          0.2
                                         eHigh              0.05
                                         eLow               0.02
                                         Type               5
                                         Flags              +HARD +VALID  
)

Grass_Soft_Wet                          ("Grass_Soft_Wet" ; id 115, rev 42
                                         myStatic           0.3
                                         myKinetic          0.225
                                         myStaticSoil       0.24
                                         myKineticSoil      0.18
                                         SinkFactor         0.0000002
                                         SolidGroundOffset  0
                                         SoilThickness      0.01
                                         SoilDensity        1000
                                         RollingResistance  0.1
                                         WaterFactor        1
                                         BumpFrequency      0.6
                                         BumpAmplitude      0.002
                                         CollMyHigh         1.2
                                         CollMyLow          0.2
                                         eHigh              0.05
                                         eLow               0.02
                                         Type               5
                                         Flags              +HARD +VALID  
)

SnowOnIce_Shallow                       ("SnowOnIce_Shallow" ; id 117, rev 42
                                         myStatic           0.3
                                         myKinetic          0.225
                                         myStaticSoil       0.24
                                         myKineticSoil      0.18
                                         SinkFactor         0.0000002
                                         SolidGroundOffset  0
                                         SoilThickness      0.01
                                         SoilDensity        1000
                                         RollingResistance  0.1
                                         WaterFactor        0
                                         BumpFrequency      1
                                         BumpAmplitude      0.0001
                                         CollMyHigh         0.8
                                         CollMyLow          0.3
                                         eHigh              0.05
                                         eLow               0.02
                                         Type               3
                                         Flags              +HARD +VALID  
)

SnowOnIce_Medium                        ("SnowOnIce_Medium" ; id 118, rev 42
                                         myStatic           0.3
                                         myKinetic          0.225
                                         myStaticSoil       0.24
                                         myKineticSoil      0.18
                                         SinkFactor         0.0000002
                                         SolidGroundOffset  0
                                         SoilThickness      0.01
                                         SoilDensity        1000
                                         RollingResistance  0.1
                                         WaterFactor        0
                                         BumpFrequency      1
                                         BumpAmplitude      0.0001
                                         CollMyHigh         0.8
                                         CollMyLow          0.3
                                         eHigh              0.05
                                         eLow               0.02
                                         Type               3
                                         Flags              +HARD +VALID  
)

SnowOnIce_Deep                          ("SnowOnIce_Deep" ; id 119, rev 42
                                         myStatic           0.3
                                         myKinetic          0.225
                                         myStaticSoil       0.24
                                         myKineticSoil      0.18
                                         SinkFactor         0.0000002
                                         SolidGroundOffset  0
                                         SoilThickness      0.01
                                         SoilDensity        1000
                                         RollingResistance  0.1
                                         WaterFactor        0
                                         BumpFrequency      1
                                         BumpAmplitude      0.0001
                                         CollMyHigh         0.8
                                         CollMyLow          0.3
                                         eHigh              0.05
                                         eLow               0.02
                                         Type               3
                                         Flags              +HARD +VALID  
)

Rough_Rough_Dry                         ("Rough_Rough_Dry" ; id 129, rev 42
                                         myStatic           0.3
                                         myKinetic          0.225
                                         myStaticSoil       0.24
                                         myKineticSoil      0.18
                                         SinkFactor         0.0000002
                                         SolidGroundOffset  0
                                         SoilThickness      0.01
                                         SoilDensity        1000
                                         RollingResistance  0.1
                                         WaterFactor        0
                                         BumpFrequency      1
                                         BumpAmplitude      0.0025
                                         CollMyHigh         1.2
                                         CollMyLow          0.4
                                         eHigh              0.05
                                         eLow               0.02
                                         Type               0
                                         Flags              +HARD +VALID  
)

Rough_Rough_Wet                         ("Rough_Rough_Wet" ; id 130, rev 42
                                         myStatic           0.3
                                         myKinetic          0.225
                                         myStaticSoil       0.24
                                         myKineticSoil      0.18
                                         SinkFactor         0.0000002
                                         SolidGroundOffset  0
                                         SoilThickness      0.01
                                         SoilDensity        1000
                                         RollingResistance  0.1
                                         WaterFactor        1
                                         BumpFrequency      1
                                         BumpAmplitude      0.0025
                                         CollMyHigh         1.2
                                         CollMyLow          0.4
                                         eHigh              0.05
                                         eLow               0.02
                                         Type               0
                                         Flags              +HARD +VALID  
)

Dirt_Hard_Dry                           ("Dirt_Hard_Dry" ; id 133, rev 42
                                         myStatic           0.3
                                         myKinetic          0.225
                                         myStaticSoil       0.24
                                         myKineticSoil      0.18
                                         SinkFactor         0.0000002
                                         SolidGroundOffset  0
                                         SoilThickness      0.01
                                         SoilDensity        1000
                                         RollingResistance  0.1
                                         WaterFactor        0
                                         BumpFrequency      0.6
                                         BumpAmplitude      0.0025
                                         CollMyHigh         1.2
                                         CollMyLow          0.4
                                         eHigh              0.05
                                         eLow               0.02
                                         Type               4
                                         Flags              +HARD +VALID  
)

Dirt_Hard_Damp                          ("Dirt_Hard_Damp" ; id 134, rev 42
                                         myStatic           0.3
                                         myKinetic          0.225
                                         myStaticSoil       0.24
                                         myKineticSoil      0.18
                                         SinkFactor         0.0000002
                                         SolidGroundOffset  0
                                         SoilThickness      0.01
                                         SoilDensity        1000
                                         RollingResistance  0.1
                                         WaterFactor        0.5
                                         BumpFrequency      0.6
                                         BumpAmplitude      0.0025
                                         CollMyHigh         1.2
                                         CollMyLow          0.4
                                         eHigh              0.05
                                         eLow               0.02
                                         Type               4
                                         Flags              +HARD +VALID  
)

Dirt_Hard_Wet                           ("Dirt_Hard_Wet" ; id 135, rev 42
                                         myStatic           0.3
                                         myKinetic          0.225
                                         myStaticSoil       0.24
                                         myKineticSoil      0.18
                                         SinkFactor         0.0000002
                                         SolidGroundOffset  0
                                         SoilThickness      0.01
                                         SoilDensity        1000
                                         RollingResistance  0.1
                                         WaterFactor        1
                                         BumpFrequency      0.6
                                         BumpAmplitude      0.0025
                                         CollMyHigh         1.2
                                         CollMyLow          0.4
                                         eHigh              0.05
                                         eLow               0.02
                                         Type               4
                                         Flags              +HARD +VALID  
)

Dirt_Hard_Dry_Clone                     ("Dirt_Hard_Dry_Clone" ; id 161, rev 42
                                         myStatic           0.3
                                         myKinetic          0.225
                                         myStaticSoil       0.24
                                         myKineticSoil      0.18
                                         SinkFactor         0.0000002
                                         SolidGroundOffset  0
                                         SoilThickness      0.01
                                         SoilDensity        1000
                                         RollingResistance  0.1
                                         WaterFactor        0
                                         BumpFrequency      0.55
                                         BumpAmplitude      0.0025
                                         CollMyHigh         1.2
                                         CollMyLow          0.4
                                         eHigh              0.05
                                         eLow               0.02
                                         Type               4
                                         Flags              +HARD +VALID  
)

Dirt_Hard_Damp_Clone                    ("Dirt_Hard_Damp_Clone" ; id 162, rev 42
                                         myStatic           0.3
                                         myKinetic          0.225
                                         myStaticSoil       0.24
                                         myKineticSoil      0.18
                                         SinkFactor         0.0000002
                                         SolidGroundOffset  0
                                         SoilThickness      0.01
                                         SoilDensity        1000
                                         RollingResistance  0.1
                                         WaterFactor        0.5
                                         BumpFrequency      0.55
                                         BumpAmplitude      0.0025
                                         CollMyHigh         1.2
                                         CollMyLow          0.4
                                         eHigh              0.05
                                         eLow               0.02
                                         Type               4
                                         Flags              +HARD +VALID  
)

Dirt_Hard_Wet_Clone                     ("Dirt_Hard_Wet_Clone" ; id 163, rev 42
                                         myStatic           0.3
                                         myKinetic          0.225
                                         myStaticSoil       0.24
                                         myKineticSoil      0.18
                                         SinkFactor         0.0000002
                                         SolidGroundOffset  0
                                         SoilThickness      0.01
                                         SoilDensity        1000
                                         RollingResistance  0.1
                                         WaterFactor        1
                                         BumpFrequency      0.55
                                         BumpAmplitude      0.0025
                                         CollMyHigh         1.2
                                         CollMyLow          0.4
                                         eHigh              0.05
                                         eLow               0.02
                                         Type               4
                                         Flags              +HARD +VALID  
)

Rough_VeryRough_Dry                     ("Rough_VeryRough_Dry" ; id 137, rev 42
                                         myStatic           0.3
                                         myKinetic          0.225
                                         myStaticSoil       0.24
                                         myKineticSoil      0.18
                                         SinkFactor         0.0000002
                                         SolidGroundOffset  0
                                         SoilThickness      0.01
                                         SoilDensity        1000
                                         RollingResistance  0.1
                                         WaterFactor        0
                                         BumpFrequency      0.75
                                         BumpAmplitude      0.0025
                                         CollMyHigh         1.2
                                         CollMyLow          0.4
                                         eHigh              0.05
                                         eLow               0.02
                                         Type               0
                                         Flags              +HARD +VALID  
)

Rough_VeryRough_Wet                     ("Rough_VeryRough_Wet" ; id 138, rev 42
                                         myStatic           0.3
                                         myKinetic          0.225
                                         myStaticSoil       0.24
                                         myKineticSoil      0.18
                                         SinkFactor         0.0000002
                                         SolidGroundOffset  0
                                         SoilThickness      0.01
                                         SoilDensity        1000
                                         RollingResistance  0.1
                                         WaterFactor        1
                                         BumpFrequency      0.75
                                         BumpAmplitude      0.0025
                                         CollMyHigh         1.2
                                         CollMyLow          0.4
                                         eHigh              0.05
                                         eLow               0.02
                                         Type               0
                                         Flags              +HARD +VALID  
)

Dirt_Medium_Dry                         ("Dirt_Medium_Dry" ; id 141, rev 42
                                         myStatic           0.3
                                         myKinetic          0.225
                                         myStaticSoil       0.24
                                         myKineticSoil      0.18
                                         SinkFactor         0.0000002
                                         SolidGroundOffset  0
                                         SoilThickness      0.01
                                         SoilDensity        1000
                                         RollingResistance  0.1
                                         WaterFactor        0
                                         BumpFrequency      0.5
                                         BumpAmplitude      0.0025
                                         CollMyHigh         1.2
                                         CollMyLow          0.4
                                         eHigh              0.05
                                         eLow               0.02
                                         Type               4
                                         Flags              +HARD +VALID  
)

Dirt_Medium_Damp                        ("Dirt_Medium_Damp" ; id 142, rev 42
                                         myStatic           0.3
                                         myKinetic          0.225
                                         myStaticSoil       0.24
                                         myKineticSoil      0.18
                                         SinkFactor         0.0000002
                                         SolidGroundOffset  0
                                         SoilThickness      0.01
                                         SoilDensity        1000
                                         RollingResistance  0.1
                                         WaterFactor        0.5
                                         BumpFrequency      0.5
                                         BumpAmplitude      0.0025
                                         CollMyHigh         1.2
                                         CollMyLow          0.4
                                         eHigh              0.05
                                         eLow               0.02
                                         Type               4
                                         Flags              +HARD +VALID  
)

Dirt_Medium_Wet                         ("Dirt_Medium_Wet" ; id 143, rev 42
                                         myStatic           0.3
                                         myKinetic          0.225
                                         myStaticSoil       0.24
                                         myKineticSoil      0.18
                                         SinkFactor         0.0000002
                                         SolidGroundOffset  0
                                         SoilThickness      0.01
                                         SoilDensity        1000
                                         RollingResistance  0.1
                                         WaterFactor        1
                                         BumpFrequency      0.5
                                         BumpAmplitude      0.0025
                                         CollMyHigh         1.2
                                         CollMyLow          0.4
                                         eHigh              0.05
                                         eLow               0.02
                                         Type               4
                                         Flags              +HARD +VALID  
)

Dirt_Soft_Dry                           ("Dirt_Soft_Dry" ; id 149, rev 42
                                         myStatic           0.3
                                         myKinetic          0.225
                                         myStaticSoil       0.24
                                         myKineticSoil      0.18
                                         SinkFactor         0.0000002
                                         SolidGroundOffset  0
                                         SoilThickness      0.01
                                         SoilDensity        1000
                                         RollingResistance  0.1
                                         WaterFactor        0
                                         BumpFrequency      0.4
                                         BumpAmplitude      0.0025
                                         CollMyHigh         1.2
                                         CollMyLow          0.4
                                         eHigh              0.05
                                         eLow               0.02
                                         Type               4
                                         Flags              +HARD +VALID  
)

Dirt_Soft_Damp                          ("Dirt_Soft_Damp" ; id 150, rev 42
                                         myStatic           0.3
                                         myKinetic          0.225
                                         myStaticSoil       0.24
                                         myKineticSoil      0.18
                                         SinkFactor         0.0000002
                                         SolidGroundOffset  0
                                         SoilThickness      0.01
                                         SoilDensity        1000
                                         RollingResistance  0.1
                                         WaterFactor        0.5
                                         BumpFrequency      0.4
                                         BumpAmplitude      0.0025
                                         CollMyHigh         1.2
                                         CollMyLow          0.4
                                         eHigh              0.05
                                         eLow               0.02
                                         Type               4
                                         Flags              +HARD +VALID  
)

Dirt_Soft_Wet                           ("Dirt_Soft_Wet" ; id 151, rev 42
                                         myStatic           0.3
                                         myKinetic          0.225
                                         myStaticSoil       0.24
                                         myKineticSoil      0.18
                                         SinkFactor         0.0000002
                                         SolidGroundOffset  0
                                         SoilThickness      0.01
                                         SoilDensity        1000
                                         RollingResistance  0.1
                                         WaterFactor        1
                                         BumpFrequency      0.4
                                         BumpAmplitude      0.0025
                                         CollMyHigh         1.2
                                         CollMyLow          0.4
                                         eHigh              0.05
                                         eLow               0.02
                                         Type               4
                                         Flags              +HARD +VALID  
)

Tree_Stump                              ("Tree_Stump" ; id 120, rev 42
                                         myStatic           0.3
                                         myKinetic          0.225
                                         myStaticSoil       0.24
                                         myKineticSoil      0.18
                                         SinkFactor         0.0000002
                                         SolidGroundOffset  0
                                         SoilThickness      0.01
                                         SoilDensity        1000
                                         RollingResistance  0.1
                                         WaterFactor        0
                                         BumpFrequency      0.4
                                         BumpAmplitude      0.0025
                                         CollMyHigh         1.5
                                         CollMyLow          1.5
                                         eHigh              15000
                                         eLow               600000
                                         Type               4
                                         Flags              +HARD +VALID  +BENDABLE
)

Bendable_Tree                           ("Bendable_Tree" ; id 121, rev 42
                                         myStatic           0.3
                                         myKinetic          0.225
                                         myStaticSoil       0.24
                                         myKineticSoil      0.18
                                         SinkFactor         0.0000002
                                         SolidGroundOffset  0
                                         SoilThickness      0.01
                                         SoilDensity        1000
                                         RollingResistance  0.1
                                         WaterFactor        0
                                         BumpFrequency      0.4
                                         BumpAmplitude      0.0025
                                         CollMyHigh         5
                                         CollMyLow          5
                                         eHigh              1000
                                         eLow               200000
                                         Type               4
                                         Flags              +HARD +VALID  +BENDABLE
)

Rock_Small                              ("Rock_Small" ; id 56, rev 42
                                         myStatic           0.3
                                         myKinetic          0.225
                                         myStaticSoil       0.24
                                         myKineticSoil      0.18
                                         SinkFactor         0.0000002
                                         SolidGroundOffset  0
                                         SoilThickness      0.01
                                         SoilDensity        1000
                                         RollingResistance  0.1
                                         WaterFactor        0
                                         BumpFrequency      0.4
                                         BumpAmplitude      0.0025
                                         CollMyHigh         1
                                         CollMyLow          1
                                         eHigh              10000
                                         eLow               500000
                                         Type               4
                                         Flags              +HARD +VALID  +BENDABLE
)

Water_Surface                           ("Water_Surface" ; id 157, rev 42
                                         myStatic           0.3
                                         myKinetic          0.225
                                         myStaticSoil       0.24
                                         myKineticSoil      0.18
                                         SinkFactor         0.0000002
                                         SolidGroundOffset  0
                                         SoilThickness      0.01
                                         SoilDensity        1000
                                         RollingResistance  0.1
                                         WaterFactor        1
                                         BumpFrequency      0
                                         BumpAmplitude      0
                                         CollMyHigh         0
                                         CollMyLow          0
                                         eHigh              0
                                         eLow               0
                                         Type               0
                                         Flags              -HARD +VALID  
)

Very_Sparse_Bush                        ("Very_Sparse_Bush" ; id 165, rev 42
                                         myStatic           0.3
                                         myKinetic          0.225
                                         myStaticSoil       0.24
                                         myKineticSoil      0.18
                                         SinkFactor         0.0000002
                                         SolidGroundOffset  0
                                         SoilThickness      0.01
                                         SoilDensity        1000
                                         RollingResistance  0.1
                                         WaterFactor        0
                                         BumpFrequency      0
                                         BumpAmplitude      0
                                         CollMyHigh         0
                                         CollMyLow          0
                                         eHigh              0
                                         eLow               0
                                         Type               0
                                         Flags              -HARD +VALID  
)

Sparse_Bush                             ("Sparse_Bush" ; id 166, rev 42
                                         myStatic           0.3
                                         myKinetic          0.225
                                         myStaticSoil       0.24
                                         myKineticSoil      0.18
                                         SinkFactor         0.0000002
                                         SolidGroundOffset  0
                                         SoilThickness      0.01
                                         SoilDensity        1000
                                         RollingResistance  0.1
                                         WaterFactor        0
                                         BumpFrequency      0
                                         BumpAmplitude      0
                                         CollMyHigh         0
                                         CollMyLow          0
                                         eHigh              0
                                         eLow               0
                                         Type               0
                                         Flags              -HARD +VALID  
)

Dense_Bush                              ("Dense_Bush" ; id 167, rev 42
                                         myStatic           0.3
                                         myKinetic          0.225
                                         myStaticSoil       0.24
                                         myKineticSoil      0.18
                                         SinkFactor         0.0000002
                                         SolidGroundOffset  0
                                         SoilThickness      0.01
                                         SoilDensity        1000
                                         RollingResistance  0.1
                                         WaterFactor        0
                                         BumpFrequency      0
                                         BumpAmplitude      0
                                         CollMyHigh         0
                                         CollMyLow          0
                                         eHigh              0
                                         eLow               0
                                         Type               0
                                         Flags              -HARD +VALID  
)

Very_Dense_Bush                         ("Very_Dense_Bush" ; id 168, rev 42
                                         myStatic           0.3
                                         myKinetic          0.225
                                         myStaticSoil       0.24
                                         myKineticSoil      0.18
                                         SinkFactor         0.0000002
                                         SolidGroundOffset  0
                                         SoilThickness      0.01
                                         SoilDensity        1000
                                         RollingResistance  0.1
                                         WaterFactor        0
                                         BumpFrequency      0
                                         BumpAmplitude      0
                                         CollMyHigh         0
                                         CollMyLow          0
                                         eHigh              0
                                         eLow               0
                                         Type               0
                                         Flags              -HARD +VALID  
)

Spret_Bush_Small                        ("Spret_Bush_Small" ; id 24, rev 42
                                         myStatic           0.3
                                         myKinetic          0.225
                                         myStaticSoil       0.24
                                         myKineticSoil      0.18
                                         SinkFactor         0.0000002
                                         SolidGroundOffset  0
                                         SoilThickness      0.01
                                         SoilDensity        1000
                                         RollingResistance  0.1
                                         WaterFactor        0
                                         BumpFrequency      0
                                         BumpAmplitude      0
                                         CollMyHigh         0.9
                                         CollMyLow          0.3
                                         eHigh              0.05
                                         eLow               0.01
                                         Type               0
                                         Flags              +HARD +VALID  
)

Spret_Bush_Medium                       ("Spret_Bush_Medium" ; id 25, rev 42
                                         myStatic           0.3
                                         myKinetic          0.225
                                         myStaticSoil       0.24
                                         myKineticSoil      0.18
                                         SinkFactor         0.0000002
                                         SolidGroundOffset  0
                                         SoilThickness      0.01
                                         SoilDensity        1000
                                         RollingResistance  0.1
                                         WaterFactor        0
                                         BumpFrequency      0
                                         BumpAmplitude      0
                                         CollMyHigh         0.9
                                         CollMyLow          0.3
                                         eHigh              0.05
                                         eLow               0.01
                                         Type               0
                                         Flags              +HARD +VALID  
)

Spret_Bush_Large                        ("Spret_Bush_Large" ; id 26, rev 42
                                         myStatic           0.3
                                         myKinetic          0.225
                                         myStaticSoil       0.24
                                         myKineticSoil      0.18
                                         SinkFactor         0.0000002
                                         SolidGroundOffset  0
                                         SoilThickness      0.01
                                         SoilDensity        1000
                                         RollingResistance  0.1
                                         WaterFactor        0
                                         BumpFrequency      0
                                         BumpAmplitude      0
                                         CollMyHigh         0.9
                                         CollMyLow          0.3
                                         eHigh              0.05
                                         eLow               0.01
                                         Type               0
                                         Flags              +HARD +VALID  
)

Lov_Bush_Small                          ("Lov_Bush_Small" ; id 27, rev 42
                                         myStatic           0.3
                                         myKinetic          0.225
                                         myStaticSoil       0.24
                                         myKineticSoil      0.18
                                         SinkFactor         0.0000002
                                         SolidGroundOffset  0
                                         SoilThickness      0.01
                                         SoilDensity        1000
                                         RollingResistance  0.1
                                         WaterFactor        0
                                         BumpFrequency      0
                                         BumpAmplitude      0
                                         CollMyHigh         0.9
                                         CollMyLow          0.3
                                         eHigh              0.05
                                         eLow               0.01
                                         Type               0
                                         Flags              +HARD +VALID  
)

Lov_Bush_Medium                         ("Lov_Bush_Medium" ; id 28, rev 42
                                         myStatic           0.3
                                         myKinetic          0.225
                                         myStaticSoil       0.24
                                         myKineticSoil      0.18
                                         SinkFactor         0.0000002
                                         SolidGroundOffset  0
                                         SoilThickness      0.01
                                         SoilDensity        1000
                                         RollingResistance  0.1
                                         WaterFactor        0
                                         BumpFrequency      0
                                         BumpAmplitude      0
                                         CollMyHigh         0.9
                                         CollMyLow          0.3
                                         eHigh              0.05
                                         eLow               0.01
                                         Type               0
                                         Flags              +HARD +VALID  
)

Lov_Bush_Large                          ("Lov_Bush_Large" ; id 29, rev 42
                                         myStatic           0.3
                                         myKinetic          0.225
                                         myStaticSoil       0.24
                                         myKineticSoil      0.18
                                         SinkFactor         0.0000002
                                         SolidGroundOffset  0
                                         SoilThickness      0.01
                                         SoilDensity        1000
                                         RollingResistance  0.1
                                         WaterFactor        0
                                         BumpFrequency      0
                                         BumpAmplitude      0
                                         CollMyHigh         0.9
                                         CollMyLow          0.3
                                         eHigh              0.05
                                         eLow               0.01
                                         Type               0
                                         Flags              +HARD +VALID  
)

Tree_Small                              ("Tree_Small" ; id 30, rev 42
                                         myStatic           0.3
                                         myKinetic          0.225
                                         myStaticSoil       0.24
                                         myKineticSoil      0.18
                                         SinkFactor         0.0000002
                                         SolidGroundOffset  0
                                         SoilThickness      0.01
                                         SoilDensity        1000
                                         RollingResistance  0.1
                                         WaterFactor        0
                                         BumpFrequency      0
                                         BumpAmplitude      0
                                         CollMyHigh         0.9
                                         CollMyLow          0.3
                                         eHigh              0.05
                                         eLow               0.01
                                         Type               0
                                         Flags              +HARD +VALID  
)

Tree_Medium                             ("Tree_Medium" ; id 31, rev 42
                                         myStatic           0.3
                                         myKinetic          0.225
                                         myStaticSoil       0.24
                                         myKineticSoil      0.18
                                         SinkFactor         0.0000002
                                         SolidGroundOffset  0
                                         SoilThickness      0.01
                                         SoilDensity        1000
                                         RollingResistance  0.1
                                         WaterFactor        0
                                         BumpFrequency      0
                                         BumpAmplitude      0
                                         CollMyHigh         0.9
                                         CollMyLow          0.3
                                         eHigh              0.05
                                         eLow               0.01
                                         Type               0
                                         Flags              +HARD +VALID  
)

Tree_Large                              ("Tree_Large" ; id 32, rev 42
                                         myStatic           0.3
                                         myKinetic          0.225
                                         myStaticSoil       0.24
                                         myKineticSoil      0.18
                                         SinkFactor         0.0000002
                                         SolidGroundOffset  0
                                         SoilThickness      0.01
                                         SoilDensity        1000
                                         RollingResistance  0.1
                                         WaterFactor        0
                                         BumpFrequency      0
                                         BumpAmplitude      0
                                         CollMyHigh         0.9
                                         CollMyLow          0.3
                                         eHigh              0.05
                                         eLow               0.01
                                         Type               0
                                         Flags              +HARD +VALID  
)

Rock_Medium                             ("Rock_Medium" ; id 57, rev 42
                                         myStatic           0.3
                                         myKinetic          0.225
                                         myStaticSoil       0.24
                                         myKineticSoil      0.18
                                         SinkFactor         0.0000002
                                         SolidGroundOffset  0
                                         SoilThickness      0.01
                                         SoilDensity        1000
                                         RollingResistance  0.1
                                         WaterFactor        0
                                         BumpFrequency      0
                                         BumpAmplitude      0
                                         CollMyHigh         0.9
                                         CollMyLow          0.3
                                         eHigh              0.05
                                         eLow               0.02
                                         Type               0
                                         Flags              +HARD +VALID  
)

Rock_Large                              ("Rock_Large" ; id 58, rev 42
                                         myStatic           0.3
                                         myKinetic          0.225
                                         myStaticSoil       0.24
                                         myKineticSoil      0.18
                                         SinkFactor         0.0000002
                                         SolidGroundOffset  0
                                         SoilThickness      0.01
                                         SoilDensity        1000
                                         RollingResistance  0.1
                                         WaterFactor        0
                                         BumpFrequency      0
                                         BumpAmplitude      0
                                         CollMyHigh         0.8
                                         CollMyLow          0.3
                                         eHigh              0.05
                                         eLow               0.02
                                         Type               0
                                         Flags              +HARD +VALID  
)

Trunk_Small                             ("Trunk_Small" ; id 59, rev 42
                                         myStatic           0.3
                                         myKinetic          0.225
                                         myStaticSoil       0.24
                                         myKineticSoil      0.18
                                         SinkFactor         0.0000002
                                         SolidGroundOffset  0
                                         SoilThickness      0.01
                                         SoilDensity        1000
                                         RollingResistance  0.1
                                         WaterFactor        0
                                         BumpFrequency      0
                                         BumpAmplitude      0
                                         CollMyHigh         0.9
                                         CollMyLow          0.3
                                         eHigh              0.05
                                         eLow               0.01
                                         Type               0
                                         Flags              +HARD +VALID  
)

Trunk_Medium                            ("Trunk_Medium" ; id 60, rev 42
                                         myStatic           0.3
                                         myKinetic          0.225
                                         myStaticSoil       0.24
                                         myKineticSoil      0.18
                                         SinkFactor         0.0000002
                                         SolidGroundOffset  0
                                         SoilThickness      0.01
                                         SoilDensity        1000
                                         RollingResistance  0.1
                                         WaterFactor        0
                                         BumpFrequency      0
                                         BumpAmplitude      0
                                         CollMyHigh         0.9
                                         CollMyLow          0.3
                                         eHigh              0.05
                                         eLow               0.01
                                         Type               0
                                         Flags              +HARD +VALID  
)

Trunk_Large                             ("Trunk_Large" ; id 61, rev 42
                                         myStatic           0.3
                                         myKinetic          0.225
                                         myStaticSoil       0.24
                                         myKineticSoil      0.18
                                         SinkFactor         0.0000002
                                         SolidGroundOffset  0
                                         SoilThickness      0.01
                                         SoilDensity        1000
                                         RollingResistance  0.1
                                         WaterFactor        0
                                         BumpFrequency      0
                                         BumpAmplitude      0
                                         CollMyHigh         0.9
                                         CollMyLow          0.3
                                         eHigh              0.05
                                         eLow               0.01
                                         Type               0
                                         Flags              +HARD +VALID  
)

Metal_Pole                              ("Metal_Pole" ; id 63, rev 42
                                         myStatic           0.3
                                         myKinetic          0.225
                                         myStaticSoil       0.24
                                         myKineticSoil      0.18
                                         SinkFactor         0.0000002
                                         SolidGroundOffset  0
                                         SoilThickness      0.01
                                         SoilDensity        1000
                                         RollingResistance  0.1
                                         WaterFactor        0
                                         BumpFrequency      0
                                         BumpAmplitude      0
                                         CollMyHigh         0.9
                                         CollMyLow          0.3
                                         eHigh              0.05
                                         eLow               0.01
                                         Type               0
                                         Flags              +HARD +VALID  
)

Snowwall                                ("Snowwall" ; id 62, rev 42
                                         myStatic           0.3
                                         myKinetic          0.225
                                         myStaticSoil       0.24
                                         myKineticSoil      0.18
                                         SinkFactor         0.0000002
                                         SolidGroundOffset  0
                                         SoilThickness      0.01
                                         SoilDensity        1000
                                         RollingResistance  0.1
                                         WaterFactor        0
                                         BumpFrequency      1
                                         BumpAmplitude      0.0001
                                         CollMyHigh         0.9
                                         CollMyLow          0.3
                                         eHigh              0.05
                                         eLow               0.02
                                         Type               3
                                         Flags              +HARD +VALID  
)

Spectator                               ("Spectator" ; id 255, rev 42
                                         myStatic           0
                                         myKinetic          0
                                         myStaticSoil       0
                                         myKineticSoil      0
                                         SinkFactor         0.0000002
                                         SolidGroundOffset  0
                                         SoilThickness      0.01
                                         SoilDensity        1000
                                         RollingResistance  0.1
                                         WaterFactor        0
                                         BumpFrequency      0
                                         BumpAmplitude      0
                                         CollMyHigh         0
                                         CollMyLow          0
                                         eHigh              0
                                         eLow               0
                                         Type               0
                                         Flags              -HARD +VALID  
)

Metal_Barrier                           ("Metal_Barrier" ; id 64, COLLISION TEST
                                         myStatic           0.795
                                         myKinetic          0.735375
                                         myStaticSoil       0.75525
                                         myKineticSoil      0.698606
                                         SinkFactor         0.0000003
                                         SolidGroundOffset  -0.015
                                         SoilThickness      0.02
                                         SoilDensity        1000
                                         RollingResistance  0.16
                                         WaterFactor        0
                                         BumpFrequency      0.4
                                         BumpAmplitude      0.005
                                         CollMyHigh         5
                                         CollMyLow          5
                                         eHigh              25000
                                         eLow               250000
                                         Type               4
                                         Flags              +HARD +VALID  +BENDABLE
)

Bendable_01_NGP                           ("Bendable_01_NGP" ; id 201, COLLISION TEST
                                         myStatic           0.3
                                         myKinetic          0.225
                                         myStaticSoil       0.24
                                         myKineticSoil      0.18
                                         SinkFactor         0.0000002
                                         SolidGroundOffset  0
                                         SoilThickness      0.01
                                         SoilDensity        1000
                                         RollingResistance  0.1
                                         WaterFactor        0
                                         BumpFrequency      0.4
                                         BumpAmplitude      0.0025
                                         CollMyHigh         5
                                         CollMyLow          5
                                         eHigh              4500
                                         eLow               200000
                                         Type               4
                                         Flags              +HARD +VALID  +BENDABLE
)

Bendable_02_NGP                           ("Bendable_02_NGP" ; id 202, COLLISION TEST
                                         myStatic           0.3
                                         myKinetic          0.225
                                         myStaticSoil       0.24
                                         myKineticSoil      0.18
                                         SinkFactor         0.0000002
                                         SolidGroundOffset  0
                                         SoilThickness      0.01
                                         SoilDensity        1000
                                         RollingResistance  0.1
                                         WaterFactor        0
                                         BumpFrequency      0.4
                                         BumpAmplitude      0.0025
                                         CollMyHigh         5
                                         CollMyLow          5
                                         eHigh              9000
                                         eLow               200000
                                         Type               4
                                         Flags              +HARD +VALID  +BENDABLE
)

Bendable_03_NGP                           ("Bendable_03_NGP" ; id 203, COLLISION TEST
                                         myStatic           0.3
                                         myKinetic          0.225
                                         myStaticSoil       0.24
                                         myKineticSoil      0.18
                                         SinkFactor         0.0000002
                                         SolidGroundOffset  0
                                         SoilThickness      0.01
                                         SoilDensity        1000
                                         RollingResistance  0.1
                                         WaterFactor        0
                                         BumpFrequency      0.4
                                         BumpAmplitude      0.0025
                                         CollMyHigh         5
                                         CollMyLow          5
                                         eHigh              13500
                                         eLow               200000
                                         Type               4
                                         Flags              +HARD +VALID  +BENDABLE
)

Bendable_04_NGP                           ("Bendable_04_NGP" ; id 204, COLLISION TEST
                                         myStatic           0.3
                                         myKinetic          0.225
                                         myStaticSoil       0.24
                                         myKineticSoil      0.18
                                         SinkFactor         0.0000002
                                         SolidGroundOffset  0
                                         SoilThickness      0.01
                                         SoilDensity        1000
                                         RollingResistance  0.1
                                         WaterFactor        0
                                         BumpFrequency      0.4
                                         BumpAmplitude      0.0025
                                         CollMyHigh         5
                                         CollMyLow          5
                                         eHigh              18000
                                         eLow               200000
                                         Type               4
                                         Flags              +HARD +VALID  +BENDABLE
)

Bendable_05_NGP                           ("Bendable_05_NGP" ; id 205, COLLISION TEST
                                         myStatic           0.3
                                         myKinetic          0.225
                                         myStaticSoil       0.24
                                         myKineticSoil      0.18
                                         SinkFactor         0.0000002
                                         SolidGroundOffset  0
                                         SoilThickness      0.01
                                         SoilDensity        1000
                                         RollingResistance  0.1
                                         WaterFactor        0
                                         BumpFrequency      0.4
                                         BumpAmplitude      0.0025
                                         CollMyHigh         5
                                         CollMyLow          5
                                         eHigh              22500
                                         eLow               200000
                                         Type               4
                                         Flags              +HARD +VALID  +BENDABLE
)

Bendable_06_NGP                           ("Bendable_06_NGP" ; id 206, COLLISION TEST
                                         myStatic           0.3
                                         myKinetic          0.225
                                         myStaticSoil       0.24
                                         myKineticSoil      0.18
                                         SinkFactor         0.0000002
                                         SolidGroundOffset  0
                                         SoilThickness      0.01
                                         SoilDensity        1000
                                         RollingResistance  0.1
                                         WaterFactor        0
                                         BumpFrequency      0.4
                                         BumpAmplitude      0.0025
                                         CollMyHigh         5
                                         CollMyLow          5
                                         eHigh              27000
                                         eLow               200000
                                         Type               4
                                         Flags              +HARD +VALID  +BENDABLE
)

Bendable_07_NGP                           ("Bendable_07_NGP" ; id 207, COLLISION TEST
                                         myStatic           0.3
                                         myKinetic          0.225
                                         myStaticSoil       0.24
                                         myKineticSoil      0.18
                                         SinkFactor         0.0000002
                                         SolidGroundOffset  0
                                         SoilThickness      0.01
                                         SoilDensity        1000
                                         RollingResistance  0.1
                                         WaterFactor        0
                                         BumpFrequency      0.4
                                         BumpAmplitude      0.0025
                                         CollMyHigh         5
                                         CollMyLow          5
                                         eHigh              31500
                                         eLow               200000
                                         Type               4
                                         Flags              +HARD +VALID  +BENDABLE
)

Bendable_08_NGP                           ("Bendable_08_NGP" ; id 208, COLLISION TEST
                                         myStatic           0.3
                                         myKinetic          0.225
                                         myStaticSoil       0.24
                                         myKineticSoil      0.18
                                         SinkFactor         0.0000002
                                         SolidGroundOffset  0
                                         SoilThickness      0.01
                                         SoilDensity        1000
                                         RollingResistance  0.1
                                         WaterFactor        0
                                         BumpFrequency      0.4
                                         BumpAmplitude      0.0025
                                         CollMyHigh         5
                                         CollMyLow          5
                                         eHigh              36000
                                         eLow               200000
                                         Type               4
                                         Flags              +HARD +VALID  +BENDABLE
)

Bendable_09_NGP                           ("Bendable_09_NGP" ; id 209, COLLISION TEST
                                         myStatic           0.3
                                         myKinetic          0.225
                                         myStaticSoil       0.24
                                         myKineticSoil      0.18
                                         SinkFactor         0.0000002
                                         SolidGroundOffset  0
                                         SoilThickness      0.01
                                         SoilDensity        1000
                                         RollingResistance  0.1
                                         WaterFactor        0
                                         BumpFrequency      0.4
                                         BumpAmplitude      0.0025
                                         CollMyHigh         5
                                         CollMyLow          5
                                         eHigh              40500
                                         eLow               200000
                                         Type               4
                                         Flags              +HARD +VALID  +BENDABLE
)

Bendable_10_NGP                           ("Bendable_10_NGP" ; id 210, COLLISION TEST
                                         myStatic           0.3
                                         myKinetic          0.225
                                         myStaticSoil       0.24
                                         myKineticSoil      0.18
                                         SinkFactor         0.0000002
                                         SolidGroundOffset  0
                                         SoilThickness      0.01
                                         SoilDensity        1000
                                         RollingResistance  0.1
                                         WaterFactor        0
                                         BumpFrequency      0.4
                                         BumpAmplitude      0.0025
                                         CollMyHigh         5
                                         CollMyLow          5
                                         eHigh              45000
                                         eLow               200000
                                         Type               4
                                         Flags              +HARD +VALID  +BENDABLE
)

Bendable_11_NGP                           ("Bendable_11_NGP" ; id 211, COLLISION TEST
                                         myStatic           0.3
                                         myKinetic          0.225
                                         myStaticSoil       0.24
                                         myKineticSoil      0.18
                                         SinkFactor         0.0000002
                                         SolidGroundOffset  0
                                         SoilThickness      0.01
                                         SoilDensity        1000
                                         RollingResistance  0.1
                                         WaterFactor        0
                                         BumpFrequency      0.4
                                         BumpAmplitude      0.0025
                                         CollMyHigh         5
                                         CollMyLow          5
                                         eHigh              49500
                                         eLow               200000
                                         Type               4
                                         Flags              +HARD +VALID  +BENDABLE
)

Bendable_12_NGP                           ("Bendable_12_NGP" ; id 212, COLLISION TEST
                                         myStatic           0.3
                                         myKinetic          0.225
                                         myStaticSoil       0.24
                                         myKineticSoil      0.18
                                         SinkFactor         0.0000002
                                         SolidGroundOffset  0
                                         SoilThickness      0.01
                                         SoilDensity        1000
                                         RollingResistance  0.1
                                         WaterFactor        0
                                         BumpFrequency      0.4
                                         BumpAmplitude      0.0025
                                         CollMyHigh         5
                                         CollMyLow          5
                                         eHigh              54000
                                         eLow               200000
                                         Type               4
                                         Flags              +HARD +VALID  +BENDABLE
)

Bendable_13_NGP                           ("Bendable_13_NGP" ; id 213, COLLISION TEST
                                         myStatic           0.3
                                         myKinetic          0.225
                                         myStaticSoil       0.24
                                         myKineticSoil      0.18
                                         SinkFactor         0.0000002
                                         SolidGroundOffset  0
                                         SoilThickness      0.01
                                         SoilDensity        1000
                                         RollingResistance  0.1
                                         WaterFactor        0
                                         BumpFrequency      0.4
                                         BumpAmplitude      0.0025
                                         CollMyHigh         5
                                         CollMyLow          5
                                         eHigh              58500
                                         eLow               200000
                                         Type               4
                                         Flags              +HARD +VALID  +BENDABLE
)

Bendable_14_NGP                           ("Bendable_14_NGP" ; id 214, COLLISION TEST
                                         myStatic           0.3
                                         myKinetic          0.225
                                         myStaticSoil       0.24
                                         myKineticSoil      0.18
                                         SinkFactor         0.0000002
                                         SolidGroundOffset  0
                                         SoilThickness      0.01
                                         SoilDensity        1000
                                         RollingResistance  0.1
                                         WaterFactor        0
                                         BumpFrequency      0.4
                                         BumpAmplitude      0.0025
                                         CollMyHigh         5
                                         CollMyLow          5
                                         eHigh              63000
                                         eLow               200000
                                         Type               4
                                         Flags              +HARD +VALID  +BENDABLE
)

Bendable_15_NGP                           ("Bendable_15_NGP" ; id 215, COLLISION TEST
                                         myStatic           0.3
                                         myKinetic          0.225
                                         myStaticSoil       0.24
                                         myKineticSoil      0.18
                                         SinkFactor         0.0000002
                                         SolidGroundOffset  0
                                         SoilThickness      0.01
                                         SoilDensity        1000
                                         RollingResistance  0.1
                                         WaterFactor        0
                                         BumpFrequency      0.4
                                         BumpAmplitude      0.0025
                                         CollMyHigh         5
                                         CollMyLow          5
                                         eHigh              67500
                                         eLow               200000
                                         Type               4
                                         Flags              +HARD +VALID  +BENDABLE
)
                   )
  ))
