# Microsoft Developer Studio Generated NMAKE File, Based on Domain������.dsp
!IF $(CFG)" == "
CFG=Domain������ - Win32 Debug
!MESSAGE No configuration specified. Defaulting to Domain������ - Win32 Debug.
!ENDIF 

!IF "$(CFG)" != "Domain������ - Win32 Release" && "$(CFG)" != "Domain������ - Win32 Debug" && "$(CFG)" != "Domain������ - Win32 Release a"
!MESSAGE ָ�������� "$(CFG)" ��Ч.
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "Domain������.mak" CFG="Domain������ - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "Domain������ - Win32 Release" (based on "Win32 (x86) Application")
!MESSAGE "Domain������ - Win32 Debug" (based on "Win32 (x86) Application")
!MESSAGE "Domain������ - Win32 Release a" (based on "Win32 (x86) Application")
!MESSAGE 
!ERROR An invalid configuration is specified.
!ENDIF 

!IF $(OS)" == "Windows_NT
NULL=
!ELSE 
NULL=nul
!ENDIF 

!IF  "$(CFG)" == "Domain������ - Win32 Release"

OUTDIR=.\Release
INTDIR=.\Release
# ��ʼ�Զ����
OutDir=.\Release
# �����Զ����

ALL : "$(OUTDIR)\Domain������.exe"


CLEAN :
	-@erase "$(INTDIR)\Domain������.obj"
	-@erase "$(INTDIR)\Domain������.pch"
	-@erase "$(INTDIR)\Domain������.res"
	-@erase "$(INTDIR)\Domain������Dlg.obj"
	-@erase "$(INTDIR)\StdAfx.obj"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(OUTDIR)\Domain������.exe"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /MT /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_MBCS" /Fp"$(INTDIR)\Domain������.pch" /Yu"stdafx.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 

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
RSC_PROJ=/l 0x804 /fo"$(INTDIR)\Domain������.res" /d "NDEBUG" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\Domain������.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=/nologo /subsystem:windows /incremental:no /pdb:"$(OUTDIR)\Domain������.pdb" /machine:I386 /out:"$(OUTDIR)\Domain������.exe" 
LINK32_OBJS= \
	"$(INTDIR)\Domain������.obj" \
	"$(INTDIR)\Domain������Dlg.obj" \
	"$(INTDIR)\StdAfx.obj" \
	"$(INTDIR)\Domain������.res"

"$(OUTDIR)\Domain������.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "Domain������ - Win32 Debug"

OUTDIR=.\Debug
INTDIR=.\Debug
# ��ʼ�Զ����
OutDir=.\Debug
# �����Զ����

ALL : "$(OUTDIR)\Domain������.exe" "$(OUTDIR)\Domain������.bsc"


CLEAN :
	-@erase "$(INTDIR)\Domain������.obj"
	-@erase "$(INTDIR)\Domain������.pch"
	-@erase "$(INTDIR)\Domain������.res"
	-@erase "$(INTDIR)\Domain������.sbr"
	-@erase "$(INTDIR)\Domain������Dlg.obj"
	-@erase "$(INTDIR)\Domain������Dlg.sbr"
	-@erase "$(INTDIR)\StdAfx.obj"
	-@erase "$(INTDIR)\StdAfx.sbr"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(INTDIR)\vc60.pdb"
	-@erase "$(OUTDIR)\Domain������.bsc"
	-@erase "$(OUTDIR)\Domain������.exe"
	-@erase "$(OUTDIR)\Domain������.ilk"
	-@erase "$(OUTDIR)\Domain������.pdb"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /MTd /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_MBCS" /FR"$(INTDIR)\\" /Fp"$(INTDIR)\Domain������.pch" /Yu"stdafx.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /GZ /c 

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
RSC_PROJ=/l 0x804 /fo"$(INTDIR)\Domain������.res" /d "_DEBUG" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\Domain������.bsc" 
BSC32_SBRS= \
	"$(INTDIR)\Domain������.sbr" \
	"$(INTDIR)\Domain������Dlg.sbr" \
	"$(INTDIR)\StdAfx.sbr"

"$(OUTDIR)\Domain������.bsc" : "$(OUTDIR)" $(BSC32_SBRS)
    $(BSC32) @<<
  $(BSC32_FLAGS) $(BSC32_SBRS)
<<

LINK32=link.exe
LINK32_FLAGS=/nologo /subsystem:windows /incremental:yes /pdb:"$(OUTDIR)\Domain������.pdb" /debug /machine:I386 /out:"$(OUTDIR)\Domain������.exe" /pdbtype:sept 
LINK32_OBJS= \
	"$(INTDIR)\Domain������.obj" \
	"$(INTDIR)\Domain������Dlg.obj" \
	"$(INTDIR)\StdAfx.obj" \
	"$(INTDIR)\Domain������.res"

