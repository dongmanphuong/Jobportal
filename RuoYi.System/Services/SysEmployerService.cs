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

}