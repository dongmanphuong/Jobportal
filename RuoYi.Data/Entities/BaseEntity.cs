using SqlSugar;

namespace RuoYi.Data.Entities
{
    public class BaseEntity { }

    public class CreateUserBaseEntity : BaseEntity
    {
        /// <summary>
        /// 创建人
        /// </summary>
        [SugarColumn(ColumnName = "create_by", ColumnDescription = "Người tạo")]
        public string? CreateBy { get; set; }

        /// <summary>
        /// 创建时间
        /// </summary>
        [SugarColumn(ColumnName = "create_time", ColumnDescription = "Thời gian tạo")]
        public DateTime? CreateTime { get; set; }
    }

    public class UserBaseEntity: BaseEntity
    {
        /// <summary>
        /// 创建人
        /// </summary>
        [SugarColumn(ColumnName = "create_by", ColumnDescription = "Người tạo")]
        public string? CreateBy { get; set; }

        /// <summary>
        /// 创建时间
        /// </summary>
        [SugarColumn(ColumnName = "create_time", ColumnDescription = "Thời gian tạo")]
        public DateTime? CreateTime { get; set; }

        /// <summary>
        /// 更新人
        /// </summary>
        [SugarColumn(ColumnName = "update_by", ColumnDescription = "Người cập nhập")]
        public string? UpdateBy { get; set; }

        /// <summary>
        /// 更新时间
        /// </summary>
        [SugarColumn(ColumnName = "update_time", ColumnDescription = "Thời gian cập nhập")]
        public DateTime? UpdateTime { get; set; }
    }
}
