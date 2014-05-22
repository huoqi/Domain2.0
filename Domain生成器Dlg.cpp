// Domain������Dlg.cpp : implementation file
//

#include "stdafx.h"
#include "Domain������.h"
#include "Domain������Dlg.h"
#include "math.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

int n=0,i=0,j=0,loop,t=0;
CString m_input="",m_display="",m_t="",m_temp="";
struct ch{
	int  cnum;                //����ĸ��
	int  clocation[10];       //���ַ����е�λ��
	char cc[10];              //����ĸ�ַ�
} nonletter;
/////////////////////////////////////////////////////////////////////////////
// CDomainDlg dialog

CDomainDlg::CDomainDlg(CWnd* pParent /*=NULL*/)
	: CDialog(CDomainDlg::IDD, pParent)
{
	//{{AFX_DATA_INIT(CDomainDlg)
	m_input = _T("");
	m_display = _T("ע�⣺\r\n�任������������Ӣ����ĸ�������ǳ�ָ����ϵ�ģ����Խ�����ĸ������ò�Ҫ����5��\r\n����������ڲ��Խ׶Σ������κ���������뷢�ʼ���\r\nliuxj@zoomactech.com");
	//}}AFX_DATA_INIT
	// Note that LoadIcon does not require a subsequent DestroyIcon in Win32
	m_hIcon = AfxGetApp()->LoadIcon(IDR_MAINFRAME);
}

void CDomainDlg::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	//{{AFX_DATA_MAP(CDomainDlg)
	DDX_Text(pDX, IDC_INPUT, m_input);
	DDV_MaxChars(pDX, m_input, 12);
	DDX_Text(pDX, IDC_DISPLAY, m_display);
	//}}AFX_DATA_MAP
}

BEGIN_MESSAGE_MAP(CDomainDlg, CDialog)
	//{{AFX_MSG_MAP(CDomainDlg)
	ON_WM_PAINT()
	ON_WM_QUERYDRAGICON()
	ON_BN_CLICKED(IDC_COPY, OnCopy)
	ON_BN_CLICKED(IDC_CLEAR, OnClear)
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CDomainDlg message handlers

BOOL CDomainDlg::OnInitDialog()
{
	CDialog::OnInitDialog();

	// Set the icon for this dialog.  The framework does this automatically
	//  when the application's main window is not a dialog
	SetIcon(m_hIcon, TRUE);			// Set big icon
	SetIcon(m_hIcon, FALSE);		// Set small icon
	
	GetDlgItem(IDC_INPUT)->SetFocus(); 

	return false;  // return TRUE  unless you set the focus to a control
}

// If you add a minimize button to your dialog, you will need the code below
//  to draw the icon.  For MFC applications using the document/view model,
//  this is automatically done for you by the framework.

void CDomainDlg::OnPaint() 
{
	if (IsIconic())
	{
		CPaintDC dc(this); // device context for painting

		SendMessage(WM_ICONERASEBKGND, (WPARAM) dc.GetSafeHdc(), 0);

		// Center icon in client rectangle
		int cxIcon = GetSystemMetrics(SM_CXICON);
		int cyIcon = GetSystemMetrics(SM_CYICON);
		CRect rect;
		GetClientRect(&rect);
		int x = (rect.Width() - cxIcon + 1) / 2;
		int y = (rect.Height() - cyIcon + 1) / 2;

		// Draw the icon
		dc.DrawIcon(x, y, m_hIcon);
	}
	else
	{
		CDialog::OnPaint();
	}
}

// The system calls this to obtain the cursor to display while the user drags
//  the minimized window.
HCURSOR CDomainDlg::OnQueryDragIcon()
{
	return (HCURSOR) m_hIcon;
}

void CDomainDlg::OnOK() 
{
	nonletter.cnum = 0;
	UpdateData(true);
	if(m_input=="") return;           //û����������Ӧ
	m_display="";                     //�����ʾ��
	m_input.TrimLeft();               //ȥ��������Ŀո�
	
/****************************************/
/***********����Ϊ�����㷨***************/
/****************************************/
    m_t = m_input;
	n = m_t.GetLength();              //���������ַ���
	for(i=0;i<n;i++)
		if(!isalpha(m_t.GetAt(i)))
		{
			nonletter.clocation[nonletter.cnum] = i;
			nonletter.cc[nonletter.cnum++] = m_t.GetAt(i);
			m_t.Delete(i,1);
			i--;
			n--;
		}
	n = m_t.GetLength();              //������ĸ�ַ���
	loop=(int)pow(2,n);               //������ѭ������

	m_t.MakeLower();                 //��ȫ����д
	m_temp=m_t;

	for(i=0;i<loop;i++)              //�ڵ�i����ѭ���У�������iλ�����ʱ��ӦΪСд��Сд����д��������
	{
		m_temp=m_t;

		for(j=0,t=i;j<n;j++)
		{
			if(t&&t%2) m_temp.SetAt(n-j-1,m_t.GetAt(n-j-1)-32);
			t=t>>1;                  //���ƣ���1ת����Сд
		}

		for(j=nonletter.cnum-1;j>-1;j--)  //�������ĸ�ַ�
			m_temp.Insert(nonletter.clocation[j],nonletter.cc[j]);

        m_display += "domain ";        //ÿ�п�������"domain "
        m_display += m_temp + "\r\n";    //׷�Ӵ˴����У�������
	}
	UpdateData(false);                //��ʾ��������
}

void CDomainDlg::OnCopy() 
{
	//������������
	if(m_input=="") return;                              //û�����򷵻�
	HGLOBAL hClip;
    //����һ��HGLOBAL�����������ָ�������ڴ��
    if (OpenClipboard())
    {
            EmptyClipboard();                            //���������������
            hClip=GlobalAlloc(GMEM_MOVEABLE,m_display.GetLength()+1);
            //�ڶ��Ϸ�����ƶ����ڴ�飬���򷵻�һ���ڴ���
            char * buff;                                 //����ָ���ַ��͵�ָ�����
            buff=(char*)GlobalLock(hClip);
            //�Է�����ڴ����м��������ڴ����ת����һ��ָ��,������Ӧ�����ü�������1
            strcpy(buff,m_display);
            //���û���������ݸ��Ƶ�ָ������У�ʵ���Ͼ��Ǹ��Ƶ�������ڴ����
            GlobalUnlock(hClip);
            //����д����ϣ����н����������������ü��������ּ�1
            SetClipboardData(CF_TEXT,hClip);
            //����������ݵ��ڴ�������������Դ������
            CloseClipboard();
            //�رռ����壬�ͷż�������Դ��ռ��Ȩ
            MessageBox("�ѽ����ݴ��������","Domain������");
     }
}

void CDomainDlg::OnClear() 
{
	//����ı���
	m_input="";
	m_display="";
	UpdateData(false);	
}
