function chkForm() {
    // --- כל באג הכי קטן שגורם לפונקציה לא להתקמפל יגרור מצב שאין אימות ---
    // --- C# יופיעו ישירות ב breakpoints מקרה כזה יתאפיין בכך ש- ---
    // --- JS הדפדפן בעצם פוסח על ה
    //--- בדיקת שם משתמש ---
    var uNameElement = document.getElementById("uName"); // disabled שולפים את כל האלמנט כדי שנוכל לבדוק אם הוא 
    // (זה יאפשר להבדיל בין מצב רישום (צריך בדיקה) למצב עדכון (לא צריך בדיקה
    //alert("uName = " + uName);
    if (!uNameElement.disabled && !userNameOK(uNameElement.value))
        return false;

    //--- בדיקת שם פרטי ---
    var fName = document.getElementById("fName").value;
    if (fName.length < 2) {
        document.getElementById("mFName").value = "שם פרטי קצר מדי או לא קיים ";
        document.getElementById("mFName").style.display = "inline";
        return false;
    }
    else
        document.getElementById("mFName").style.display = "none";

    //--- בדיקת שם משפחה ---
    var lName = document.getElementById("lName").value;
    if (lName.length < 2) {
        document.getElementById("mLName").value = "שם משפחה קצר מדי או לא קיים ";
        document.getElementById("mLName").style.display = "inline";
        return false;
    }
    else
        document.getElementById("mLName").style.display = "none";

    //--- בדיקת דוא"ל ---
    var email = document.getElementById("email").value;
    if (!emailOK(email))
        return false;

    //---   בדיקת שנת לידה ---
    var yearBorn = document.getElementById("yearBorn").value;
    //alert("yearBorn = " + yearBorn);
    if (!yearBornOk(yearBorn))
        return false;

    //--- בדיקת קידומת ---
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
        document.getElementById("mPhone").value = "מספר טלפון חייב להכיל בדיוק 7 ספרות";
        document.getElementById("mPhone").style.display = "inline";
        return false;
    }
    else
        document.getElementById("mPhone").style.display = "none";

    if (isNaN(phone)) {
        document.getElementById("mPhone").value = "מספר טלפון חייב להכיל ספרות בלבד ";
        document.getElementById("mPhone").style.display = "inline";
        return false;
    }
    else
        document.getElementById("mPhone").style.display = "none";

    var hobies = document.getElementsByName("hobies"); //שמירת האפשרויות שסומנו במערך
    var hobChecked = false;                             //אתחול משתנה לשקר
    //מעבר על המערך וחיפוש האפשרות שנבחרה
    for (var i = 0; i < hobies.length; i++)
        if (hobies[i].checked)
            hobChecked = true;
    // הצגת הודעת שגיאה אם לא נבחרה אפשרות אחת לפחות
    if (hobChecked == false) {
        document.getElementById("mHobies").value = "תחביב נבחר לא;"
        document.getElementById("mHobies").style.display = "inline";
        return false;
    }
    else
        document.getElementById("mHobies").style.display = "none";

    //--- בדיקה עבור סיסמא --
    var pw = document.getElementById("pw").value;
    var pw1 = document.getElementById("pw1").value;
    // alert("pw = " + pw + "\n pw1 = " + pw1);

    if (pw.length < 6 || pw.length > 15) {
        msg = " סיסמא חייבת להיות בין 6 - 15 תווים ";

        document.getElementById("mPw").value = msg;
        document.getElementById("mPw").style.display = "inline";
        return false;
    }
    else
        document.getElementById("mPw").style.display = "none";

    //--- בדיקה האם הסיסמא שווה לסיסמת האימות ---
    // --- כולל צ'יט לסיסמה 111111 ---
    // אחרת למשתמש חדש נרצה להבטיח זהות סיסמאות
    // למי שמבצע עדכון נרצה להבטיח זהות רק אם הוא מילא סיסמא שונה מזו שקיימת כבר
    // שונה ממה שהיה פעם, הוא יקבל פטור מבדיקת הזהות כל עוד הסיסמה השנייה ריקה  pw  כיוון שבשלב זה אין דרך פשוטה לראות אז אם השדה
    // הכוונה כאן לא לאלץ משתמש לגעת בסיסמא
    // בסביבת פרודקשן דווקא היינו דורשים זאת לא כדי לסרבל, אלא כדרישת אבטחה נוספת
    //if (pw != "111111" && (pw != pw1 && !uNameElement.disabled || uNameElement.disabled && pw != pw1 && pw1 != "")) {
    if (pw != pw1) {
        msg = " הסיסמא וסיסמת האימות אינם זהות ";

        document.getElementById("mPw1").value = msg;
        document.getElementById("mPw1").style.display = "inline";
        return false;
    }
    else
        document.getElementById("mPw1").style.display = "none";

    //alert("הטופס תקין");
    return true;
}

