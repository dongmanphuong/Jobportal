using SqlSugar;

namespace RuoYi.Data.Entities
{
 
    [SugarTable("sys_dict_data", "Bảng dữ liệu từ điển")]
    public class SysDictData : UserBaseEntity
    {
        /// <summary>
        ///  (dict_code)
        /// </summary>
        [SugarColumn(ColumnName = "dict_code", ColumnDescription = "Mã danh mục", IsPrimaryKey = true, IsIdentity = true)]
        public long DictCode { get; set; }
        /// <summary>
        ///  (dict_sort)
        /// </summary>
        [SugarColumn(ColumnName = "dict_sort", ColumnDescription = "Sắp thứ tự")]
        public int? DictSort { get; set; }
        /// <summary>
        ///  (dict_label)
        /// </summary>
        [SugarColumn(ColumnName = "dict_label", ColumnDescription = "Thẻ từ điển")]
        public string? DictLabel { get; set; }
        /// <summary>
        ///  (dict_value)
        /// </summary>
        [SugarColumn(ColumnName = "dict_value", ColumnDescription = "Giá trị khóa")]
        public string? DictValue { get; set; }
        /// <summary>
        ///  (dict_type)
        /// </summary>
        [SugarColumn(ColumnName = "dict_type", ColumnDescription = "Loại từ điển")]
        public string? DictType { get; set; }
        /// <summary>
        ///  (css_class)
        /// </summary>
        [SugarColumn(ColumnName = "css_class", ColumnDescription = "Thuộc tính")]
        public string? CssClass { get; set; }
        /// <summary>
        ///  (list_class)
        /// </summary>
        [SugarColumn(ColumnName = "list_class", ColumnDescription = "danh sách")]
        public string? ListClass { get; set; }
        /// <summary>
        ///  (is_default)
        /// </summary>
        [SugarColumn(ColumnName = "is_default", ColumnDescription = "Giá trị mặc định（Y Có N Không）")]
        public string? IsDefault { get; set; }
        /// <summary>
        /// 状态（0正常 1停用） (status)
        /// </summary>
        [SugarColumn(ColumnName = "status", ColumnDescription = "Trạng thái(0 : bình thường 1 : vô hiệu hóa)")]
        public string? Status { get; set; }

        /// <summary>
        /// 备注
        /// </summary>
        [SugarColumn(ColumnName = "remark", ColumnDescription = "Ghi chú")]
        public string? Remark { get; set; }
    }
}
