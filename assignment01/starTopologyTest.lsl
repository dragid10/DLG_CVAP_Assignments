default
{
    state_entry()
    {
        llSetText("Click me to start the start topology link!", <1.000, 0.255, 0.212>, 1.0);
        state star_link;
    }
}

state star_link
{
    state_entry()
    {
       llOwnerSay("New State enetered");
    }

    touch_start(integer num_detected)
    {
        llSetLinkColor(2, <0.180, 0.800, 0.251>, ALL_SIDES);
        llWhisper(PUBLIC_CHANNEL,"Network 1 Starting up!");
        llSleep(2.0);
        llSetLinkColor(9, <0.000, 0.455, 0.851>, ALL_SIDES);
        llSleep(2.0);

        llSetLinkColor(3, <0.180, 0.800, 0.251>, ALL_SIDES);
        llSleep(2.0);
        llWhisper(PUBLIC_CHANNEL,"Network 2 Starting up!");
        llSetLinkColor(8, <0.000, 0.455, 0.851>, ALL_SIDES);
        llSleep(2.0);

        llSetLinkColor(4, <0.180, 0.800, 0.251>, ALL_SIDES);
        llSleep(2.0);
        llWhisper(PUBLIC_CHANNEL,"Network 3 Starting up!");
        llSetLinkColor(7, <0.000, 0.455, 0.851>, ALL_SIDES);
        llSleep(2.0);

        llSetLinkColor(5, <0.180, 0.800, 0.251>, ALL_SIDES);
        llSleep(2.0);
        llWhisper(PUBLIC_CHANNEL,"Network 4 Starting up!");
        llSetLinkColor(6, <0.000, 0.455, 0.851>, ALL_SIDES);
        llSleep(2.0);

    }

    touch_end(integer num_detected)
    {
        llSetText("Link Successfully Started!", <1.000, 0.255, 0.212>, 1.0);
    }
}