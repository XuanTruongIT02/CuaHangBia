namespace CuaHangBiaOnline_62131086.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Chitietdonhang")]
    public partial class Chitietdonhang_62131086
    {
        [Key]
        [Column(Order = 0)]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int Madon { get; set; }

        [Key]
        [Column(Order = 1)]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int Masp { get; set; }
        [Display(Name = "Số lượng")]

        public int? Soluong { get; set; }
        [Display(Name = "Phương thức thanh toán")]

        public int? Phuongthucthanhtoan { get; set; }
        [Display(Name = "Đơn giá")]

        public decimal? Dongia { get; set; }
        [Display(Name = "Thành tiền")]

        public decimal? Thanhtien { get; set; }

        public virtual Donhang_62131086 Donhang { get; set; }

        public virtual Sanpham_62131086 Sanpham { get; set; }
    }
}
