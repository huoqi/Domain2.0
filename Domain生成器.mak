# Microsoft Developer Studio Generated NMAKE File, Based on Domain生成器.dsp
!IF $(CFG)" == "
CFG=Domain生成器 - Win32 Debug
!MESSAGE No configuration specified. Defaulting to Domain生成器 - Win32 Debug.
!ENDIF 

!IF "$(CFG)" != "Domain生成器 - Win32 Release" && "$(CFG)" != "Domain生成器 - Win32 Debug" && "$(CFG)" != "Domain生成器 - Win32 Release a"
!MESSAGE 指定的配置 "$(CFG)" 无效.
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "Domain生成器.mak" CFG="Domain生成器 - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "Domain生成器 - Win32 Release" (based on "Win32 (x86) Application")
!MESSAGE "Domain生成器 - Win32 Debug" (based on "Win32 (x86) Application")
!MESSAGE "Domain生成器 - Win32 Release a" (based on "Win32 (x86) Application")
!MESSAGE 
!ERROR An invalid configuration is specified.
!ENDIF 

!IF $(OS)" == "Windows_NT
NULL=
!ELSE 
NULL=nul
!ENDIF 

!IF  "$(CFG)" == "Domain生成器 - Win32 Release"

OUTDIR=.\Release
INTDIR=.\Release
# 开始自定义宏
OutDir=.\Release
# 结束自定义宏

ALL : "$(OUTDIR)\Domain生成器.exe"


CLEAN :
	-@erase "$(INTDIR)\Domain生成器.obj"
	-@erase "$(INTDIR)\Domain生成器.pch"
	-@erase "$(INTDIR)\Domain生成器.res"
	-@erase "$(INTDIR)\Domain生成器Dlg.obj"
	-@erase "$(INTDIR)\StdAfx.obj"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(OUTDIR)\Domain生成器.exe"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /MT /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_MBCS" /Fp"$(INTDIR)\Domain生成器.pch" /Yu"stdafx.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 