//---     פעולה המחזירה אמת אם המחרוזת לא מכילה ---
//--- עברית, סימני גרש או גרשיים, סימנים אסורים ---
//---      או שאורכה אינו בתחום של 6 עד 30 תווים ---
//---                                    ושקר אחרת ---
function userNameOK(name) {
    var msg = "";

    if (name.length < 6)
        msg = "שם משתמש קצר מדי או לא קיים ";
    else if (name.length > 30)
        msg = "שם משתמש יהיה בין 6-30 תווים";
    else if (isHebrew(name))
        msg = "שם משתמש אינו יכול להכיל תווים בעברית";
    else if (isQuot(name))
        msg = "שם משתמש לא יכול להכיל סימני גרש או גרשיים";
    else if (isBadChars(name))
        msg = "שם משתמש יכול להכיל אותיות באנגלית ו/או ספרות בלבד";

    if (msg != "") {
        document.getElementById("mUName").value = msg;
        document.getElementById("mUName").style.display = "inline";
        return false;
    }
    else
        document.getElementById("mUName").style.display = "none";
    return true;
}

function emailOK(mail) {
    var msg = "";
    var atSign = mail.indexOf('@');
    var dotSign = mail.indexOf('.', atSign);
    //alert("dot place = " + dotSign + "\n @ place = " + atSign);

    //--- בדיקת אורך או תווים אסורים ---
    if (mail.length < 6)
        msg = "כתובת מייל קצרה מדי או לא קיימת ";
    else if (mail.length > 30)
        msg = "כתובת מייל תהיה בין 6 ו- 30 תווים בלבד ";
    else if (isHebrew(mail))
        msg = "כתובת מייל אינה יכולה להכיל תווים בעברית";
    else if (isQuot(mail) || isBadChars(mail))
        msg = "כתובת מייל מכילה תווים לא חוקיים";

    else if (atSign == -1 || atSign != mail.lastIndexOf('@'))
        msg = "כתובת מייל חייבת להכיל בדיוק @ אחד";
    else if (dotSign == -1)
        msg = "כתובת מייל חייבת להכיל לפחות נקודה אחת ואחרי ה- @ ";
    else if (dotSign - atSign < 2)
        msg = "הנקודה חייבת להופיע לפחות 2 תווים אחרי @";

    else if (dotSign == mail.length - 1 || mail.indexOf('.') == 0)
        msg = "סימן הנקודה אינו יכול להופיע בתחילת או בסוף הכתובת";
    else if (atSign == 0 || atSign == mail.length - 1)
        msg = "סימן @ אינו יכול להופיע בתחילת או בסוף הכתובת";

    //--- אם הכל תקין המחרוזת לא תהיה ריקה ---
    if (msg != "") {
        document.getElementById("mEmail").value = msg;
        document.getElementById("mEmail").style.display = "inline";
        return false;
    }
    else
        document.getElementById("mEmail").style.display = "none";
    return true;
}

//--- אם מכיל גרש או גרשיים - לא תקין ---            
function isQuot(str) {
    var quot = '\"', quot1 = "\'";
    if (str.indexOf(quot) != -1 || str.indexOf(quot1) != -1)
        return true;
    return false;
}

//--- מכיל תווים אסורים ---
function isBadChars(str) {
    var badChr = "$%^&*()-! []{}<>?";
    var len = badChr.length;

    var i = 0, pos, ch;
    while (i < len) {
        ch = badChr.charAt(i);
        pos = str.indexOf(ch);
        if (pos != -1)
            return true;
        i++;
    }
    return false;
}

//--- מכיל תווים בעברית ---
function isHebrew(str) {
    for (var i = 0; i < str.length; i++) {
        if (str.charAt(i) >= 'א' && str.charAt(i) <= 'ת')
            return true;
    }
    return false;
}


//--- בדיקת תקינות שנת לידה ---
function yearBornOk(year) {
    var msg = "";

    var d = new Date();
    var current = d.getFullYear();
    //alert("current year = " + current);

    var old = current - 100;
    var young = current - 5;

    if (isNaN(year))         //  isNaN = is Not a Number
        msg = "שנת לידה חייבת להכיל ספרות בלבד";
    else if (year < old)
        msg = "מבוגר מדי! שנת לידה חייבת להיות גדולה מ- " + (old - 1);
    else if (year >= young)
        msg = "צעיר מדי! שנת לידה חייבת להיות קטנה מ- " + young;

    if (msg != "") {
        document.getElementById("mYearBorn").value = msg;
        document.getElementById("mYearBorn").style.display = "inline";
        return false;
    }
    else
        document.getElementById("mYearBorn").style.display = "none";

    return true;
}