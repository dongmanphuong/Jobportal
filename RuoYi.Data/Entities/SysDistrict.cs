using SqlSugar;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Principal;
using System.Text;
using System.Threading.Tasks;

namespace RuoYi.Data.Entities
{
    [SugarTable("sys_district", "Bảng quận huyện")]
    public class SysDistrict : UserBaseEntity
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
