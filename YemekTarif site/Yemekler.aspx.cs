using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Yemekler : System.Web.UI.Page
{
    sqlsinifi bgl = new sqlsinifi();

    string islem = "";
    string id = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        Panel2.Visible = false;
        Panel4.Visible = false;

        if (Page.IsPostBack == false)
        {
            id = Request.QueryString["yemekid"];
            islem = Request.QueryString["islem"];

            SqlCommand komut2 = new SqlCommand("Select * from Tab_kategoriler", bgl.baglanti());
            SqlDataReader dr2 = komut2.ExecuteReader(); DropDownList1.DataTextField = "kategoriAd"; // Veri tablosundan görüntülenecek metin alanı

            DropDownList1.DataValueField = "kategoriid"; // Veri tablosundan değer alacak alan
            DropDownList1.DataSource = dr2; // DropDownList'in veri kaynağı
            DropDownList1.DataBind(); // DropDownList'i veri kaynağıyla bağla


        }

        //Yemek Listesi
        SqlCommand komut = new SqlCommand("Select * From Tab_Yemekler", bgl.baglanti());
        SqlDataReader dr = komut.ExecuteReader();
        DataList1.DataSource = dr;
        DataList1.DataBind();



        //Sİlme işlemi 
        if (islem == "sil" && !string.IsNullOrEmpty(id))
        {
            SqlCommand komutsil = new SqlCommand("DELETE FROM Tab_Yemekler WHERE Yemekid=@p1", bgl.baglanti());
            komutsil.Parameters.AddWithValue("@p1", id);
            komutsil.ExecuteNonQuery(); // "ExecuteNonQuery" metodu kullanılmalı, "ExecuteNonQue" yerine
            bgl.baglanti().Close(); // Bağlantıyı kapatmak önemlidir
        }
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



    protected void btnEkle_Click(object sender, EventArgs e)
    {//Yemek ekle 
        SqlCommand komut = new SqlCommand("insert into  Tab_Yemekler  (YemekAd, YemekMalzeme, YemekTarif, Kategoriid) VALUES (@p1, @p2, @p3, @p4)", bgl.baglanti());
        komut.Parameters.AddWithValue("@p1", TextBox1.Text);
        komut.Parameters.AddWithValue("@p2", TextBox2.Text);
        komut.Parameters.AddWithValue("@p3", TextBox3.Text);
        komut.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
        komut.ExecuteNonQuery();
        bgl.baglanti().Close();

        //kategori sayısını Arttıma
        SqlCommand komut2 = new SqlCommand("Update Tab_kategoriler set KategoriAdet=kategoriadet+1 where kategoriid=@p1", bgl.baglanti());
        komut2.Parameters.AddWithValue("@p1", DropDownList1.SelectedValue);
        komut2.ExecuteNonQuery();
        bgl.baglanti().Close();
;    }

   
}
