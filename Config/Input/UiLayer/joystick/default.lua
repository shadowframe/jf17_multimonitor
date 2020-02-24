local ui		= _('UI')
local vr		= _('VR')
local general	= _('General')

return {
keyCommands = 
{
	{category = ui		, down = iCommand_UILayer_MouseLeftButton	, up = iCommand_UILayer_MouseLeftButton		, value_down = 1.0	, value_up = 0.0	, name = _('as left mouse button')},
	{category = ui		, down = iCommand_UILayer_MouseRightButton	, up = iCommand_UILayer_MouseRightButton	, value_down = 1.0	, value_up = 0.0	, name = _('as right mouse button')},
	{category = ui		, down = iCommand_UILayer_MouseWheelFwd		, up = iCommand_UILayer_MouseWheelFwd		, value_down = 1.0	, value_up = 0.0	, name = _('as mouse wheel forward')},
	{category = ui		, down = iCommand_UILayer_MouseWheelBwd		, up = iCommand_UILayer_MouseWheelBwd		, value_down = 1.0	, value_up = 0.0	, name = _('as mouse wheel backward')},
	{category = vr		, down = iHeadTrackerZoomToggle				, up = iHeadTrackerZoomToggle				, value_down = 1.0	, value_up = 0.0	, name = _('toggle VR Zoom')},
    {down = iHeadTrackerSpyglassZoomToggle		, up = iHeadTrackerSpyglassZoomToggle		, value_down = 1.0	, value_up = 0.0	, name = _('toggle VR Spyglass Zoom')	, category = vr},
	{category = vr		, down = iHeadTrackerPosReset																									, name = _('recenter VR Headset')},
	{category = ui		, down = iCommandQuit																											, name = _('as Escape')},

	{category = general	, down = iCommandMissionRestart																									, name = _('Restart Mission')},
	{category = general	, down = iCommandChat																											, name = _('Multiplayer chat - mode All')},
	{category = general	, down = iCommandFriendlyChat																									, name = _('Multiplayer chat - mode Allies')},
	{category = general	, down = iCommandAllChat																										, name = _('Chat read/write All')},
	{category = general	, down = iCommandChatShowHide																									, name = _('Chat show/hide')},
	{category = general	, down = iCommandBdaShowHide																									, name = _('BDA show/hide')},
	{category = general	, down = iCommandBdaShowCursor				, up = iCommandBdaShowCursorStop			, value_down = 1.0	, value_up = 0.0	, name = _('BDA show cursor')},
	{category = ui	, down = iCommandPushToTalkEnableVoice				, up = iCommandPushToTalkDisableVoice, name = _('VoiceChat push-to-talk mic. mode: On/Off voice transfer')},
},

axisCommands = 
{	
--	{category = vr		, action = iHeadTrackerPitchNormed  , name = _('Head Pitch')},
--	{category = vr		, action = iHeadTrackerYawNormed	, name = _('Head Yaw')},
},
}

