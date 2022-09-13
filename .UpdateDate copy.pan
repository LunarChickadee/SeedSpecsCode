local typeDate
typeDate=""
//makes the three buttons on "roberta" work correctly
if «Lot Gone» = "√" or «Toss» = "√" or «BigGermDrop» = "√"
    case «Lot Gone» = "√" and val(«LotGoneDate»)=0
        LotGoneDate=date("today")
    case «Toss»="√" and val(«TossDate»)=0
        GetText "What Month Number",typeDate
        TossDate=datevalue(val(datepattern(today(),"YYYY")),val(typeDate),1)
    case «BigGermDrop»="√" and val(GermDropDate)=0
        GermDropDate=date("today") 
    endcase
endif

if «Lot Gone» ≠ "√" or «Toss» ≠ "√" or «BigGermDrop» ≠ "√"
    case «Lot Gone»≠"√" and val(«LotGoneDate»)≠0
            LotGoneDate=0
    case «Toss»≠"√" and val(«TossDate»)≠0
            TossDate=0
    case «BigGermDrop»≠"√" and val(«GermDropDate»)≠0
            «GermDropDate»=0
    endcase
endif

/*
PreviousCode
*************
if  «Lot Gone»="√"
    LotGoneDate=date("today")
else
    LotGoneDate=0
endif

;If Toss="√"
;   TossDate=date("today")
;else
;    TossDate=0
;endif

local zdate
If Toss="√"
getscrapok "What month number?"
clipboard()=datevalue(2021,val(clipboard()),1)
TossDate=clipboard()
else
    TossDate=0
endif

if BigGermDrop="√"
    GermDropDate=date("today")
else
    GermDropDate=0
endif
*/

