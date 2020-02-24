_  = function(p) return p; end;
name = _('JF17');
Description = '2 Screens and MFD on Second Screen'
Viewports =
{
   Center =
     {
          x = 0;
          y = 0;
          width = 3440;
          height = 1440;
          viewDx = 0;
          viewDy = 0;
          aspect = 2.3888888888889;
     }
}
     
		LEFT_MFCD =
		{
          x = 0;
          y = 1440;
          width = 600;
          height = 848;
		}
					
		CENTER_MFCD =
		{
          x = 640;
          y = 1440;
          width = 600;
          height = 848;
		}
		
		RIGHT_MFCD =
		{
          x = 1280;
          y = 1440;
          width = 600;
          height = 848;
		}

     
UIMainView = Viewports.Center
