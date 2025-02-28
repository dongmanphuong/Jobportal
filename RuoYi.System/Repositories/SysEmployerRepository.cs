
namespace RuoYi.System.Repositories
{
    public class SysEmployerRepository : BaseRepository<SysEmployer, SysEmployerDto>
    {
        public SysEmployerRepository(ISqlSugarRepository<SysEmployer> sqlSugarRepository)
        {
            Repo = sqlSugarRepository;
        }
        public override ISugarQueryable<SysEmployer> Queryable(SysEmployerDto dto)
        {
            return Repo.AsQueryable();
        }

        public override ISugarQueryable<SysEmployerDto> DtoQueryable(SysEmployerDto dto)
        {
            return Repo.AsQueryable()
                .Select((t) => new SysEmployerDto
                {
                    CreateBy = t.CreateBy,
                    CreateTime = t.CreateTime,
                    UpdateBy = t.UpdateBy,
                    UpdateTime = t.UpdateTime,
                });
        }

        protected override async Task FillRelatedDataAsync(IEnumerable<SysEmployerDto> dtos)
        {
            await base.FillRelatedDataAsync(dtos);

        }

        public async Task<List<SysEmployer>> SelectEmployerAsync(string userName)
        {
            if (string.IsNullOrEmpty(userName))
                return null!;

            var query = new SysEmployerDto { CreateBy = userName };
            return await base.GetListAsync(query);
        }
    }
}
