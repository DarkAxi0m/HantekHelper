ChoseChanel(x)
{
  Control, Choose,%x% , ComboBox3
}

AllOff()
{
Loop, 8
	{
		ChoseChanel(A_Index)

		ControlGet, OutVar, Checked,, Button3

		if (OutVar = 1) {
			ControlClick, Button3, ,,,, NA x5 y5 
		}
		
	}	
}

ToggleVert(x) {
 ChoseChanel(x)
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


#IfWinActive, ahk_class Afx:400000:8:10003:0:5d0b5b
F1::ToggleVert(1)
F2::ToggleVert(2)
F3::ToggleVert(3)
F4::ToggleVert(4)
F5::ToggleVert(5)
F6::ToggleVert(6)
F7::ToggleVert(7)
F8::ToggleVert(8)
1::ChoseChanel(1)
2::ChoseChanel(2)
3::ChoseChanel(3)
4::ChoseChanel(4)
5::ChoseChanel(5)
6::ChoseChanel(6)
7::ChoseChanel(7)
8::ChoseChanel(8)
a::AllOff()
Space::RunMode()
