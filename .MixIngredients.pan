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



        