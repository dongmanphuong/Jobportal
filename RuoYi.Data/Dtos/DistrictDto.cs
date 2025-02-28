using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RuoYi.Data.Dtos
{
    public class DistrictDto : BaseDto
    {
        public int Id { get; set; }
        public int parentid { get; set; }

        public string Code { get; set; }
        public string Name { get; set; }

    }
}
