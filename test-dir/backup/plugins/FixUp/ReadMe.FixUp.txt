
FixUp Patch (Version 3.0) for RBR 1.02 SSE
=====================================================================

This patch plugin for Richard Burns Rally fixes some known problems in RBR,
removes a few limitations and enhances some dialogs.


Sound Fixes
-----------
a) Buffer Fix
The internal sound buffers are too small to hold the sound data to be played,
e.g. front end music, service park music, pace note calls ect.
From time to time these buffers are filled with more data than initially
allocated so memory located right after these buffers gets corrupted.
Depending on which object or data is located in the corrupted memory region
more or less strange things may happen, e.g. crashes or freezes.

So, this is where the patch applies. It convinces RBR to use a larger buffers,
large enough to hold the sound data.

b) Sound Distance Fix
Unfortunately RBR uses a wrong DirectSound library call to specify the maximum
distance at which a sound should be audible. Instead it always just sets the
minimum distance twice.
This patch addresses this issue to make the correct call.

c) Engine Sound Fix
Sometimes RBR distorts or loses the engine sound when switching to the menu
and back.
This patch resets the engine sound buffers.

d) Gravel Pitch and Offroad Fix
During the transition from one surface material to another the calculation of
the gravel pitch and the offroad flag was wrong.
This patch addresses these issues.

e) Helicopter Distance Fix
When playing the sound of the helicopter the maximum distance has not been set
correctly by RBR.
Instead, RBR has actually set the minimum distance. Fixed.

f) V-Sync Off Sound Issues Fix
When running the game with v-sync off, especially tire sounds are not being
emitted correctly. This is best noticeable on tarmac stages where the tire
screaming sounds are more pronounced.
Actually there are two effects. One effect is that the tires seem to scream
intermittently without actually any noticeable wheel slip. The other effect is
that no noticeable tire sound is emitted when the tires actual have slip, like
when braking before entering a corner.
The patch uses a fixed sound emission rate to address these issues.

This fix may be disabled if you prefer the old, buggy behaviour (see
"Configuration", parameter "soundRefreshRate").



Setup Slots and Setup Naming
----------------------------
The original RBR has a limit of 3 setup slots and restricts the name of a
setup to 10 characters.
This patch enhances the number of setup slots to 127 and allows for a setup
name to be 31 characters.
The dialogs to select or save a setup respectively have been enhanced to show
10 setups at once.


Replay Lists and Replay Naming
------------------------------
The original RBR limited the name of a replay to 13 characters.
This patch allows for the replay name to be entered when saving to be 31
characters in length.
The replay list dialog has been enhanced to show 20 replays at once, the name
column is much wider than before.


Service Park
------------
Due to an error in the implementation the 'Manager Advice' in the service park
didn't work as expected. Also the number of mechanics wasn't taken into
account properly. This patch fixes these problems.


Aspect Ratio (Widescreen Support)
---------------------------------
The original RBR uses a fixed 4:3 aspect ratio for drawing. On widescreen
hardware the objects drawn on screen get distorted due to the aspect ratio
being 16:9 or 16:10 (actually XRes / YRes).
This patch fixes the aspect ratio being used for drawing to be XRes / YRes.
This fix may be disabled if you'd like to use other programs to fix the aspect
ratio (see "Configuration").


Fullscreen Window
-----------------
When running RBR in fullscreen mode the game uses the entire screen to draw
on, but you can't switch back to the desktop without screwing up the game.
When running RBR in windowed mode you always get the window decorations
(titlebar, menu icon, close button ect.) surrounding the window, but would be
able to switch to another application.
This patch allows you to run RBR in fullscreen windowed mode without the
annoying window decorations. Switching to another application is then possible.
To use this new mode you have to configure "Fullscreen=false" in
RichardBurnsRally.ini.
This fix may be disabled if you'd like to use other programs to run in windowed
mode (see "Configuration").


Vertical Synchronization (V-SYNC)
---------------------------------
The fullscreen window mode revealed a bug in the sound processing when v-sync
is disabled. Especially on tarmac there are weird tyre sounds, in service
park there is some strange noise as well.
This patch allows you to specify whether to set the v-sync mode and if v-sync
should be enabled (the default) or disabled (see "Configuration").
It is recommended to enable the fix and to enable v-sync for a better gaming
experience.
Note: this fix is independent of the Fullscreen Window fix.


