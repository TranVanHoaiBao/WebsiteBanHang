//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace WebsiteBanHang_tvhb.Context
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations.Schema;

    public partial class Category
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string Img { get; set; }
        public string Slug { get; set; }
        public Nullable<bool> Showonhomepage { get; set; }
        public Nullable<int> DisplayOrder { get; set; }
        public Nullable<bool> Deleted { get; set; }
        public Nullable<System.DateTime> CreatedOnUtc { get; set; }
        public Nullable<System.DateTime> UpdateOnUtc { get; set; }
        [NotMapped]
        public System.Web.HttpPostedFileBase ImageUpload { get; set; }
    }
}
