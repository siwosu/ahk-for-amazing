#NoEnv
#include UDF.ahk
#IfWinActive AMAZING ONLINE

!Y::
SendMessage, 0x50,, 0x4190419,, A
Sleep 300
sendChat("Здравия желаю. Являюсь инспектором ОР УГИБДД по НО, сержант полиции - Соколов.")
Return

^Y::
sendChat("/do Удостоверение находится в правом кармане.")
Sleep 500
sendChat("/me движением правой руки достал из правого кармана удостоверение")
Sleep 500
sendChat("/do Удостоверение в правой руке.")
Sleep 500
sendChat("/me раскрыл удостоверение, затем показал человеку напротив на уровне глаз, не передавая в руки")
Sleep 500
sendChat("/me после ознакомления, убрал удостоверение обратно в нагрудный карман")
Return


ActiveID = 0

!1::
SendMessage, 0x50,, 0x4190419,, A
Sleep 500
SendInput, {F6}{space}
Sleep 50
Input, UserID, I L6 V, {Enter}

If ActiveID == 0
{
    CustomColor3 = EEAA99
    Gui +LastFound +AlwaysOnTop -Caption +ToolWindow 
    Gui, Color, black
    Gui, Font, s7
    Gui, Font, cWhite
    Gui, Font, w%Скорость1%0
    GUI, ADD, TEXT,, ID = %UserID%
    WinSet, TransColor, %CustomColor3% 180
    Gui, Show, x5 y50 NoActivate, window.	
}
Else
{
    Gui Destroy
    CustomColor3 = EEAA99
    Gui +LastFound +AlwaysOnTop -Caption +ToolWindow 
    Gui, Color, black
    Gui, Font, s7
    Gui, Font, cWhite
    Gui, Font, w%Скорость1%0
    GUI, ADD, TEXT,, ID = %UserID%
    WinSet, TransColor, %CustomColor3% 180
    Gui, Show, x5 y50 NoActivate, window.
}
Return

!2::
SendMessage, 0x50,, 0x4190419,, A
If UserID < 1000
{
    Sleep 500
    sendChat("/chase " UserID)
}
Else
{
    Sleep 500
    sendChat("/chaseid " UserID)
}
Return

!3::
SendMessage, 0x50,, 0x4190419,, A
Sleep 500
SendInput, {F6} 
Sleep 50  
SendInput, /incar %UserID%{Enter}
Return

!4::
SendMessage, 0x50,, 0x4190419,, A
Sleep 500
If UserID < 1000
{
    sendChat("/deject " UserID)
}
Else
{
    sendChat("/dejectid " UserID)
}
Return

!5::
SendMessage, 0x50,, 0x4190419,, A
SendInput, {F6}
Sleep 50
SendInput, /cuff %UserID%{Enter}
Sleep 1000
SendInput, {F6}
Sleep 50 
SendInput, /frac %UserID%{Enter}
Sleep 500
SendInput, {1}
Sleep 50 
SendInput, {1}  
Sleep 500  
SendInput, {4}
Sleep 50 
SendInput, {4}  
Return

!7::
SendMessage, 0x50,, 0x4190419,, A
Sleep 500
sendChat("/m [УГИБДД] Водитель, останавливаемся и прижимаемся к обочине!")
Sleep 500
sendChat("/m [УГИБДД] В случае неподчинения, я открываю огонь по колёсам!")
Return

!8::
SendMessage, 0x50,, 0x4190419,, A
Sleep 500
sendChat("/m [УГИБДД] Водитель, уходим в другую полосу!")
Sleep 500
sendChat("/m [УГИБДД] Пропускаем спец.транспорт!")
Return

:?:!деп::
SendMessage, 0x50,, 0x4190419,, A
SendInput /d [УГИБДД/] {left 1}
Return

