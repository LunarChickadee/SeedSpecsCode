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

