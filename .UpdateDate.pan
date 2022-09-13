local typeDate
typeDate=""

if «Lot Gone» = "√" or «Toss» = "√" or «BigGermDrop» = "√"
    case «Lot Gone» = "√" and val(«LotGoneDate»)=0
        LotGoneDate=date("today")
    case «Toss»="√" and val(«TossDate»)=0
        GetText "What Month Number",typeDate
        TossDate=datevalue(val(datepattern(today(),"YYYY")),val(typeDate),1)
    case «BigGermDrop»="√" and val(GermDropDate)=0
        GermDropDate=date("today")
    defaultcase 
        if «Lot Gone»="√"
            GetText "New Date?",typeDate
            LotGoneDate=datepattern(date(typedate),"mm/dd/yy")
        else if «Toss»="√"
            GetText "What Month?",typeDate
            TossDate=datepattern(date(typeDate),"Month")
        else if «BigGermDrop»="√"
            GetText "New Date?",typeDate
            GermDropDate=datepattern(date(typedate),"mm/dd/yy")
        endif     
    endcase
endif
if «Lot Gone» ≠ "√" or «Toss» ≠ "√" or «BigGermDrop» ≠ "√"
    case «Lot Gone»≠"√" and val(«LotGoneDate»)≠0
        yesno "Clear Lot Gone date?"
        if clipboard()="Yes"
            LotGoneDate=0
        endif
     case «Toss»≠"√" and val(«TossDate»)≠0
        yesno "Clear Toss date?"
        if clipboard()="Yes"
            TossDate=0
        endif
    case «BigGermDrop»≠"√" and val(«GermDropDate»)≠0
        yesno "Clear Toss date?"
        if clipboard()="Yes"
            «GermDropDate»=0
        endif
    endcase
endif


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