:?:!миранда::
SendMessage, 0x50,, 0x4190419,, A
Sleep 1000
sendChat("Гражданин, разъясняю Вам ваши права!")
Sleep 1000
sendChat("Вы имеете право хранить молчание. Все что Вы скажете может и будет использовано против Вас в суде!")
Sleep 1000
sendChat("Вы имеете право не свидетельствовать против себя и своих близких!")
Sleep 1000
sendChat("Вы имеете право на юридическую помощь в лице адвоката!")
Sleep 1000
sendChat("Вы имеете право на один телефонный звонок и переводчика!")
Sleep 1000
sendChat("Данные гражданские права будут реализованы в ИК 'Кресты' при помощи сотрудников УФСИН!")
Sleep 1000
sendChat("Повторяю!")
Sleep 1000
sendChat("Вы имеете право хранить молчание. Все что Вы скажете может и будет использовано против Вас в суде!")
Sleep 1000
sendChat("Вы имеете право не свидетельствовать против себя и своих близких!")
Sleep 1000
sendChat("Вы имеете право на юридическую помощь в лице адвоката!")
Sleep 1000
sendChat("Так же имеете право на один телефонный звонок и переводчика!")
Sleep 1000
sendChat("Данные гражданские права будут реализованы в ИК 'Кресты' при помощи сотрудников УФСИН!")
Sleep 1000
sendChat("Гражданские права были зачитаны два раза и более не требуется!")
Return 

:?:!ук::
SendMessage, 0x50,, 0x4190419,, A
sendChat("/do Кожаная папка находится в руке.")
Sleep 1000
sendChat("/me открыл папку, затем достал чистый протокол с ручкой")
Sleep 1000
sendChat("/me взяв протокол и ручку в руки начал заполнять протокол")
Sleep 1000
sendChat("/me указал в протоколе ФИО задержанного, дату рождения")
Sleep 1000
sendChat("/me также указал время задержания, дату задержания, причину задержания")
Sleep 1000
sendChat("/todo Задержанный, ознакомьтесь с протоколом и роспишитесь*освободив наручники от хвата правой руки")
Sleep 1000
sendChat("/me передал протокол человеку, в отношении которого он составлен")
Return

:?:!коап::
SendMessage, 0x50,, 0x4190419,, A
sendChat("/do Кожаная папка находится в руке.")
Sleep 1000
sendChat("/me открыл папку, затем достал чистый протокол об АПН с ручкой")
Sleep 1000
sendChat("/me взяв протокол и ручку в руки начал заполнять протокол")
Sleep 1000
sendChat("/do Происходит процесс заполнения протокола.")
Sleep 1000
sendChat("/me передал протокол человеку, в отношении которого он составлен")
Return

:?:!сос::
SendMessage, 0x50,, 0x4190419,, A
sendChat("/r Докладывает: Соколов. Выехал на вызов 'SOS'.")
Return

:?:!сос1::
SendMessage, 0x50,, 0x4190419,, A
sendChat("/r Докладывает: Соколов. Прибыл на вызов 'SOS'.")
Return

:?:!выз::
SendMessage, 0x50,, 0x4190419,, A
sendChat("/r Докладывает: Соколов. Реагирую на вызов от гражданского.")
Return

:?:!выз1::
SendMessage, 0x50,, 0x4190419,, A
sendChat("/r Докладывает: Соколов. Прибыл на вызов от гражданского.")
Return

:?:!ограб::
SendMessage, 0x50,, 0x4190419,, A
sendChat("/r Докладывает: Соколов. Выехал на вызов об ограбление.")
Return

:?:!ограб1::
SendMessage, 0x50,, 0x4190419,, A
sendChat("/r Докладывает: Соколов. Прибыл на вызов об ограбление.")
Return

:?:!обморок::
SendMessage, 0x50,, 0x4190419,, A
sendChat("/me снимает набор ПП с плеча и достает аптечку")
Sleep 999
sendChat("/do Аптечка на полу.")
Sleep 999
sendChat("/me проверяет пульс человека")
Sleep 999
sendChat("/do Процесс...")
Sleep 999
sendChat("/me проверяет дыхание человека")
Sleep 999
sendChat("/do Процесс...")
Sleep 999
sendChat("/do Человек в обмороке.")
Sleep 999
sendChat("/me перекладывает человека в горизовнтальное положение тела...")
Sleep 999
sendChat("/do Процесс...")
Sleep 999
sendChat("/me расслабляет стесняющие дыхание элементы одежды")
Sleep 999
sendChat("/do Процесс...")
Sleep 999
sendChat("/me пробует привести человека в сознание")
Return