Head Gasket Durability
----------------------
When driving with realistic damage settings the head gasket might get damaged
more than one would expect, especially on long tracks (e.g. Noiker).
With this fix you can specify how much longer the head gasket resists the
damage (see "Configuration").
Note: actually the calculation of the head gasket damage is kind of voodoo and
involves some randomness. With this fix you should be able to get rid of this
annoying behavior.


Center and Scale Dialogs and HUD/Dash to 4:3
--------------------------------------------
When your screen resolution (XRes/YRes) is not equal to one of the native
resolutions 640x480, 800x600, 1024x768 or 1280x1024, usually the dialogs are 
distorted and widened by the RBR graphics engine to fit the screen.
This fix centers the view (dialogs and HUD) and sets the width to match the
height in a 4:3 ratio.
Example:
XRes=1680 YRes=1050 (16/10) ==> view = 1400 x 1050 (4/3) centered on screen
x-position of view: (1680 - 1400) / 2 = 140 (pixels)
Note:
As the view's width is set to (4/3 * YRes), the corresponding
dash/minidash.ini files will be used by RBR to draw the HUD. In the example
above the digidash_1280.ini (1400 greater than 1280 but less than 1600) would
be used instead of digidash.ini (1680 greater than 1600).
This fix may be disabled (see "Configuration").


Interactive Object Manager
--------------------------
Some add-on tracks have invalid interactive object ids which cause the game
to crash.
This patch checks for invalid object ids and prevents them from being used.


Main Thread Processor
---------------------
This feature only applies to multiprocessor or multicore systems.
On single processor systems it has no effect.
Initially RBR was developed without multicore or multiprocessor systems in
mind. RBR does all its computations in one thread (the main thread) and uses
the processor the operating system has chosen.
On some systems the hardware timers used may get out of sync between the
different processors so you may get unexpected behaviour when the processor
changes between the calls to the timer functions of the operating system.
To avoid such issues or to assign a specific processor to RBR's main thread
you may specify the processor in the configuration (see "Configuration").


DLS and Other Data Check and Fix
--------------------------------
Some DLS files contain corrupt animation and replay camera channel data.
Sometimes the offset of the name of the animation ids is wrong and invalid
data is being addressed at runtime.
The corrupt data causes to crash the game randomly, sometimes during the
loading process, sometimes while driving the stage.
This patch fixes the data in memory before it is being processed by RBR's
loader.
Errors are reported into the file "dlserrors.log" in the current directory.
No data files on disk are touched or changed!

A broken sanity check for valid indices into an array containing the rally
names may cause crashes while loading the car flip animation for a track.
This is the case when loading e.g. track 160.


Collision Mesh Fix
------------------
If the car hits an object exactly at the endpoint of a collision mesh
polygon vector there may happen a crash of the whole game due to a small
numerical error when calculating a vector length ratio.
This patch limits the length of one vector so the ratio remains less than one.


Material Maps Processing
------------------------
Removed, now part of PhysicsNG (Next Generation Physics plugin).


Track Loading Fix
-----------------
Some tracks have invalid texture indices in the LBS file which causes crashes
on some machines, although it should happen on every machine on every load
(e.g. Sardian).
This patch fixes the data in memory before it is being processed by RBR's
loader.
Add-on tracks may use ten times the number of fences than before.
This patch increases all related buffers to be able to hold tenfold the
original data.


Adaptive Force Feedback
-----------------------
Depending on the performance of your hardware the force feedback can be
improved significantly.
Best results will be achieved with vsync on, because only then enough cycles
will be available to actually apply the FFB stuff.
With vsync off, activating the adaptive FFB may lead to stuttering, and is not
recommended.
This fix may be disabled and configured (see "Configuration").


Force Feedback Dead Zone
-----------------------
When using direct drive wheels you may suffer from small oscillations of the
steering wheel while driving a straight line, especially on tarmac.
You may configure a dead zone within which the force feedback at your steering
wheel is set to zero.
This fix may be disabled and configured (see "Configuration" for details).


Z-Modeler Fix
-------------
Car models built with the Z-Modeler are lacking some internal animation
objects related to cameras.
This fix repairs some indices related to the animation objects to prevent RBR
from crashing.
You no longer need the Z.DLL fix (which sometimes did seem to not work
properly).


