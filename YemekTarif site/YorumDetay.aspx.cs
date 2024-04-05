using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class YorumDetay : System.Web.UI.Page
{
    sqlsinifi bgl = new sqlsinifi();
    string id = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack == false)
        {
            id = Request.QueryString["Yorumid"];
            if (!string.IsNullOrEmpty(id))
            {
                // id'yi int türüne dönüştür
                int Yorumid;
                if (int.TryParse(id, out Yorumid))
                {
                    SqlCommand komut = new SqlCommand("SELECT YorumAdSoyad,YorumMail,Yorumiçerik,YemekAd inner join Tab_Yemekler  on Tab_Yorumlar.Yemekid= Tab_Yemekler.Yemekid where Yorumid = @p1", bgl.baglanti());
                    komut.Parameters.AddWithValue("@p1", Yorumid);
                    try
                    {
                        SqlDataReader dr = komut.ExecuteReader();
                        while (dr.Read())
                        {
                            TxtAd.Text = dr[1].ToString();
                            TxtMail.Text = dr[2].ToString();
                            Txtiçerik.Text = dr[3].ToString();
                            TxtYemek.Text = dr[4].ToString();
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
                }
            }
        }
    }

            protected void btnOynayla_Click(object sender, EventArgs e)
    {
         id=Request.QueryString["Yorumid"];
        SqlCommand komut= new SqlCommand("UPDATE Tab_Yorumlar SET Yorumiçerik = @p1, YorumOnay = @p2 WHERE Yorumid = @p3", bgl.baglanti());
        komut.Parameters.AddWithValue("@p1", Txtiçerik.Text);
        komut.Parameters.AddWithValue("@p2", "true");
        komut.Parameters.AddWithValue("@p3",id );
        komut.ExecuteNonQuery();
        bgl.baglanti().Close();
    }
       
    }





