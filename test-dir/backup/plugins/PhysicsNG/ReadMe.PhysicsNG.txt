
Next Generation Physics (NGP) Plugin (PhysicsNG, Version 6.1) for RBR 1.02 SSE
===============================================================================

This plugin for Richard Burns Rally enhances RBR's builtin physics. Tyres and
surface materials have been optimized to improve the behavior of the vehicles.
The vehicle physics have been enhanced with new differential types and new
engines.
New drive types like rear wheel drive and torque splitting all wheel drive are
provided.
Suspension has been improved by progressive bumpstops and fast rebound damping.
Setup parameters are being validated, fixed and logged if invalid.


Tyres
-----
RBR's tyre parameters have been optimized, e.g. performance affected by camber.


Materials/Surface
-----------------
RBR's surface materials have been optimized.


Center Diff Handbrake Release and Left-Foot-Brake Threshold
-----------------------------------------------------------
RBR does allow to edit these values in the builtin setup editor, but the
values are not being used by the original game's physics calculation.
Instead, the game uses the predefined values from the car's physics files.
This plugin enables the physics calculation to use the user specified setup
values.
This applies to all AWD cars.

Configuration: setup.


Engine
------
A new engine implementation allows for specifying arbitrary torque curves.

Parameterization: LSP physics files.


New Differential Types
------------------------
New types of differentials are provided which can be used as a replacement for
any of the original differentials (front, center, rear).

Mechanical
----------
One of the new differential types is a Salisbury type, which allows for
parameterizing the preload torque in Newton meters (Nm), the throttle lock and
brake lock as a percentage, e.g. 25% locking.

Parameterization: LSP physics files.
Configuration: setup.
Use first the mapping entry (throttle/brake 0%) for the locking percentage.
All other values in the mapping are being ignored and locked in the settings
dialog.

Viscous Coupling
----------------
Another new differential is a viscous coupling type, which allows for
parameterizing the preload torque (only available with special VC diff types)
in Newton meter (Nm), and the lock as a percentage of some builtin base
torque, e.g. 25% locking.

Parameterization: LSP physics files.
Configuration: setup.
Use the first mapping entry (throttle 0%) for the locking percentage.
All other values in the mapping are being ignored and locked in the settings
dialog.


New Drive Types
---------------
* rear wheel drive
Uses the specified rear diff type.

* front wheel drive
Uses the specified front diff type.

* torque split all wheel drive
All wheel drive with fixed torque split respective bias between front and rear
axle.

* non-center diff all wheel drive (center spool)
This new drive type realizes a four wheel drive without a center diff.

Parameterization: LSP physics files.


Suspension
----------
Bumpstops are linear or progressive, depending on the vehicle and setup.
Bumpstop settings are adjustable (applies to some vehicle types only).

True 4-way damping can be configured via the builtin setup editor.

Parameterization: LSP physics files.


Aero Kit
--------
Front and rear downforce can be specified separately, in N(ewton).
The value provided is only a base value. The actual downforce varies with
speed.

Parameterization: LSP physics files.


FFB Sensitivity Adjustable
--------------------------
The force feedback sensitivity may be adjusted separately for each surface and
car (based on the car slot).
See "Configuration" for details.


Material Maps Processing
------------------------
RBR defines material maps sized 16x16 (=256 spots) for specifying the physical
properties of the track. RBR uses only the first row (x coordinate) of this
map, so only the first 16 values apply. The remaining 15 rows or 240 values
were simply ignored which is not what the track creators intended.  This
plugin convinces RBR to calculate the material in two dimensions (x and y).


Setup Parameter Validation
--------------------------
The NGP plugin checks all setup parameters relevant for the car's performance
just before the stage is being started, and sets invalid setup parameter
values to reasonable values.
Invalid values are being logged in a file named «NGP_SetupErrors.log» located
in the «Temporary» directory specified by the operating system's settings.

The following setup parameters are being checked:
* MaxSteeringLock
* FrontRollBarStiffness
* RearRollBarStiffness
* MaxBrakePressureFront
* MaxBrakePressureRear
* CenterDiffThrottle
* LfCenterDiffThrottle
* CenterDiffBrake
* LfCenterDiffBrake
* CenterSpeedMap
* LfCenterSpeedMap
* FrontDiffThrottle
* FrontDiffBrake
* FrontSpeedMap
* RearDiffThrottle
* RearDiffBrake
* RearSpeedMap
* CenterDiffHandbrakeRelease
* LeftFootBrakeThreshold
* CenterDiffMaxTorque
* FrontDiffMaxTorque
* RearDiffMaxTorque
* StrutPlatformHeight
* SteeringRodLength
* WheelAxisInclination
* SpringLength
* SpringStiffness
* HelperSpringLength
* HelperSpringStiffness
* DampingBump
* DampingRebound
* DampingBumpHighSpeed
* BumpHighSpeedBreak
* DampingReboundHighSpeed
* ReboundHighSpeedBreak
* BumpStopStiffness
* BumpStopDampingBump
* BumpStopDampingRebound
* Pressure

