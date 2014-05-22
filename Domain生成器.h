// Domain生成器.h : main header file for the DOMAIN生成器 application
//

#if !defined(AFX_DOMAIN_H__92FCD6FF_7216_4E2F_BCDA_6FD6A6DAF550__INCLUDED_)
#define AFX_DOMAIN_H__92FCD6FF_7216_4E2F_BCDA_6FD6A6DAF550__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#ifndef __AFXWIN_H__
	#error include 'stdafx.h' before including this file for PCH
#endif

#include "resource.h"		// main symbols

/////////////////////////////////////////////////////////////////////////////
// CDomainApp:
// See Domain生成器.cpp for the implementation of this class
//

class CDomainApp : public CWinApp
{
public:
	CDomainApp();

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CDomainApp)
	public:
	virtual BOOL InitInstance();
	//}}AFX_VIRTUAL

// Implementation

	//{{AFX_MSG(CDomainApp)
		// NOTE - the ClassWizard will add and remove member functions here.
		//    DO NOT EDIT what you see in these blocks of generated code !
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};


/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_DOMAIN_H__92FCD6FF_7216_4E2F_BCDA_6FD6A6DAF550__INCLUDED_)
