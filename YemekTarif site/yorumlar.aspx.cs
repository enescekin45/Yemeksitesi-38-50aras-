using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class yorumlar : System.Web.UI.Page
{
    sqlsinifi bgl = new sqlsinifi();

    protected void Page_Load(object sender, EventArgs e)
    {
     
            Panel2.Visible = false;
            Panel4.Visible = false;

            // Onaylı Yorum Listesi
            SqlCommand komut = new SqlCommand("SELECT * FROM Tab_Yorumlar WHERE yorumonay = 1", bgl.baglanti());
            SqlDataReader dr = komut.ExecuteReader();
            DataList1.DataSource = dr;
            DataList1.DataBind();
      

            // Onaysız Yorum Listesi
            SqlCommand komut2 = new SqlCommand("SELECT * FROM Tab_Yorumlar WHERE yorumonay = 0", bgl.baglanti());
            SqlDataReader dr2 = komut2.ExecuteReader();
            DataList2.DataSource = dr2;
            DataList2.DataBind();
           
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Panel2.Visible = true;
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Panel2.Visible = false;
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Panel4.Visible = true;
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        Panel4.Visible = false;
    }
}