Enhanced Trackloader
--------------------
RBR has issues loading large tracks, especially LBS files.
This fix loads the LBS file data from two files, LBS and LB2.
The LB2 file must have been generated by the splitlbs tool located in the bin
folder.


Installation
---------------------------------------------------------------------
Prerequisites:
This plugin needs RBR patch 1.02 SSE to work properly.

Copy FixUp.dll into the 'Plugins' folder of your RBR installation, which is
usually "C:\Program Files\SCi Games\Richard Burns Rally\Plugins".


Uninstallation
---------------------------------------------------------------------
Simply delete the FixUp.dll and FixUp.ini files and the FixUp folder.


Configuration
---------------------------------------------------------------------
After the first start the plugin creates a configuration file "FixUp.ini" in
the Plugins folder.
You may configure the following parameters:

[Settings]
; Use entire screen in window mode if "Fullscreen=false" in
; RichardBurnsRally.ini.
; Valid values:
;   0 - disable
;   1 - enable
fullScreenWindow=1


; Use aspect ratio (XRes / YRes).
; Valid values:
;   0 - disable
;   1 - enable
fixAspectRatio=1


; Set V-Sync mode.
; Valid values:
;   0 - disable the fix
;   1 - enable
fixVSync=1


; Enable/disable V-Sync. Only applicable if fixVSync=1.
; Valid values:
;   0 - disable/deactivate vertical synchronization
;   1 - enable/activate vertical synchronization
vSyncActive=1


; Specify the durability of the head gasket.
; Valid values:
;   0 or 1      - same behavior as before, normal durability
;   2 and above - last approximately 2 (n) times longer than normal
headGasketDurability=10


; Enable/disable Menu (dialog, HUD) centering
; Valid values:
;   0 - disable/deactivate centering
;   1 - enable/activate centering
centerMenu=1


; Specify the processor (or core) on which the main thread is to be run.
;   0 - Use default, let the operating system choose.
;  >0 - The processor or core number, starting with one.
; If you specify an invalid number, the function will fail, but not do any
; harm to your system.
processor=0


