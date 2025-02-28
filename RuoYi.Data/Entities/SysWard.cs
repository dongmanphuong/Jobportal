using SqlSugar;

namespace RuoYi.Data.Entities
{

    [SugarTable("sys_ward", "Bảng phường xã")]
    public class SysWard : UserBaseEntity
    {
        [SugarColumn(ColumnName = "id", ColumnDescription = "id", IsPrimaryKey = true, IsIdentity = true)]
        public int Id { get; set; }

        [SugarColumn(ColumnName = "parentid", ColumnDescription = "parentid")]
        public string Parentid { get; set; }

        [SugarColumn(ColumnName = "code", ColumnDescription = "code")]
        public string Code { get; set; }

        [SugarColumn(ColumnName = "name", ColumnDescription = "name")]
        public string Name { get; set; }
    }
}
