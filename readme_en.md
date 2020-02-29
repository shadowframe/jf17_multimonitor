# Multi-monitor setup | Pattern adjustments | JF-17

## Monitor setup DCS

C:\Users<YOUR_USERNAME>\Saved Games\DCS\Config\MonitorSetup \JF17.lua

![Windows Monitor Setup](screen_win_monitor.png)
![DCS Monitor Setup](screen_dcs_settings.png)

## JF-17 pattern adjustments

### Display the MFCD

DCSWorld\Mods\aircraft\JF-17\Cockpit\Scripts\MFCD\MFCD_init_CENTER.lua

DCSWorld\Mods\aircraft\JF-17\Cockpit\Scripts\MFCD\MFCD_init_LEFT.lua

DCSWorld\Mods\aircraft\JF-17\Cockpit\Scripts\MFCD\MFCD_init_RIGHT.lua

try_find_assigned_viewport('LEFT_MFCD') has been commented out

try_find_assigned_viewport('RIGHT_MFCD') has been commented out 

try_find_assigned_viewport('CENTER_MFCD') has been commented out


### Show trim

DCSWorld\Mods\aircraft\JF-17\Cockpit\Scripts\ControlsIndicator\ControlsIndicator_page.lua

local cy = 0.2
local cx = 0

So that you can see the trim (CTRL + ENTER) on the monitor.

## DCS-BIOS

copy me...