.c{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.c{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

MTL=midl.exe
MTL_PROJ=/nologo /D "NDEBUG" /mktyplib203 /win32 
RSC=rc.exe
RSC_PROJ=/l 0x804 /fo"$(INTDIR)\Domain生成器.res" /d "NDEBUG" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\Domain生成器.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=/nologo /subsystem:windows /incremental:no /pdb:"$(OUTDIR)\Domain生成器.pdb" /machine:I386 /out:"$(OUTDIR)\Domain生成器.exe" 
LINK32_OBJS= \
	"$(INTDIR)\Domain生成器.obj" \
	"$(INTDIR)\Domain生成器Dlg.obj" \
	"$(INTDIR)\StdAfx.obj" \
	"$(INTDIR)\Domain生成器.res"

"$(OUTDIR)\Domain生成器.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "Domain生成器 - Win32 Debug"

OUTDIR=.\Debug
INTDIR=.\Debug
# 开始自定义宏
OutDir=.\Debug
# 结束自定义宏

ALL : "$(OUTDIR)\Domain生成器.exe" "$(OUTDIR)\Domain生成器.bsc"


CLEAN :
	-@erase "$(INTDIR)\Domain生成器.obj"
	-@erase "$(INTDIR)\Domain生成器.pch"
	-@erase "$(INTDIR)\Domain生成器.res"
	-@erase "$(INTDIR)\Domain生成器.sbr"
	-@erase "$(INTDIR)\Domain生成器Dlg.obj"
	-@erase "$(INTDIR)\Domain生成器Dlg.sbr"
	-@erase "$(INTDIR)\StdAfx.obj"
	-@erase "$(INTDIR)\StdAfx.sbr"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(INTDIR)\vc60.pdb"
	-@erase "$(OUTDIR)\Domain生成器.bsc"
	-@erase "$(OUTDIR)\Domain生成器.exe"
	-@erase "$(OUTDIR)\Domain生成器.ilk"
	-@erase "$(OUTDIR)\Domain生成器.pdb"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /MTd /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_MBCS" /FR"$(INTDIR)\\" /Fp"$(INTDIR)\Domain生成器.pch" /Yu"stdafx.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /GZ /c 

.c{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.c{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

MTL=midl.exe
MTL_PROJ=/nologo /D "_DEBUG" /mktyplib203 /win32 
RSC=rc.exe
RSC_PROJ=/l 0x804 /fo"$(INTDIR)\Domain生成器.res" /d "_DEBUG" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\Domain生成器.bsc" 
BSC32_SBRS= \
	"$(INTDIR)\Domain生成器.sbr" \
	"$(INTDIR)\Domain生成器Dlg.sbr" \
	"$(INTDIR)\StdAfx.sbr"

"$(OUTDIR)\Domain生成器.bsc" : "$(OUTDIR)" $(BSC32_SBRS)
    $(BSC32) @<<
  $(BSC32_FLAGS) $(BSC32_SBRS)
<<

LINK32=link.exe
LINK32_FLAGS=/nologo /subsystem:windows /incremental:yes /pdb:"$(OUTDIR)\Domain生成器.pdb" /debug /machine:I386 /out:"$(OUTDIR)\Domain生成器.exe" /pdbtype:sept 
LINK32_OBJS= \
	"$(INTDIR)\Domain生成器.obj" \
	"$(INTDIR)\Domain生成器Dlg.obj" \
	"$(INTDIR)\StdAfx.obj" \
	"$(INTDIR)\Domain生成器.res"

"$(OUTDIR)\Domain生成器.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "Domain生成器 - Win32 Release a"

OUTDIR=.\Domain生成器___Win32_Release_a
INTDIR=.\Domain生成器___Win32_Release_a
# 开始自定义宏
OutDir=.\Domain生成器___Win32_Release_a
# 结束自定义宏

ALL : "$(OUTDIR)\Domain生成器.exe"


CLEAN :
	-@erase "$(INTDIR)\Domain生成器.obj"
	-@erase "$(INTDIR)\Domain生成器.pch"
	-@erase "$(INTDIR)\Domain生成器.res"
	-@erase "$(INTDIR)\Domain生成器Dlg.obj"
	-@erase "$(INTDIR)\StdAfx.obj"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(OUTDIR)\Domain生成器.exe"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /MT /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_MBCS" /Fp"$(INTDIR)\Domain生成器.pch" /Yu"stdafx.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 

.c{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.c{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

MTL=midl.exe
MTL_PROJ=/nologo /D "NDEBUG" /mktyplib203 /win32 
RSC=rc.exe
RSC_PROJ=/l 0x804 /fo"$(INTDIR)\Domain生成器.res" /d "NDEBUG" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\Domain生成器.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=/nologo /subsystem:windows /incremental:no /pdb:"$(OUTDIR)\Domain生成器.pdb" /machine:I386 /out:"$(OUTDIR)\Domain生成器.exe" 
LINK32_OBJS= \
	"$(INTDIR)\Domain生成器.obj" \
	"$(INTDIR)\Domain生成器.res" \
	"$(INTDIR)\Domain生成器Dlg.obj" \
	"$(INTDIR)\StdAfx.obj"

"$(OUTDIR)\Domain生成器.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ENDIF 


!IF "$(NO_EXTERNAL_DEPS)" != "1"
!IF EXISTS("Domain生成器.dep")
!INCLUDE "Domain生成器.dep"
!ELSE 
!MESSAGE Warning: cannot find "Domain生成器.dep"
!ENDIF 
!ENDIF 


!IF "$(CFG)" == "Domain生成器 - Win32 Release" || "$(CFG)" == "Domain生成器 - Win32 Debug" || "$(CFG)" == "Domain生成器 - Win32 Release a"
SOURCE=".\Domain生成器.cpp"

!IF  "$(CFG)" == "Domain生成器 - Win32 Release"


"$(INTDIR)\Domain生成器.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Domain生成器.pch"


!ELSEIF  "$(CFG)" == "Domain生成器 - Win32 Debug"


"$(INTDIR)\Domain生成器.obj"	"$(INTDIR)\Domain生成器.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Domain生成器.pch"


!ELSEIF  "$(CFG)" == "Domain生成器 - Win32 Release a"


"$(INTDIR)\Domain生成器.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Domain生成器.pch"


!ENDIF 

SOURCE=".\Domain生成器.rc"

"$(INTDIR)\Domain生成器.res" : $(SOURCE) "$(INTDIR)"
	$(RSC) $(RSC_PROJ) $(SOURCE)


SOURCE=".\Domain生成器Dlg.cpp"

!IF  "$(CFG)" == "Domain生成器 - Win32 Release"


"$(INTDIR)\Domain生成器Dlg.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Domain生成器.pch"


!ELSEIF  "$(CFG)" == "Domain生成器 - Win32 Debug"


"$(INTDIR)\Domain生成器Dlg.obj"	"$(INTDIR)\Domain生成器Dlg.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Domain生成器.pch"


!ELSEIF  "$(CFG)" == "Domain生成器 - Win32 Release a"


"$(INTDIR)\Domain生成器Dlg.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Domain生成器.pch"


!ENDIF 

SOURCE=.\StdAfx.cpp

!IF  "$(CFG)" == "Domain生成器 - Win32 Release"

CPP_SWITCHES=/nologo /MT /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_MBCS" /Fp"$(INTDIR)\Domain生成器.pch" /Yc"stdafx.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 

"$(INTDIR)\StdAfx.obj"	"$(INTDIR)\Domain生成器.pch" : $(SOURCE) "$(INTDIR)"
	$(CPP) @<<
  $(CPP_SWITCHES) $(SOURCE)
<<


!ELSEIF  "$(CFG)" == "Domain生成器 - Win32 Debug"

CPP_SWITCHES=/nologo /MTd /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_MBCS" /FR"$(INTDIR)\\" /Fp"$(INTDIR)\Domain生成器.pch" /Yc"stdafx.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /GZ /c 

"$(INTDIR)\StdAfx.obj"	"$(INTDIR)\StdAfx.sbr"	"$(INTDIR)\Domain生成器.pch" : $(SOURCE) "$(INTDIR)"
	$(CPP) @<<
  $(CPP_SWITCHES) $(SOURCE)
<<


!ELSEIF  "$(CFG)" == "Domain生成器 - Win32 Release a"

CPP_SWITCHES=/nologo /MT /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_MBCS" /Fp"$(INTDIR)\Domain生成器.pch" /Yc"stdafx.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 

"$(INTDIR)\StdAfx.obj"	"$(INTDIR)\Domain生成器.pch" : $(SOURCE) "$(INTDIR)"
	$(CPP) @<<
  $(CPP_SWITCHES) $(SOURCE)
<<


!ENDIF 


!ENDIF 