"$(OUTDIR)\Domain������.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "Domain������ - Win32 Release a"

OUTDIR=.\Domain������___Win32_Release_a
INTDIR=.\Domain������___Win32_Release_a
# ��ʼ�Զ����
OutDir=.\Domain������___Win32_Release_a
# �����Զ����

ALL : "$(OUTDIR)\Domain������.exe"


CLEAN :
	-@erase "$(INTDIR)\Domain������.obj"
	-@erase "$(INTDIR)\Domain������.pch"
	-@erase "$(INTDIR)\Domain������.res"
	-@erase "$(INTDIR)\Domain������Dlg.obj"
	-@erase "$(INTDIR)\StdAfx.obj"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(OUTDIR)\Domain������.exe"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /MT /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_MBCS" /Fp"$(INTDIR)\Domain������.pch" /Yu"stdafx.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 

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
RSC_PROJ=/l 0x804 /fo"$(INTDIR)\Domain������.res" /d "NDEBUG" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\Domain������.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=/nologo /subsystem:windows /incremental:no /pdb:"$(OUTDIR)\Domain������.pdb" /machine:I386 /out:"$(OUTDIR)\Domain������.exe" 
LINK32_OBJS= \
	"$(INTDIR)\Domain������.obj" \
	"$(INTDIR)\Domain������.res" \
	"$(INTDIR)\Domain������Dlg.obj" \
	"$(INTDIR)\StdAfx.obj"

"$(OUTDIR)\Domain������.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ENDIF 


!IF "$(NO_EXTERNAL_DEPS)" != "1"
!IF EXISTS("Domain������.dep")
!INCLUDE "Domain������.dep"
!ELSE 
!MESSAGE Warning: cannot find "Domain������.dep"
!ENDIF 
!ENDIF 


!IF "$(CFG)" == "Domain������ - Win32 Release" || "$(CFG)" == "Domain������ - Win32 Debug" || "$(CFG)" == "Domain������ - Win32 Release a"
SOURCE=".\Domain������.cpp"

!IF  "$(CFG)" == "Domain������ - Win32 Release"


"$(INTDIR)\Domain������.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Domain������.pch"


!ELSEIF  "$(CFG)" == "Domain������ - Win32 Debug"


"$(INTDIR)\Domain������.obj"	"$(INTDIR)\Domain������.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Domain������.pch"


!ELSEIF  "$(CFG)" == "Domain������ - Win32 Release a"


"$(INTDIR)\Domain������.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Domain������.pch"


!ENDIF 

SOURCE=".\Domain������.rc"

"$(INTDIR)\Domain������.res" : $(SOURCE) "$(INTDIR)"
	$(RSC) $(RSC_PROJ) $(SOURCE)


SOURCE=".\Domain������Dlg.cpp"

!IF  "$(CFG)" == "Domain������ - Win32 Release"


"$(INTDIR)\Domain������Dlg.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Domain������.pch"


!ELSEIF  "$(CFG)" == "Domain������ - Win32 Debug"


"$(INTDIR)\Domain������Dlg.obj"	"$(INTDIR)\Domain������Dlg.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Domain������.pch"


!ELSEIF  "$(CFG)" == "Domain������ - Win32 Release a"


"$(INTDIR)\Domain������Dlg.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\Domain������.pch"


!ENDIF 

SOURCE=.\StdAfx.cpp

!IF  "$(CFG)" == "Domain������ - Win32 Release"

CPP_SWITCHES=/nologo /MT /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_MBCS" /Fp"$(INTDIR)\Domain������.pch" /Yc"stdafx.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 

"$(INTDIR)\StdAfx.obj"	"$(INTDIR)\Domain������.pch" : $(SOURCE) "$(INTDIR)"
	$(CPP) @<<
  $(CPP_SWITCHES) $(SOURCE)
<<


!ELSEIF  "$(CFG)" == "Domain������ - Win32 Debug"

CPP_SWITCHES=/nologo /MTd /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_MBCS" /FR"$(INTDIR)\\" /Fp"$(INTDIR)\Domain������.pch" /Yc"stdafx.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /GZ /c 

"$(INTDIR)\StdAfx.obj"	"$(INTDIR)\StdAfx.sbr"	"$(INTDIR)\Domain������.pch" : $(SOURCE) "$(INTDIR)"
	$(CPP) @<<
  $(CPP_SWITCHES) $(SOURCE)
<<


!ELSEIF  "$(CFG)" == "Domain������ - Win32 Release a"

CPP_SWITCHES=/nologo /MT /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_MBCS" /Fp"$(INTDIR)\Domain������.pch" /Yc"stdafx.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 

"$(INTDIR)\StdAfx.obj"	"$(INTDIR)\Domain������.pch" : $(SOURCE) "$(INTDIR)"
	$(CPP) @<<
  $(CPP_SWITCHES) $(SOURCE)
<<


!ENDIF 


!ENDIF 

