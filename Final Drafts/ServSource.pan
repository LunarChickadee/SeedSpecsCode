___ PROCEDURE copy cultivar/ç __________________________________________________
local recordarray

recordarray= ""
arraylinebuild recordarray,"^","",(«preferred supplier»+"^"+str(«cat #»)+"^"+latin+"^"+common+"^"+«gmo test»+"^"+«seed color»+"^"+str(temp)+"^"+str(«1st»)+"^"+str(«2nd»)
    +"^"+spec+"^"+subs+"^"+pass+"^"+G+"^"+altlatin+"^"+nikosnotes+"^"+picture+"^"+str(«10 g count»)+"^"+«field notes»+"^"+type+"^"+str(«catalog sequence»)
    +"^"+«indigenous royalties»+"^"+«breeder royalties»+"^"+ossi+"^"+pvp+"^"+str(«year of introduction»)+"^"+«Breeder»+"^"+«Black royalties»)

InsertBelow
«preferred supplier» = array(recordarray,1,"^")
«cat #» = val(array(recordarray,2,"^"))
latin = array(recordarray,3,"^")
common = array(recordarray,4,"^")
«gmo test» = array(recordarray,5,"^")
«seed color» = array(recordarray,6,"^")
temp = val(array(recordarray,7,"^"))
«1st» = val(array(recordarray,8,"^"))
«2nd» = val(array(recordarray,9,"^"))
spec = array(recordarray,10,"^")
subs = array(recordarray,11,"^")
pass = array(recordarray,12,"^")
G = array(recordarray,13,"^")
altlatin = array(recordarray,14,"^")
nikosnotes = array(recordarray,15,"^")
picture = array(recordarray,16,"^")
«10 g count» = val(array(recordarray,17,"^"))
«field notes» = array(recordarray,18,"^")
type = array(recordarray,19,"^")
    «catalog sequence» = val(array(recordarray,20,"^"))
    «indigenous royalties» = array(recordarray,21,"^")
    «breeder royalties» = array(recordarray,22,"^")
    ossi = array(recordarray,23,"^")
    pvp = array(recordarray,24,"^")
    «year of introduction» = val(array(recordarray,25,"^"))
    «Breeder» = array(recordarray,26,"^")
    «Black royalties» = array(recordarray,27,"^")

    lot = 999

Field «amtord»


___ ENDPROCEDURE copy cultivar/ç _______________________________________________

___ PROCEDURE new cultivar _____________________________________________________
local recordarray
recordarray = ""
arraylinebuild recordarray,"^","",(type+"^"+latin+"^"+str(temp)+"^"+str(«1st»)+"^"+str(«2nd»)+"^"+spec+"^"+subs+"^"+pass+"^"+G+"^"+altlatin)

InsertBelow

type = array(recordarray,1,"^")
latin = array(recordarray,2,"^")
temp = val(array(recordarray,3,"^"))
«1st» = val(array(recordarray,4,"^"))
«2nd» = val(array(recordarray,5,"^"))
spec = array(recordarray,6,"^")
subs = array(recordarray,7,"^")
pass = array(recordarray,8,"^")
G = array(recordarray,9,"^")
altlatin = array(recordarray,10,"^")

lot=999

Field «cat #»

___ ENDPROCEDURE new cultivar __________________________________________________

___ PROCEDURE make copy lot 100 ________________________________________________
local recordarray

recordarray= ""
arraylinebuild recordarray,"^","",(«preferred supplier»+"^"+str(«cat #»)+"^"+latin+"^"+common+"^"+«gmo test»+"^"+«seed color»+"^"+str(temp)+"^"+str(«1st»)+"^"+str(«2nd»)
    +"^"+spec+"^"+subs+"^"+pass+"^"+G+"^"+altlatin+"^"+nikosnotes+"^"+picture+"^"+str(«10 g count»)+"^"+«field notes»+"^"+type+"^"+str(«catalog sequence»)
    +"^"+«indigenous royalties»+"^"+«breeder royalties»+"^"+ossi+"^"+pvp+"^"+str(«year of introduction»)+"^"+«Breeder»+"^"+«Black royalties»)

InsertBelow
«preferred supplier» = array(recordarray,1,"^")
«cat #» = val(array(recordarray,2,"^"))
latin = array(recordarray,3,"^")
common = array(recordarray,4,"^")
«gmo test» = array(recordarray,5,"^")
«seed color» = array(recordarray,6,"^")
temp = val(array(recordarray,7,"^"))
«1st» = val(array(recordarray,8,"^"))
«2nd» = val(array(recordarray,9,"^"))
spec = array(recordarray,10,"^")
subs = array(recordarray,11,"^")
pass = array(recordarray,12,"^")
G = array(recordarray,13,"^")
altlatin = array(recordarray,14,"^")
nikosnotes = array(recordarray,15,"^")
picture = array(recordarray,16,"^")
«10 g count» = val(array(recordarray,17,"^"))
«field notes» = array(recordarray,18,"^")
type = array(recordarray,19,"^")
    «catalog sequence» = val(array(recordarray,20,"^"))
    «indigenous royalties» = array(recordarray,21,"^")
    «breeder royalties» = array(recordarray,22,"^")
    ossi = array(recordarray,23,"^")
    pvp = array(recordarray,24,"^")
    «year of introduction» = val(array(recordarray,25,"^"))
    «Breeder» = array(recordarray,26,"^")
    «Black royalties» = array(recordarray,27,"^")

    lot = 100

Field «amtord»

___ ENDPROCEDURE make copy lot 100 _____________________________________________

___ PROCEDURE make new lot 100 _________________________________________________
local recordarray
recordarray = ""
arraylinebuild recordarray,"^","",(type+"^"+latin+"^"+str(temp)+"^"+str(«1st»)+"^"+str(«2nd»)+"^"+spec+"^"+subs+"^"+pass+"^"+G+"^"+altlatin)

InsertBelow

type = array(recordarray,1,"^")
latin = array(recordarray,2,"^")
temp = val(array(recordarray,3,"^"))
«1st» = val(array(recordarray,4,"^"))
«2nd» = val(array(recordarray,5,"^"))
spec = array(recordarray,6,"^")
subs = array(recordarray,7,"^")
pass = array(recordarray,8,"^")
G = array(recordarray,9,"^")
altlatin = array(recordarray,10,"^")

lot=100

Field «cat #»

___ ENDPROCEDURE make new lot 100 ______________________________________________

___ PROCEDURE sync and sort/2 __________________________________________________
vnumb=«cat #»
vlot=lot
vfield= info("FieldName") 
Synchronize
field «cat #»
sortup
find «cat #»=vnumb and lot=vlot
field "«"+vfield+"»"
___ ENDPROCEDURE sync and sort/2 _______________________________________________

___ PROCEDURE sort list/ß ______________________________________________________

//_____New Code___9-5-22 Lunar

field «cat #»
sortup
field «lot»
sortupwithin
/* 
//users requested date sort but it messes up the cat # order because of like lots
field «daterec»
sortupwithin
*/
field «cat #»


/* old code

Field lot
SortUp
Field «cat #»
SortUp

*/


___ ENDPROCEDURE sort list/ß ___________________________________________________

___ PROCEDURE morecultivars/≠ __________________________________________________
Field "latin"
Copy
SelectAdditional latin contains clipboard() 
Find latin contains clipboard()
DownRecord
DownRecord

___ ENDPROCEDURE morecultivars/≠ _______________________________________________

___ PROCEDURE selectseedout ____________________________________________________
Select «amtrec»  =  0  AND «amtord» >  0 AND lot≠0 AND lot≠900
Field «supplier»
SortUp
FirstRecord

___ ENDPROCEDURE selectseedout _________________________________________________

___ PROCEDURE find_missing_invoices ____________________________________________
local zplaceholder
zplaceholder=«cat #»
Select lot>410 AND lot<420 and «Invoice Unit Price»=0 and amtrec>0
find «cat #»>zplaceholder

___ ENDPROCEDURE find_missing_invoices _________________________________________

___ PROCEDURE finditem/1 _______________________________________________________
local chosen_item
selectall
GetScrap "What's the item#"

Synchronize

field «cat #»
sortup
chosen_item=val(clipboard())
Find «cat #»=chosen_item

Field lot
if info("formname")≠""
drawobjects
endif
If  info("Found") 
stop
else
Message str(chosen_item)+" wasn't found."
//original was passive aggressive, changed to something normal
endif
___ ENDPROCEDURE finditem/1 ____________________________________________________

___ PROCEDURE selectitem _______________________________________________________
selectall
ReSynchronize
field «cat #»
sortup
GetScrap "What's the item#"
Select «cat #»=val(clipboard())
If  info("Selected") <  info("Records") 
stop
else
Message "How about a real item number?"
endif
___ ENDPROCEDURE selectitem ____________________________________________________

___ PROCEDURE return to kip's __________________________________________________
ZoomWindow 725,7,130,633,""
goform "kip's list"
___ ENDPROCEDURE return to kip's _______________________________________________

___ PROCEDURE comments _________________________________________________________
SelectAll
Select «rec'dcom»≠""
SelectAdditional comments≠""
SelectAdditional nikosnotes≠""
SelectAdditional «germ comment»≠""
SelectAdditional «customer comment»≠""
SelectAdditional «field notes»≠""

___ ENDPROCEDURE comments ______________________________________________________

___ PROCEDURE comment window ___________________________________________________
OpenForm "seed comments"
___ ENDPROCEDURE comment window ________________________________________________

___ PROCEDURE closeallwindows/∑ ________________________________________________
CloseFile
___ ENDPROCEDURE closeallwindows/∑ _____________________________________________

___ PROCEDURE map_of_world _____________________________________________________
select «cat #»>200 and «cat #»<900
selectadditional «cat #»>1200 and «cat #»<1900
selectadditional «cat #»>2000 and «cat #»<2600
selectadditional «cat #»>2980 and «cat #»<3050
selectadditional «cat #»>4400 and «cat #»<4550
selectadditional «cat #»>5270 and «cat #»<5301
selectadditional «cat #»>5400 and «cat #»<5460
field «cat #»
sortup

___ ENDPROCEDURE map_of_world __________________________________________________

___ PROCEDURE .tab2 ____________________________________________________________
/*
local KeyStroke,fName
fName=""
KeyStroke=""
KeyStroke=info("trigger")[5,-1]
fName = info("fieldname")
*/

if  info("FormName") ="Quality"
Field «cat #»
endif
/*
if info("formname")="nikos" 
    case info("fieldname") = "lot" 
        field «amtrec»
    case info("fieldname")="pass"
        field «germ_date»
    case info("fieldname")="OGcert"
        field «og exp»
    case info("fieldname")="dateord"
        field «comline»
    case info("fieldname")="comline"
        superobject "comments","open"
    defaultcase
        key info("modifiers"),KeyStroke 
        endcase 
endif


*/
___ ENDPROCEDURE .tab2 _________________________________________________________

___ PROCEDURE .Initialize ______________________________________________________
global vwho, vnumb, vlot, vfield, vgermdate, zsupplier, zfreight, zcleaning, zphyto, zfees, zother,
zfreightpercent, zcleaningpercent, zphytopercent, zfeespercent, zotherpercent, zinvoicenotes,v1stCount,vFinalCount
vwho=""
vnumb=0
vlot=0
vfield=""
vgermdate=0
zsupplier=""
zfreight=0
zcleaning=0
zphyto=0
zfees=0
zother=0
v1stCount=0
vFinalCount=0
zfreightpercent=0
zcleaningpercent=0
zphytopercent=0
zfeespercent=0
zotherpercent=0
if val(info("version")[1,1])>5
forcesynchronize
endif
if info("SerialNumber") CONTAINS "81490"

opensecret "certification list"
endif
call "sort list/ß"

;this was for cr
;if info("SerialNumber") CONTAINS "71911"
;select lot ≠ 900
;selectwithin str(«cat #») notcontains "."
;endif
//opensecret "supplier list"
___ ENDPROCEDURE .Initialize ___________________________________________________

___ PROCEDURE .namer/µ _________________________________________________________
Field "latin" 
Copy
Select latin contains clipboard()
Field "temp"
Propagate
PropagateUP
Field "1st"
Propagate
PropagateUP
Field "2nd"
Propagate
PropagateUP
Field "spec"
Propagate
PropagateUP
Field "subs"
Propagate
PropagateUP
Field "pass"
Propagate
PropagateUP
Field "G"
Propagate
PropagateUP
SelectAll
Find latin contains clipboard()
Field "latin" 

___ ENDPROCEDURE .namer/µ ______________________________________________________

___ PROCEDURE .cattab __________________________________________________________
If info("Trigger") = "Key.Tab"  AND  info("FormName") = "roberta"
field «cat #»
endif

___ ENDPROCEDURE .cattab _______________________________________________________

___ PROCEDURE cr's list ________________________________________________________
global waswindow
waswindow=info("windowname")
Synchronize
Save
GetScrap "What's the date?"
OpenFile "SEEDSPECS delink"
OpenFile "&&SEEDSPECS"
Select comline CONTAINS "c"
RemoveUnselected
SaveAs "SeedSpecs for CR "+clipboard()
Save
CloseFile
window waswindow
field comline
Change "c" ""
Save

___ ENDPROCEDURE cr's list _____________________________________________________

___ PROCEDURE .rb's list _______________________________________________________
global waswindow
waswindow=info("windowname")
Save
GetScrap "What's the date?"
SaveACopyAs "SeedSpecs for rb " + clipboard()
OpenFile "SeedSpecs for rb " + clipboard()
Select comline CONTAINS "r"
RemoveUnselected
Save
CloseFile
window waswindow
field comline
Change "r" ""
Save

___ ENDPROCEDURE .rb's list ____________________________________________________

___ PROCEDURE .checkstandard ___________________________________________________
local zform
labelgerm=?(labelgerm<val(pass),0,labelgerm)
;stop
zform= info("FormName")
if info("FormName") contains "Quality"
;    if comline notcontains "r"
;comline=comline+"r"
;    endif
if info("fieldname") contains "FinalCount4" and vgermdate≠0
«germ_date»=vgermdate
endif
endif

___ ENDPROCEDURE .checkstandard ________________________________________________

___ PROCEDURE .code ____________________________________________________________
if  info("Files") contains "supplier list"
suppliercode=lookup("supplier list","supplier",supplier,"code",0,0)
endif
if  info("Files") contains "certification list" AND common[1,2] ="OG"
;«OG for cat»=lookup("certification list","supplier",supplier,"OGcert","",0) ; field deleted 6-27-18
endif

___ ENDPROCEDURE .code _________________________________________________________

___ PROCEDURE .who _____________________________________________________________

//has the receiver set the amount for the next person
«receiver»=vwho
    if receiver=""  
Field receiver
EditCell
    endif
Field receiveunit
vwho=receiver
EditCell

if comline≠"" AND comline NOTCONTAINS "rnq"
comline=comline+"rnq"
endif
if comline=""
comline="rnq"
endif

___ ENDPROCEDURE .who __________________________________________________________

___ PROCEDURE .change_weight ___________________________________________________
;this changes the amount received without changing the date and triggering the rest of the regular routine
getscrapOK "What's the new weight?"
If val(clipboard())>0
amtrec=val(clipboard())
endif
___ ENDPROCEDURE .change_weight ________________________________________________

___ PROCEDURE .pan serial number _______________________________________________
local serial
serial= info("SerialNumber") 
message serial
___ ENDPROCEDURE .pan serial number ____________________________________________

___ PROCEDURE .windowS _________________________________________________________
goform "Quality Control"
___ ENDPROCEDURE .windowS ______________________________________________________

___ PROCEDURE .windowR _________________________________________________________
GoForm "old roberta"
;openForm "roberta"
___ ENDPROCEDURE .windowR ______________________________________________________

___ PROCEDURE .windowN _________________________________________________________
GoForm "old nikos"
;openform "nikos"
___ ENDPROCEDURE .windowN ______________________________________________________

___ PROCEDURE huh/8 ____________________________________________________________
selectall
zsupplier=""
zfreight=0
zcleaning=0
zphyto=0
zfees=0
zother=0
zfreightpercent=0
zcleaningpercent=0
zphytopercent=0
zfeespercent=0
zotherpercent=0
getscrapok "What variety or supplier you want to search for?"
select common contains clipboard() OR supplier contains clipboard()
field daterec
sortup
field «cat #»
sortup
___ ENDPROCEDURE huh/8 _________________________________________________________

___ PROCEDURE .invoice_date ____________________________________________________
if invoiceTOoffice=0
invoiceTOoffice=today()
endif
___ ENDPROCEDURE .invoice_date _________________________________________________

___ PROCEDURE .invoice_to_nikos ________________________________________________
if «spare date 3»=0
«spare date 3»=today()
endif
___ ENDPROCEDURE .invoice_to_nikos _____________________________________________

___ PROCEDURE .addc ____________________________________________________________
    if comline notcontains "c"
comline=comline+"c"
    endif

___ ENDPROCEDURE .addc _________________________________________________________

___ PROCEDURE update Seedspecs delinked ________________________________________
;this file needs to be in the same folder as SEEDSPECS for the macro to work.
if info("Files") contains "SEEDSPECS delink"
openfile "SEEDSPECS"
save
closefile
NoYes "Do you want to replace the data in 'SEEDSPECS delink' with the data in 'SEEDSPECS'?"

    if clipboard()="Yes"
openfile "&&SEEDSPECS"
save
    endif
endif
___ ENDPROCEDURE update Seedspecs delinked _____________________________________

___ PROCEDURE check_locked _____________________________________________________
local zlocks, zserverID
message "This macro checks the record server id of the order you're looking at, then reports the id's of any locked records and attempts to unlock the order you're looking at, if you choose to."
zserverID=info("serverrecordid")
    if zserverID=0
    message "No id was reported? Go ask Gene."
    stop
    endif
message "The server id of this record is "+str(zserverID)+" ."

lockedrecordlist zlocks
    if zlocks=""
    message "Nothing is locked."
    stop
    endif
message "These are the currently locked records:"+¶+zlocks

If zlocks contains str(zserverID)
YesNo "Do you want to try to unlock this record?"
    if clipboard()="Yes"
    forceunlockrecord    
    endif
else
message "This record is not a locked record. If you're still having trouble let Gene know."
endif

;stop

YesNo "Do you want to double check?"
    if clipboard()="Yes"
lockedrecordlist zlocks
    if zlocks=""
    message "Nothing is locked."
    stop
    endif
If zlocks contains str(zserverID)
YesNo "Do you want to try to unlock this record again?"
    if clipboard()="Yes"
    forceunlockrecord    
    endif
else
message "This record is not a locked record. If you're still having trouble let Gene know."
endif
    endif
    
___ ENDPROCEDURE check_locked __________________________________________________

___ PROCEDURE .lot_total _______________________________________________________
global ztrialtotal
ztrialtotal=""
arrayselectedbuild ztrialtotal, ¬,"",«Cost of Grow out»
ztrialtotal=arraynumerictotal(ztrialtotal,¬)
ztrialtotal="GRAND TOTAL : $"+str(ztrialtotal)
;message ztrialtotal
___ ENDPROCEDURE .lot_total ____________________________________________________

___ PROCEDURE cog-anne _________________________________________________________
local zcog, zcogtot
arrayselectedbuild zcog,",","",«Cost of Grow out»[2,-1]
;message zcog
arraynumerictotal zcog,",",zcogtot
message zcogtot
___ ENDPROCEDURE cog-anne ______________________________________________________

___ PROCEDURE find by name _____________________________________________________
selectall
Synchronize
field «cat #»
sortup
GetScrap "What's (part of) the item name ?"
Select «common» contains clipboard()
Field lot
If  info("Found") 
stop
else
Message "How about another name?"
endif
___ ENDPROCEDURE find by name __________________________________________________

___ PROCEDURE germ_by_month/3 __________________________________________________
local zgermmonth
zgermmonth=""
SelectAll

GetScrapOK "what month?"
zgermmonth=clipboard()+"/"

Select datepattern(«germ_date»,"mm/dd/yy")   BEGINSWITH  zgermmonth
___ ENDPROCEDURE germ_by_month/3 _______________________________________________

___ PROCEDURE organics_report __________________________________________________
Synchronize
field «cat #»
sortup
select common beginswith "OG " and lot>100 and lot≠900
;export "seeds_organics.csv",str(«cat #»)+","+common+","+«spare text»+","+supplier+","+OGcert+","+str(lot)+¶
export "seeds_organics.txt",str(«cat #»)+¬+common+¬+«spare text»+¬+supplier+¬+OGcert+¬+str(lot)+¶
;tab-delimited text worked better than csv because of commas in common names
___ ENDPROCEDURE organics_report _______________________________________________

___ PROCEDURE grower_invoice ___________________________________________________
local zinvoicemode
selectall

zinvoicemode=""

yesno "Is this to print a worksheet?"
if clipboard()="Yes"
zinvoicemode="worksheet"
else
zinvoicemode="invoice"
endif

getscrap "What's the grower name?"
select supplier contains clipboard()
    if info("selected") = info("records")
    yesno "Nothing found, try again?" 
        if clipboard()="Yes"
        call grower_invoice
        else 
        stop
        endif
    endif
   
if zinvoicemode="invoice"    
SelectWithin lot>420 and lot<500 AND «spare date 3»=0 AND amtrec>0 AND daterec≠0 AND result>0 
else
SelectWithin lot>420
endif

___ ENDPROCEDURE grower_invoice ________________________________________________

___ PROCEDURE .update_germhistory ______________________________________________
local vgermcomment, zlastgerm
vgermcomment=""
zlastgerm=""
zlastgerm=array(«germ_history»,1,¶)
zlastgerm=val(zlastgerm["-","."][3,-2])
if zlastgerm>0 AND BigGermDrop≠""
comline=comline+"g"
endif
if zlastgerm>0 AND zlastgerm-result≥7 AND BigGermDrop=""
BigGermDrop="√"
endif
if info("formname")  notcontains "Quality"
«germ_history»=datepattern(«germ_date»,"mm/yy")+" - "+str(result)+"%"+?(bulk≠""," (bulk)","")+?(lab≠""," "+lab, "")+?(vgermcomment≠"","…"+vgermcomment, "")+" - supplier"+¶+«germ_history»
else
getscrap "Add comments for this result."
if clipboard()≠""
vgermcomment=clipboard()
endif
;this build germ history entry
«germ_history»=datepattern(«germ_date»,"mm/yy")+" - "+str(result)+"%"+?(bulk≠""," (bulk)","")+?(lab≠""," "+lab, "")+?(vgermcomment≠"","…"+vgermcomment, "")+¶+«germ_history»
;below clears fields for this test
lab=""
bulk=""
«1stcount1»=0
«1stcount2»=0
«1stcount3»=0
«1stcount4»=0
«FinalCount1»=0
«FinalCount2»=0
«FinalCount3»=0
«FinalCount4»=0
field Genevadate
clearcell
field «1stcount1»
endif
if «germ_date»>0
«spare date»=«germ_date»+180
endif
___ ENDPROCEDURE .update_germhistory ___________________________________________

___ PROCEDURE .edit_germ_history _______________________________________________
WindowBox "300 340 650 820 noPalette"
openform "edit_germ_history"
EditCellStop

___ ENDPROCEDURE .edit_germ_history ____________________________________________

___ PROCEDURE .germ_date _______________________________________________________
if «germ_date»≠0
vgermdate=«germ_date»
else
message "No germ date to set!"
endif
___ ENDPROCEDURE .germ_date ____________________________________________________

___ PROCEDURE .print_invoice ___________________________________________________
selectwithin invoiceTOoffice=today()
goform "grower_invoice"
___ ENDPROCEDURE .print_invoice ________________________________________________

___ PROCEDURE .copy_germ_specs _________________________________________________
global vtemp, vfirst, vsecond, vspec, vpass
vtemp=0
vfirst=0
vsecond=0
vspec=""
vpass=""
vtemp=temp
vfirst=«1st»
vsecond=«2nd»
vspec=spec
vpass=pass
;message str(vtemp) +"-"+ str(vfirst) +"-"+ str(vsecond) +"-"+ vspec +"-"+ vpass

___ ENDPROCEDURE .copy_germ_specs ______________________________________________

___ PROCEDURE .paste_germ_specs ________________________________________________
if vtemp≠0
temp=vtemp
«1st»=vfirst
«2nd»=vsecond
spec=vspec
pass=vpass
endif

___ ENDPROCEDURE .paste_germ_specs _____________________________________________

___ PROCEDURE .search_name_&_supplier __________________________________________
selectall
zsupplier=""
zfreight=0
zcleaning=0
zphyto=0
zfees=0
zother=0
zfreightpercent=0
zcleaningpercent=0
zphytopercent=0
zfeespercent=0
zotherpercent=0
getscrapok "What item#, variety or supplier you want to search for?"
    if val(clipboard())= 0
    select common contains clipboard() OR supplier contains clipboard()
    else
    select «cat #» = val(clipboard())
    endif
field daterec
sortup
field «cat #»
sortup
___ ENDPROCEDURE .search_name_&_supplier _______________________________________

___ PROCEDURE .select_this_supplier ____________________________________________
clipboard()=supplier
select supplier contains clipboard()
field daterec
sortup
field «cat #»
sortup
___ ENDPROCEDURE .select_this_supplier _________________________________________

___ PROCEDURE .select_this_date ________________________________________________
zsupplier=supplier
clipboard()=daterec
select daterec = clipboard() and supplier=zsupplier
field «cat #»
sortup
___ ENDPROCEDURE .select_this_date _____________________________________________

___ PROCEDURE .same_fees _______________________________________________________
if zsupplier≠""
if zfreightpercent+zcleaningpercent+zphytopercent+zfeespercent+zotherpercent=0
if zfreight+zcleaning+zphyto+zfees+zother>0
yesno "Use the same fees as the previous entry?"
    if clipboard()="Yes"
    «Invoice Shipping_handling»=zfreight
   «Invoice Cleaning»= zcleaning
   «Invoice Phyto»= zphyto
    «Invoice Payment Fees»=zfees
   «Invoice Other»= zother
   «Invoice Notes»= zinvoicenotes
        else
        yesno "Do you want to clear the fee variables?"
            if clipboard()="Yes"
            zsupplier=""
            zfreight=0
            zcleaning=0
            zphyto=0
            zfees=0
            zother=0
            zfreightpercent=0
            zcleaningpercent=0
            zphytopercent=0
            zfeespercent=0
            zotherpercent=0
            zinvoicenotes=""
            endif
    endif
endif
endif
endif

if zfreightpercent+zcleaningpercent+zphytopercent+zfeespercent+zotherpercent>0
yesno "Use the percentages just set?"
    if clipboard()="Yes"
        if zfreightpercent>0
    «Invoice Shipping_handling»=«Invoice Unit Price»*zfreightpercent
        endif
        if zcleaningpercent>0
   «Invoice Cleaning»= «Invoice Unit Price»*zcleaningpercent
        endif
        if zphytopercent>0
   «Invoice Phyto»= «Invoice Unit Price»*zphytopercent
        endif
        if zfeespercent>0
    «Invoice Payment Fees»=«Invoice Unit Price»*zfeespercent
        endif
        if zotherpercent>0
   «Invoice Other»= «Invoice Unit Price»*zotherpercent
        endif
        else
        yesno "Do you want to clear the fee variables?"
            if clipboard()="Yes"
            zsupplier=""
            zfreight=0
            zcleaning=0
            zphyto=0
            zfees=0
            zother=0
            zfreightpercent=0
            zcleaningpercent=0
            zphytopercent=0
            zfeespercent=0
            zotherpercent=0
            endif
    endif
endif

call ".calc_total_inv_price"
___ ENDPROCEDURE .same_fees ____________________________________________________

___ PROCEDURE .set_fee_variables _______________________________________________
if zfreightpercent+zcleaningpercent+zphytopercent+zfeespercent+zotherpercent=0
    zsupplier=supplier
    zfreight=«Invoice Shipping_handling»
    zcleaning=«Invoice Cleaning»
    zphyto=«Invoice Phyto»
    zfees=«Invoice Payment Fees»
    zother=«Invoice Other»
    zinvoicenotes=«Invoice Notes»    
endif    

___ ENDPROCEDURE .set_fee_variables ____________________________________________

___ PROCEDURE .set_percent _____________________________________________________
getscrapok "what's the shipping/handling percent? (ex. 1.6, 3, 2.25)"
zfreightpercent=val(clipboard())/100
noyes "continue?"

if clipboard()="Yes"
getscrapok "what's the phyto percent? (ex. 1.6, 3, 2.25)"
zphytopercent=val(clipboard())/100
noyes "continue?"
endif

if clipboard()="Yes"
getscrapok "what's the transfer fee percent? (ex. 1.6, 3, 2.25)"
zfeespercent=val(clipboard())/100
noyes "continue?"
endif

if clipboard()="Yes"
getscrapok "what's the other fees percent? (ex. 1.6, 3, 2.25)"
zothertpercent=val(clipboard())/100
noyes "continue?"
endif

if clipboard()="Yes"
getscrapok "what's the cleaning percent? (ex. 1.6, 3, 2.25)"
zcleaningpercent=val(clipboard())/100
noyes "continue?"
endif

___ ENDPROCEDURE .set_percent __________________________________________________

___ PROCEDURE trigger/4 ________________________________________________________
call ".search_name_&_supplier"
___ ENDPROCEDURE trigger/4 _____________________________________________________

___ PROCEDURE .calc_total_inv_price ____________________________________________
«Invoice Total COG»=«Invoice Unit Price»+«Invoice Shipping_handling»+«Invoice Cleaning»+«Invoice Phyto»+«Invoice Payment Fees»+«Invoice Other»
___ ENDPROCEDURE .calc_total_inv_price _________________________________________

___ PROCEDURE export_germ_history ______________________________________________
select «germ_history» ≠ ""
export "germ_history.txt",str(«cat #»)+¬+str(lot)+¶+«germ_history»
___ ENDPROCEDURE export_germ_history ___________________________________________

___ PROCEDURE .date_changed ____________________________________________________
if «spare text 2»=""
«spare text 2»=datepattern(today(),"mm/dd/yy")+" - "+ info("fieldname")
else
«spare text 2»=datepattern(today(),"mm/dd/yy") +" - "+ info("fieldname") +¶+ «spare text 2»
endif
___ ENDPROCEDURE .date_changed _________________________________________________

___ PROCEDURE .UpdateDate ______________________________________________________
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

___ ENDPROCEDURE .UpdateDate ___________________________________________________

___ PROCEDURE .MixIngreedients _________________________________________________
global vMix, vCat

vMix=""
if MixPart="√"   
vCat=str(«cat #»)+" - "+str(lot)
//message vCat
Arraybuild vMix, ¶,"", ?(MixIngredient contains vCat, str(«cat #»)+" - "+str(lot),"")

//message ?(MixIngredient contains vCat, str(«cat #»),"yo")
//message vMix
InMix=vMix
else
    InMix=""
endif    
drawobjects



        
___ ENDPROCEDURE .MixIngreedients ______________________________________________

___ PROCEDURE select_low_germ/9 ________________________________________________
selectall
select result≤val(pass)+7 AND result>0 AND result>val(pass) AND «Lot Gone»="" AND comments notcontains "low germ adjusted"
___ ENDPROCEDURE select_low_germ/9 _____________________________________________

___ PROCEDURE .low_germ_adj ____________________________________________________
comments=comments+¶+"low germ adjusted"
___ ENDPROCEDURE .low_germ_adj _________________________________________________

___ PROCEDURE select_germ_drop/0 _______________________________________________
selectall
select «BigGermDrop»≠"" AND comments notcontains "low germ adjusted"
___ ENDPROCEDURE select_germ_drop/0 ____________________________________________

___ PROCEDURE .AnalysisReport __________________________________________________
local vAnalysis,vGerm,vDead,vAbnormal,vHardseed,vDormant,vViable,vReportDate,vAnalysisHistory


//fields Germ and GermDate2 added by me, and should be deleted because they were covered by
//result and germ_date
field AnalysisReport

vAnalysisHistory=AnalysisReport

vAnalysis=""
vReportDate=""
vGerm=0
vDead=0
vAbnormal=0
vHardseed=0
vDormant=0
vViable=0

getText "What is the report date?",vReportDate
«germ_date»=date(vReportDate)
«GermDate2»=date(vReportDate)


gettext "What is the % Germ?",vGerm
    result=float(val(vGerm))
gettext "What is the % Dead?",vDead
gettext "What is the % Abnormal?",vAbnormal
gettext "What is the % Hardseed?",vHardseed
    «hard seed»=str(float(val(vHardseed)))
gettext "What is the % Dormant?",vDormant
    «dormant seed»=str(float(val(vDormant)))
yesno "Do you want to autocaculate viability?"
if clipboard()="Yes"
    viability=str(float(val(result))+float(val(«hard seed»))+float(val(«dormant seed»)))
 endif
if clipboard()="No"
gettext "What is the % Viable?",vViable
    viability=vViable
endif

arraylinebuild vAnalysis,"/","",str(vReportDate)+" "+(str(vGerm))+"% Germ"+"/"+(str(vDead))+"% Dead"+"/"+(str(vAbnormal))+"% Abnormal"+"/"+(str(vHardseed))+"% Hardseed"+"/"+(str(vDormant))+"% Dormant"+"/"+(str(vViable))+"% Viable"

AnalysisReport=vAnalysis+?(vAnalysis="","",¶+vAnalysisHistory)

call .update_germhistory
___ ENDPROCEDURE .AnalysisReport _______________________________________________

___ PROCEDURE mathtest _________________________________________________________
v1stCount=sum(«1stCountΩ»)/4
vFinalCount=sum(«FinalCountΩ»)/4
result=?(«FinalCount4»≠0,(v1stCount+vFinalCount)/2,v1stCount)
labelgerm=result-2
;.checkstandard

___ ENDPROCEDURE mathtest ______________________________________________________

___ PROCEDURE .import __________________________________________________________
local Dictionary1,Dictionary2, ProcedureList, clipHold
clipHold=""
clipHold=clipboard()
getscrap "Warning, admin only. Password?"
    if clipboard() notcontains "7seeds"
        stop
       endif
       
clipboard()=clipHold
Dictionary1=""
Dictionary1=clipboard()
yesno "Press yes to import all macros from clipboard"
if clipboard()="No"
stop
endif
//step one
importdictprocedures Dictionary1, Dictionary2
//changes the easy to read macros into a panorama readable file

 
//step 2
//this lets you load your changes back in from an editor and put them in
//copy your changed full procedure list back to your clipboard
//now comment out from step one to step 2
//run the procedure one step at a time to load the new list on your clipboard back in
//Dictionary2=clipboard()
loadallprocedures Dictionary2,ProcedureList
displaydata ProcedureList //messages which procedures got changed

___ ENDPROCEDURE .import _______________________________________________________

___ PROCEDURE .communicationDictionary _________________________________________
global commDictionary, catLot, commAdd,commDisplay

catLot=str(cat)+str(lot)
commAdd=commString
setdictionaryvalue commDictionary, catLot,commAdd
___ ENDPROCEDURE .communicationDictionary ______________________________________

___ PROCEDURE Export Germ To Web _______________________________________________
select «result» ≠ 0
selectwithin result > val(pass)
selectwithin lot < 799
selectwithin lot >100
Selectwithin «germ_date» >= monthmath(today(),-8) ;this should be six months preceding the day the export is being created

openfile "germ-export-helper"
openfile "&&SEEDSPECS"


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; this searches for records that are 100% duplicates and removes them
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

field compare
formulafill str(«cat #»)+str(lot)+str(result)+datepattern(germ_date,"mm/yy")
sortup
selectduplicates ""

local prev_compare
firstrecord
prev_compare = ""
loop
    if compare = prev_compare
        deleterecord
        uprecord
    endif
    prev_compare = compare
    stoploopif info("eof")
    downrecord
while forever

selectall

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; this searches for records that have the same item # and lot
;; sorts by date and deletes the older test results.
;; if there are two records with the same test date but different test results
;; it's kind of arbitrary which one gets deleted.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

field germ_date
sortdown
field compare
formulafill str(«cat #»)+str(lot)
sortup
selectduplicates ""

;; if you want to deal with this type of duplicate using human judgement
;; rather than Panorama's whim, stop the macro here.
debug

firstrecord
prev_compare = ""
loop
    if compare = prev_compare
        deleterecord
        uprecord
    endif
    prev_compare = compare
    stoploopif info("eof")
    downrecord
while forever

selectall

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


export "germ_to_web.csv", str(«cat #»)+","+str(lot)+","+str(result)+","+datepattern(«germ_date»,"mm/yy")+¶
message "Germination File Created"
message "Don't forget to Select All when done reviewing selection." 
___ ENDPROCEDURE Export Germ To Web ____________________________________________

___ PROCEDURE Find.1.5.9/å _____________________________________________________

___ ENDPROCEDURE Find.1.5.9/å __________________________________________________

___ PROCEDURE ImportCatOrder ___________________________________________________
field sparenumber2
formulafill lookup("Cat Order","id",val(str(«cat #»)[1,"."]),"CatOrder",0,0)




___ ENDPROCEDURE ImportCatOrder ________________________________________________

___ PROCEDURE .MoveAnalysisToFields ____________________________________________
//These are commented out becuse these were made to move data on the server for an update

/*
//Dormant Seed
displaydata array(array(«AnalysisReport», 5,"%"),2,"/")
field «hard seed»
formulafill ?(array(«AnalysisReport», 5,"%") contains "hardseed",array(array(«AnalysisReport», 5,"%"),2,"/"),"")
;displaydata array(array(«AnalysisReport», 4,"/"),1,"%")
;displaydata ?(array(«AnalysisReport», 4,"/") contains "Hard",val(array(«AnalysisReport», 4,"/")),"")
*/

/*
//Hard Seed

field «hard seed»
formulafill  ?(«AnalysisReport» contains "/",
str(val(array(«AnalysisReport»,arraysearch(«AnalysisReport»,"*ard*",1,"/"),"/"))),
str(val(array(«AnalysisReport»,arraysearch(«AnalysisReport»,"*ard*",1,","),","))))
*/
/*
//Dormant Seed
field «dormant seed»
formulafill  ?(«AnalysisReport» contains "/",
str(val(array(«AnalysisReport»,arraysearch(«AnalysisReport»,"*ormant*",1,"/"),"/"))),
str(val(array(«AnalysisReport»,arraysearch(«AnalysisReport»,"*ormant*",1,","),","))))
*/
/*
//Viable 
field «viability»
formulafill ?((«AnalysisReport» contains "/" and «AnalysisReport» contains "."),
str(val(array(«AnalysisReport»,arraysearch(«AnalysisReport»,"*iable*",1,"/"),"/"))),"")
*/
___ ENDPROCEDURE .MoveAnalysisToFields _________________________________________

___ PROCEDURE testcomm _________________________________________________________
local commString

commString=""
debug
commString="Hi"
drawobjects
debug
commString=""
___ ENDPROCEDURE testcomm ______________________________________________________

___ PROCEDURE (CommonFunctions) ________________________________________________

___ ENDPROCEDURE (CommonFunctions) _____________________________________________

___ PROCEDURE ExportMacros _____________________________________________________
local Dictionary1, ProcedureList
//this saves your procedures into a variable
exportallprocedures "", Dictionary1
clipboard()=Dictionary1

message "Macros are saved to your clipboard!"
___ ENDPROCEDURE ExportMacros __________________________________________________

___ PROCEDURE ImportMacros _____________________________________________________
local Dictionary1,Dictionary2, ProcedureList, clipHold
clipHold=""
clipHold=clipboard()
getscrap "Warning, admin only. Password?"
    if clipboard() notcontains "7seeds"
        stop
       endif
       
clipboard()=clipHold
Dictionary1=""
Dictionary1=clipboard()
yesno "Press yes to import all macros from clipboard"
if clipboard()="No"
stop
endif
//step one
importdictprocedures Dictionary1, Dictionary2
//changes the easy to read macros into a panorama readable file

 
//step 2
//this lets you load your changes back in from an editor and put them in
//copy your changed full procedure list back to your clipboard
//now comment out from step one to step 2
//run the procedure one step at a time to load the new list on your clipboard back in
//Dictionary2=clipboard()
loadallprocedures Dictionary2,ProcedureList
displaydata ProcedureList //messages which procedures got changed

___ ENDPROCEDURE ImportMacros __________________________________________________

___ PROCEDURE Symbol Reference _________________________________________________
bigmessage "Option+7= ¶  [in some functions use chr(13)
Option+= ≠ [not equal to]
Option+\= « || Option+Shift+\= » [chevron]
Option+L= ¬ [tab]
Option+Z= Ω [lineitem or Omega]
Option+V= √ [checkmark]
Option+M= µ [nano]
Option+<or>= ≤or≥ [than or equal to]"


___ ENDPROCEDURE Symbol Reference ______________________________________________

___ PROCEDURE .GetDBInfo _______________________________________________________
local DBChoice, vAnswer1, vClipHold

Message "This Procedure will give you the names of Fields, procedures, etc in the Database"
//The spaces are to make it look nicer on the text box
DBChoice="fields
forms
procedures
permanent
folder
level
autosave
fileglobals
filevariables
fieldtypes
records
selected
changes"
superchoicedialog DBChoice,vAnswer1,“caption="What Info Would You Like?"
captionheight=1”


vClipHold=dbinfo(vAnswer1,"")
bigmessage "Your clipboard now has the name(s) of "+str(vAnswer1)+"(s)"+¶+
"Preview: "+¶+str(vClipHold)
Clipboard()=vClipHold
   Ñ.AutomaticFYrÏˇ    ƒ ˇˇ P    dateHold, dateMath, intYear, 
thisFYear,lastFYear,nextFYear,intMonth,fileDate

ˇˇ\ .   fileDate=val(striptonum(info("databasename")))ˇˇã    nextFYear=""ˇˇò    thisFYear=""ˇˇ•    lastFYear=""

//get the dateˇˇ¬ L   dateHold = datepattern(today(),"mm/yyyy")

//gets the current month and yearˇˇ%   intMonth = val(dateHold[1,"/"][1,-2]) ˇˇ5E   intYear = val(dateHold["/",-1][2,-1])

//assigns FY numbers for years  |DˇˇÅ   val(intMonth)>6 ˇˇï   nextFYear=str(intYear-1976) ˇˇµ   thisFYear=str(intYear-1977) ˇˇ’   lastFYear=str(intYear-1978)  Ú“ Ú“ˇˇ˜   val(intMonth)<7 ˇˇ   nextFYear=str(intYear-1977) ˇˇ+   thisFYear=str(intYear-1978) ˇˇK   lastFYear=str(intYear-1979) 3 h ßrˇˇ™*   fileDate ≤ val(lastFYear) and fileDate > 0ˇˇŸ   nextFYear=str(fileDate+1) ˇˇ˜   thisFYear=str(fileDate) ˇˇ   lastFYear=str(fileDate-1)  -~
    
global dateHold, dateMath, intYear, 
thisFYear,lastFYear,nextFYear,intMonth,fileDate

fileDate=val(striptonum(info("databasename")))
nextFYear=""
thisFYear=""
lastFYear=""

//get the date
dateHold = datepattern(today(),"mm/yyyy")

//gets the current month and year
intMonth = val(dateHold[1,"/"][1,-2])
intYear = val(dateHold["/",-1][2,-1])

//assigns FY numbers for years

case val(intMonth)>6
    nextFYear=str(intYear-1976)
    thisFYear=str(intYear-1977)
    lastFYear=str(intYear-1978)

case val(intMonth)<7
    nextFYear=str(intYear-1977)
    thisFYear=str(intYear-1978)
    lastFYear=str(intYear-1979)

endcase

//checks if this is an older file and needs older FYs
if fileDate ≤ val(lastFYear) and fileDate > 0
    nextFYear=str(fileDate+1)
    thisFYear=str(fileDate)
    lastFYear=str(fileDate-1)
endif

//tallmessage str(nextFYear)+¬+str(thisFYear)+¬+str(lastFYear)


/*

///////~~~~~~~
Programmer Notes
~~~~~~~~~//////////
The danger of this procedure is that come July 1st of the year, it will automatically set
to open the newest files of a non-numbered Panorama file. And if those don't exist, you're 
gonna see errors. Also, a non numbered Panorama file that needs to call older files shouldn't
use this macro



To use these variables please note the following Panorama syntax rules:


filenames using variables:
    can just concatenate as a string
    
    ex:
        
    openfile str(variable)+"filename" 


field calls using variables:
    best to be only one variable and nothing else
    must be surrounded by ( )
    
    ex:
    
    field (VariableFieldName)
    
do your math and/or concatenation into the variable before calling it
    VariableFieldName=str(variable)+"fieldname"
 
field (str(variable)+"fieldname") will work but can cause errors
    
for assignments to that variable'd field 
    use «» for "current field/current cell" 
    
    ex: 
   
    «» = "10"
  
    
*/
™  Ñ.Folders&FilesMacros Ïˇ    ƒw ˇˇ} >    commList, commWanted, clipHoldComm, buttonChoice, numChoice

ˇˇª    commList=""Uˇˇ« 
   commWanted="" ˇˇ’    clipHoldComm="" ˇˇÂ    buttonChoice="" ˇˇı    numChoice=0 ˇˇ6  commList=¶+
    "1 - Copy Text of folderpath"
    +¶+¬+¬+¬+¬+¬+¬+
    "1 code -- folderpath(folder(""))"
    +¶+" "+¶+
    "2 - Copy list of All Files and Folders in this folder" 
    +¶+¬+¬+¬+¬+¬+¬+
    "2 code -- listfiles(folder(""),"")"
    +¶+" "+¶+
    "3 - Copy list of All Panorama files in this folder" 
    +¶+¬+¬+¬+¬+¬+¬+
    '3 code -- listfiles(folder(""),"????KASX")'
    +¶+" "+¶+
    "4 - Copy list of All Text files in this folder" 
    +¶+¬+¬+¬+¬+¬+¬+
    '4 code -- listfiles(folder(""),"TEXT????")'

/*

//NOTE: these quotation marks “” vs "" are called smart quotes
//you get them with opt+[ and opt+shift+[
//normally for superchoicedialogs, i would use curly brackets around title or caption
//but to have this be able to be written into new files from another macro, I had
//to use smart quotes

*/9ˇˇJ   {_DialogAlertLib} ˇˇJ   {SUPERCHOICEDIALOG},ˇˇK	   commList, ˇˇT    commWanted,ˇˇ`Ã    
“Title="Get File/Folder/Path"
    Caption="1 - Copy ~~~~~~ gets you the data
        1 - Code ~~~~~~ gets you the formula"
    captionheight="2"
    buttons="Ok;Cancel"
    width="800"
    height="800"”  ;ˇˇ;   clipHoldComm=commWanted ˇˇ['   numChoice=striptonum(clipHoldComm)[1,3]  Öºˇˇà#   commWanted[1,12] notcontains "code"  ±lˇˇ∂
   numChoice="1" Ãˇˇ◊   {_DialogAlertLib} ˇˇ◊   {TALLMESSAGE},ˇˇÿ.   "clipboard now has: "+¶+folderpath(folder(""))ˇˇ"   clipboard()=folderpath(folder("")) 7∏ 7&ˇˇ<
   numChoice="2" Rˇˇ]   {_DialogAlertLib} ˇˇ]   {TALLMESSAGE},ˇˇ^0   "clipboard now has: "+¶+listfiles(folder(""),"")ˇˇó$   clipboard()=listfiles(folder(""),"") ≈∏ ≈ˇˇ 
   numChoice="3" ‡ˇˇÎ   {_DialogAlertLib} ˇˇÎ   {TALLMESSAGE},ˇˇÏ8   "clipboard now has: "+¶+listfiles(folder(""),"????KASX")ˇˇ-,   clipboard()=listfiles(folder(""),"????KASX") _∏ _∏ˇˇd
   numChoice="4" zˇˇÖ   {_DialogAlertLib} ˇˇÖ   {TALLMESSAGE},ˇˇÜ8   "clipboard now has: "+¶+listfiles(folder(""),"TEXT????")ˇˇ«,   clipboard()=listfiles(folder(""),"TEXT????")3 ˘   ˇˇ    commWanted[1,12] contains "code" 0§	ˇˇ5
   numChoice="1"ˇˇG$   clipboard()='folderpath(folder(""))'pˇˇ{   {_DialogAlertLib} ˇˇ{   {TALLMESSAGE},ˇˇ|0   "clipboard now has: "+¶+'folderpath(folder(""))' ≤¸ ≤b
ˇˇ∑
   numChoice="2"ˇˇ…&   clipboard()='listfiles(folder(""),"")'Ùˇˇˇ   {_DialogAlertLib}ˇˇˇ   {TALLMESSAGE},ˇˇ 	2   "clipboard now has: "+¶+'listfiles(folder(""),"")' <	¸ <	0ˇˇA	
   numChoice="3" W	ˇˇb	   {_DialogAlertLib}ˇˇb	   {TALLMESSAGE},ˇˇc	:   "clipboard now has: "+¶+'listfiles(folder(""),"????KASX")'ˇˇ¶	.   clipboard()='listfiles(folder(""),"????KASX")' ⁄	¸ ⁄	¸ˇˇﬂ	
   numChoice="4" ı	ˇˇ 
   {_DialogAlertLib} ˇˇ 
   {TALLMESSAGE},ˇˇ
:   "clipboard now has: "+¶+'listfiles(folder(""),"TEXT????")'ˇˇD
.   clipboard()='listfiles(folder(""),"TEXT????")'3 x
 Ä
å

//message "This Function is meant to get you information about the folders and path your files are in for Panorama"


global commList, commWanted, clipHoldComm, buttonChoice, numChoice

commList=""
commWanted=""
clipHoldComm=""
buttonChoice=""
numChoice=0

commList=¶+
    "1 - Copy Text of folderpath"
    +¶+¬+¬+¬+¬+¬+¬+
    "1 code -- folderpath(folder(""))"
    +¶+" "+¶+
    "2 - Copy list of All Files and Folders in this folder" 
    +¶+¬+¬+¬+¬+¬+¬+
    "2 code -- listfiles(folder(""),"")"
    +¶+" "+¶+
    "3 - Copy list of All Panorama files in this folder" 
    +¶+¬+¬+¬+¬+¬+¬+
    '3 code -- listfiles(folder(""),"????KASX")'
    +¶+" "+¶+
    "4 - Copy list of All Text files in this folder" 
    +¶+¬+¬+¬+¬+¬+¬+
    '4 code -- listfiles(folder(""),"TEXT????")'

/*

//NOTE: these quotation marks “” vs "" are called smart quotes
//you get them with opt+[ and opt+shift+[
//normally for superchoicedialogs, i would use curly brackets around title or caption
//but to have this be able to be written into new files from another macro, I had
//to use smart quotes

*/
superchoicedialog commList, commWanted, 
“Title="Get File/Folder/Path"
    Caption="1 - Copy ~~~~~~ gets you the data
        1 - Code ~~~~~~ gets you the formula"
    captionheight="2"
    buttons="Ok;Cancel"
    width="800"
    height="800"”
    

        clipHoldComm=commWanted
        numChoice=striptonum(clipHoldComm)[1,3]


if commWanted[1,12] notcontains "code"

    case numChoice="1"
        tallmessage "clipboard now has: "+¶+folderpath(folder(""))
        clipboard()=folderpath(folder(""))

    case numChoice="2"
        tallmessage "clipboard now has: "+¶+listfiles(folder(""),"")
        clipboard()=listfiles(folder(""),"")
    
    case numChoice="3"
        tallmessage "clipboard now has: "+¶+listfiles(folder(""),"????KASX")
        clipboard()=listfiles(folder(""),"????KASX")

    case numChoice="4"
        tallmessage "clipboard now has: "+¶+listfiles(folder(""),"TEXT????")
        clipboard()=listfiles(folder(""),"TEXT????")

    endcase
endif

if commWanted[1,12] contains "code"
    case numChoice="1"
    clipboard()='folderpath(folder(""))'
    tallmessage "clipboard now has: "+¶+'folderpath(folder(""))'

    case numChoice="2"
    clipboard()='listfiles(folder(""),"")'
    tallmessage "clipboard now has: "+¶+'listfiles(folder(""),"")'
    
    case numChoice="3"
        tallmessage "clipboard now has: "+¶+'listfiles(folder(""),"????KASX")'
        clipboard()='listfiles(folder(""),"????KASX")'

    case numChoice="4"
        tallmessage "clipboard now has: "+¶+'listfiles(folder(""),"TEXT????")'
        clipboard()='listfiles(folder(""),"TEXT????")'

    endcase
endif
    

  Ñ.DesignSheetExportImportÑÏˇ    ƒ  ˇˇ è    vdictionary, 
name, value, ImportExportChoicelist,
fileList,choiceMade,winChoice1,winChoice2,vOptions,
fieldNames,designExport,designFields


 Ä° ˇˇ™ *   "1 copyall | 2 move DB | 3 name&equations" ÷ 8ˇˇ€    val(clipboard())=2ˇˇÔ 9   vOptions=“caption="Choose file to export equations from"”ˇˇ)
   choiceMade=""ˇˇ7)   fileList=listfiles(folder(""),"????KASX") cˇˇt   {_DialogAlertLib} ˇˇt   {SUPERCHOICEDIALOG},ˇˇu	   fileList, ˇˇ~    choiceMade,ˇˇä	    vOptions   ïˇˇï   winChoice1=choiceMade ¨ˇˇΩ   {_DialogAlertLib} ˇˇΩ   {SUPERCHOICEDIALOG},ˇˇæ	   fileList, ˇˇ«    choiceMade,ˇˇ”/   
“caption="Choose file to export equations to"”   ˇˇ   winChoice2=choiceMade  ˇˇ!   (winChoice1)K 2ˇˇF   vdictionary=""‰ Y nˇˇë
   {_TextLib}ˇˇë   {SETDICTIONARYVALUE}, ˇˇí   vdictionary,ˇˇü
   «Field Name», ˇˇ≠
   «Equation»„ ƒ ◊
ˇˇ›   info("stopped")  Óˇˇı   (winChoice2)K ‰  / @ˇˇF
   "Equation"ˇˇ]2   «» = getdictionaryvalue(vdictionary, «Field Name»)„ ú Ø¿ˇˇµ   info("stopped")  ∆Ñ ∆^ˇˇÀ   val(clipboard())=1ˇˇﬁ?   vOptions=“caption="Choose file to copy Design Sheet info from"” ˇˇ
   choiceMade="" ˇˇ,)   fileList=listfiles(folder(""),"????KASX") Xˇˇi   {_DialogAlertLib} ˇˇi   {SUPERCHOICEDIALOG},ˇˇj	   fileList, ˇˇs    choiceMade,ˇˇ	    vOptions   äˇˇä   winChoice1=choiceMade  ¢ˇˇ©   (winChoice1)K ∫ˇˇŒ   vdictionary=""ˇˇﬁ
   fieldNames="" ˇˇÏ   designExport="" ˇˇ¸   designFields=""  ˇˇ   "Field Name"  ˇˇ)b   designFields=?(designFields≠"",designFields+¬+“"”+info("fieldname")+“"”,“"”+info("fieldname")+“"”)∞ ∂ˇˇº   info("stopped") :œˇˇ⁄
   designExport, ˇˇË   ¶,ˇˇÍ   "", ˇˇÓ   exportline()ˇˇ˚(   designExport=designFields+¶+designExport¿$ˇˇ,   "Design Sheet in clipboard."ˇˇI   clipboard()=designExport cÑ c\ˇˇh   val(clipboard())=3ˇˇ{   designExport="" ‰ ã ó úˇˇ¢   "Field Name"ˇˇ∞5   designExport=designExport+«Field Name»+¶+Equation+¶+¶ „ Ê Òûˇˇ˜   info("stopped") ¿ˇˇ   "Clipboard filled!" ˇˇ#   clipboard()=designExport2 =Ñ¿IˇˇQ   "Invalid Number Choice" 3 itglobal vdictionary, 
name, value, ImportExportChoicelist,
fileList,choiceMade,winChoice1,winChoice2,vOptions,
fieldNames,designExport,designFields


// Get the 
GetScrap "1 copyall | 2 move DB | 3 name&equations"

case val(clipboard())=2

vOptions=“caption="Choose file to export equations from"”
choiceMade=""
fileList=listfiles(folder(""),"????KASX")


superchoicedialog fileList, choiceMade, vOptions

winChoice1=choiceMade

superchoicedialog fileList, choiceMade,
“caption="Choose file to export equations to"”

winChoice2=choiceMade
window (winChoice1)
    opendesignsheet
    vdictionary=""
    firstrecord

        loop
            setdictionaryvalue vdictionary, «Field Name», «Equation»
            downrecord
        until info("stopped")

window (winChoice2)
    opendesignsheet
    firstrecord

        loop
            field «Equation»
            «» = getdictionaryvalue(vdictionary, «Field Name»)
            downrecord
        until info("stopped")

case val(clipboard())=1
vOptions=“caption="Choose file to copy Design Sheet info from"”
choiceMade=""
fileList=listfiles(folder(""),"????KASX")


superchoicedialog fileList, choice
___ ENDPROCEDURE .GetDBInfo ____________________________________________________

___ PROCEDURE .AutomaticFY _____________________________________________________

    
global dateHold, dateMath, intYear, 
thisFYear,lastFYear,nextFYear,intMonth,fileDate

fileDate=val(striptonum(info("databasename")))
nextFYear=""
thisFYear=""
lastFYear=""

//get the date
dateHold = datepattern(today(),"mm/yyyy")

//gets the current month and year
intMonth = val(dateHold[1,"/"][1,-2])
intYear = val(dateHold["/",-1][2,-1])

//assigns FY numbers for years

case val(intMonth)>6
    nextFYear=str(intYear-1976)
    thisFYear=str(intYear-1977)
    lastFYear=str(intYear-1978)

case val(intMonth)<7
    nextFYear=str(intYear-1977)
    thisFYear=str(intYear-1978)
    lastFYear=str(intYear-1979)

endcase

//checks if this is an older file and needs older FYs
if fileDate ≤ val(lastFYear) and fileDate > 0
    nextFYear=str(fileDate+1)
    thisFYear=str(fileDate)
    lastFYear=str(fileDate-1)
endif

//tallmessage str(nextFYear)+¬+str(thisFYear)+¬+str(lastFYear)


/*

///////~~~~~~~
Programmer Notes
~~~~~~~~~//////////
The danger of this procedure is that come July 1st of the year, it will automatically set
to open the newest files of a non-numbered Panorama file. And if those don't exist, you're 
gonna see errors. Also, a non numbered Panorama file that needs to call older files shouldn't
use this macro



To use these variables please note the following Panorama syntax rules:


filenames using variables:
    can just concatenate as a string
    
    ex:
        
    openfile str(variable)+"filename" 


field calls using variables:
    best to be only one variable and nothing else
    must be surrounded by ( )
    
    ex:
    
    field (VariableFieldName)
    
do your math and/or concatenation into the variable before calling it
    VariableFieldName=str(variable)+"fieldname"
 
field (str(variable)+"fieldname") will work but can cause errors
    
for assignments to that variable'd field 
    use «» for "current field/current cell" 
    
    ex: 
   
    «» = "10"
  
    
*/

___ ENDPROCEDURE .AutomaticFY __________________________________________________

___ PROCEDURE .Folders&FilesMacros _____________________________________________

//message "This Function is meant to get you information about the folders and path your files are in for Panorama"


global commList, commWanted, clipHoldComm, buttonChoice, numChoice

commList=""
commWanted=""
clipHoldComm=""
buttonChoice=""
numChoice=0

commList=¶+
    "1 - Copy Text of folderpath"
    +¶+¬+¬+¬+¬+¬+¬+
    "1 code -- folderpath(folder(""))"
    +¶+" "+¶+
    "2 - Copy list of All Files and Folders in this folder" 
    +¶+¬+¬+¬+¬+¬+¬+
    "2 code -- listfiles(folder(""),"")"
    +¶+" "+¶+
    "3 - Copy list of All Panorama files in this folder" 
    +¶+¬+¬+¬+¬+¬+¬+
    '3 code -- listfiles(folder(""),"????KASX")'
    +¶+" "+¶+
    "4 - Copy list of All Text files in this folder" 
    +¶+¬+¬+¬+¬+¬+¬+
    '4 code -- listfiles(folder(""),"TEXT????")'

/*

//NOTE: these quotation marks “” vs "" are called smart quotes
//you get them with opt+[ and opt+shift+[
//normally for superchoicedialogs, i would use curly brackets around title or caption
//but to have this be able to be written into new files from another macro, I had
//to use smart quotes

*/
superchoicedialog commList, commWanted, 
“Title="Get File/Folder/Path"
    Caption="1 - Copy ~~~~~~ gets you the data
        1 - Code ~~~~~~ gets you the formula"
    captionheight="2"
    buttons="Ok;Cancel"
    width="800"
    height="800"”
    

        clipHoldComm=commWanted
        numChoice=striptonum(clipHoldComm)[1,3]


if commWanted[1,12] notcontains "code"

    case numChoice="1"
        tallmessage "clipboard now has: "+¶+folderpath(folder(""))
        clipboard()=folderpath(folder(""))

    case numChoice="2"
        tallmessage "clipboard now has: "+¶+listfiles(folder(""),"")
        clipboard()=listfiles(folder(""),"")
    
    case numChoice="3"
        tallmessage "clipboard now has: "+¶+listfiles(folder(""),"????KASX")
        clipboard()=listfiles(folder(""),"????KASX")

    case numChoice="4"
        tallmessage "clipboard now has: "+¶+listfiles(folder(""),"TEXT????")
        clipboard()=listfiles(folder(""),"TEXT????")

    endcase
endif

if commWanted[1,12] contains "code"
    case numChoice="1"
    clipboard()='folderpath(folder(""))'
    tallmessage "clipboard now has: "+¶+'folderpath(folder(""))'

    case numChoice="2"
    clipboard()='listfiles(folder(""),"")'
    tallmessage "clipboard now has: "+¶+'listfiles(folder(""),"")'
    
    case numChoice="3"
        tallmessage "clipboard now has: "+¶+'listfiles(folder(""),"????KASX")'
        clipboard()='listfiles(folder(""),"????KASX")'

    case numChoice="4"
        tallmessage "clipboard now has: "+¶+'listfiles(folder(""),"TEXT????")'
        clipboard()='listfiles(folder(""),"TEXT????")'

    endcase
endif
    


___ ENDPROCEDURE .Folders&FilesMacros __________________________________________

___ PROCEDURE .DesignSheetExportImport _________________________________________
global vdictionary, 
name, value, ImportExportChoicelist,
fileList,choiceMade,winChoice1,winChoice2,vOptions,
fieldNames,designExport,designFields


// Get the 
GetScrap "1 copyall | 2 move DB | 3 name&equations"

case val(clipboard())=2

vOptions=“caption="Choose file to export equations from"”
choiceMade=""
fileList=listfiles(folder(""),"????KASX")


superchoicedialog fileList, choiceMade, vOptions

winChoice1=choiceMade

superchoicedialog fileList, choiceMade,
“caption="Choose file to export equations to"”

winChoice2=choiceMade
window (winChoice1)
    opendesignsheet
    vdictionary=""
    firstrecord

        loop
            setdictionaryvalue vdictionary, «Field Name», «Equation»
            downrecord
        until info("stopped")

window (winChoice2)
    opendesignsheet
    firstrecord

        loop
            field «Equation»
            «» = getdictionaryvalue(vdictionary, «Field Name»)
            downrecord
        until info("stopped")

case val(clipboard())=1
vOptions=“caption="Choose file to copy Design Sheet info from"”
choiceMade=""
fileList=listfiles(folder(""),"????KASX")


superchoicedialog fileList, choiceMade, vOptions

winChoice1=choiceMade


window (winChoice1)
    opendesignsheet
    vdictionary=""

fieldNames=""
designExport=""
designFields=""
field «Field Name»

loop
    designFields=?(designFields≠"",designFields+¬+“"”+info("fieldname")+“"”,“"”+info("fieldname")+“"”)
      ;displaydata designFields
    right
until info("stopped")



arraybuild designExport, ¶,"", exportline()
designExport=designFields+¶+designExport
message "Design Sheet in clipboard."
clipboard()=designExport

case val(clipboard())=3
designExport=""
firstrecord
loop
field «Field Name»

designExport=designExport+«Field Name»+¶+Equation+¶+¶
downrecord
until info("stopped")
message "Clipboard filled!"
clipboard()=designExport

defaultcase
message "Invalid Number Choice"
endcase




___ ENDPROCEDURE .DesignSheetExportImport ______________________________________

___ PROCEDURE .FileChecker _____________________________________________________
///____________________________________________________________________________________________________________________________________
///____________________________________________________________________________________________________________________________________
///________________________________This is the .FileChecker macro in GetMacros_________________________________________________________
///____________________________________________________________________________________________________________________________________
///____________________________________________________________________________________________________________________________________


local fileNeeded,folderArray,smallFolderArray,sizeCheck,
procList,sizeCheck,procNames,procDBs,mostRecentProc

///________________________EDITME_____________
//replace this with whatever file you're error checking
//----------------------//
fileNeeded="members"    //
//----------------------//


////_____Got the file, but it's not open?_______________
case info("files") notcontains fileNeeded and listfiles(folder(""),"????KASX") contains fileNeeded
openfile fileNeeded

///________Don't got the file?__________________
case listfiles(folder(""),"????KASX") notcontains fileNeeded


    procList=arraystrip(info("procedurestack"),¶)
    sizeCheck=arraysize(procList,¶)
        if sizeCheck>1
            procList=arrayrange(procList,2,sizeCheck,¶) //this is to exclude getting recursive info about this macro, especially while testing
        else
            procList=arraystrip(info("procedurestack"),¶)
        endif

    procNames=arraycolumn(procList,1,¶,¬)
    procDBs=arraycolumn(procList,2,¶,¬)
    mostRecentProc=array(procNames,1,¶) 
    folderArray=folderpath(folder(""))
    sizeCheck=arraysize(folderArray,":")
    smallFolderArray=arrayrange(folderArray,4,sizeCheck,":")

displaydata "Error:"
+¶+
"You are missing the '"+fileNeeded+
"' Panorama file in this folder 
and can't continue the '"+mostRecentProc+"' procedure without it. 
Please move a copy of '"+fileNeeded+
"' to the appropriate folder and try the procedure again"
+¶+¶+¶+
"folder you're currently running from is: "
+¶+
smallFolderArray
+¶+¶+¶+
"current Pan files in that folder are: "
+¶+
listfiles(folder(""),"????KASX")
+¶+¶+¶+
"Pressing 'Ok' will open the Finder to your current folder"
+¶+¶+
"Press 'Stop' will stop this procedure", “title="Missing File!!!!" captionwidth=900 size=17 height=500 width=800”
//___________________________
//note, the above are "smart quotes" option+[ and option+shift+[ 
//you can also use curley braces, but another program I run will break
//if this file has thos
//___________________________

revealinfinder folder(""),""
stop

///_______File is open, but not active?______
defaultcase
window fileNeeded

endcase

/*
Example:

You are missing the 'members' Panorama file in this folder 
and can't continue this procedure without it. Please move a copy of
'members' to the appropriate folder and try the procedure again


folder you're currently running from is: 
Desktop:Panorama:FY45 Panorama Projects:GetMacros:


current Pan files in that folder are: 
GetMacros
GetMacrosDL
GetMacros44


Pressing 'Ok' will open the Finder to your current folder

Press 'Stop' will stop this procedure
*/
___ ENDPROCEDURE .FileChecker __________________________________________________

___ PROCEDURE .GetErrorLog _____________________________________________________
///____________________________________________________________________________________________________________________________________
///____________________________________________________________________________________________________________________________________
///________________________________This is the .GetErrorLog macro in GetMacros_________________________________________________________
///____________________________________________________________________________________________________________________________________
///____________________________________________________________________________________________________________________________________
/*

This can be called to with a parameter of the 
info("error") statement to display the error, give
the user the opportunity to try again or continue 
despite the error.

Either way, it makes a log of the error and what procedures,
windows, files, and variables were in use. 

-Lunar 8-22

Syntax to call:

        if error
            call .GetErrorLog,info("error")
        endif

*/
///____________________________________________________________________________________________________________________________________
///____________________________________________________________________________________________________________________________________

fileglobal fileNeeded,folderArray,smallFolderArray,sizeCheck, procList, mostRecentProc, 
panFilesList,activeFiles,allvariables,procNames,procDBs,errorList, procText, procTextArray,
lineNum, procCount, usedvariables,printVariables,strippedText,getError,errorMsg,vDb,vProc,
activeWindows,DictNameToday

//this is to keep a log of the errors
permanent errorDictionary
    errorDictionary=errorDictionary
    if error
    errorDictionary=""
    endif

errorMsg=""

getError=str(parameter(1))
    if error //if there's no parameter given, or if info("error") is blank, then say "Unknown"
    getError="Unknown"
    endif

procList=arraystrip(info("procedurestack"),¶)
    if procList="" //sometimes, there's no info in the procedure stack, and this macro shoudl stop at this point
    message "Procedure Stack is Empty -L"
    stop
    endif
sizeCheck=arraysize(procList,¶)
    if sizeCheck>1
    procList=arrayrange(procList,2,sizeCheck,¶) //this is to exclude getting recursive info about this macro, especially while testing
    else
    procList=arraystrip(info("procedurestack"),¶)
    endif

procNames=arraycolumn(procList,1,¶,¬)
procDBs=arraycolumn(procList,2,¶,¬)
mostRecentProc=array(procNames,1,¶) 
folderArray=folderpath(folder(""))

///____________more readable filepath________________
;sizeCheck=arraysize(folderArray,":")
;smallFolderArray=arrayrange(folderArray,4,sizeCheck,":")
///__________________________________________________

panFilesList=listfiles(folder(""),"????KASX")
activeFiles=info("files")
activeWindows=info("windows")
allvariables="Global variables"+¶+¶+info("globalvariables")+¶+¶+"local variables"+¶+¶+info("localvariables")+¶+¶+"fileglobal variables"+¶+¶+info("filevariables")+¶+¶+"window variables"+¶+¶+info("windowvariables")

//____bugcheck_______
;displaydata procNames
;displaydata procDBs
//___________________

lineNum=1
procCount=arraysize(procNames,¶)
procTextArray=""

//_______build an array of the procedure text of all the last used procedures_____
/*
Notes: this kept breaking when I tried to use arrayfilters or arraybuilds, and apparently there's 
known issues with using local variables that throws an exception about the call() procedure
because its using a subroutine using EXECTUTE to do arrayfilters 

That being said, it kept breaking even after turning the variables global, so now it's a loop
*/
//________________________________________________________________________________

loop
    vDb=array(procDBs,lineNum,¶)
    vProc=array(procNames,lineNum,¶)
        getproceduretext vDb,vProc,procText
        procTextArray=vProc+¶+¶+procText+¶+procTextArray  //format: Name of Procedure, two returns, text from the proc, then the last thing added put on the end
    lineNum=lineNum+1
while lineNum<procCount


//_________________Make code into word array______________________//
/*
this function makes two arrays similar enough to compare to find out
which of the active variables was in the procedures that were recently called
gets rid of the most common characters in the text and replaces them with ; to give the other functions
a separator to work with

This was done because there's like 30 variables that are only Panorama's that also gets included in the INFO("xVARIABLE")
calls, and those aren't really useful for bugfixing procedures. 

//______________get out extra characters, but retrain spaces between words using a semicolon__________
note: there were also pipes '||' with curley brackets between them, but those break the SETPROCEDURETEXT statement, so I had to take them out of the "GetMacros" version
*/
strippedText=replacemultiple(procTextArray,
“.||?||!||,||;||:||-||_||(||)||[||]||"||'||+||¶||¬||/||=||*||" "|| ||”,
“;||;||;||;||;||;||;||;||;||;||;||;||;||;||;||;||;||;||;||;||;||;||”,
"||")

strippedText=stripchar(strippedText,"AZaz09;")
arraystrip strippedText,";"

//_____Change the format of the array into a ¶ one_______
strippedText=replace(strippedText,";",¶)
arraydeduplicate strippedText,strippedText,¶

//________get variablelist into a cleaner version_____
usedvariables=arraystrip(allvariables,¶)

//__________do a comparison for whats in both of them and put that in printVariables
arrayboth strippedText, usedvariables, ¶, printVariables

//_______Print Check_____
;displaydata printVariables


////____________Error Log____________________
/*
The short form of what gets displayed to the user specifically to be added to the 
errorDictionary. You can get this full log by calling 
DISPLAYDATA errorDictionary
*/
DictNameToday=superdatepattern(supernow(),"mm/dd/yy@", "hh:mm" )
setdictionaryvalue errorDictionary,DictNameToday, 
"Error: '"+mostRecentProc+"' created an error."
+¶+¶+
"ErrorCode: "+getError
+¶+¶+¶+
"folder in use: "
+¶+
folderArray
+¶+¶+¶+
"current Pan files in that folder are: "
+¶+
panFilesList
+¶+¶+¶+
"currently open files are: "
+¶+
activeFiles
+¶+¶+¶+
"currently open windows are: "
+¶+
activeWindows
+¶+¶+¶+
"last procedures run were"
+¶+
procList
+¶+¶+¶+
"text of non-design/form procedures:"
+¶+
procTextArray
+¶+¶+¶+
"variables used in last macros:"
+¶+
printVariables

///__________Future feature_____________
/*
Give the user instructions on what to do based on the error
*/
errorList="array of errors to give advice about"
//_______________________________________


////_____________ErrorDisplay for user________________________________________

displaydata "Error: '"+mostRecentProc+"' procedure/macro created an error."
+¶+¶+
"ErrorCode: "+getError
+¶+¶+
"Warning! If you click OK the macro will continue without fixing
the error. Proceed with caution, or click Stop instead."
+¶+¶+
"Click 'stop' to end the macro here and try what you were doing again"
+¶+¶+
"If the problem persists, use the 'COPY' button, paste this error in an e-mail 
and send it to: tech-support@fedcoseeds.com with a description of what happened



_______________________________________________________________________________"
+¶+¶+¶+
"---------------------------------------------------
THE FOLLOWING LINES ARE TO HELP WITH ERROR CHECKING
---------------------------------------------------"
+¶+¶+¶+
"folder in use: "
+¶+
folderArray
+¶+¶+¶+
"current Pan files in that folder are: "
+¶+
panFilesList
+¶+¶+¶+
"currently open files are: "
+¶+
activeFiles
+¶+¶+¶+
"currently open windows are: "
+¶+
activeWindows
+¶+¶+¶+
"last procedures run were"
+¶+
procList
+¶+¶+¶+
"text of non-design/form procedures:"
+¶+
procTextArray
+¶+¶+¶+
"variables used in last macros:"
+¶+
printVariables, 
“title="Error Capture Bot 3.0" 
captionwidth=900 
size=17 
height=500 
width=1000”



/*
//_________What this error looks like___________

Error: '.GetErrorLog' procedure/macro created an error.

ErrorCode: Unknown

Warning! If you click OK the macro will continue without fixing
the error. Proceed with caution, or click Stop instead.

Click 'stop' to end the macro here and try what you were doing again

If the problem persists, use the 'COPY' button, paste this error in an e-mail 
and send it to: tech-support@fedcoseeds.com with a description of what happened



_______________________________________________________________________________


---------------------------------------------------
THE FOLLOWING LINES ARE TO HELP WITH ERROR CHECKING
---------------------------------------------------


folder in use: 
LunarWindflower:Applications:Panorama:Panorama.app:Contents:MacOS:


current Pan files in that folder are: 
ProVUE Registration.pan


currently open files are: 
Untitled


currently open windows are: 
Untitled
Untitled:.GetErrorLog


last procedures run were
.GetErrorLog	Untitled		0


text of non-design/form procedures:
.GetErrorLog

The Text of the .GetErrorLog macro would be here, but I don't wanna double this file's
Length


variables used in last macros:
activeFiles
activeWindows
allvariables
DictNameToday
errorDictionary
errorList
errorMsg
fileNeeded
folderArray
getError
lineNum
mostRecentProc
panFilesList
printVariables
procCount
procDBs
procList
procNames
procText
procTextArray
sizeCheck
smallFolderArray
strippedText
usedvariables
vDb
vProc

*/

___ ENDPROCEDURE .GetErrorLog __________________________________________________

___ PROCEDURE .SeeErrorLog _____________________________________________________

    displaydata errorDictionary

___ ENDPROCEDURE .SeeErrorLog __________________________________________________

___ PROCEDURE .WaitXSeconds ____________________________________________________
local start, end,secondsToWait

secondsToWait=5
start=now()
end=start+secondsToWait
loop
    nop
while now()≤end

//_____test timer____
;message end - start

___ ENDPROCEDURE .WaitXSeconds _________________________________________________

___ PROCEDURE .GetDesignEquations ______________________________________________
global eqArray
arraybuild eqArray, ¶,"", ?(Equation≠"","~~"+«Field Name»+"~~"+¶+Equation+¶,"")
clipboard()=eqArray
___ ENDPROCEDURE .GetDesignEquations ___________________________________________

___ PROCEDURE .GetWindowSize ___________________________________________________
global newrec, rectangle1,RecTop,RecLeft,RecHeight,RecWidth,whichWin,winList2

winList2=info("windows")
superchoicedialog winList2,whichWin,“caption="Which Window do you want the size of?"”
window (whichWin)
rectangle1=info("windowrectangle")
RecTop=rtop(rectangle1)
RecLeft=rleft(rectangle1)
RecHeight=rheight(rectangle1)
RecWidth=rwidth(rectangle1)

newrec=str(RecTop)+","+str(RecLeft)+","+str(RecHeight)+","+str(RecWidth)
message "You now have the Top, Left, Height, and Width of the window. You can use the setwindow command with these numbers"
clipboard()=newrec
//top,left,height,width


___ ENDPROCEDURE .GetWindowSize ________________________________________________

___ PROCEDURE .fill_inv_unit_prices ____________________________________________
firstrecord
loop
    «Invoice Unit Price» = price
    call ".calc_total_inv_price"
    downrecord
until info("stopped")
___ ENDPROCEDURE .fill_inv_unit_prices _________________________________________

___ PROCEDURE .calc_order_unit_costs ___________________________________________
; This macro will calculate+fill the per-unit shipping cost of items in a given shipment.
; Assumes the selection matches a rec'd shipment.
; Can handle the following shipments/has following reqs:
;   - rec'd unit is one of: lb, M, MM, kg, g, oz
;   - price unit is one of: #, M, MM, kg, g, oz
;   - 10g ct needed for M/MM


local vLbs, vNumItems, vTotShipmentWeight, vTotPrice, vPricePerPound
local vSeedCt, vUnit, vSeedsPerPound, vUnitsPerPound, vPricePerUnit
local vTotPhytoCost, vPhytoPerPound, vPhytoPerUnit, vTotFeeCost, vFeePerPound, vFeePerUnit

vNumItems = 0
vTotShipmentWeight = float(0)

;TODO: warn if selection is big, in case of accidental selection? 

gettext "How much was shipping?", vTotPrice
gettext "How much was phyto?", vTotPhytoCost
gettext "How much were other fees?", vTotFeeCost	; note that grower bonus gets normalized across the shipment

; First loop gets the total weight in lbs
firstrecord
loop
    vNumItems = vNumItems + 1
    vLbs = 0
    vSeedCt = 0
    
    ; Validate that this macro can actually process this item
    if receiveunit notcontains "lb" AND receiveunit notcontains "M" AND receiveunit notcontains "g" AND receiveunit notcontains "oz"
        message "cannot process receiveunit of " + receiveunit + " for " + str(«cat #»)
        STOP
    endif
    if priceunit notcontains "#" AND priceunit notcontains "M" AND priceunit notcontains "g" AND priceunit notcontains "oz"
        message "cannot process priceunit of " + priceunit + " for " + str(«cat #»)
        STOP
    endif
    
    ; Core logic of this loop; find this item's weight in lbs
    case receiveunit="lb":
        vLbs = amtrec
    case receiveunit="M":
        vSeedCt = amtrec * 1000
        vLbs = vSeedCt / «10 g count» * 10 / 453.592
    case receiveunit="MM":
        vSeedCt = amtrec * 1000000
        vLbs = vSeedCt / «10 g count» * 10 / 453.592
    case receiveunit contains "kg":
        vLbs = amtrec * 2.2
    case receiveunit contains "g":
        vLbs = amtrec / 453.592
    case receiveunit contains "oz":
        vLbs = amtrec / 16
    endcase
    
    ; Verify we found a valid weight
    if vLbs = 0
        message "can't calculate weight in lbs for " + str(«cat #»)
        STOP
    endif
    
    vTotShipmentWeight = vTotShipmentWeight + vLbs
    
    downrecord
until info("stopped")


; Now that we have the total cost of shipping and the total lbs of the shipment,
;   calculate the cost per lb for shipping (and fees) for this order
vPricePerPound = val(vTotPrice) / vTotShipmentWeight
vPhytoPerPound = val(vTotPhytoCost) / vTotShipmentWeight
vFeePerPound = val(vTotFeeCost) / vTotShipmentWeight
;message "price per pound: " + str(vPricePerPound)
;drawobjects


; Need to loop through again to calculate + fill shipping unit costs by priceunit
firstrecord
loop
    vPricePerUnit = 0
    vSeedCt = 0
    vUnit = 0
    
    case receiveunit="M":
        vSeedCt = amtrec * 1000
    case receiveunit="MM":
        vSeedCt = amtrec * 1000000
    endcase
    
    case priceunit="M":
        vUnit = 1000
    case priceunit="MM":
        vUnit = 1000000
    endcase
    
    if vSeedCt > 0
        if «10 g count» = 0
            ; note this will only report first missing 10g ct, not all missing
            message "There is a missing 10g count (" + str(«cat #») + "); cannot calculate shipping."
            STOP
        endif
        vLbs = vSeedCt / «10 g count» * 10 / 453.592
        vSeedsPerPound = vSeedCt / vLbs
        vUnitsPerPound = round(vSeedsPerPound / vUnit, 0.00001)
        vPricePerUnit = round(vPricePerPound / vUnitsPerPound, 0.001)
        vPhytoPerUnit = round(vPhytoPerPound / vUnitsPerPound, 0.001)
        vFeePerUnit = round(vFeePerPound / vUnitsPerPound, 0.001)
    else ; Must be a weight-based unit
        case priceunit contains "#":
            vPricePerUnit = vPricePerPound
            vPhytoPerUnit = vPhytoPerPound
            vFeePerUnit = vFeePerPound
        case priceunit contains "kg":
            vPricePerUnit = vPricePerPound * 2.2
            vPhytoPerUnit = vPhytoPerPound * 2.2
            vFeePerUnit = vFeePerPound * 2.2
        case priceunit contains "g":
            vPricePerUnit = vPricePerPound / 453.592
            vPhytoPerUnit = vPhytoPerPound / 453.592
            vFeePerUnit = vFeePerPound / 453.592
        case priceunit contains "oz":
            vPricePerUnit = vPricePerPound / 16
            vPhytoPerUnit = vPhytoPerPound / 16
            vFeePerUnit = vFeePerPound / 16
        endcase
    endif
    
    ; Verify we found a valid unit price
    if vPricePerUnit = 0
        message "can't calculate unit price for " + str(«cat #»)
        STOP
    endif
    
    ;message str(vPricePerUnit)
    ;yesno "Fill shipping costs? " + str(vPricePerUnit)
    ;if clipboard() contains "Yes"
        «Invoice Shipping_handling» = vPricePerUnit
        «Invoice Phyto» = vPhytoPerUnit
        «Invoice Payment Fees» = vFeePerUnit
    ;endif
    
    call ".calc_total_inv_price"
    downrecord
until info("stopped")

drawobjects
___ ENDPROCEDURE .calc_order_unit_costs ________________________________________

___ PROCEDURE .fill_bonus ______________________________________________________
firstrecord
loop
    «Invoice Other» = «Invoice Unit Price» * .1
    «Invoice Notes» = "bonus"
    call ".calc_total_inv_price"
    downrecord
until info("stopped")
___ ENDPROCEDURE .fill_bonus ___________________________________________________

___ PROCEDURE .codeCheck _______________________________________________________

global vdictionary, 
name, value, ImportExportChoicelist,
fileList,choiceMade,winChoice1,winChoice2,vOptions,
fieldNames,designExport,designFields


    opendesignsheet
    vdictionary=""

fieldNames=""
designExport=""
designFields=""
field «Field Name»

loop
    designFields=?(designFields≠"",designFields+¬+“"”+info("fieldname")+“"”,“"”+info("fieldname")+“"”)
      ;displaydata designFields
    right
until info("stopped")



arraybuild designExport, ¶,"", exportline()
designExport=designFields+¶+designExport
message "Design Sheet in clipboard."
clipboard()=designExport






___ ENDPROCEDURE .codeCheck ____________________________________________________

___ PROCEDURE .goRoberta _______________________________________________________
goform "old roberta"
___ ENDPROCEDURE .goRoberta ____________________________________________________

___ PROCEDURE .goCatStats ______________________________________________________
openform "cat stats"
___ ENDPROCEDURE .goCatStats ___________________________________________________

___ PROCEDURE .GoOldCatStats ___________________________________________________
openform "old cat stats"
___ ENDPROCEDURE .GoOldCatStats ________________________________________________

___ PROCEDURE .fillhistory _____________________________________________________

___ ENDPROCEDURE .fillhistory __________________________________________________

___ PROCEDURE .drawobjects _____________________________________________________
drawobjects
___ ENDPROCEDURE .drawobjects __________________________________________________

___ PROCEDURE .longestLength ___________________________________________________
global strLength



select str(«»)≠""
strLength=length(str(«»))

loop
    strLength=strLength*2
    select length(str(«»))>strLength
    stoploopif info("empty")
    repeatloopif (not info("empty"))
while forever


select length(str(«»))=(strLength/2)+1
if info("empty")
    message "Max Length is " + str(strLength/2)
else 
    strLength=(strLength/2)+1
    
    
    loop 
        strLength=strLength+2
        select length(str(«»))>strLength
        stoploopif info("empty")
        repeatloopif (not info("empty"))
    while forever


    select length(str(«»))=strLength-1
        if (not info("empty"))
        message "Max Length is " + str(strLength-1)
        else 
        message "Max Length is " + str(strLength-2)
        endif
endif


___ ENDPROCEDURE .longestLength ________________________________________________

___ PROCEDURE .test ____________________________________________________________
displaydata servername("")
___ ENDPROCEDURE .test _________________________________________________________

___ PROCEDURE .gotoAmtRec ______________________________________________________
field amtrec
___ ENDPROCEDURE .gotoAmtRec ___________________________________________________

___ PROCEDURE .FIndNotGreater __________________________________________________
global notGreater, catAmt1
noshow
notGreater=""
firstrecord
catAmt1=0
loop
catAmt1=«cat #»
downrecord
if «cat #» < catAmt1
notGreater=notGreater+","+str(«cat #»)
endif

until info("stopped")
endnoshow
displaydata notGreater
___ ENDPROCEDURE .FIndNotGreater _______________________________________________

___ PROCEDURE .testTab _________________________________________________________

___ ENDPROCEDURE .testTab ______________________________________________________

___ PROCEDURE .DeleteThis ______________________________________________________

___ ENDPROCEDURE .DeleteThis ___________________________________________________
