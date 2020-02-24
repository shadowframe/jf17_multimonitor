return {

forceFeedback = {
trimmer = 1.0,
shake = 0.5,
swapAxes = false,
invertX = false,
invertY = false,
},

keyCommands = {
-- Autopilot
{down = iCommandPlaneAutopilot, name    		= _('LAAP Engage/Disengage')     , category = _('LASTE Control Panel')},
{down = iCommandPlaneStabPathHold, name 		= _('LAAP Path Hold')			  , category = _('LASTE Control Panel')},
{down = iCommandPlaneStabHbarHeading, name 		= _('LAAP Altitude/Heading Hold'), category = _('LASTE Control Panel')},
{down = iCommandPlaneStabHbarBank, name 		= _('LAAP Altitude/Bank Hold')   , category = _('LASTE Control Panel')},
{down = iCommandPlane_EAC_ARM, name = _('EAC Arm'), category = _('LASTE Control Panel')},
{down = iCommandPlane_EAC_OFF, name = _('EAC Off'), category = _('LASTE Control Panel')},
},

axisCommands = {
{action = iCommandPlaneSelecterHorizontalAbs, name = _('TDC Slew Horizontal')},
{action = iCommandPlaneSelecterVerticalAbs	, name = _('TDC Slew Vertical')},
{action = iCommandWheelBrake,		name = _('Wheel Brake')},
{action = iCommandLeftWheelBrake,	name = _('Wheel Brake Left')},
{action = iCommandRightWheelBrake,	name = _('Wheel Brake Right')},
},
}
