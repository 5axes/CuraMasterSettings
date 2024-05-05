# What's changed recently?

* 4.20.19 - Update to Cura 5.7 parameters

* 4.20.18 - Update to Cura 5.6 parameters

* 4.20.17 - Update to Cura 4.20.17 parameters

* 4.20.16 - Update to Cura 4.20.16 parameters

* 4.20.15 - Update to Cura 4.20.15 parameters

* 4.20.14 - Adding a section where we found the last Cura Parameters

* 4.20.13 - Adding Parameters from Standard Cura Release Cura 5.4 / 5.5

* 4.20.12 - Possibility to open directly JSON file from the Settings Guide MAinly for Discret lines parameters

* 4.20.11 - New release compatible with Cura Master , Adding the parameter specific of the Cura master release (https://github.com/smartavionics/Cura/tree/mb-master)

* 4.20.10 - It's the last release supported by Ghostkeeper

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


