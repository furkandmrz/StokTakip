using Microsoft.Data.SqlClient;
using System.Data;

namespace MarketStokTakip.Database
{
    class DbConnection
    {
        // LocalDB kullanıyorsan "Data Source=(localdb)\MSSQLLocalDB" yapmalısın.
        // Veritabanı adının "MarketStokDb" olduğundan emin ol.
        private static string yol = @"Server=(localdb)\MSSQLLocalDB;Database=MarketStokDb;Trusted_Connection=True;TrustServerCertificate=True;";

        public static SqlConnection BaglantiGetir()
        {
            SqlConnection baglanti = new SqlConnection(yol);
            
            // Bağlantı kapalıysa açmak için küçük bir kontrol (opsiyonel ama iyidir)
            if (baglanti.State == ConnectionState.Closed)
            {
                // baglanti.Open(); // İstersen burada açabilirsin veya Form içinde açarsın.
            }
            
            return baglanti;
        }
    }
}