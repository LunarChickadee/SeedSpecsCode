used this with a keydown, but it doesn't work.


local KeyStroke,fName
KeyStroke=info("trigger")[5,-1]
fName=""
loop
key info("modifiers"),KeyStroke 
loop
nop
until 100
fName=fName+¶+info("fieldname")
until 20

clipboard()=fName


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

