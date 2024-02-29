namespace CuaHangBiaOnline_62131086.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Sanpham")]
    public partial class Sanpham_62131086
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Sanpham_62131086()
        {
            Chitietdonhang = new HashSet<Chitietdonhang_62131086>();
        }

        [Key]
        public int Masp { get; set; }

        [StringLength(50)]
        [Display(Name = "Tên sản phẩm")]

        public string Tensp { get; set; }
        [Display(Name = "Giá tiền")]

        public decimal? Giatien { get; set; }
        [Display(Name = "Số lượng")]

        public int? Soluong { get; set; }
        [Display(Name = "Mô tả")]

        [Column(TypeName = "ntext")]
        public string Mota { get; set; }
        [Display(Name = "Sản phẩm mới")]

        
        public bool? Sanphammoi { get; set; }

        
        [Display(Name = "Ảnh sản phẩm")]

        [StringLength(50)]
        public string Anhbia { get; set; }
        [Display(Name = "Hãng sản xuất")]

        public int? Mahang { get; set; }
        [Display(Name = "Loại bia")]

        public int? Maloai { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Chitietdonhang_62131086> Chitietdonhang { get; set; }

        public virtual Hangsanxuat_62131086 Hangsanxuat { get; set; }

        public virtual Loaibia_62131086 Loaibia { get; set; }
    }
}