; Enable/disable the adaptive force feedback calculation
;   0 - disable/deactivate adaptive FFB (use RBR's standard algorithm)
;   1 - enable/activate adaptive FFB
adaptiveFFB=1

; Number of cycles to be used as peak performance buffer when adaptive FFB is
; active.
; Slightly increase this value if you suffer from micro stuttering.
; The lower the value, the better the FFB.
; Values higher than 3 may effectively disable adaptive FFB.
;
;   0 - don't use buffer (fully optimize FFB)
;  >0 - number of cycles to be reserved as buffer for peak performance
ffbBufferCycles=1

; Minimum frames per second (FPS) rate to keep when adaptive FFB is active.
; Use a slightly lower value than your device's FPS.
;
; Note: prior to FixUp version 2.7 a fixed value of 58 has been used.
; This parameter is useful if you are using a high frequency monitor.
;
ffbMinFps=58.0

; Deadzone of the steering wheel as a percentage of the total wheel lock in
; one direction.
;
; E.g. if you have configured your wheel with 900 degrees lock to lock, a
; value of 0.02 would specify a 0.02 * (900/2) = 9 degrees dead zone from
; center to right, and from center to left, respectively.
;
; Reasonable values are usually in the range 0.02 to 0.05.
; E.g.
; MiGE 130ST-M10010 : 0.04
; Lenze MCS12H15L   : 0.02 - 0.03
;
;  0 - no deadzone
; >0 - deadzone percentage
ffbDeadZone=0.0

; Force feedback threshold as a percentage of the maximum force.
; Any force feedback force below this value is clipped, so eventually the FFB
; at your steering wheel is zero, if and only if the current steering wheel
; position is within the ffbDeadZone.
;
; E.g. if you have set this value to 0.10, the force feedback will be set to
; zero if the force is below 10% of the maximum force and the wheel lock is
; within the configured dead zone.
;
; Reasonable values are usually in the range 0.05 to 0.15.
; E.g.
; MiGE 130ST-M10010 : 0.10
; Lenze MCS12H15L   : 0.06
;
ffbDeadZoneThreshold=0.0


; Sound refresh rate for emitting all sounds.
;
; Especially useful if playing the game with v-sync off, but applies as well
; when v-sync is active.
;
;   0 - disabled, use builtin refresh rate
;  >0 - sound refresh rate in Hz
;
; Reasonable values are in the range 30 to 90.
; Recommended value: 60
;
soundRefreshRate=60


Limitations
---------------------------------------------------------------------
This version does not support the NOSSE executable anymore. Processors not
supporting the SSE instruction set are now more than 10 years old, so only few
people, if any, might use such a machine for playing RBR.


Tool "splitlbs.exe"
---------------------------------------------------------------------
This tool splits an LBS file into two files, LBS and LB2.
The LB2 file contains all large objects: visible objects, geom blocks, object
blocks.
The LBS file contains all other segments from the original file.
A backup file track_xx.lbs.orig is created before doing the split.
To restore your original configuration simply remove the split .lbs and .lb2
files and remove the .orig extension.



Notes
---------------------------------------------------------------------
- This plugin does not modify any files of your RBR installation.
- The UI dialog page shows the state of the patches.



Disclaimer of Warranty
---------------------------------------------------------------------
This software and the accompanying files are supplied "as is" and
without warranties as to performance or merchantibility or any other
warranties whether expressed or implied. No warranty of fitness for
a particular purpose is offered.



Version History
---------------------------------------------------------------------
3.0 2019-04-19
    New features
    * enhanced LBS file loader
    * new tool splitlbs.exe to split LBS file into LBS+LB2 for the new loader

2.9 2017-02-14
    New features
    * configurable sound refresh rate to address tire sound issues

2.8 2016-12-10
    New features
    * Z-Modeler fix

2.7 2016-02-11
    New features:
    * another sound buffer fix, this time in the context of the mixer
    * adaptive FFB has configurable FPS now
    * added FFB steering wheel dead zone
    * ten times the number of fences for add-on tracks

2.6 2015-03-01
    * no calibration of FFB in replay
    * adaptive FFB disabled by default

2.5 2015-01-27
    New features:
    * adaptive force feedback configurable

2.4 2015-01-19
    New features:
    * adaptive force feedback

2.3 2015-01-07
    New features:
    * check and fix textures indices after loading the LBS file

2.2 2014-09-21
    * improved support for online plugins

2.1  2014-07-03
    New feature:
    * sound bug fix: fixed calculation of gravel pitch

2.00 2014-03-02
    New features:
    * show patch revision in dialog
    * removed material maps patch, which is now part of the PhysicsNG plugin

1.13 2013-07-14
    New features:
    * fix sanity check of index in rally names array while loading
      car flip animation

1.12 2013-04-08
    New features:
    * check and fix name offsets of animation ids in DLS data

1.11 2013-03-28
    New features:
    * material maps fix

1.10 2013-02-28
    New features:
    * fix collision mesh calculation

1.9.3 2012-12-31
    New features:
    * check and fix DLS data

1.9.2 2012-12-25
    New features:
    * processor of the main thread configurable

1.9.1 2012-12-21
    New features:
    * dropped RBRDLL support
    * fixed car damage speech stuff
    * set main thread affinity to first available processor

1.9
    New features:
    * proxy access to FixUp features

1.8
    New features:
    * sound distance fix
    * engine sound
    * check interactive object ids

1.7
    New features:
    * center and scale menus, dialogs, hud to 4:3

1.6
    New features:
    * set head gasket durability

1.5.1
    Bugfix:
    * do not write log file
    
1.5
    New features:
    * set v-sync mode

1.4
    New features:
    * fix aspect ratio [XRes / YRes] (widescreen support)
    * fullscreen window mode

1.3
    New features:
    * fix RBR's plugin loading routine if RBRDLL is present

1.2
    New features:
    * service park manager advice, number of mechanics

1.1
    New features:
    * 127 setup slots, setup name 31 characters, enhanced listings
    * replay name 31 characters, enhanced listings

1.0
    Initial version.



And finally...
---------------------------------------------------------------------

...thanks to Warthog for developing such a great Rally Sim and for
providing the plugin interface.

WorkerBee

mail to guenter.schlupf at kabelmail.de

vim: set nocindent :
