// DomainÉú³ÉÆ÷Dlg.h : header file
//

#if !defined(AFX_DOMAINDLG_H__B2A726A5_F8C5_482D_8123_7F23223381DA__INCLUDED_)
#define AFX_DOMAINDLG_H__B2A726A5_F8C5_482D_8123_7F23223381DA__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

/////////////////////////////////////////////////////////////////////////////
// CDomainDlg dialog

class CDomainDlg : public CDialog
{
// Construction
public:
	CDomainDlg(CWnd* pParent = NULL);	// standard constructor

// Dialog Data
	//{{AFX_DATA(CDomainDlg)
	enum { IDD = IDD_DOMAIN_DIALOG };
	CString	m_input;
	CString	m_display;
	//}}AFX_DATA

	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CDomainDlg)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);	// DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
protected:
	HICON m_hIcon;

	// Generated message map functions
	//{{AFX_MSG(CDomainDlg)
	virtual BOOL OnInitDialog();
	afx_msg void OnPaint();
	afx_msg HCURSOR OnQueryDragIcon();
	virtual void OnOK();
	afx_msg void OnCopy();
	afx_msg void OnClear();
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_DOMAINDLG_H__B2A726A5_F8C5_482D_8123_7F23223381DA__INCLUDED_)
