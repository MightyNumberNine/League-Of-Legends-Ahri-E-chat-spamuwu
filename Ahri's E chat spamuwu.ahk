Toggle := 1
last_press := 0

~Enter::
    Toggle := !Toggle
Return

#If Toggle
    :*:e::
    curr_time := A_TickCount
    if (curr_time - last_press > 3500) ; if at least 3.5 second has passed since the last "e" press
    {
        Random, rand, 1, 5 ; Generate a random number between 1 and 5
        if (rand = 1)
            Send, {e down}{Enter}muah{Enter}{e up}
        else if (rand = 2)
            Send, {e down}{Enter}smack{Enter}{e up}
        else if (rand = 3)
            Send, {e down}{Enter}smooch{Enter}{e up}
        else if (rand = 4)
            Send, {e down}{Enter}mwah{Enter}{e up}
        else
            Send, {e down}{Enter}chuu{Enter}{e up}
        last_press := curr_time ; update the last press time
    }
    return
#If
