namespace CuaHangBiaOnline_62131086.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Loaibia")]
    public partial class Loaibia_62131086
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Loaibia_62131086()
        {
            Sanpham = new HashSet<Sanpham_62131086>();
        }

        [Key]
        public int Maloai { get; set; }

        [StringLength(10)]
        [Display(Name = "Tên Loại Bia")]

        public string Tenloai { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Sanpham_62131086> Sanpham { get; set; }
    }
}
