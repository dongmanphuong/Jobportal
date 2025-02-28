using RuoYi.Data.Attributes;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Xml.Linq;

namespace RuoYi.Data.Dtos
{
    public class SysEmployerDto : BaseDto
    {
        public string CompanyName { get; set; }
        public int EmploymentType { get; set; }  
        public string IdNumber { get; set; }
        public int CompanyType { get; set; }     
        public string Province { get; set; }
        public string District { get; set; }
        public string? Ward { get; set; }
        public string Address { get; set; }
        public string Phone { get; set; }
        public string Email { get; set; }
        public int? IndustryZone { get; set; }   // if you use numeric code for industrial zone
        public int MainBusiness { get; set; }
        public string MainProduct { get; set; }
        public string Next6Month { get; set; }
        public int WorkforceScale { get; set; }
        public int DangkyDichvu { get; set; }
        public string? DangkyDichvunote { get; set; }
        public DateTime RegisterTime { get; set; }
        public string RepresentativeName { get; set; }
        public string Position { get; set; }
        public string RepresentativePhone { get; set; }
        public string OtherContact { get; set; }

        public int Id { get; set; }
       

    }

}