Differential mapping velocities are not validated, as these parameters have no
impact on the performance of the car.


Input Controller Filter For Handbrake And Clutch
------------------------------------------------
The filter settings for handbrake and clutch can be configured (like throttle
and brake filters) for analog and digital input.


Multi-Colored Gear Shift Indicator
----------------------------------
The gear shift indicator of the dash has been enhanced to use multiple colors.
The delta RPM for changing the colors can be configured.
See "Configuration" for details.


Skid Sound Threshold Adjustable
-------------------------------
The slip peak relative threshold for playing the skid sound can be configured.
Standard RBR uses 125 (%), which is too high to really help the driver finding
the limit.
We recommend values close to or less than 100, so you can actually hear when
a tyre starts to reach its peak force.
See "Configuration" for details.


Direct Gear Mapping aka Stick Shift (H-Shifter)
-----------------------------------------------
Original RBR only allowed to shift up or down sequentially. NGP enhances the
builtin controller mapping to use arbitrary keys for changing gears directly.
You may use this for applying an H-pattern or to directly shift into
neutral while using a sequential gearbox.

Configuration:
Goto "Options-->Controls-->Controller Setup-->Controller Setup".

There will be new entries in the list of "Action" to "Input" mappings:

* Reverse
* Neutral
* First Gear
* Second Gear
* Third Gear
* Fourth Gear
* Fifth Gear
* Sixth Gear

Please note that if you do not assign the "Neutral" action, the other actions
like "First Gear" etc. have to be mapped to sticky keys, as otherwise when
releasing the mapped key, RBR will shift into neutral automatically (like a
real stick shift).

Also note that you should remove the H-shifter plugin, if installed.
Otherwise there might be conflicting key mappings.


Barometric Formula
------------------
Original RBR only used constant barometric pressure and temperature.
NGP uses the barometric formula to calculate ambient pressure and temperature
which have an impact on e.g. engine, brake and tyre performance.


Engine Temperature Management
-----------------------------
Temperature management of several engine parts has been improved.


Tyre Temperature Management
---------------------------
Temperature management of the tyres has been significantly improved. Depending
on the type of tyre (dry/intermediate/wet, tarmac/gravel/snow) the operating
window of the optimum tyre temperature is different.
Tyres heat depending on slip and flexing. Cooling depends on rotational
velocity and wetness of ground surface.

Optimal Tyre Temperature Operating Windows [ºC]
-----------------------------------------------
tarmac dry ................60....90...
tarmac int ..............50....80.....
tarmac wet ............40....70.......
gravel dry .................65....95..
gravel int ...............55....85....
gravel wet .............45....75......
snow       ...............55....85....*

*only wear affected


Brake Temperature Management
----------------------------
The performance of the brakes depends on brake temperature and sliding
velocity. Depending on the vehicle there may be more or less brake fading if
the temperature is beyond the optimal operating window.


Telemetry Recording
-------------------
A builtin telemetry recorder allows for recording several car telemetry
values related to engine, springs, dampers, brakes and tyres etc.
See section "Telemetry Recorder" below.



Installation
---------------------------------------------------------------------

Prerequisites:
This plugin needs RBR patch 1.02 SSE to work properly.

1) Make a backup copy of your original physics.rbz.

2) Extract the entire (!) NGP installation archive into your RBR installation
folder.

3) Install the cars as you would normally do into the new physics.rbz file or
the Physics folder, depending on the plugin or mod you are using for driving
the stages.


Important notes:
****************
The PhysicsNG plugin will not work without the accompanying physics.lsp
located in the new physics.rbz.

If both, "physics.rbz" and "Physics" folder are present, all the contained LSP
files have to be identical, otherwise the PhysicsNG plugin will not work.

If you also want to use the FixUp plugin, which is highly recommended due to
stability issues, you have to use FixUp.dll Version 3.0 or higher !


Uninstallation
---------------------------------------------------------------------

Simply delete the PhysicsNG.dll file and restore your original physics.rbz.
You may also delete the PhysicsNG folder located in the "Plugins" folder.


Configuration
---------------------------------------------------------------------

In the file "RichardBurnsRally.ini" some new parameters in a new section [NGP]
will be generated the first time you start RBR with activated PhysicsNG
plugin.

To resolve the surface type the plugin reads the «SetupSpec» value from the
active «surface».lsp file of the selected car and applies the respective
ForceFeedbackSensitivity«Surface Type» value:

