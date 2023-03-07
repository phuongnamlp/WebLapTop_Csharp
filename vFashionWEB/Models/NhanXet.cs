namespace LaptopWeb.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("NhanXet")]
    public partial class NhanXet
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int MaNX { get; set; }

        public int? MaNguoiDung { get; set; }

        public string NoiDung { get; set; }
    }
}
