using RuoYi.Data.Models;
using RuoYi.System.Repositories;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RuoYi.System.Services
{
    public class SysWardService : BaseService<SysWard, WardDto>, ITransient
    {
        private readonly ILogger<SysWardService> _logger;
        private readonly SysWardRepository _sysWardRepository;

        public SysWardService(ILogger<SysWardService> logger,
            SysWardRepository sysWardRepository)
        {
            BaseRepo = sysWardRepository;

            _logger = logger;
            _sysWardRepository = sysWardRepository;
        }

        public async Task<List<SysWard>> SelectList(int districtId)
        {
            // Retrieve SysProvince data from repository
            List<SysWard> sysDistrict = await _sysWardRepository.SelectListAsync(districtId);

            // Map each SysProvince to Province
            List<SysWard> list = sysDistrict.Select(sp => new SysWard
            {
                Code = sp.Code,   // Ensure that these properties exist on both models
                Name = sp.Name
                // Map any additional properties if needed
            }).ToList();

            return list;
        }
      
    }
}
