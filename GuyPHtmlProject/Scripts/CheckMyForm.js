function chkForm() {
    //--- בדיקת שם משתמש ---
    var uName = document.getElementById("uName").value;
    //alert("uName = " + uName);
    if (!userNameOK(uName))
        return false;

    var hobies = document.getElementByName("hobies");
    var hobChecked = false;
    // מעבר על המערך וחיפוש האפשרות שנבחרה
    for (var i = 0; i < hobies.length; i++)
        if (hobies[i].checked)
            hobChecked = true
    // הצגת הודעות שגיאה אם לא נבחרה אפשרות אחת לפחות
    if (hobChecked == false) {
        document.getElementById("mHobies").value = "תחביב נבחר לא;"
        document.getElementById("mHobies").style.display = "inline"
        return false;
    }
    else
        document.getElementById("mHobies").style.display = "none"

    var prefix = document.getElementById("prefix").value;
    if (prefix.selectedIndex == 0) {
        document.getElementById("mPhone").value = "לא נבחרה קידומת";
        document.getElementById("mPhone").style.display = "inline";
        return false;
    }
    else
        document.getElementById("mPhone").style.display = "none";

    var phone = document.getElementById("phoneNum").value;

    if (phone.length != 7) {
        document.getElementById("mPhone").value = "מספר טלפון חייב להכיל בדיוק 7 ספרות"
        document.getElementById("mPhone").style.display = "inline";
        return false;
    }
    else
        document.getElementById("mPhone").style.display = "none";

    if (isNaN(phone)) {
        document.getElementById("mPhone").value = "מספר טלפון חייב להכיל ספרות בלבד"
        document.getElementById("mPhone").style.display = "inline";
        return false;
    }
    else
        document.getElementById("mPhone").style.display = "none";



    function isBadChars(str) {
        var badChr = "$%^&*()-! []{}<>?"
        var len = badChr.length

        var i = 0, pos, ch;
        while (i < len) {
            ch = badChr.charAt(i);
            pos = str.indexOf(ch);
            if (pos != -1)
                return true;
            i++;
            return false;
        }
    }
    function userNameOK(name) {
        var msg = "";

        if (name.length < 6)
            msg = "שם משתמש קצר מדי או לא קיים ";
        else if (name.length > 30)
            msg = "שם משתמש יהיה בין 6-30 תווים";
        else if (isHebrew(name))
            msg = "שם משתמש אינו יכול להכיל תווים בעברית";
        else if isBadChars(str)
    {
            msg = "שם משתמש יכול להכיל אותיות באנגלית ו/או ספרות בלבד"
        }
        if (msg != "") {
            document.getElementById("mUName").value = msg;
            document.getElementById("mUName").style.display = "inline";
            return false;
        }
        else
            document.getElementById("mUName").style.display = "none";
        return true;
    }


    //--- מכיל תווים בעברית ---
    function isHebrew(str) {
        for (var i = 0; i < str.length; i++) {
            if (str.charAt(i) >= 'א' && str.charAt(i) <= 'ת')
                return true;
        }
        return false;
    }

