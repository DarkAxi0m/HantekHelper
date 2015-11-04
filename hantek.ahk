 

ChoseChannel(x)
{
  Control, Choose,%x% , ComboBox3
  ; select the channel  in the measure menu too
   WinMenuSelectItem , , , Measure, Source, CH%x%
}

AllOff()
{
Loop, 8
	{
		ChoseChannel(A_Index)

		ControlGet, OutVar, Checked,, Button3

		if (OutVar = 1) {
			ControlClick, Button3, ,,,, NA x5 y5 
		}
		
	}	
}

Clear(){
  WinMenuSelectItem , , , Measure, Clear Measure
}

ToggleVert(x) {
 ChoseChannel(x)
 ControlClick, Button3, ,,,, NA x5 y5  
}

RunMode(){

ControlGet, OutVar, Enabled,, Edit3

	if (OutVar = 1)
	{
		ControlClick, ToolbarWindow321, ,,,, NA x520 y5  
	} else {
	   ControlClick, ToolbarWindow321, ,,,, NA x550 y5  
	}
}

Gui, Add, Button,, RMS
Gui, Add, Button,, Test
return  ; End of auto-execute section. The script is idle until the user does something.

ButtonTest: 
MsgBox Button Press
return

ButtonRMS: 
WinMenuSelectItem , , , Measure, Vertical, RMS
return


Measure() {
 Gui, Show,, Simple Input Example
}



#IfWinActive, ahk_exe HANTEK1008.exe
F1::ToggleVert(1)
F2::ToggleVert(2)
F3::ToggleVert(3)
F4::ToggleVert(4)
F5::ToggleVert(5)
F6::ToggleVert(6)
F7::ToggleVert(7)
F8::ToggleVert(8)
1::ChoseChannel(1)
2::ChoseChannel(2)
3::ChoseChannel(3)
4::ChoseChannel(4)
5::ChoseChannel(5)
6::ChoseChannel(6)
7::ChoseChannel(7)
8::ChoseChannel(8)
a::AllOff()
c::Clear()
m::Measure()
Space::RunMode()

