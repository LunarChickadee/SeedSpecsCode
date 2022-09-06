___ PROCEDURE copy cultivar/ç __________________________________________________
local recordarray
recordarray = ""
arraylinebuild recordarray,"^","",(«preferred supplier»+"^"+str(«cat #»)+"^"+latin+"^"+common+"^"+«gmo test»+"^"+«seed color»+"^"+str(temp)+"^"+str(«1st»)+"^"+str(«2nd»)
                                                +"^"+spec+"^"+subs+"^"+pass+"^"+G+"^"+altlatin+"^"+nikosnotes+"^"+picture+"^"+str(«10 g count»)+"^"+«field notes»+"^"+type+"^"+str(«catalog_sequence»)
                                                +"^"+«indigenous royalties»+"^"+«breeder royalties»+"^"+ossi+"^"+pvp+"^"+str(«year of introduction»))

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
«catalog_sequence» = val(array(recordarray,20,"^"))
«indigenous royalties» = array(recordarray,21,"^")
«breeder royalties» = array(recordarray,22,"^")
ossi = array(recordarray,23,"^")
pvp = array(recordarray,24,"^")
«year of introduction» = val(array(recordarray,25,"^"))
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
recordarray = ""
arraylinebuild recordarray,"^","",(«preferred supplier»+"^"+str(«cat #»)+"^"+latin+"^"+common+"^"+«gmo test»+"^"+«seed color»+"^"+str(temp)+"^"+str(«1st»)+"^"+str(«2nd»)
                                                +"^"+spec+"^"+subs+"^"+pass+"^"+G+"^"+altlatin+"^"+nikosnotes+"^"+picture+"^"+str(«10 g count»)+"^"+«field notes»+"^"+type)

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
field «daterec»
sortupwithin
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
selectall
GetScrap "What's the item#"

Synchronize

field «cat #»
sortup
Find «cat #»=val(clipboard())

Field lot
drawobjects
If  info("Found") 
stop
else
Message "How about a real item number?"
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
if  info("FormName") ="Quality"
Field «cat #»
endif
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
receiver=vwho
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
GoForm "roberta"
___ ENDPROCEDURE .windowR ______________________________________________________

___ PROCEDURE .windowN _________________________________________________________
GoForm "nikos"
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
gettext "What is the % Germ?",vGerm
gettext "What is the % Dead?",vDead
gettext "What is the % Abnormal?",vAbnormal
gettext "What is the % Hardseed?",vHardseed
gettext "What is the % Dormant?",vDormant
gettext "What is the % Viable?",vViable

arraylinebuild vAnalysis,"/","",str(vReportDate)+" "+(str(vGerm))+"% Germ"+"/"+(str(vDead))+"% Dead"+"/"+(str(vAbnormal))+"% Abnormal"+"/"+(str(vHardseed))+"% Hardseed"+"/"+(str(vDormant))+"% Dormant"+"/"+(str(vViable))+"% Viable"

AnalysisReport=vAnalysis+?(vAnalysis="","",¶+vAnalysisHistory)
___ ENDPROCEDURE .AnalysisReport _______________________________________________

___ PROCEDURE mathtest _________________________________________________________
v1stCount=sum(«1stCountΩ»)/4
vFinalCount=sum(«FinalCountΩ»)/4
result=?(«FinalCount4»≠0,(v1stCount+vFinalCount)/2,v1stCount)
labelgerm=result-2
;.checkstandard

___ ENDPROCEDURE mathtest ______________________________________________________

___ PROCEDURE Macs _____________________________________________________________
local Dictionary1, ProcedureList
//this saves your procedures into a variable
exportallprocedures "", Dictionary1
clipboard()=Dictionary1

message "Macros are saved to your clipboard!"
___ ENDPROCEDURE Macs __________________________________________________________
