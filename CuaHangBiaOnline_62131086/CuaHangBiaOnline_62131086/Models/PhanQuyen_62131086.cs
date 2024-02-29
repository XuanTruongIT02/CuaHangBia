namespace CuaHangBiaOnline_62131086.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("PhanQuyen")]
    public partial class PhanQuyen_62131086
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public PhanQuyen_62131086()
        {
            Nguoidung = new HashSet<Nguoidung_62131086>();
        }

        [Key]
        public int IDQuyen { get; set; }

        [StringLength(20)]
        [Display(Name = "Tên quyền")]

        public string TenQuyen { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Nguoidung_62131086> Nguoidung { get; set; }
    }
}
