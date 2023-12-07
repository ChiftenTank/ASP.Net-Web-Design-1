using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;
using System.Text;

public partial class ContactManagrForm : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["let"] == null)
        {
            Response.Redirect("LoginForm.aspx");
        }
        txtfamily.Text = Session["userfamily"].ToString();
        txtemail.Text = Session["useremail"].ToString();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        MailMessage mailpm = new MailMessage();
        mailpm.To.Add("info@miladhomaei.com");

        MailAddress mailad= new MailAddress("txtemail.text");
        mailpm.From = mailad;

        mailpm.SubjectEncoding =Encoding.UTF8;
        mailpm.Subject = txtsubject.Text;

        mailpm.BodyEncoding = Encoding.UTF8;
        mailpm.Body = txtmatn.Text;

        SmtpClient smtpc = new SmtpClient("smtp.miladhomaei.com");
        smtpc.Send(mailpm);

    }
}