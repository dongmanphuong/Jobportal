using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RuoYi.System.Repositories
{
    public class SysDistrictRepository : BaseRepository<SysDistrict, DistrictDto>
    {
        public SysDistrictRepository(ISqlSugarRepository<SysDistrict> sqlSugarRepository)
        {
            Repo = sqlSugarRepository;
        }

        public override ISugarQueryable<SysDistrict> Queryable(DistrictDto dto)
        {
            return Repo.AsQueryable()
                //.Includes(t => t.SubTable)
                .WhereIF(!string.IsNullOrEmpty(dto.Code), (t) => t.Code == dto.Code)
                .WhereIF(!string.IsNullOrEmpty(dto.Name), (t) => t.Name == dto.Name);

        }

        public override ISugarQueryable<DistrictDto> DtoQueryable(DistrictDto dto)
        {
            return Repo.AsQueryable()
                //.LeftJoin<SubTable>((t, s) => t.Id == s.Id)
                .WhereIF(!string.IsNullOrEmpty(dto.Code), (t) => t.Code == dto.Code)
                .WhereIF(!string.IsNullOrEmpty(dto.Name), (t) => t.Name == dto.Name)
                .Select((d) => new DistrictDto
                {
                    CreateBy = d.CreateBy,
                    CreateTime = d.CreateTime,
                    UpdateBy = d.UpdateBy,
                    UpdateTime = d.UpdateTime,

                    Code = d.Code,
                    Name = d.Name
                });
        }

        protected override async Task FillRelatedDataAsync(IEnumerable<DistrictDto> dtos)
        {
            await base.FillRelatedDataAsync(dtos);

        }
        public async Task<List<SysDistrict>> SelectListAsync(int provinceId)
        {
            // Create an empty query DTO; no filtering will be applied if properties are null/empty.
            var query = new DistrictDto {parentid = provinceId };
            // GetListAsync should return all provinces matching the query criteria
            var districts = await base.GetListAsync(query);

            // Optionally, add mapping logic here if necessary.
            return districts;
        }
    }
}