:?:!обморок112::
SendMessage, 0x50,, 0x4190419,, A
sendChat("/me достает телефон и звонит 1-1-2 говоря место пол и примерный возраст человека..")
Sleep 999
sendChat("/me проверяет дыхание, пульс, переворачивает человека набок...")
Sleep 999
sendChat("/me дабы в случае рвоты тот не захлебнулся")
Sleep 999
sendChat("/do Процесс...")
Sleep 999
sendChat("/me пробует привести человека в сознание")
Return

:?:!артерия::
SendMessage, 0x50,, 0x4190419,, A
sendChat("/me берёт телефон и вызывает СМП, затем достаёт аптечку, открывает и кладёт на пол")
Sleep 999
sendChat("/do Аптечка на полу.")
Sleep 999
sendChat("/me пережимает артерию кулаком в месте ранения, параллельно доставая бинты со жгутом")
Sleep 999
sendChat("/do Процесс...")
Sleep 999
sendChat("/me перевязывает место наложения жгута бинтом и накладывает жгут на это месте...")
Sleep 999
sendChat("/me ..выше ранения, делая первые два тура тугими")
Sleep 999
sendChat("/me достаёт бумажку и ручку, затем записывает время наложения жгута")
Sleep 999
sendChat("/do Процесс...")
Sleep 999
sendChat("/do Кровотечение прекратилось?")
Return

:?:!вена::
SendMessage, 0x50,, 0x4190419,, A
sendChat("/me достает телефон, вызывает скорую помощь")
Sleep 999
sendChat("/me снимает с разгрузки аптечку,открыв ее, ставит на пол")
Sleep 999
sendChat("/do Аптечка открыта на полу.")
Sleep 999
sendChat("/me протягивает руку в аптечку после чего берет от туда марлю")
Sleep 999
sendChat("/do Процесс...")
Sleep 999
sendChat("/me накладывает марлю на рану")
Sleep 999
sendChat("/do Процесс...")
Sleep 999
sendChat("/me достает из аптечки бинт и вату после чего кладет вату на марлю и туго бинтует")
Sleep 999
sendChat("/do Процесс...")
Sleep 999
sendChat("/do Давящая повязка наложена. Кровотечение прекратилось?")
Return

:?:!капилляр::
SendMessage, 0x50,, 0x4190419,, A
sendChat("/me достает телефон, вызывает скорую помощь")
Sleep 999
sendChat("/me снимает с разгрузки аптечку, открыв ее, ставит на пол")
Sleep 999
sendChat("/do Аптечка открыта на полу.")
Sleep 999
sendChat("/me достает из аптечки антисептическую повязку")
Sleep 999
sendChat("/do Процесс...")
Sleep 999
sendChat("/do Антисептическая повязка в руках.")
Sleep 999
sendChat("/me обматывает антисептическую повязку на руку(другая часть тела)")
Sleep 999
sendChat("/do Процесс...")
Sleep 999
sendChat("/do Кровотечение прекратилось?")
Return

:?:!открытый::
SendMessage, 0x50,, 0x4190419,, A
sendChat("/me кладет человека на пол")
Sleep 999
sendChat("/do Процесс...")
Sleep 999
sendChat("/do Человек в горизонтальном положении.")
Sleep 999
sendChat("/me достает телефон, вызывает скорую помощь")
Sleep 999
sendChat("/me снимает с разгрузки аптечку, открыв ее, ставит на пол")
Sleep 999
sendChat("/do Аптечка на полу.")
Sleep 999
sendChat("/me достает нож после чего разрезает одежду около перелома")
Sleep 999
sendChat("/do Процесс...")
Sleep 999
sendChat("/me достает из аптечки медицинскую шину, накладывая ее на место перелома")
Sleep 999
sendChat("/do Процесс...")
Sleep 999
sendChat("/me берет бинты, и туго фиксирует ими шину")
Sleep 999
sendChat("/do Процесс...")
Sleep 999
sendChat("/do Шина зафиксирована.")
Return

