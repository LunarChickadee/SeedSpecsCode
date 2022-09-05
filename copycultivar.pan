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

