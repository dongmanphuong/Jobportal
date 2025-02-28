using RuoYi.Data.Models;
using RuoYi.System.Repositories;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RuoYi.System.Services
{
    public class SysDistrictService : BaseService<SysDistrict, DistrictDto>, ITransient
    {
        private readonly ILogger<SysDistrictService> _logger;
        private readonly SysDistrictRepository _sysDistrictRepository;

        public SysDistrictService(ILogger<SysDistrictService> logger,
            SysDistrictRepository sysDistrictRepository)
        {
            BaseRepo = sysDistrictRepository;

            _logger = logger;
            _sysDistrictRepository = sysDistrictRepository;
        }

        public async Task<List<SysDistrict>> SelectList(int provinceId)
        {
            // Retrieve SysProvince data from repository
            List<SysDistrict> sysDistrict = await _sysDistrictRepository.SelectListAsync(provinceId);

            // Map each SysProvince to Province
            List<SysDistrict> list = sysDistrict.Select(sp => new SysDistrict
            {
                Code = sp.Code,   // Ensure that these properties exist on both models
                Name = sp.Name
                // Map any additional properties if needed
            }).ToList();

            return list;
        }
    }
}