:?:!закрытый::
SendMessage, 0x50,, 0x4190419,, A
sendChat("/me кладет человека на пол в горизонтальное положение")
Sleep 999
sendChat("/do Процесс...")
Sleep 999
sendChat("/do Человек в горизонтальном положении.")
Sleep 999
sendChat("/me достает телефон, вызывает скорую помощь")
Sleep 999
sendChat("/me снимает с разгрузки аптечку, открыв ее, ставит на пол")
Sleep 999
sendChat("/do Аптечка на полу.")
Sleep 999
sendChat("/me достает из аптечки медицинскую шину, накладывая ее на место перелома")
Sleep 999
sendChat("/do Процесс...")
Sleep 999
sendChat("/me берет бинты, и туго фиксирует ими шину")
Sleep 999
sendChat("/do Процесс...")
Sleep 999
sendChat("/do Шина зафиксирована.")
Return

:?:!обморожение::
SendMessage, 0x50,, 0x4190419,, A
sendChat("/me берет человека под руку и ведет в теплое место")
Sleep 999
sendChat("/do Процесс...")
Sleep 4000
sendChat("/me начинает осторожно растирать пораженные места")
Sleep 999
sendChat("/do Процесс...")
Sleep 999
sendChat("/me достает из разгрузки аптечку и раскрывая ее достает согревающую повязку")
Sleep 999
sendChat("/do Процесс...")
Sleep 999
sendChat("/me накладывает повязку на пораженные участки тела")
Sleep 999
sendChat("/do Процесс...")
Return

:?:!пуля::
SendMessage, 0x50,, 0x4190419,, A
sendChat("/me достает телефон, вызывает скорую медицинскую помощь.")
Sleep 999
sendChat("/me запрокидывает голову человека назад, чуть ее поворачивая")
Sleep 999
sendChat("/do Процесс...")
Sleep 999
sendChat("/me снимает с разгрузки аптечку, открыв ее, ставит на пол")
Sleep 999
sendChat("/do Аптечка на полу.")
Sleep 999
sendChat("/me достаёт шприц с обезболивающим из аптечки")
Sleep 999
sendChat("/do Процесс...")
Sleep 999
sendChat("/me вкалывает обезболивающее человеку")
Sleep 999
sendChat("/do Процесс...")
Sleep 999
sendChat("/me достает зеленку из аптечки и обрабатывает ею края раны")
Sleep 999
sendChat("/do Процесс...")
Sleep 999
sendChat("/me достает давящую повязку из аптечки и накладывает ее на пулевое отверстие")
Sleep 999
sendChat("/do Процесс...")
Sleep 999
sendChat("/do Тампонад наложен.")
Sleep 999
sendChat("/me разрывает одежду в зоне ранения")
Sleep 999
sendChat("/do Процесс...")
Sleep 999
sendChat("/do Одежда разорвана.")
Sleep 999
sendChat("/do Первая помощь оказана.")
Return

:?:!дистант::
SendMessage, 0x50,, 0x4190419,, A
sendChat("/me достает с разгрузки и надевает ЗКС")
Sleep 999
sendChat("/do ЗКС надето")
Sleep 999
sendChat("/me достает генератор радиопомех, активирует его и ставит на пол")
Sleep 999
sendChat("/do Процесс...")
Sleep 999
sendChat("/do Генератор на полу.")
Sleep 999
sendChat("/me снимает набор сапера с разгрузки, ставит его на пол и открывает")
Sleep 999
sendChat("/do Процесс...")
Sleep 999
sendChat("/do Набор сапера на полу.")
Sleep 999
sendChat("/me достает индикаторную отвертку и бокорезы из набора")
Sleep 999
sendChat("/do Процесс...")
Sleep 999
sendChat("/me начинает осматривать устройство, после чего откручивает крышку устройства")
Sleep 999
sendChat("/do Процесс...")
Sleep 999
sendChat("/me начинает прозванивать провода, находит нужный провод и перекусывает его")
Sleep 999
sendChat("/do Процесс...")
Sleep 999
sendChat("/do СВУ обесточено.")
Sleep 999
sendChat("/me снимает с разгрузки бронированный кейс, открывает его и ставит на пол")
Sleep 999
sendChat("/do Процесс...")
Sleep 999
sendChat("/do Кейс на полу.")
Sleep 999
sendChat("/me выкручивает из СВУ тротиловую шашку из тротиловой шашки взрыватель, а из взрывателя капсюль")
Sleep 999
sendChat("/do Процесс...")
Sleep 999
sendChat("/me легким движением руки раскладывает компоненты СВУ по кейсам, и зацепляет на лямки бронежилета")
Sleep 999
sendChat("/do Процесс...")
Sleep 999
sendChat("/do СВУ обезврежено.")
Return

