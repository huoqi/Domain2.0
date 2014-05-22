// Domain生成器Dlg.cpp : implementation file
//

#include "stdafx.h"
#include "Domain生成器.h"
#include "Domain生成器Dlg.h"
#include "math.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

int n=0,i=0,j=0,loop,t=0;
CString m_input="",m_display="",m_t="",m_temp="";
struct ch{
	int  cnum;                //非字母数
	int  clocation[10];       //在字符串中的位置
	char cc[10];              //非字母字符
} nonletter;
/////////////////////////////////////////////////////////////////////////////
// CDomainDlg dialog

CDomainDlg::CDomainDlg(CWnd* pParent /*=NULL*/)
	: CDialog(CDomainDlg::IDD, pParent)
{
	//{{AFX_DATA_INIT(CDomainDlg)
	m_input = _T("");
	m_display = _T("注意：\r\n变换域名的数量与英文字母的数量是成指数关系的，所以建议字母数量最好不要超过5。\r\n此软件还处在测试阶段，如有任何问题或建议请发邮件至\r\nliuxj@zoomactech.com");
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
	if(m_input=="") return;           //没输入则不做反应
	m_display="";                     //清空显示框
	m_input.TrimLeft();               //去掉误输入的空格
	
/****************************************/
/***********以下为核心算法***************/
/****************************************/
    m_t = m_input;
	n = m_t.GetLength();              //计算输入字符数
	for(i=0;i<n;i++)
		if(!isalpha(m_t.GetAt(i)))
		{
			nonletter.clocation[nonletter.cnum] = i;
			nonletter.cc[nonletter.cnum++] = m_t.GetAt(i);
			m_t.Delete(i,1);
			i--;
			n--;
		}
	n = m_t.GetLength();              //计算字母字符数
	loop=(int)pow(2,n);               //计算主循环次数

	m_t.MakeLower();                 //先全部大写
	m_temp=m_t;

	for(i=0;i<loop;i++)              //在第i次主循环中，倒数第i位计算此时若应为小写就小写，大写不做操作
	{
		m_temp=m_t;

		for(j=0,t=i;j<n;j++)
		{
			if(t&&t%2) m_temp.SetAt(n-j-1,m_t.GetAt(n-j-1)-32);
			t=t>>1;                  //右移，遇1转换成小写
		}

		for(j=nonletter.cnum-1;j>-1;j--)  //加入非字母字符
			m_temp.Insert(nonletter.clocation[j],nonletter.cc[j]);

        m_display += "domain ";        //每行开都加入"domain "
        m_display += m_temp + "\r\n";    //追加此次序列，并换行
	}
	UpdateData(false);                //显示所有序列
}

void CDomainDlg::OnCopy() 
{
	//复制至剪贴板
	if(m_input=="") return;                              //没输入则返回
	HGLOBAL hClip;
    //定义一个HGLOBAL句柄变量用来指向分配的内存块
    if (OpenClipboard())
    {
            EmptyClipboard();                            //将剪贴板内容清空
            hClip=GlobalAlloc(GMEM_MOVEABLE,m_display.GetLength()+1);
            //在堆上分配可移动的内存块，程序返回一个内存句柄
            char * buff;                                 //定义指向字符型的指针变量
            buff=(char*)GlobalLock(hClip);
            //对分配的内存块进行加锁，将内存块句柄转化成一个指针,并将相应的引用计数器加1
            strcpy(buff,m_display);
            //将用户输入的数据复制到指针变量中，实际上就是复制到分配的内存块中
            GlobalUnlock(hClip);
            //数据写入完毕，进行解锁操作，并将引用计数器数字减1
            SetClipboardData(CF_TEXT,hClip);
            //将存放有数据的内存块放入剪贴板的资源管理中
            CloseClipboard();
            //关闭剪贴板，释放剪贴板资源的占用权
            MessageBox("已将数据存入剪贴板","Domain生成器");
     }
}

void CDomainDlg::OnClear() 
{
	//清空文本框
	m_input="";
	m_display="";
	UpdateData(false);	
}
