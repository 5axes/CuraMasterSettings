
# Cura development releases

These releases are built from the Cura 4.13 branch + my own additions/tweaks. They can be installed alongside the UM releases without affecting them.

* The Linux x86_64 AppImages are now being built on a Ubuntu 20.04 system. Fun fact! the AppImages also run on Chromebooks that support Linux apps.

* The Linux armhf and aarch64 AppImages are built on Raspbian GNU/Linux 10 (yes, really!). Known issues are:

  * It supports a simplified version of the full 3d layer display. Due to limitations of the PI 4 graphics hardware, it's somewhat crude compared
   to what you would see on a PC/laptop but it's still better than the compatibility mode.

  But, hey, it runs on a PI 4 and can slice a benchy, what more do you need?

  > ##Important
  > **Make sure your PI 4 has the libgles-dev package installed (sudo apt-get install libgles-dev).**
  >
  > **To get the 3d layer display and the "selected face downwards" feature, you need to download mesa-ARCH-VER.tar.gz and unpack (sudo tar xzf mesa-ARCH-VER.tar.gz) - this will not overwrite any system files.**


* The Windows 64 bit exe is built *very slowly* on a Windows 10 system (hopeless system, you're far better off using Linux instead).

* Due to upstream changes I can no longer build a release for any version of MacOS as the MacBook that I have been using is too old. Sorry about that.

Release file md5sums available on request.

**All are supplied with no warranty, YMMV.**

---

## What's different from the regular master branch?

* Initial Layer Wall Speed/Acceleration/Jerk lets you specify those values for the walls on the initial layer.

* Initial Fan Speed At Height/Layer lets you specify the layer at which the initial fan speed comes into effect. Below that layer, the fans are off.

* Improved wall overlap compensation.

* Improved handling of inter-wall gap filling and thin walls.

* Use combing distances when deciding print order of inner walls.

* Added Cooling Fan Lag setting thus allowing the fan to reach the required speed before the fan override region is encountered.

* Added Overhanging Wall Fan Speed setting to override fan speed when printing overhung walls and Ignore Support Below Overhangs setting.

* Spiralized models that are not 100% solid can be printed using variable line widths.

* Implementation of [gradient infill](https://www.cnckitchen.com/blog/gradient-infill-for-3d-prints).

* Added ability to override fan speed when printing infill.

* Reworked handling of bridge skins - now partitions skins into bridged and non-bridged regions and processes each region separately.

* Anti-resonance feature.

* Settings to disable combing on initial layer and use z-hop only on initial layer.

* Setting to enable bridging over support.

* (Very experimental) settings to modify print temperature within a mesh.

* Increase skin layer counts to maintain skin thickness when using variable layer heights.

* Medium and low resolution gyroid infill variants.

* Setting to fill the holes in the gyroid pattern.

* 3d infill patterns can be scaled in the vertical direction.

* Add Schwarz P and Schwarz D infill patterns.

* Setting to enable z hop for just initial layers.

* Elimination of z-seam wobble when z-seam alignment is user-specified and z-seam corner preference is none.

* Added compact prime tower and other settings to improve compatibility with Palette II.

* Added setting to remove holes in skin that are above air, this makes it easier to make holes for fasteners where you have a small diameter hole above a larger diameter hole. After printing, just drill out the single layer that closes the bottom of the small diameter hole.

* Added settings to avoid underextrusion when printing short skin lines.

* Added honeycomb pattern for infill and support.

* Added monotonic skin printing.

* Added setting to restrict hole horizontal expansion to those holes whose perimeter length is less than the setting value.

* Added Hilbert pattern for infill and skins.

* Added settings to control spacing and rotation when models are rearranged.

* Added setting to specify z-offset of skirt and brim lines.

* Added setting to specify that brim lines should only be printed on inside (i.e. within holes) of model.

* Added preference to move models loaded from 3mf files not created by Cura to the centre of the buildplate.

* Added setting to taper the horizontal expansion at the bottom of the model.

* Added setting to force gyroid lines to "cross" so minimising the size of the holes in the pattern.

* Added settings to surround the bottom skin and the visible top skins with only 1 wall.

* Added Discrete Lines infill pattern.

* Added settings to specify overlap of bridge skins.

* Added settings to specify overlap of top surface skins.

* Improved random z-seam positioning.

---

## What new settings are provided?

* **Minimum Gap Area** Filter out gaps whose area is less than this.

* **Inner Layer Minimum Gap Area** Filter out gaps on inner layers whose area is less than this.

* **Infill Fan Speed Override** When enabled, the print cooling fan speed is altered for the infill.

* **Infill Vertical Scaling** Scales the vertical infill pattern. Values larger than 100% stretch the pattern, values less than 100% compress the pattern.

* **Infill Fan Speed** Percentage fan speed to use when printing infill. Using a reduced or even zero fan speed when printing infill can make the part stronger.

* **Infill Pattern Resolution** The resolution of the infill pattern of the print. High resolution produces the most accurate pattern, low resolution generates the fewest lines.

* **Initial Layer Wall Speed** The speed used to print walls in the initial layer. Reducing this speed may increase adhesion to the build plate while still allowing the skin areas to be printed at a faster speed.

* **Initial Layer Wall Acceleration** The acceleration during the printing of walls in the initial layer.

* **Initial Layer Walls Jerk** The maximum instantaneous velocity change for travel moves in the initial layer.

* **Minimise Gyroid Holes** When enabled, the gyroid line pitch is altered to ensure that the lines 'cross' twice per gyroid cycle. This will partially fill the holes that often appear where the line orientation changes. Note that enabling this will make some infill densities impossible to print so a higher density that is printable will be used instead.

* **Avoid Frequency** When non-zero, this specifies a resonant frequency to be avoided when printing using the lines and zig zag patterns. To stop the print head oscillating at that frequency, the print speed is reduced where appropriate.

* **Max Comb Extra Distance** When non-zero, combing travel moves that exceed the straight line distance by this amount or more will be replaced with a straight line travel move.

* **Disable combing on the initial layer** Disabling combing on the initial layer can improve the adhesion of wall lines to the build plate.

* **Z Hop Initial Layers** The number of initial layers that use Z Hop. A non-zero value reduces the chance of the initial layer lines coming away from the build plate.

* **Initial Fan Speed at Height** The height at which the fans spin at Initial Fan Speed. The fans are off below this height.

* **Initial Fan Speed at Layer** The layer at which the fans spin at Initial Fan Speed. If Initial Fan Speed at Height is set, this value is calculated and rounded to a whole number.

* **Cooling Fan Lag** The time it takes the cooling fan to accelerate from 0 to 100%.

* **Extruder Minimum Volume** The minimum volume to be extruded for each layer the extruder is used. The combined volume of the print and the prime tower will be greater or equal to this.

* **Prime All Extruders Used On Initial Layer** When enabled, all extruders used on the initial layer are primed. Otherwise, only the outermost extruder is primed.

* **Compact Prime Tower** When enabled, all extruders share the same prime tower area rather than each extruder having its own area.

* **Minimum Spiralized Line Width** The minimum width of a spiralized contour line as a percentage of the normal line width. Setting this to a value less than 100 enables variable width spiralized contours.

* **Maximum Spiralized Line Width** The maximum width of a spiralized contour line as a percentage of the normal line width. Setting this to a value greater than 100 enables variable width spiralized contours.

* **Ignore Support Below Overhangs** When enabled, support is ignored and so overhangs over support are printed using overhanging wall settings.

* **Overhanging Wall Fan Speed** Percentage fan speed to use when printing overhanging walls.

* **Overhanging Wall Flow** When printing overhanging walls, the amount of material extruded is multiplied by this value.

* **Bridge Wall Layers** The number of layers above air that are printed using the bridge wall settings.

* **Maximum Bridge Wall Length** When non-zero, unsupported walls longer than this will be printed using the normal wall settings.

* **Bridge Extend Floating Walls** Extend bridge wall lines that start/end above air so that they are anchored to the part outline. The amount a line is extended is limited to twice the original length.

* **Bridge Wall End Boost** This controls the amount the extrusion rate is increased immediately after a bridge wall ends. Increasing the extrusion rate can stop under-extrusion occurring at the start of the following line.

* **Minimum Bridge Skin Area** Unsupported skin regions whose area is less than this will be printed using the normal skin settings. Larger unsupported skin regions will be printed using the bridge skin settings.

* **Bridge Sparse Infill Max Density** Maximum density of infill considered to be sparse. Skin over sparse infill is considered to be unsupported and so may be treated as a bridge skin.

* **Bridge Wall Acceleration** The acceleration with which all bridge walls are printed.

* **Bridge Wall Jerk** The maximum instantaneous velocity change with which all bridge walls are printed.

* **Bridge Skin Acceleration** The acceleration with which all bridge skins are printed.

* **Bridge Skin Jerk** The maximum instantaneous velocity change with which all bridge skins are printed.

* **Mesh Temperature Delta** The nozzle temperature used for the current mesh is increased by this amount. Negative values reduce the nozzle temperature.

* **Mesh Dawdle Speed** Print speed used when waiting for the temperature to change at the start and end of the mesh.

* **Mesh Dawdle Time** The amount of time to print using Mesh Dawdle Speed when waiting for the temperature to change at the start and end of the mesh.

* **Bridge Over Support** Ignore any support so that bridges are created over support.

* **Support Roof Top Layer Density** The density of the top layer of the roof of the support structure. A higher value results in better overhangs, but the supports are harder to remove.

* **Support Roof Top Layer Line Distance** Distance between the printed support lines on the top roof layer. This setting is calculated by the Support Roof Top Layer Density, but can be adjusted separately.

* **Support Pattern Resolution** The resolution of the support pattern of the print. High resolution produces the most accurate pattern, low resolution generates the fewest lines.

* **Gradient Infill Type** The type of gradient infill to use. All types modify the infill line flow in proportion to the distance to the model outline. At the model outline, the infill line flow will be gradient infill max flow. Away from the model outline, the infill line flow will be gradient infill min flow. 1D simply uses the distance to the nearest end of the current infill line. 2D differs in that the distance is measured to the nearest wall on the same layer. 2D+ also takes into account the distance to the build plate and the distance to the top layer of the model. 3D uses the distance to the nearest wall or skin on any layer.

* **Gradient Infill Min Flow** The minimum flow used when printing a gradient infill line. Expressed as a percentage of the normal infill line flow.

* **Gradient Infill Max Flow** The maximum flow used when printing a gradient infill line. Expressed as a percentage of the normal infill line flow.

* **Gradient Infill Speed Scheme** The speed modification scheme to use when printing gradient infill. Fast alters the print speed to keep the extrusion rate constant, the print speed can both increase and decrease. Slow is similar except the print speed can only decrease. On flow change reduces the print speed where the infill flow is changing.

* **Gradient Infill Speed Factor** Scales the effect the infill speed scheme has on the print speed.

* **Gradient Infill Distance** The distance over which the infill flow is reduced from max to min.

* **Remove Holes Above Air** Remove the holes in each layer that are not supported by the layer below. This blanks off the bottom of the hole and provides support for the hole's perimeter walls on the next layer.

* **Travel Compensate Skin Lines** When enabled, skin line flow is progressively increased to compensate for the nozzle pressure loss that occurs during the preceding travel move. This pressure loss can result in reduced skin print quality. The longer the preceding travel move or shorter the skin line, the more the flow is increased.

* **Skin Lines Max Flow** The maximum flow multiplier used when printing skin lines.

* **Skin Lines Initial Layer Max Flow** The maximum flow multiplier used when printing skin lines on the initial layer.

* **Travel Compensation Scaling Factor** The amount the skin line flow is increased in proportion to the length of the preceding travel move is multiplied by this factor. Larger values increase the amount the flow is boosted for a given travel distance.

* **Maximum compensated travel distance** Limits the travel distance used to calculate the amount of boost applied to skin lines. Travels longer than this distance are treated as if they are this length.

* **Monotonic Skin Lines** Print the skin lines monotonically. This may improve the visual quality of the skin. Only applied when the 'Lines' skin pattern is used.

* **Reverse Monotonic Line Order** Print the skin lines monotonically in reverse order.

* **Hole Horizontal Expansion Max Size** When non-zero, horizontal expansion is only applied to holes whose diameter is less than this value.

* **Hole Horizontal Expansion Max Length** When non-zero, horizontal expansion is only applied to holes whose perimeter length is less than this value.

* **Horizontal Expansion Taper Layers** The horizontal expansion tapers from the value used for the initial layer to the value used for the above layers over this many layers.

* **Model Spacing Distance** The spacing distance between arranged objects. After changing this setting, do 'Arrange All Models' to re-arrange the models.

* **Disable Model Rotations** When enabled, models are not rotated when they are arranged. Does not alter any existing rotation the models may have.

* **Bridge Skin Overlap Percentage** Skin overlap used for bridge skins expressed as a percentage of the outer wall line width.

* **Bridge Skin Overlap** Skin overlap distance used for bridge skins. Ideally, this should be less than Bottom Skin Expand Distance.

* **Bridge Second Skin Overlap Percentage** Skin overlap used for the second bridge skin layer expressed as a percentage of the outer wall line width.

* **Bridge Second Skin Overlap** Skin overlap distance used for the second bridge skin layer. Ideally, this should be less than Bottom Skin Expand Distance.

* **Bridge Third Skin Overlap Percentage** Skin overlap used for the third bridge skin layer expressed as a percentage of the outer wall line width.

* **Bridge Third Skin Overlap** Skin overlap distance used for the third bridge skin layer. Ideally, this should be less than Bottom Skin Expand Distance.

* **Skirt/Brim Z Offset** Offset the nozzle height by this amount when printing skirt or brim lines (negative values move the nozzle down).

* **Visible Top Skins Have Only One Wall** When enabled, visible top skins are surrounded by only one wall.

* **Bottom Skin Has Only One Wall** When enabled, the bottom skin is surrounded by only one wall.

* **Discrete Lines Definition** Either a definition written as a JSON string or an @ followed by the name of a JSON file that contains the definition. The definition file name can either be absolute or relative to the current project file's directory or the user's home directory. Note that although the Infill Density setting is ignored when generating discrete lines, a density value of 0 will still generate no infill and a density value of 100 will generate completely solid infill.

* **Brim Only on Inside** Only print the brim on the inside of the model. This reduces the amount of brim you need to remove afterwards, while it doesn't reduce the bed adhesion that much.

* **Top Surface Skin Overlap Percentage** Adjust the amount of overlap between the walls and (the endpoints of) the top surface skin-centerlines, as a percentage of the line widths of the skin lines and the innermost wall. A slight overlap allows the walls to connect firmly to the skin. Note that, given an equal skin and wall line-width, any percentage over 50% may already cause any skin to go past the wall, because at that point the position of the nozzle of the skin-extruder may already reach past the middle of the wall.

* **Top Surface Skin Overlap** Adjust the amount of overlap between the walls and (the endpoints of) the top surface skin-centerlines. A slight overlap allows the walls to connect firmly to the skin. Note that, given an equal skin and wall line-width, any value over half the width of the wall may already cause any skin to go past the wall, because at that point the position of the nozzle of the skin-extruder may already reach past the middle of the wall.

* **Ironing Fan Speed Override** When enabled, the print cooling fan speed is altered for the ironed regions.

* **Ironing Fan Speed** Percentage fan speed to use when printing ironed regions.

* **Max Filament Flow Rate** When non-zero, sets the maximum allowed filament flow rate (in mm^3/S). The filament flow rate of each printed line is calculated as layer height * line width * print speed. The flow rate limit is enforced by reducing the print speed.

* **Z Seam Not Over Air** When enabled, if the z seam location is above air, it is moved so that it is not above air (if possible).

---

## Where can I find the source for these changes?

See [CuraEngine](https://github.com/smartavionics/CuraEngine), [Cura](https://github.com/smartavionics/Cura), [Uranium](https://github.com/smartavionics/Uranium), [cura-build](https://github.com/smartavionics/cura-build) and [cura-build-environment](https://github.com/smartavionics/cura-build-environment).

My releases use the **mb-master** branches in those repos.

---

## Where do I report bugs for these releases?

Either at [Cura/issues](https://github.com/smartavionics/Cura/issues) or [CuraEngine/issues](https://github.com/smartavionics/CuraEngine/issues).

---

## IMPORTANT - READ THIS SECTION BEFORE UPDATING!!!!

> **I strongly recommend backing up your cura configuration folder(s), profile(s), etc. before running any new release as there's no guarantee that it won't trash something.**
>
> **Unlike installing a new UM Cura release, these releases all use the same configuration folder so it's not always possible to go back to a previous version. The best solution is to create a git repo in your master configuration folder and make a snapshot commit of everything that has changed before running a new release.**
>
> **It is also highly recommended to delete the Cura cache directory before running a new release. To do that on Linux, delete _~/.cache/cura/master_,
on MacOS delete _~/Library/Application Support/cura/master/cache_
and on Windows delete _AppData/Local/cura/master/cache_. If you don't do this you can get odd inconsistencies that cause crashes or other weirdness.**
>
> **Linux only - make sure that legacy file *~/.local/share/cura/master/cura.cfg* is removed as the correct path name for the config file is *~/.config/cura/master/cura.cfg*.**
>
> **Finally, on the PI 4, make sure the libgles-dev package is installed (sudo apt-get install libgles-dev).**

---

## What's changed recently?

* 4.20.10 - Added Bridge Wall Layers, Maximum Bridge Wall Length, Overhanging Wall Flow and Z Seam Not Over Air settings + stopped gyroid infill bleeding through walls + 
reimplemented detection and printing of bridge walls.

* 4.20.9 - Added Max Filament Flow Rate setting + upstream addition of Support Interface Wall Line Count et al. + reworked skin edge support + misc fixes and improvements.

* 4.20.8 - Added Top Surface Skin Overlap Percentage and Top Surface Skin Overlap settings + added Ironing Fan Speed Override and Ironing Fan Speed settings + misc bug fixes.

* 4.20.7 - Further new functionality and fixes to Discrete Lines infill pattern + fixed regression introduced in 4.20.4 that caused skin overlap to not be applied in some circumstances.

* 4.20.6 - Further improvements to Discrete Lines infill pattern and random seam positioning + added Brim Only on Inside setting.

* 4.20.5 - Added Discrete Lines infill pattern + rework of random number generation to improve random seam positioning + upstream fixes for monotonic ordering.

* 4.20.4 - Added Visible Top Skins Have Only One Wall and Bottom Skin Has Only One Wall settings + a few minor bug fixes.

* 4.20.3 - Added Horizontal Expansion Taper Layers and Minimise Gyroid Holes settings + try to avoid big changes in direction when printing infill.

* 4.20.2 - Added Skirt/Brim Z Offset setting + added Travel Compensation Scaling Factor and Maximum Compensated Travel Distance settings + added preference setting to move models loaded from 3mf files not created by Cura to the centre of the buildplate + don't consider a wall with bridge sections to be a small feature + don't start a wall above air when seam location is "exact" + don't iron skin areas narrower than 2 line widths.

* 4.20.1 - New version numbering scheme + added bridge skin overlap settings

* 20220507 - Minor upstream changes (mostly lightning support fixes) + fix for arithmetic overflow in polygon simplification code.

* 20220310 - Added Model Spacing Distance and Disable Model Rotations experimental settings + fixed bug triggered when Initial Layer Line Width is not 100% and multiple models are present + now prints top-layer skin walls using correct settings.

* 20220304 - Upstream change (on Windows, no longer sets priority of engine process) + fixed regression in tapered spiralization + fix to calculation of sparse infill density.

* 20220129 - Upstream changes (4.13.1 release) + don't iron when number of top layers is zero + workaround for crash on armhf when generating tree support.

* 20220111 - Upstream changes (4.13.0 release) + added Hole Horizontal Expansion Max Size and Hole Horizontal Expansion Max Length settings.

* 20211119 - Upstream changes (4.12.1 release) + x86_64 AppImage experimentally supports wayland (bit buggy!)

* 20211110 - Upstream changes (4.12 release) + fix skin edge support compatibility with gradual infill (only UM infill patterns).

* 20210908 - Upstream changes (4.11 release) + fixes for overhang detection and skin thickness when using variable layer heights.

* 20210629 - Upstream changes (4.10 release) + filter out very small skin areas from ironing layer.

* 20210619 - Upstream changes (4.10-beta release).

* 20210608 - Minor fixes for Hilbert Curve pattern + fix for support interface density bug + upstream changes (includes new flow rate colour scheme).

* 20210522 - Added Hilbert Curve pattern for infill and skin.

* 20210516 - Added Reverse Monotonic Line Order setting + allow lines pattern when ironing (which then allows the ironed lines to be printed monotonically).

* 20210511 - Upstream changes (4.9.1 release).

* 20210420 - Upstream changes (4.9.0 release).

* 20210306 - Upstream changes + work harder to avoid starting a wall line over air.

* 20210224 - Upstream changes + fixed duplicated infill bug.

* 20210217 - Monotonic skin line printing fixes.

* 20210214 - Added Monotonic Skin Lines setting.

* 20210213 - Upstream changes.

* 20210130 - Upstream changes (includes new feature "show starts" that highlights where each outer wall line starts).

* 20201121 - Upstream changes + remove erroneous M104/9 on first extruder switch when using shared heater + remove tiny travel moves within skin/infill.

* 20201111 - Upstream changes (4.8 release) + fixes for honeycomb infill overlapping other lines and extraneous lines between infill and skin.

* 20201023 - Upstream changes (4.8-beta) + added honeycomb pattern for infill and support.

* 20200922 - Upstream changes to materials + minor bug fix to gyroid infill connections + simulation view speed colour range is reduced if travels are not being displayed.

* 20200902 - Upstream changes (4.7.1 bug fixes).

* 20200822 - Upstream changes (4.7-beta) + misc bug fixes + added Travel Compensate Skin Lines setting. **The armhf build requires mesa-armhf-20200822.tar.gz or later to be installed.**

* 20200721 - Fix bug that sometimes affected the width of lines on the first layer.

* 20200718 - Fix wall line quality regression.

* 20200714 - Upstream changes **This changes the config file version numbers so I strongly recommend backing up your Cura config files and also deleting the Cura cache files.**

* 20200703 - Avoid generating excess m109 gcodes when using a shared heater.

* 20200702 - Fixed compact prime tower bug when only 1 material is used - improved skin edge support - all lines in concentric skin/infill printed in same direction - fix travel bug when outline has narrow "hour glass" shape.

* 20200630 - Changed "ride the nozzle" hot-key to Alt to avoid clash with layer slider keys.

* 20200625 - Linux armhf (PI 4) release simulation view graphics tweaks - **Needs mesa-20.1-20200625.tar.gz or later**.

* 20200610 - Added silly "ride the nozzle" mode to simulation, press Ctrl (Cmd on MacOS) while simulation is running. Couple of UI fixes.

* 20200602 - Linux armhf (PI 4) release now supports the orientate selected face downwards feature when the mesa-20.1 files are used.

* 20200525 - Revert back to starting concentric skin at outer edge + heed z-seam hint location when outputting surface mode lines + fix skin edge support bug.

* 20200523 - Linux armhf (PI 4) release now supports a simplified version of the simulation view. **To get this, you need to download and unpack the mesa-20.1.tar.gz archive - this will not overwrite any system files.**

* 20200515 - Fix gradient infill crash when infill density is zero.

* 20200513 - Windows-32 and MacOS only, fixed saving of project files broken due to me failing to update a library.

* 20200510 - Upstream changes + Linux AppImage maintains current directory + added Remove Holes Above Air setting.

* 20200505 - Tweaks to bridge skin handling - replaced Z Hop Only On Initial Layer setting with Z Hop Initial Layers.

* 20200501 - Cubic Subdivision infill can now be shifted (upstream change) and rotated (my change). Only the first value in Infill Line Directions is used.

* 20200424 - Upstream changes + fix 2 upstream regressions (skirt line print ordering and polygon simplification).

* 20200328 - Upstream changes + smooth support area outlines to reduce line count (complex outlines will now slice and print faster, gcode size is reduced).

* 20200321 - Upstream changes + bug fix to bridge extend floating walls + improve quality of multiple infill lines with TPMS infill patterns.

* 20200306 - Reduced travel immediately before outermost walls are printed, depending on settings/model could improve z-seam quality.

* 20200304 - Upstream changes + added Bridge Extend Floating Walls setting.

* 20200301 - Fixed upstream breakage of per-object settings + fixed support block picking on armhf (PI 4) build.

* 20200226 - Upstream changes (4.5 release).

* 20200225 - Added 32 bit Windows build - not actually tested on a 32 bit system yet (update, yes it works OK I am told).

* 20200218 - Added gradient infill speed scheme setting.

* 20200216 - Upstream changes + added experimental gradient infill settings.

* 20200208 - Upstream changes + added Bridge Wall End Boost setting **+ The armhf AppImage is now being built with GLES rather than desktop OpenGL, tested OK on a Pi4 but I guess could run into problems on other platforms.**

* 20200202 - Fixed upstream regression that broke the bottom layer slider, updated yesterday's files so download again if you downloaded one earlier.

* 20200201 - Upstream changes + Removed Wall And Skin Gaps option as it wasn't working + fixed issue with concentric skins.

* 20200125 - Upstream changes + tweaked hack that removes spurious tiny line segments created by buggy wall overlap compensation.

* 20200118 - Upstream changes + added extra options to Fill Gaps Between Walls setting + added Hole Horizontal Expansion setting + added Support Roof Top Layer Density setting.

* 20191228 - Added workaround for possible regression on Windows.

* 20191226 - Upstream changes + added Avoid Frequency setting to reduce resonance + overhang fan is now used irrepective of the overhang print speed.

* 20191223 - Upstream changes + fixed a project file loading crash.

* 20191214 - Upstream changes **(they changed the setting version so if you run this release you won't be able to go back to an earlier release - this should not affect any installation of UM Cura that you may have, just these master releases)** + improved the connections for the Schwarz infill patterns + added the Fuzzy Skin Outside Only setting.

* 20191209 - Added Schwarz D infill pattern.

* 20191208 - Upstream changes + misc bug fixes + added Schwarz P infill pattern + replaced Gyroid resolution variants with Infill Pattern Resolution and Support Pattern Resolution settings.

* 20191128 - Fixed bug in OBJ file reader that failed on lines that contained \ + overhang print speed now increases with overhang angle.

* 20191125 - Fixed regression in yesterday's build.

* 20191124 - Upstream changes + minor bug fix to gap filling + Brim Distance setting can now be set per-model. **DELETED due to regression in brim distance feature***

* 20191116 - Upstream changes + Added Ignore Support Below Overhangs setting + obey lower print speed limit when printing small outlines.

* 20191110 - MacOS release now built with Qt 5.13.2 and PyQt 5.13.

* 20191108 - Upstream changes + exact z-seam bug fix.

* 20191103 - Upstream changes ( **NOTE: 3rd-party plugins not available until authors update them to latest API** ) + bug fixes + added options to disable combing on first layer and enable z-hop only on first layer.

* 20191027 - Upstream changes + testing fix for high definition models getting corrupted. **NOTE: due to extensive upstream changes, some 3rd-party plugins may crash Cura. If that happens, you will need to remove the plugin.**

* 20191022 - Upstream changes + experimental change to z-seam location when using user-specified alignment with no corner preference selected (should give smoother z-seams).

* 20191019 - Worked around upstream feature that has been trashing Python performance recently.

* 20191012 - Windows build using PyQt 5.13. **CAUTION: don't install on top of previous mb-master release, uninstall the old release first!**

* 20191003 - Fixed problem with bridged skin areas being larger than required.

* 20191002 - (updated from earlier build) Added Bridge Over Support setting.

* 20190928 - Added experimental settings Mesh Temperature Delta, Mesh Dawdle Speed and Mesh Dawdle Time to modify print temperature within a mesh.

* 20190917 - Builds for MacOS 10.13 now available. These use multi-threading in CuraEngine and so should slice quicker than the upstream releases.

* 20190914 - Added Infill Vertical Scaling setting to stretch/shrink infill in the vertical direction (gyroid only).

* 20190913 - Upstream changes + gyroid infill now obeys the Infill X/Y Offset and Infill Line Directions settings (only specify 1 line direction unless you really want funky gyroid infill!).

* 20190912 - Upstream changes + further work on improving outline profile of variable width spiralized walls.

* 20190910 - Improve outline profile of variable width spiralized walls.

* 20190908 - Upstream changes + further changes to bridged skin handling.

* 20190904 - Upstream changes + further changes to bridged skin handling.

* 20190830 - Upstream changes.

* 20190829 - Upstream changes + compact prime tower bug fixes.

* 20190827 - Fix bugs in support generation (crash in my support fan code and another broken upstream change).

* 20190826 - Disabled upstream change to support (broken) - small mods to new bridged skin implementation.

* 20190825 - Big rework, now skins are partitioned into bridge and non-bridge regions and processed separately. Removed the now unused Bridge Skin Support Threshold setting and added Minimum Bridge Skin Area setting.

* 20190823 - Upstream changes + bug fixes (polygon simplification, duplicated prime tower brim).

* 20190818 - Upstream changes + removed Prime Outermost Extruder Every Layer setting and added Compact Prime Tower setting.

* 20190815 - Upstream changes + added Infill Fan Speed Override and Infill Fan Speed settings.

* 20190802 - Upstream changes + reordered materials and profiles menu items + now bottom of support hugs sloping surfaces (uses min xy dist rather than xy dist).

* 20190731 - Upstream changes (4.2 + fix for z-hop speed issue) + fix for bug that added unwanted travels when ironing is enabled.

* 20190728 - Restored max z speed to speed of light (should not cause problems anymore due to upstream changes) + Qt 5.13 compatibility fix and removed icu and egl Qt modules.

* 20190727 - Upstream changes + now removes very short (< 5um) skin/infill lines.

* 20190724 - Upstream changes + Linux builds now using Qt/PyQt 5.13 + removed some libraries from AppImage, please let me know if they no longer run OK.

* 20190718 - Upstream changes + added Prime All Extruders On Initial Layer setting + fixed prime tower double brim bug.

* 20190714 - Further work on prime tower mods for Palette 2.

* 20190713 - Added experimental settings Extruder Minimum Volume and Prime Outermost Extruder Every Layer to support Palette 2.

* 20190712 - Updated yesterday's builds to include fix for bug in shared heater control.

* 20190711 - Upstream changes + added the build-specific settings listed above to the expert setting visibility group.

* 20190708 - Released build for Raspberry PI 4 (4G memory recommended).

* 20190704 - Upstream changes (orthographic view, crawesome mod, z-hop speed fixes, flow-per-feature)

* 20190629 - Upstream changes + now increases skin layer counts to maintain skin thickness when using variable layer heights.

* 20190618 - Upstream changes + added medium and low resolution variants of gyroid infill/support.

* 20190612 - Upstream changes + add settings to specify min and max widths of spiralized walls.

* 20190607 - Upstream changes + further work on variable width spiralized walls.

* 20190606 - Upstream changes (added Z Hop Speed which defaults to slow 10 mm/S) + changes to variable width spiralized walls.

* 20190605 - Upstream changes + reverted insane default for z-hop speed + added experimental support for variable width spiralized walls.
 
* 20190524 - Further work on shared heater control.

* 20190523 - Added Shared Heater option to machine settings dialog.

* 20190522 - Upstream changes + now turns off previous extruder's heater before setting temperature of current extruder - should fix use with multi-extruder, single heater printers.

* 20190519 - Removed upstream regression that broke modifier meshes.

* 20190518 - Upstream changes + fixed some problems with bridge walls (overextrusion when bridge speed very slow and other issues).

* 20190510 - Upstream changes + tweaks to cooling fan lag code + now trialing type 2 AppImage format

* 20190506 - Added Cooling Fan Lag and Overhanging Wall Fan Speed settings.

* 20190504 - Upstream changes.

* 20190424 - Upstream changes (includes fix for recent regression which caused crash when slicing multiple objects and an object is above the build plate).

* 20190420 - Upstream changes.

* 20190417 - Upstream changes + reinstated travel jerk for RepRap firmware (removal was a mistake!)

* 20190412 - Upstream changes + added Bridge Sparse Infill Max Density to apply bridge settings to skin over sparse infill + ignore travel jerk (RepRap only) + avoid combed travel over boundary between skin and infill.

* 20190410 - Upstream changes + added accel/jerk settings for bridge walls and skin.

* 20190407 - Upstream changes + fix brim print order bug + fix unwanted prime travel bug.

* 20190321 - Upstream changes (4.0 released) + further work on wall gap filling and thin walls.

* 20190319 - Upstream changes + fixed bug whereby it was always retracting between layers + refinements to skin edge support.

* 20190317 - Upstream changes + added Max Comb Extra Distance setting to force direct travel move when combed travel distance is this much (or more) longer.

* 20190314 - Upstream changes + further work on supporting skin edges over infill + now min area size of infill regions in internal layers is scaled by infill line width.

* 20190313 - New settings - Minimum Gap Area and Inner Layer Minimum Gap Area set the min size of areas that will be filled when Filter Out Tiny Gaps is enabled.

* 20190311 - New feature - can now add infill to support the edges of skin regions - see Skin Edge Support settings.

* 20190309 - Upstream changes.

* 20190227 - Upstream changes + fix for gap around infill when infill layer height > wall layer height.

* 20190224 - Upstream changes.

* 20190216 - Upstream changes + added gyroid support infill pattern.

* 20190212 - Upstream changes + further work on thin walls.

* 20190202 - Upstream changes + further work on thin walls.

* 20190131 - Fixed spiralization rounding problems (only affected Windows builds!)

* 20190130 - Further work on thin wall printing.

* 20190127 - Upstream changes.

* 20190118 - Upstream changes.

* 20190113 - Fixed Windows & OS X CuraEngine stuck on 100% CPU before first slice.

* 20190112 - Inter-wall gap filling improvements, minor combing tweaks.

* 20190108 - Upstream changes (most community plugins not available yet), combing fixes, G10 no longer has S1 param for non-Repetier firmwares.

* 20181214 - Upstream changes (new UI for Cura 4.0).

* 20181210 - Fix problem with selecting Mach3 gcode flavour.

* 20181130 - Fixed infinite loop in thin wall and inter-wall gap filling.

* 20181128 - Further improvements to handling of thin walls and inter-wall gap filling (now working quite well).

* 20181126 - Outline filling (aka thin walls) is now also using the new gap filling implementation (YMMV, still experimental).

* 20181121 - Upstream changes + new implementation of inter-wall gap filling.

* 20181105 - Upstream changes + gyroid infill now obeys infill overlap.

* 20181024 - Bug fix.

* 20181020 - Upstream changes + bug fixes.

* 20181013 - Upstream changes.

* 20181009 - Upstream changes + combing bug fix.

---