:?:!мех::
SendMessage, 0x50,, 0x4190419,, A
sendChat("/me достает с разгрузки и надевает ЗКС")
Sleep 999
sendChat("/do ЗКС надето")
Sleep 999
sendChat("/me надевает резиновые перчатки, после чего начинает осматривать устройство")
Sleep 999
sendChat("/me снимает с разгрузки набор сапера, достает из него индикаторную отвертку и бокорезы")
Sleep 999
sendChat("/do Процесс...")
Sleep 999
sendChat("/me начинает осматривать взрывное устройство, после чего откручивает крышку")
Sleep 999
sendChat("/do Процесс...")
Sleep 999
sendChat("/me снимает с разгрузки кейс, открывает его и складывает в него пластид, закрывает кейс")
Sleep 999
sendChat("/do Процесс...")
Sleep 999
sendChat("/do С4 обезврежена.")
Return

:?:!растяжка::
SendMessage, 0x50,, 0x4190419,, A
sendChat("/me достает с разгрузки и надевает ЗКС")
Sleep 999
sendChat("/do ЗКС надето")
Sleep 999
sendChat("/me обхватывает рукой корпус гранаты, одновременно просовывает палец в кольцо")
Sleep 999
sendChat("/do Процесс...")
Sleep 999
sendChat("/do Спусковой рычаг заблокирован.")
Sleep 999
sendChat("/me сжимает гранату рукой, наклоняя ее, затем разводит усики шплинта, удерживающий чеку")
Sleep 999
sendChat("/do Процесс...")
Sleep 999
sendChat("/do Чека упала.")
Sleep 999
sendChat("/me достает бокорезы с разгрузки, после чего перекусывает проволоку")
Sleep 999
sendChat("/do Процесс...")
Sleep 999
sendChat("/do Растяжка деактивирована.")
Sleep 999
sendChat("/me поднимает чеку, вставляет в запал и вешает на разгрузку")
Return

:?:!мина::
SendMessage, 0x50,, 0x4190419,, A
sendChat("/me достает с разгрузки и надевает ЗКС")
Sleep 999
sendChat("/do ЗКС надето")
Sleep 999
sendChat("/me снимает набор сапера с разгрузки, открывает его и ставит на пол, затем достает оттуда бокорезы")
Sleep 999
sendChat("/do Процесс...")
Sleep 999
sendChat("/me осторожно перекусывает проволоку, идущую к мине, не дергая и не натягивая ее")
Sleep 999
sendChat("/do Процесс...")
Sleep 999
sendChat("/me снимает маскирующий слой вокруг взрывателя, вставляя в отверстия штоков ударников чеки кусок проволоки")
Sleep 999
sendChat("/do Процесс...")
Sleep 999
sendChat("/me достает крюк из набора, после чего подцепляет ее к мине")
Sleep 999
sendChat("/do Процесс...")
Sleep 999
sendChat("/me откручивает взрыватель, и аккуратно откладывает мину в сторону")
Sleep 999
sendChat("/do Процесс...")
Sleep 999
sendChat("/do Мина обезврежена.")
Return

