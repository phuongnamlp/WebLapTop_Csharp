namespace LaptopWeb.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("SanPham")]
    public partial class SanPham
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public SanPham()
        {
            CTDonHangs = new HashSet<CTDonHang>();
        }

        [Key]
        public int Masp { get; set; }

        [StringLength(50)]
        public string Tensp { get; set; }

        public decimal? Giatien { get; set; }

        [Column(TypeName = "ntext")]
        public string Mota { get; set; }

        [StringLength(50)]
        public string Anhbia { get; set; }

        public int? Mahang { get; set; }

        public string Soluong { get; set; }

        public int? Kho { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<CTDonHang> CTDonHangs { get; set; }

        public virtual HangSanXuat HangSanXuat { get; set; }
    }
}
