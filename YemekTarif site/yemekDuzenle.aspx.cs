using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class yemekDuzenle : System.Web.UI.Page
{
    sqlsinifi bgl = new sqlsinifi();
    string id;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            int id = Convert.ToInt32(Request.QueryString["Yemekid"]);
            SqlCommand cmd = new SqlCommand(" Select * from Tab_Yemekler where Yemekid=@p1", bgl.baglanti());
            cmd.Parameters.AddWithValue("@p1", (id > 0 ? id : 0));
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {

                TextBox1.Text = dr[1].ToString();
                TextBox2.Text = dr[2].ToString();
                TextBox3.Text = dr[3].ToString();
            }
            bgl.baglanti().Close();

            if (Page.IsPostBack == false)
            {

                SqlCommand komut2 = new SqlCommand("Select * from Tab_kategoriler", bgl.baglanti());
                SqlDataReader dr2 = komut2.ExecuteReader(); DropDownList1.DataTextField = "kategoriAd"; // Veri tablosundan görüntülenecek metin alanı

                DropDownList1.DataValueField = "kategoriid"; // Veri tablosundan değer alacak alan
                DropDownList1.DataSource = dr2; // DropDownList'in veri kaynağı
                DropDownList1.DataBind(); // DropDownList'i veri kaynağıyla bağla
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        FileUpload1.SaveAs(Server.MapPath("/resimler/"+FileUpload1.FileName));
        int id = Convert.ToInt32(Request.QueryString["yemekid"]);
        SqlCommand cmd = new SqlCommand("Update Tab_Yemekler set YemekAd=@p1,YemekMalzeme=@p2,YemekTarif=@p3 ,kategoriid=@p4,YemekResim=@P6 where Yemekid=@p5", bgl.baglanti());
        cmd.Parameters.AddWithValue("@p1", TextBox1.Text);
        cmd.Parameters.AddWithValue("@p2", TextBox2.Text);
        cmd.Parameters.AddWithValue("@p3", TextBox2.Text);
        cmd.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
        cmd.Parameters.AddWithValue("@p6",  "~/resimler/"+FileUpload1.FileName);
        cmd.Parameters.AddWithValue("@p5", id);
        cmd.ExecuteNonQuery();
        bgl.baglanti().Close();

    }


    protected void Button2_Click(object sender, EventArgs e)
    {
        // id değeri null veya boş değilse işlem yap
        if (!string.IsNullOrEmpty(id))
        {
            SqlCommand komut = new SqlCommand("Update Tab_Yemekler set Durum = 0", bgl.baglanti());
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
        else
        {
            id =Request.QueryString["yemekid"];
            // id değeri null veya boşsa hata mesajı göster veya uygun bir işlem yap
            SqlCommand komut2 = new SqlCommand("Update Tab_Yemekler set Durum = 1 where yemekid = @p1", bgl.baglanti());
            komut2.Parameters.AddWithValue("@p1", id);
            komut2.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
    }
}