:?:!пояс::
SendMessage, 0x50,, 0x4190419,, A
sendChat("/me достает с разгрузки и надевает ЗКС")
Sleep 999
sendChat("/do ЗКС надето")
Sleep 999
sendChat("/me достает генератор радиопомех, активирует его и ставит его на пол")
Sleep 999
sendChat("/do Процесс...")
Sleep 999
sendChat("/do Генератор на полу.")
Sleep 999
sendChat("/me снимает набор сапёра с разгрузки, открывает его и ставит его на пол")
Sleep 999
sendChat("/do Набор на полу.")
Sleep 999
sendChat("/me достает индикаторную отвертку и бокорезы из набора")
Sleep 999
sendChat("/do Процесс...")
Sleep 999
sendChat("/me начинает осматривать взрывное устройство, после чего откручивает крышку")
Sleep 999
sendChat("/do Процесс...")
Sleep 999
sendChat("/me начинает прозванивать провода, после чего находит нужный и перекусывает его")
Sleep 999
sendChat("/do Процесс...")
Sleep 999
sendChat("/do СВУ обесточено.")
Sleep 999
sendChat("/me аккуратным движением снимает пояс смертника с человека")
Sleep 999
sendChat("/do Процесс...")
Sleep 999
sendChat("/me снимает с разгрузки бронированный кейс, открывает его и ставит на пол")
Sleep 999
sendChat("/do Кейс на полу.")
Sleep 999
sendChat("/me выкрутил из СВУ тротиловую шашку из тротиловой шашки взрыватель а из взрывателя капсюль")
Sleep 999
sendChat("/do Процесс...")
Sleep 999
sendChat("/me легким движением руки раскладывает компоненты СВУ по кейсам, и зацепляет на лямки бронежилета")
Sleep 999
sendChat("/do Процесс...")
Sleep 999
sendChat("/do СВУ обезврежено.")
Return

:?:!химия::
SendMessage, 0x50,, 0x4190419,, A
sendChat("/me достает химическую защиту и одевает ее")
Sleep 999
sendChat("/do Процесс...")
Sleep 999
sendChat("/do Защита одета.")
Sleep 999
sendChat("/me осматривает корпус СВУ")
Sleep 999
sendChat("/do Процесс...")
Sleep 999
sendChat("/me достает из разгрузки инжекторную отвертку, после чего откручивает крышку устройства")
Sleep 999
sendChat("/do Процесс...")
Sleep 999
sendChat("/me осматривает содержимое корпуса, после чего обнаруживает химический взрыватель")
Sleep 999
sendChat("/me выкручивает химический взрыватель из тротиловой шашки")
Sleep 999
sendChat("/do Процесс...")
Sleep 999
sendChat("/me снимает с пояса бронированный кейс, открывает его и складывает туда содержимое СВУ")
Sleep 999
sendChat("/do Процесс...")
Sleep 999
sendChat("/do СВУ обезврежено.")
Return

:?:!с4мет::
SendMessage, 0x50,, 0x4190419,, A
sendChat("/me достает с разгрузки и надевает ЗКС")
Sleep 999
sendChat("/do ЗКС надето")
Sleep 999
sendChat("/me надевает резиновые перчатки, после чего начинает осматривать устройство")
Sleep 999
sendChat("/me снимает с разгрузки бокорезы, после чего перекусывает нужный провод")
Sleep 999
sendChat("/do Процесс...")
Sleep 999
sendChat("/do Взрывное устройство обесточено.")
Sleep 999
sendChat("/me осматривает содержимое корпуса, после чего обнаруживает химический взрыватель")
Sleep 999
sendChat("/me снимает с разгрузки кейс, открывает его и складывает в него пластид, закрывает кейс")
Sleep 999
sendChat("/do Процесс...")
Sleep 999
sendChat("/do С4 обезврежена.")
Return

:?:!с4немет::
SendMessage, 0x50,, 0x4190419,, A
sendChat("/me достает с разгрузки и надевает ЗКС")
Sleep 999
sendChat("/do ЗКС надето")
Sleep 999
sendChat("/me надевает резиновые перчатки, после чего начинает осматривать устройство")
Sleep 999
sendChat("/me снимает с разгрузки набор сапера, достает из него индикаторную отвертку и бокорезы")
Sleep 999
sendChat("/do Процесс...")
Sleep 999
sendChat("/me начинает прозванивать провода, находит нужный, перекусывает его")
Sleep 999
sendChat("/do Процесс...")
Sleep 999
sendChat("/do Взрывное устройство обесточено.")
Sleep 999
sendChat("/me снимает с разгрузки кейс, открывает его и складывает в него пластид, закрывает кейс")
Sleep 999
sendChat("/do Процесс...")
Sleep 999
sendChat("/do С4 обезврежена.")
Return

