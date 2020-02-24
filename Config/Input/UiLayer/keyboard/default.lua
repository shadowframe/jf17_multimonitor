local ui		= _('UI')
local vr		= _('VR')
local general	= _('General')

return {
keyCommands = {
{combos = {{key = 'Tab'	,									}}	, down = iCommandChat			, name = _('Multiplayer chat - mode All')								, category = general},
{combos = {{key = 'Tab'	, reformers = {'LCtrl'}				}}	, down = iCommandFriendlyChat	, name = _('Multiplayer chat - mode Allies')							, category = general},
{combos = {{key = 'Tab'	, reformers = {'LShift'}			}}	, down = iCommandAllChat		, name = _('Chat read/write All')										, category = general},
{combos = {{key = 'Y'	, reformers = {'LCtrl', 'LShift'}	}}	, down = iCommandChatShowHide	, name = _('Chat show/hide')											, category = general},
{combos = {{key = 'R'	, reformers = {'LShift'}			}}	, down = iCommandMissionRestart	, name = _('Restart Mission')											, category = general},
{combos = {{key = '\''	, reformers = {'RAlt'}				}}	, down = iCommandBdaShowHide	, name = _('BDA show/hide')												, category = general},
{combos = {{key = '\`'  , reformers = {'LCtrl','LAlt'}		}}	, pressed = iCommandBdaShowCursor, up = iCommandBdaShowCursorStop, name = _('BDA show cursor')			, category = general},
{combos = {{key = 'Tab', reformers = {'LCtrl', 'LShift'} }}, down = iCommandVoiceChat, name = _('Show VoiceChat window'), category = general},
{down = iCommand_UILayer_MouseLeftButton	, up = iCommand_UILayer_MouseLeftButton		, value_down = 1.0	, value_up = 0.0	, name = _('as left mouse button')		, category = ui},
{down = iCommand_UILayer_MouseRightButton	, up = iCommand_UILayer_MouseRightButton	, value_down = 1.0	, value_up = 0.0	, name = _('as right mouse button')		, category = ui},
{down = iCommand_UILayer_MouseWheelFwd		, up = iCommand_UILayer_MouseWheelFwd		, value_down = 1.0	, value_up = 0.0	, name = _('as mouse wheel forward')	, category = ui},
{down = iCommand_UILayer_MouseWheelBwd		, up = iCommand_UILayer_MouseWheelBwd		, value_down = 1.0	, value_up = 0.0	, name = _('as mouse wheel backward')	, category = ui},
{down = iCommandPushToTalkEnableVoice		, up = iCommandPushToTalkDisableVoice,		name = _('VoiceChat push-to-talk mic. mode: On/Off voice transfer')				, category = ui},
{down = iHeadTrackerZoomToggle				, up = iHeadTrackerZoomToggle				, value_down = 1.0	, value_up = 0.0	, name = _('toggle VR Zoom')			, category = vr},
{down = iHeadTrackerSpyglassZoomToggle		, up = iHeadTrackerSpyglassZoomToggle		, value_down = 1.0	, value_up = 0.0	, name = _('toggle VR Spyglass Zoom')	, category = vr},
{down = iHeadTrackerPosReset																									, name = _('recenter VR Headset')		, category = vr},
},
}