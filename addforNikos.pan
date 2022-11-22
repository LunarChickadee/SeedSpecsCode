///This is called "update Seedspecs Delinked"

;this file needs to be in the same folder as SEEDSPECS for the macro to work.

local file_names, folder_name, SeedSpecFile
global delinkedWin, linkedWin

delinkedWin=""
linkedWin=""

delinkedWin=info("windowname")

folder_name=dbinfo("folder","")

file_names=listfiles(folder_name,"")

SeedSpecFile=array(file_names,arraysearch(file_names,"SEEDSPECS*10_*",1,¶),¶)

if SeedSpecFile contains ".pan" and info("files") notcontains "SEEDSPECS 10_11_22"
    openanything "",SeedSpecFile
    call "update Seedspecs delinked"
endif

    linkedWin=array(info("windows"),arraysearch(info("files"),"*10_11_22", 1, ¶),¶)
    window linkedWin
    saveacopyas "SEEDSPECS TEMP"
    closefile
    window delinkedWin
         NoYes "Do you want to replace the data in 'SEEDSPECS delink' with the data in 'SEEDSPECS 10_11_22'?"
        if clipboard()="Yes"
        openfile "&&SEEDSPECS TEMP"
        filetrash "","SEEDSPECS TEMP.pan"
        endif

if SeedSpecFile notcontains ".pan"
   openfile SeedsSpecFile
   save
   closefile
   NoYes "Do you want to replace the data in 'SEEDSPECS delink' with the data in 'SEEDSPECS 10_11_22'?"

    if clipboard()="Yes"
    openfile "&&SEEDSPECS 10_11_22"
    endif

endif