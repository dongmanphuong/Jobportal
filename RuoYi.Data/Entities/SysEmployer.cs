using SqlSugar;


namespace RuoYi.Data.Entities
{
    [SugarTable("employers", "Bảng nhà tuyển dụng")]
    public class SysEmployer : UserBaseEntity
    {
        [SugarColumn(ColumnName = "id", ColumnDescription = "id", IsPrimaryKey = true, IsIdentity = true)]
        public int Id { get; set; }

        [SugarColumn(ColumnName = "name", ColumnDescription = "Name")]
        public string CompanyName { get; set; }

        [SugarColumn(ColumnName = "recruiter_type", ColumnDescription = "Recruiter_type")]
        public int EmploymentType { get; set; }

        [SugarColumn(ColumnName = "tax_code", ColumnDescription = "Tax_code")]
        public string IdNumber { get; set; }

        [SugarColumn(ColumnName = "companytype", ColumnDescription = "companytype")]
        public int CompanyType { get; set; }

        [SugarColumn(ColumnName = "province", ColumnDescription = "province")]
        public string Province { get; set; }

        [SugarColumn(ColumnName = "district", ColumnDescription = "district")]
        public string District { get; set; }

        [SugarColumn(ColumnName = "ward", ColumnDescription = "ward")]
        public string? Ward { get; set; }

        [SugarColumn(ColumnName = "address_detail", ColumnDescription = "address_detail")]
        public string Address { get; set; }

        [SugarColumn(ColumnName = "phone", ColumnDescription = "phone")]
        public string Phone { get; set; }

        [SugarColumn(ColumnName = "email", ColumnDescription = "email")]
        public string Email { get; set; }

        [SugarColumn(ColumnName = "industryZone", ColumnDescription = "industryZone")]
        public int? IndustryZone { get; set; }   // if you use numeric code for industrial zone

        [SugarColumn(ColumnName = "mainbusiness", ColumnDescription = "mainbusiness")]
        public int MainBusiness { get; set; }

        [SugarColumn(ColumnName = "mainproduct", ColumnDescription = "mainproduct")]
        public string MainProduct { get; set; }

        [SugarColumn(ColumnName = "next6month", ColumnDescription = "next6month")]
        public string Next6Month { get; set; }

        [SugarColumn(ColumnName = "workforcescale", ColumnDescription = "workforcescale")]
        public int WorkforceScale { get; set; }

        [SugarColumn(ColumnName = "dangkydichvu", ColumnDescription = "dangkydichvu")]
        public int DangkyDichvu { get; set; }

        [SugarColumn(ColumnName = "dangkydichvunote", ColumnDescription = "dangkydichvunote")]
        public string DangkyDichvunote { get; set; }

        [SugarColumn(ColumnName = "registertime", ColumnDescription = "registertime")]
        public DateTime RegisterTime { get; set; }

        [SugarColumn(ColumnName = "representativename", ColumnDescription = "representativename")]
        public string RepresentativeName { get; set; }

        [SugarColumn(ColumnName = "position", ColumnDescription = "position")]
        public string Position { get; set; }

        [SugarColumn(ColumnName = "representativephone", ColumnDescription = "representativephone")]
        public string RepresentativePhone { get; set; }

        [SugarColumn(ColumnName = "otherContact", ColumnDescription = "otherContact")]
        public string OtherContact { get; set; }
    }
}