:?:!электромех::
SendMessage, 0x50,, 0x4190419,, A
sendChat("/me достает с разгрузки и надевает ЗКС")
Sleep 999
sendChat("/do ЗКС надето")
Sleep 999
sendChat("/me снимает с разгрузки набор сапера, после чего открывает его и ставит на землю")
Sleep 999
sendChat("/do Процесс...")
Sleep 999
sendChat("/do Набор на полу.")
Sleep 999
sendChat("/me достает индикаторную отвертку и бокорезы из набора сапёра, после чего откручивает крышку СВУ")
Sleep 999
sendChat("/do Процесс...")
Sleep 999
sendChat("/me начинает прозванивать провода, после чего перекусывает провод, ведущий к таймеру")
Sleep 999
sendChat("/do Процесс...")
Sleep 999
sendChat("/do СВУ обесточено.")
Sleep 999
sendChat("/me снимает бронированный кейс, после чего открывает его и ставит на пол")
Sleep 999
sendChat("/do Процесс...")
Sleep 999
sendChat("/do Кейс на полу.")
Sleep 999
sendChat("/me отделяет механический взрыватель, от него отделяет капсюль, затем достаёт из СВУ тротиловую шашку")
Sleep 999
sendChat("/do Процесс...")
Sleep 999
sendChat("/me укладывает компоненты СВУ в кейс, после чего закрывает его и вешает на лямки бронижелета")
Sleep 999
sendChat("/do Процесс...")
Sleep 999
sendChat("/do СВУ обезврежено.")
Return

:?:!визитка::
sendChat("/do На визитке написано: «@siwosu».")
Sleep 700
sendChat("/b Это все соц.сети.")
Sleep 700
Return

!F1::
sendChat("/me открыл дверь автомобиля, затем посадил задержанного в авто")
Sleep 500
sendChat("/do Задержанный в автомобиле.")
Sleep 500
sendChat("/me пристегнул ремень безопасности, затем закрыл дверь автомобиля")
Sleep 500
sendChat("/me закрыл дверь автомобиля")
Return

!F2::
sendChat("/me открыл дверь автомобиля, затем отстегнул ремень безопасности")
Sleep 500
sendChat("/do Задержанный в автомобиле.")
Sleep 500
sendChat("/me достал из автомобиля задержаного, берет за руку")
Sleep 500
sendChat("/me закрыл дверь автомобиля")
Return

!F3::
sendChat("/do Тактические перчатки на руках.")
Sleep 500
sendChat("/me начал досматривать человека напротив")
Sleep 500
sendChat("/me прохлопал верхний, затем нижний слои одежды человека напротив")
Return

!F4::
sendChat("/do Подсумок на поясном держателе.")
Sleep 500
sendChat("/me открыл подсумок, затем достал оттуда зип-пакет")
Sleep 500
sendChat("/do Зип-пакет в руках.")
Sleep 500
sendChat("/me начал изымать содержимое у человека содержимое")
Sleep 500
sendChat("/do Содержимое в зип-пакете.")
Sleep 500
sendChat("/me закрыл зип-пакет, затем повесил на поясной держатель")
Return

!F5::
sendChat("/call 97710514")
Sleep 500
sendChat("/h")
Return

