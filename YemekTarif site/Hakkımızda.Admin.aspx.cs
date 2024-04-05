﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Hakkımızda_Admin : System.Web.UI.Page
{
    sqlsinifi bgl = new sqlsinifi();
    protected void Page_Load(object sender, EventArgs e)
    {
        Panel2.Visible = false;
        if (Page.IsPostBack == false)
        {
            SqlCommand komut = new SqlCommand("SELECT * FROM Tab_Hakkimizda", bgl.baglanti());
            SqlDataReader dr = komut.ExecuteReader();
            while (dr.Read())
            {
                TextBox2.Text = dr[0].ToString();
            }
            bgl.baglanti().Close();
        }
        {
            
            
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
        SqlCommand komut = new SqlCommand("Update  Tab_Hakkimizda set Metin=@p1", bgl.baglanti());
        komut.Parameters.AddWithValue("@p1", TextBox2.Text);
        komut.ExecuteNonQuery();
        bgl.baglanti().Close();
    }
}