SetupSpec := Surface Type
        0 := Gravel
        1 := Tarmac
        2 := Snow

Generally values only apply if they are greater than 0 (zero).
If set, car specific values overwrite the global values.

[NGP]
; Specifies whether the required revision is shown on screen
; when the camera moves around the car before starting the stage
; and when pausing the game.
;
; Valid values:
;   0 - hide revision hint
;   1 - show revision hint
;
showRevision=1


; The force feedback sensitivity, given in percent.
; Values lower than 100 decrease the FF sensitivity and increase the FF force.
; Values larger than 100 increase the FF sensitivity and decrease the FF force.
;
; Generally lower values do make the force feedback less precise, but
; stronger, and reduce peak force impacts.
; 
;
; Global values (without Car«N» postfix)
;
; applies to gravel stages
ForceFeedbackSensitivityGravel=100

; applies to tarmac stages
ForceFeedbackSensitivityTarmac=100

; applies to snow stages
ForceFeedbackSensitivitySnow=100

; car specific values:
; a value of 0 (zero) leaves the FF sensitivity unchanged
ForceFeedbackSensitivityGravel_Car0=0
ForceFeedbackSensitivityTarmac_Car0=0
ForceFeedbackSensitivitySnow_Car0=0
ForceFeedbackSensitivityGravel_Car1=0
ForceFeedbackSensitivityTarmac_Car1=0
ForceFeedbackSensitivitySnow_Car1=0
ForceFeedbackSensitivityGravel_Car2=0
ForceFeedbackSensitivityTarmac_Car2=0
ForceFeedbackSensitivitySnow_Car2=0
ForceFeedbackSensitivityGravel_Car3=0
ForceFeedbackSensitivityTarmac_Car3=0
ForceFeedbackSensitivitySnow_Car3=0
ForceFeedbackSensitivityGravel_Car4=0
ForceFeedbackSensitivityTarmac_Car4=0
ForceFeedbackSensitivitySnow_Car4=0
ForceFeedbackSensitivityGravel_Car5=0
ForceFeedbackSensitivityTarmac_Car5=0
ForceFeedbackSensitivitySnow_Car5=0
ForceFeedbackSensitivityGravel_Car6=0
ForceFeedbackSensitivityTarmac_Car6=0
ForceFeedbackSensitivitySnow_Car6=0
ForceFeedbackSensitivityGravel_Car7=0
ForceFeedbackSensitivityTarmac_Car7=0
ForceFeedbackSensitivitySnow_Car7=0

; Specifies the slip percentage threshold to play the skid sound for tarmac
; surface.
; Standard RBR uses 125 (not recommended).
tarmacSkidSoundThreshold=100

; Specifies the slip percentage threshold to play the skid sound for
; non-tarmac surfaces.
; Standard RBR uses 125 (not recommended).
skidSoundThreshold=100

; Specifies the delta RPM (engine revs) for changing the color of
; the gear shift indicator.
; Colors are as follows:
; white - white
; green - white
; green - green
; yellow - green
; yellow - yellow
; red - yellow
; red - red
; Double red light appears above (upshift - 25) for all gears except the last,
; where (rpm limit - 25) applies.
;
; Setting this value to 0 (zero) skips the intermediate colors and uses only
; white - white
; red - red
gearChangeIndicatorDeltaRPM=200

; Activates telemetry recording.
; 0 - Telemetry recording disabled.
; 1 - Telemetry recording enabled.
; This value can be toggled in the NGP plugin dialog.
telemetryRecording=0

; Number of tics to be used for telemetry recording.
; Each "telemetryTics" tics a telemetry record is written.
; The higher the value, the less accurate the recording,
; but saves processing time and disk space.
telemetryTics=5

Telemetry Recorder
------------------
To activate automatic telemetry recording go to the NGP plugin dialog
("Plugins --> NGP") and press 'T' to toggle.
The current value is saved in the INI file, so you do not have to re-activate
this each time you start RBR.
Which values actually are recorded depends on the flags set in the
"Telemetry.ini" file located in the "Plugins/PhysicsNG/" directory.
Please note that the more values are recorded, the larger the generated
telemetry values file will be. Recording only works in normal GAME mode, not
in REPLAY mode.

The telemetry file name is being generated automatically, the file is written
into the directory "Plugins/PhysicsNG/telemetry".

We recommend "gnuplot" to plot the recorded telemetry data, as usually a
spreadsheet application is not capable of handling these amounts of data.
Please note that some sample gnuplot functions are present in the file
'rbr.gp' located in the "Plugins/PhysicsNG/scripts" folder. In this folder
several scripts have been placed for your convenience. These scripts rely on a
gnuplot variable 'file' to be present and pointing to the telemetry data file
to be plotted.