!X::
    State3 := !State3
    If state3
    {
        WinActivate, AMAZING ONLINE
        WinWaitActive, AMAZING ONLINE
        
        Gui, Destroy
        CustomColor3 := "EEAA99"
        Gui, +LastFound +AlwaysOnTop -Caption +ToolWindow +E0x20
        Gui, Color, black
        Gui, Font, s8
        Gui, Font, cWhite
        Gui, Font, w500
        Gui, Margin, 10, 5
        
        Gui, Add, Text, x10 y10 w300 h20, ==== Основные команды ====
        
        If UserID
        {
            Gui, Add, Text, x10 y+5 w300, ID игрока: %UserID%
        }

        Gui, Add, Text, x10 y+2 w300, Alt + Y - Представиться
        Gui, Add, Text, x10 y+2 w300, Ctrl + Y - Отыгровка удостоверения
        Gui, Add, Text, x10 y+5 w300, Alt + 1 - Ввести ID подозреваемого
        Gui, Add, Text, x10 y+2 w300, Alt + 2 - /chase (преследование)
        Gui, Add, Text, x10 y+2 w300, Alt + 3 - /incar (посадить в авто ID должен быть в Alt + 1)
        Gui, Add, Text, x10 y+2 w300, Alt + 4 - /deject (высдаить из авто, ID должен быть в Alt + 1)
        Gui, Add, Text, x10 y+2 w300, Alt + 5 - Наручники + залом
        Gui, Add, Text, x10 y+2 w300, Alt + F1 - Посадка в авто (отыгровка)
        Gui, Add, Text, x10 y+2 w300, Alt + F2 - Высадка из авто (отыгровка)
        Gui, Add, Text, x10 y+2 w300, Alt + F3 - Досмотр человека
        Gui, Add, Text, x10 y+2 w300, Alt + F4 - Изъятие предметов
        Gui, Add, Text, x10 y+2 w300, Alt + F5 - Сбив маски
        Gui, Add, Text, x10 y+2 w300, Alt + 7 - Требование остановиться
        Gui, Add, Text, x10 y+2 w300, Alt + 8 - Пропуск спецтранспорта

        Gui, Add, Text, x320 y10 w300 h20, ==== Быстрые отыгровки ====
        Gui, Add, Text, x320 y+5 w300, !миранда - Права задержанного
        Gui, Add, Text, x320 y+2 w300, !ук - Отыгровка в отделе
        Gui, Add, Text, x320 y+2 w300, !коап - Выдача КоАП
        Gui, Add, Text, x320 y+2 w300, !сос - Выезд на SOS
        Gui, Add, Text, x320 y+2 w300, !сос1 - Прибытие на SOS
        Gui, Add, Text, x320 y+2 w300, !выз - Выезд на вызов
        Gui, Add, Text, x320 y+2 w300, !выз1 - Прибытие на вызов
        Gui, Add, Text, x320 y+2 w300, !ограб - Выезд на ограбление
        Gui, Add, Text, x320 y+2 w300, !ограб1 - Прибытие на ограбление
        
        Gui, Add, Text, x320 y+10 w300, === Медицинские ===
        Gui, Add, Text, x320 y+5 w300, !обморок - Помощь при обмороке
        Gui, Add, Text, x320 y+2 w300, !обморок112 - Вызов СМП
        Gui, Add, Text, x320 y+2 w300, !артерия - Артериальное кровотечение
        Gui, Add, Text, x320 y+2 w300, !вена - Венозное кровотечение
        Gui, Add, Text, x320 y+2 w300, !капилляр - Капиллярное кровотечение
        Gui, Add, Text, x320 y+2 w300, !открытый - Открытый перелом
        Gui, Add, Text, x320 y+2 w300, !закрытый - Закрытый перелом
        Gui, Add, Text, x320 y+2 w300, !обморожение - Обморожение
        Gui, Add, Text, x320 y+2 w300, !пуля - Пулевое ранение
        
        Gui, Add, Text, x10 y+10 w300, === Обезвреживание СВУ ===
        Gui, Add, Text, x10 y+5 w300, !дистант - Дистанционное СВУ
        Gui, Add, Text, x10 y+2 w300, !мех - Механическое СВУ
        Gui, Add, Text, x10 y+2 w300, !растяжка - Растяжка
        Gui, Add, Text, x10 y+2 w300, !мина - Мина
        Gui, Add, Text, x10 y+2 w300, !пояс - Пояс смертника
        Gui, Add, Text, x10 y+2 w300, !химия - Химическое СВУ
        Gui, Add, Text, x10 y+2 w300, !с4мет - С4 метановый состав
        Gui, Add, Text, x10 y+2 w300, !с4немет - С4 не метановый
        Gui, Add, Text, x10 y+2 w300, !электромех - Электро-механическое
        
        WinSet, TransColor, %CustomColor3% 180
        
        Gui, Show, NoActivate x10 y10, DPS Helper
        
        WinActivate, AMAZING ONLINE
    }
    Else
    {
        Gui, Destroy
    }
Return