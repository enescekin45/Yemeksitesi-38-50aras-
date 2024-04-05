using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class TarifOnerDetay : System.Web.UI.Page
{
    sqlsinifi bgl = new sqlsinifi();
    string id = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        id = Request.QueryString["Traifid"];
        if(Page.IsPostBack==false)
        {
            SqlCommand komut = new SqlCommand(" Select * from Tab_Tarifiler where Traifid=@p1", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", id);
            try
            {
                SqlDataReader dr = komut.ExecuteReader();
                while (dr.Read())
                {
                    TextBox1.Text = dr[1].ToString();
                    TextBox2.Text = dr[2].ToString();
                    TextBox3.Text = dr[3].ToString();
                    TextBox4.Text = dr[4].ToString();
                    TextBox5.Text = dr[6].ToString();

                }
                dr.Close();
            }
            catch (Exception ex)
            {
                // Hata mesajını görüntüle
                Response.Write("Hata: " + ex.Message);
            }
            finally
            {
                bgl.baglanti().Close();
            }

            SqlCommand komut2 = new SqlCommand("Select * from Tab_kategoriler", bgl.baglanti());
            SqlDataReader dr2 = komut2.ExecuteReader();

            DropDownList1.DataTextField = "KategoriAd";
            DropDownList1.DataValueField = "kategoriid"; // Veri tablosundan değer alacak alan
            DropDownList1.DataSource = dr2; // DropDownList'in veri kaynağı
            DropDownList1.DataBind(); // DropDownList'i veri kaynağıyla bağla
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {//durum güncelemesi
        SqlCommand komut = new SqlCommand("UPDATE Tab_Tarifiler SET TarifDurum = 1 WHERE Traifid = @p1", bgl.baglanti());
        komut.Parameters.AddWithValue("@p1", id);
        komut.ExecuteNonQuery();
        bgl.baglanti().Close();


        //yemeği  anasayfa ekleme
        SqlCommand komut2 = new SqlCommand("insert into  Tab_Yemekler  (YemekAd, YemekMalzeme, YemekTarif, Kategoriid) VALUES (@p1, @p2, @p3, @p4)", bgl.baglanti());
        komut2.Parameters.AddWithValue("@p1", TextBox1.Text);
        komut2.Parameters.AddWithValue("@p2", TextBox2.Text);
        komut2.Parameters.AddWithValue("@p3", TextBox3.Text);
        komut2.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
        komut2.ExecuteNonQuery();
        bgl.baglanti().Close();
    }
}
            
       