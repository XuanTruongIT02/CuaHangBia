namespace CuaHangBiaOnline_62131086.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Hangsanxuat")]
    public partial class Hangsanxuat_62131086
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Hangsanxuat_62131086()
        {
            Sanpham = new HashSet<Sanpham_62131086>();
        }

        [Key]
        public int Mahang { get; set; }

        [StringLength(10)]
        [Display(Name = "Tên hãng")]

        public string Tenhang { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Sanpham_62131086> Sanpham { get; set; }
    }
}
