using RuoYi.Common.Constants;
using RuoYi.Common.Utils;
using RuoYi.Data.Models;
using RuoYi.Framework.Exceptions;
using RuoYi.System.Repositories;

public class SysEmployerService : BaseService<SysEmployer, SysEmployerDto>, ITransient
{
    private readonly ILogger<SysEmployerService> _logger;
    private readonly SysEmployerRepository _sysEmployerRepository;
   

    public SysEmployerService(ILogger<SysEmployerService> logger, SysEmployerRepository sysEmployerRepository)
    {
        BaseRepo = sysEmployerRepository;

        _logger = logger;
        _sysEmployerRepository = sysEmployerRepository;

    }

    public async Task SaveEmployerAsync(SysEmployerDto employerDto)
    {
        // Map EmployerDto to your Employer entity
        SysEmployer employer = new SysEmployer
        {
            CompanyName = employerDto.CompanyName,
            EmploymentType = employerDto.EmploymentType,
            IdNumber = employerDto.IdNumber,
            CompanyType = employerDto.CompanyType,
            Province = employerDto.Province,
            District = employerDto.District,
            Ward = employerDto.Ward,
            Address = employerDto.Address,
            Phone = employerDto.Phone,
            Email = employerDto.Email,
            IndustryZone = employerDto.IndustryZone,
            MainBusiness = employerDto.MainBusiness,
            MainProduct = employerDto.MainProduct,
            Next6Month = employerDto.Next6Month,
            WorkforceScale = employerDto.WorkforceScale,
            DangkyDichvu = employerDto.DangkyDichvu,
            DangkyDichvunote = employerDto.DangkyDichvunote,
            RepresentativeName = employerDto.RepresentativeName,
            Position = employerDto.Position,
            RepresentativePhone = employerDto.RepresentativePhone,
            OtherContact = employerDto.OtherContact,
            RegisterTime = employerDto.RegisterTime
        };
        // Save to database
        await _sysEmployerRepository.InsertAsync(employer);
    }

    /// <summary>
    /// 
    /// </summary>
    /// <param name="employerDto"></param>
    /// <returns></returns>
    public async Task UpdateAsync(SysEmployerDto employerDto)
    {
        // Map EmployerDto to your Employer entity
        SysEmployer employer = new SysEmployer
        {
            CompanyName = employerDto.CompanyName,
            EmploymentType = employerDto.EmploymentType,
            IdNumber = employerDto.IdNumber,
            CompanyType = employerDto.CompanyType,
            Province = employerDto.Province,
            District = employerDto.District,
            Ward = employerDto.Ward,
            Address = employerDto.Address,
            Phone = employerDto.Phone,
            Email = employerDto.Email,
            IndustryZone = employerDto.IndustryZone,
            MainBusiness = employerDto.MainBusiness,
            MainProduct = employerDto.MainProduct,
            Next6Month = employerDto.Next6Month,
            WorkforceScale = employerDto.WorkforceScale,
            DangkyDichvu = employerDto.DangkyDichvu,
            DangkyDichvunote = employerDto.DangkyDichvunote,
            RepresentativeName = employerDto.RepresentativeName,
            Position = employerDto.Position,
            RepresentativePhone = employerDto.RepresentativePhone,
            OtherContact = employerDto.OtherContact,
            RegisterTime = employerDto.RegisterTime,
            Id = employerDto.Id,
            UpdateBy = employerDto.UpdateBy,
            UpdateTime = employerDto.UpdateTime
            
        };
        // Save to database
        await _sysEmployerRepository.Updateable(employer)
            .UpdateColumns(it => new {
                it.CompanyName,
                it.EmploymentType,
                it.IdNumber,
                it.CompanyType,
                it.Province,
                it.District,
                it.Ward,
                it.Address,
                it.Phone,
                it.Email,
                it.IndustryZone,
                it.MainBusiness,
                it.MainProduct,
                it.Next6Month,
                it.WorkforceScale,
                it.DangkyDichvu,
                it.DangkyDichvunote,
                it.RepresentativeName,
                it.Position,
                it.RepresentativePhone,
                it.OtherContact,
                it.RegisterTime,
                it.UpdateBy,
                it.UpdateTime
            })
            .Where(it => it.Id == employer.Id)
            .ExecuteCommandAsync();
    }

    public async Task<List<SysEmployer>> SelectEmployerAsync(string userName)
    {
        if (string.IsNullOrEmpty(userName))
            return new List<SysEmployer>();

        // Use the repository's Queryable to explicitly filter by CreateBy.
        return await _sysEmployerRepository.Queryable(new SysEmployerDto())
                                           .Where(e => e.CreateBy == userName)
                                           .ToListAsync();

    }
}