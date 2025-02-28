using RuoYi.Common.Utils;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RuoYi.System.Repositories
{
    public class SysProvinceRepository : BaseRepository<SysProvince, ProvinceDto>
    {
        public SysProvinceRepository(ISqlSugarRepository<SysProvince> sqlSugarRepository)
        {
            Repo = sqlSugarRepository;
        }

        public override ISugarQueryable<SysProvince> Queryable(ProvinceDto dto)
        {
            return Repo.AsQueryable()
                //.Includes(t => t.SubTable)
                .WhereIF(!string.IsNullOrEmpty(dto.Code), (t) => t.Code == dto.Code)
                .WhereIF(!string.IsNullOrEmpty(dto.Name), (t) => t.Name == dto.Name);

        }

        public override ISugarQueryable<ProvinceDto> DtoQueryable(ProvinceDto dto)
        {
            return Repo.AsQueryable()
                //.LeftJoin<SubTable>((t, s) => t.Id == s.Id)
                .WhereIF(!string.IsNullOrEmpty(dto.Code), (t) => t.Code == dto.Code)
                .WhereIF(!string.IsNullOrEmpty(dto.Name), (t) => t.Name == dto.Name)
                .Select((d) => new ProvinceDto
                {
                    CreateBy = d.CreateBy,
                    CreateTime = d.CreateTime,
                    UpdateBy = d.UpdateBy,
                    UpdateTime = d.UpdateTime,

                    Code = d.Code,
                    Name = d.Name
                });
        }

        protected override async Task FillRelatedDataAsync(IEnumerable<ProvinceDto> dtos)
        {
            await base.FillRelatedDataAsync(dtos);

        }
        public async Task<List<SysProvince>> SelectListProvinceAsync()
        {
            // Create an empty query DTO; no filtering will be applied if properties are null/empty.
            var query = new ProvinceDto();
            // GetListAsync should return all provinces matching the query criteria
            var provinces = await base.GetListAsync(query);

            // Optionally, add mapping logic here if necessary.
            return provinces;
        }



    }
}
