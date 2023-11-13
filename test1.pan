global vendor_PO_address

vendor_PO_address=""

find «Farm» contains Grower
    if (not info("found"))
        find «Contact Name» contains Grower
            case (not info("found"))
                message "Error, could not find "+Grower+" in the vendor database. Check for misspellings!"
                    stop
             endcase
     endif
   
vendor_PO_address=?(«Contact Name»≠"", «Contact Name»+¶,"")+?(«Farm»≠"", «Farm»+¶,"")+?(«Street Address»≠"", «Sreet Address»+¶,"")+?(«City-State-Zip»≠"", «City-State-Zip»+¶,"")

showvariables vendor_PO_address

=sum(query(NC!$C$9:MATCH("NC Total",A9:A,10)-1),"select G where C=.02")