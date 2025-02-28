using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using SqlSugar;

namespace RuoYi.Data.Entities
{
    [SugarTable("sys_province", "Bảng tỉnh thành")]

    public class SysProvince : UserBaseEntity
    {
        [SugarColumn(ColumnName = "id", ColumnDescription = "id", IsPrimaryKey = true, IsIdentity = true)]
        public int Id { get; set; }

        [SugarColumn(ColumnName = "code", ColumnDescription = "code")]
        public string Code { get; set; }

        [SugarColumn(ColumnName = "name", ColumnDescription = "name")]
        public string Name { get; set; }
    }
}
