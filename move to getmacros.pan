local vRemove, keyArray
vRemove=""
yesno "Are you in a seleciton that you want to edit?"
if clipboard()="No"
findselectdialog
stop
else
keyArray=""
arrayselectedbuild keyArray,", ","",key
keyArray=replace(keyArray,array(keyArray,1,","),", "+array(keyArray,1,","))
keyArray=arraydeduplicate(keyArray,", ")
keyArray=arraystrip(keyArray,", ")
keyArray=replace(keyArray, ", ",¶) 
keyArray=strip(keyArray)

;displaydata keyArray
superchoicedialog keyArray, vRemove, {
caption="Which part do you want to remove?"
}
firstrecord
loop
key=replace(key,", "+vRemove,"")
if str(«key»)[-1,-1] contains ","
    key=str(«key»)[1,-2]
endif
downrecord
until info("stopped")
endif
