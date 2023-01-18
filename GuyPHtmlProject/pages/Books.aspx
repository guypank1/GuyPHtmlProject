﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Books.aspx.cs" Inherits="GuyPHtmlProject.pages.Books" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>BooksHub</title>
    <style>
    body {
        
        
        background-image: url('https://i.ytimg.com/vi/HsD__RCMOXE/maxresdefault.jpg');
        background-size:100%;
        background-repeat:no-repeat;
        backgroud position: center top;
    }
    .center {
        display: block;
  margin-left: auto;
  margin-right: auto;
  width: 10%;
    }
</style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 
<html>
    <body>
            <div id="box" class="blue">

        <h1 style="font-size: 50px">
            <h1 style="text-align: center"
            <b>ספרים</b></h1>

        
        <h2 id="book1" style ="text-align:center"> הארי פוטר ואבן החכמים</h2>
            <p style="margin-left: 2.5em;padding: 0 7em 2em 0;border-width: 2px;"></p>
            <ol style="text-align: right" type="1">
                <b>
                <li>הארי פוטר ואבן החכמים (באנגלית: Harry Potter and the Philosopher's Stone) הוא ספר פרי עטה של הסופרת הבריטית ג'יי קיי רולינג. הספר הוא הראשון בסדרת הספרים "הארי פוטר", העוסקת בחייו של קוסם צעיר בשם זה. הספר מתאר כיצד הארי מגלה כי הוא קוסם, רוכש חברים ואויבים בבית הספר הוגוורטס לכישוף ולקוסמות, ובעזרתם של חבריו מצליח לסכל את מזימתו של קוסם מרושע בשם לורד וולדמורט, שרצח את הוריו של הארי וניסה לרצוח אותו כשהיה בן שנה.

הספר יצא לאור ב-27 ביוני 1997 בהוצאת בלומסברי שבלונדון, ובארצות הברית בהוצאת סקולסטיק ב-1998. הוא זכה במספר פרסים בריטיים המיועדים לספרי ילדים, וכן במספר פרסים בארצות הברית, דורג בראש רשימת רבי המכר הבדיוניים של הניו יורק טיימס באוגוסט 1999, ושהה בה תקופה ארוכה. הספר תורגם לעשרות שפות, ועובד לסרט קולנוע שזכה אף הוא להצלחה רבה. בחודש דצמבר 1999 יצא לאור התרגום העברי של הספר[2].

ביקורות רבות שיבחו את הספר, וציינו את דמיונה של רולינג, ההומור, הפשטות, סגנון הכתיבה ומבנה העלילה, ומנגד את הסגנון החפוז של הפרקים המאוחרים. כתיבתה של רולינג אף הושוותה לזו של ג'יין אוסטן (אחת מהסופרות האהובות עליה) ולזו של רואלד דאל (שספריו היו פופולריים בתקופה שלפני הארי פוטר).

הספר, כמו גם יתר הסדרה, ספג ביקורת שלילית מטעם קבוצות דתיות, ובמספר מקומות אף נאסרה הפצתו בטענה שהוא מקדם מעשי כישוף. מנגד טענו מספר גורמים כי הספר מקדם ערכים נוצריים חשובים, כולל חשיבותה של הקרבה עצמית והדרכים שבהן החלטות של בני אדם מעצבות את אישיותם..</li>
                </b>
            </ol>
            <img class="center" src ="data:image/jpeg;base64,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" />
            <h3 style="text-align: center"><a href="Mainpage.aspx">בחזרה לעמוד הראשי...</a></h3>
            <p style="margin-left: 2.5em;padding: 0 7em 2em 0;border-width: 2px;">.</p>
            <p style="margin-left: 2.5em;padding: 0 7em 2em 0;border-width: 2px;">.</p>
            <h1 id="makingknafeh" style="text-align:center">מתתכון לכנאפה</h1>
            <p>
                <h2>מרכיבים:</h2>
                <ol  style="text-align: right; font-size: 30px"><b>
                    <li>80 גרם חמאה



</li>
                    <li>250 גרם שערות קדאיף



</li>
                    <li>250 גבינת ריקוטה (או 200 גרם ריקוטה + 50 גרם גבינת עיזים)



</li>
                    <li>לסירופ:
                        כוס מים
                        שליש כוס סוכר

                </b>
                </ol>

                <h2>אופן ההכנה:</h2>
                <ol type="1" style="text-align: right; font-size: 30px"><b>

                    <li>
                        הכנת הסירופ:
                        שופכים לסיר קטן את המים והסוכר ומביאים לרתיחה קלה תוך כדי בחישה (כשיש בועות קטנות).
                        מחממים על אש בינונית במשך כ-5 דקות,
                        עד שהסוכר נמס. מסירים מהאש ומניחים בצד.




                    </li>
                    <li>
                        הכנת הכנאפה:

                      <li>   ממיסים את החמאה כמה שניות במיקרוגל.</li>

                      <li>   משמנים תחתית של מחבת עם 3 כפות חמאה מומסת, מבלי להדליק עדיין את האש (יש
                        להשתמש במחבת בקוטר 26-28 עם ציפוי שאינו נדבק).</li>

                       <li>  מערבבים את שערות הקדאיף עם יתר החמאה המומסת
                        ומפרידים את השערות תוך כדי בעזרת האצבעות</li>


                      <li>   מפזרים חצי מכמות שערות הקדאיף באופן אחיד בתחתית
                        המחבת ומחממים את המחבת על אש בינונית.</li>


                      <li>   מורחים באמצעות כף את הגבינה באופן אחיד על שיערות
                        הקדאיף ומפזרים מעל הגבינה את יתר שערות הקדאיף</li>

                        מכסים את המחבת ומטגנים במשך כ-7 דקות עד שתחתית
                        הכנאפה מזהיבה קצת והופכת להיות מעט פריכה.</li>


                       <li>  הופכים את הכנאפה (ניתן להיעזר בצלחת כדי להפוך ולהחזיר למחבת),
                        מכסים ומטגנים את הצד השני במשך כ-3 דקות נוספות.</li>


                       <li> מעבירים לצלחת הגשה ויוצקים מעל את הסירופ באופן אחיד.</li>
          
                    </b>
                </ol>



                
            </p>



        </p>







    </body>
</html>
</asp:Content>