using RuoYi.Data.Models;
using RuoYi.System.Repositories;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RuoYi.System.Services
{
    public class SysProvinceService : BaseService<SysProvince, ProvinceDto>, ITransient
    {
        private readonly ILogger<SysDictDataService> _logger;
        private readonly SysProvinceRepository _sysProvinceRepository;

        public SysProvinceService(ILogger<SysDictDataService> logger,
            SysProvinceRepository sysProvinceRepository)
        {
            BaseRepo = sysProvinceRepository;

            _logger = logger;
            _sysProvinceRepository = sysProvinceRepository;
        }

        public async Task<List<SysProvince>> SelectListProvince()
        {
            // Retrieve SysProvince data from repository
            List<SysProvince> sysProvinces = await _sysProvinceRepository.SelectListProvinceAsync();

            // Map each SysProvince to Province
            List<SysProvince> lsProvince = sysProvinces.Select(sp => new SysProvince
            {
                Code = sp.Code,   // Ensure that these properties exist on both models
                Name = sp.Name
                // Map any additional properties if needed
            }).ToList();

            return lsProvince;
        }


    }
}
