;	commented out to prevent issues w/ w input 0::Pause, Toggle

*w::
    {
    Pause, On    ; pauses script when w is pressed 
    return
    }
*w Up::
    Pause, Off    ; unpauses script when w is released

Delta = 1
SendMode Play ; Use either Input or Play - Play requires UAC to be disabled
CoordMode Mouse, Relative ; Use Relative (active window) or Screen (relative to desktop)
SetTimer Strafe, 5 ; adjust to preferred time interval input/ms

Strafe:
    MouseGetPos, x
    if ( xO - x > Delta)
        {
            send {a down}
            Adown := True
        }
    else if (xO - x <=Delta)
        {
            send {a up}
            Adown := False
        }
    if (x - xO > Delta)
        {
            send {d down}
            Ddown := True
        }
    else if (x - xO <=Delta)
        {
        Send {d up}
        Ddown := False
        }
    xO := x
return