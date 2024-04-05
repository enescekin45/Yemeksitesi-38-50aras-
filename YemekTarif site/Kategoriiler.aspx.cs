using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Kategoriiler : System.Web.UI.Page
{
    sqlsinifi bgl = new sqlsinifi();
    string id = "";
    string islem = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            id = Request.QueryString["Kategoriid"];
            islem = Request.QueryString["islem"];
        }
        SqlCommand komut = new SqlCommand("SELECT * FROM Tab_Kategoriler", bgl.baglanti());
        SqlDataReader dr = komut.ExecuteReader();
        DataList1.DataSource = dr;
        DataList1.DataBind();

        //Sİlme işlemi 
        if (islem == "sil")
        {
            SqlCommand komutsil = new SqlCommand("DELETE FROM Tab_kategoriler WHERE kategoriid=@p1", bgl.baglanti());
            komutsil.Parameters.AddWithValue("@p1", id);
            komutsil.ExecuteNonQuery();
            bgl.baglanti().Close();
        }


        Panel2.Visible = false;
        Panel3.Visible = false;
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
        Panel3.Visible = true;
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        Panel3.Visible = false;
    }

    protected void btnEkle_Click(object sender, EventArgs e)
    {
        SqlCommand komut = new SqlCommand("insert into Tab_kategoriler(KategoriAd) values(@p1)", bgl.baglanti());
        komut.Parameters.AddWithValue("@p1", TextBox1.Text);
        komut.ExecuteNonQuery();
        bgl.baglanti().Close();
    }
}