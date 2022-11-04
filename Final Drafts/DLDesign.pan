~~lot~~
.tab2

~~comline~~
.tab2

~~OGcert~~
.tab2

~~origin~~
.cattab

~~supplier~~
.code

~~dateord~~
.tab2

~~amtrec~~
«daterec»=today()
.who

~~comments~~
.tab2

~~pass~~
.tab2

~~1stCount1~~
v1stCount=(«1stCount1» + «1stCount2» + «1stCount3» + «1stCount4»)/4
vFinalCount=(«FinalCount1» + «FinalCount2» + «FinalCount3» + «FinalCount4»)/4
result=?(«FinalCount4»≠0,(v1stCount+vFinalCount)/2,v1stCount)
labelgerm=result-2
.checkstandard


~~1stCount2~~
v1stCount=(«1stCount1» + «1stCount2» + «1stCount3» + «1stCount4»)/4
vFinalCount=(«FinalCount1» + «FinalCount2» + «FinalCount3» + «FinalCount4»)/4
result=?(«FinalCount4»≠0,(v1stCount+vFinalCount)/2,v1stCount)
labelgerm=result-2
.checkstandard


~~1stCount3~~
v1stCount=(«1stCount1» + «1stCount2» + «1stCount3» + «1stCount4»)/4
vFinalCount=(«FinalCount1» + «FinalCount2» + «FinalCount3» + «FinalCount4»)/4
result=?(«FinalCount4»≠0,(v1stCount+vFinalCount)/2,v1stCount)
labelgerm=result-2
.checkstandard


~~1stCount4~~
v1stCount=(«1stCount1» + «1stCount2» + «1stCount3» + «1stCount4»)/4
vFinalCount=(«FinalCount1» + «FinalCount2» + «FinalCount3» + «FinalCount4»)/4
result=?(«FinalCount4»≠0,(v1stCount+vFinalCount)/2,v1stCount)
labelgerm=result-2
.checkstandard


~~FinalCount1~~
v1stCount=(«1stCount1» + «1stCount2» + «1stCount3» + «1stCount4»)/4
vFinalCount=(«FinalCount1» + «FinalCount2» + «FinalCount3» + «FinalCount4»)/4
result=?(«FinalCount4»≠0,(v1stCount+vFinalCount)/2,v1stCount)
labelgerm=result-2
.checkstandard


~~FinalCount2~~
v1stCount=(«1stCount1» + «1stCount2» + «1stCount3» + «1stCount4»)/4
vFinalCount=(«FinalCount1» + «FinalCount2» + «FinalCount3» + «FinalCount4»)/4
result=?(«FinalCount4»≠0,(v1stCount+vFinalCount)/2,v1stCount)
labelgerm=result-2
.checkstandard


~~FinalCount3~~
v1stCount=(«1stCount1» + «1stCount2» + «1stCount3» + «1stCount4»)/4
vFinalCount=(«FinalCount1» + «FinalCount2» + «FinalCount3» + «FinalCount4»)/4
result=?(«FinalCount4»≠0,(v1stCount+vFinalCount)/2,v1stCount)
labelgerm=result-2
.checkstandard


~~FinalCount4~~
v1stCount=(«1stCount1» + «1stCount2» + «1stCount3» + «1stCount4»)/4
vFinalCount=(«FinalCount1» + «FinalCount2» + «FinalCount3» + «FinalCount4»)/4
result=?(«FinalCount4»≠0,(v1stCount+vFinalCount)/2,v1stCount)
labelgerm=result-2
.checkstandard


~~result~~
labelgerm=result-2
.checkstandard

~~germ_date~~
.update_germhistory

~~Invoice Unit Price~~
.same_fees

~~Invoice Shipping_handling~~
.calc_total_inv_price

~~Invoice Cleaning~~
.calc_total_inv_price

~~Invoice Phyto~~
.calc_total_inv_price

~~Invoice Payment Fees~~
.calc_total_inv_price

~~Invoice Other~~
.calc_total_inv_price

~~Invoice Notes~~
.calc_total_inv_price

~~Invoice Total COG~~
.calc_total_inv_price

~~catalog status~~
.date_changed

~~indigenous royalties~~
.date_changed

~~Black royalties~~
.date_changed

~~breeder royalties~~
.date_changed

~~ossi~~
.date_changed

~~pvp~~
.date_changed

~~breeder grown~~
.date_changed

~~LotNumCheck~~
lot