Note:
=====
Take care of your available disk space if you have telemetry recording
enabled. The recorder does not check for free disk space !



Notes
---------------------------------------------------------------------

- The UI dialog page shows the state of the NGP plugin and allows for toggling
  the telemetry recording.
- Only genuine NGP cars will work with this plugin. All other cars are limited
  to using only reverse and first gear.



Disclaimer
---------------------------------------------------------------------

This software and the accompanying files are supplied "as is" and
without warranties as to performance or merchantibility or any other
warranties whether expressed or implied. No warranty of fitness for
a particular purpose is offered.

You may use this plugin in online plugins as long as you distribute all the
files being initially contained in the NGP installation package,
especially the readme and documentation files.



Version History
---------------------------------------------------------------------
6.1 2019-12-14
    * BUGFIX: fixed issue with sound volume of engine/transmission

6.0 2019-09-06
    * revised tyres and surfaces
    * barometric formula (affects tyres, engine, brakes, aero)
    * engine temperature management
    * tyre temperature management
    * tyre performance truely camber dependent
    * brake temperature management
    * rear brakes still functional if brake circuit damaged
    * handbrake pressure adjustable
    * telemetry recorder
    * allow only genuine NGP cars

5.0.1 2017-11-30
    * fixed issue of RBR shifting into reverse when using H-pattern and vsync
      is off (usually only noticable when frame rates exceed ~130 maybe)
    * don't downshift from first gear to N(eutral) when N is mapped to a key
      (mimics behavior of real R5/WRC cars)

5.0 2017-11-25
    * more aggressive tyres, improved handling
    * direct gear mapping aka H-pattern

4.4 2016-11-11
    * bug fixes after intensive testing

4.3 2016-10-22
    * new viscous coupling differential type for all diffs (center/front/rear)
    * optimized differential handling
    * optimized engine idle/stall handling

4.2 2016-02-20
    * use correct labels in "Differential Torque" page ("preload"), depending
      on the differential type
    * tyres/materials evolution, improved tyres not suitable for
      the surface (e.g. snow on tarmac etc.)
    * changed mass and inertia of some movable objects for more variance

4.1 2015-12-27
    * fixed power/coast diff issue

4.0 2015-11-19
    * adjustable linear and progressive bump stops
    * adjustable fast rebound (4-way damping)
    * engine loses some power when some parts are damaged
    * variable shift times
    * better support very lightweight and heavyweight vehicles
    * new dialog to select game language

3.1 2015-06-05
    * tyres optimized
    * optional single color gear change indicator
    * support for big wheels with radii > 400mm

3.0 2015-03-14
    * decreased performance of "wrong" tyres (dry on wet etc.)
    * more decrease of performance with tyre wear
    * reduce/remove downforce if front bumper/wing are damaged/broken
    * allow negative downforce
    * maximum clutch torque depending on maximum engine torque
    * fixed weird engine behaviour after collision if damage is non-realistic 
    * set helper spring minimum length to 40% of helper spring length
    * input controller filter for handbrake and clutch
    * multi-color gear shift indicator
    * adjustable threshold for playing the skid sound

2.4 2015-01-06
    * fixed typo in readme
    * removed FixUp from installation archive

2.4 2014-11-25
    * new tyre performance parameter
    * fixed loading of physics in quick rally mode

2.3 2014-11-15
    * tarmac/snow improved

2.2 2014-10-12
    * aero kit

2.1 2014-09-21
    * improved support for online plugins
    * set idle rpm of standard engine

2.0 2014-09-06
    * setup parameter validation
    * fixed high speed damping

1.11 2014-08-16
    * progressive bumpstops
    * improved high power turbo engine

1.10 2014-07-24
    * same grip level for all cars
    * optimized snow surface parameters

1.8 2014-05-20
    * improved force feedback

1.7 2014-05-11
    * adjustable force feedback sensitivity
    * show/hide revision hint

1.4 2014-04-03
    * variable tyre diameter

1.3 2014-03-28
    * fixed engine idle
    * clutch help adapted to new engine idle

1.2 2014-03-23
    * drivetrain fixes
    * optimized snow walls
    * online-ready, activation codes in physics files

1.1 2014-03-06
    * fixed restart of engine after wheels lockup

1.0 2014-03-02
    Initial version.


_____________________________________________________________________
WorkerBee

Credits for the translation of the «strings.ini» file go to Vaclav K. (CZ),
Cristiano V. (vcorp, IT), Wojtek N. (PL), Gabriel R. (SP).
Thank you, guys !

mail to guenter.schlupf at gmx.net

vim: set nocindent :
