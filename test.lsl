default
{
    state_entry()
    {
       llOwnerSay("Attempting to do GET Request");
       state get;
    }

    // touch_start(integer num_detected)
    // {
        
    // }
    
}

state get
{
    state_entry()
    {
        // string response = llHTTPRequest("https://ghibliapi.herokuapp.com/films/58611129-2dbc-4a81-a72f-77ddfc1b1b49", [HTTP_METHOD, "GET"], "");
        string response = llHTTPRequest("https://cnet4.cbsistatic.com/img/QJcTT2ab-sYWwOGrxJc0MXSt3UI=/2011/10/27/a66dfbb7-fdc7-11e2-8c7c-d4ae52e62bcc/android-wallpaper5_2560x1600_1.jpg", [HTTP_METHOD, "GET"], "");
        
    }
    
    http_response(key request_id, integer status, list metadata, string body)
    {
        if (status == 200) {
            llOwnerSay("Body is: " + body);
        } else {
            llOwnerSay("Request not successful");
        }
    }
}