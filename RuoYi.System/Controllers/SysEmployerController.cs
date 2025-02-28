using RuoYi.Common.Constants;
using RuoYi.Common.Enums;
using RuoYi.Common.Utils;
using RuoYi.Data.Dtos;
using RuoYi.Data.Models;
using RuoYi.Framework;
using RuoYi.System.Services;
using SqlSugar;
using Location = RuoYi.Data.Models.Location;

namespace RuoYi.System.Controllers
{
    [ApiDescriptionSettings("Employer")]
    [Route("api/employer")]
    public class SysEmployerController : ControllerBase
    {
        private readonly ILogger<SysDictTypeController> _logger;
        private readonly SysEmployerService _sysEmployerService;
        private readonly SysProvinceService _sysProvinceService;
        private readonly SysDistrictService _sysDistrictService;
        private readonly SysWardService _sysWardService;

        /// <summary>
        /// SysEmployerController
        /// </summary>
        /// <param name="logger"></param>
        /// <param name="sysEmployerService"></param>
        public SysEmployerController(ILogger<SysDictTypeController> logger,
            SysEmployerService sysEmployerService, SysProvinceService sysProvinceService, SysDistrictService sysDistrictService, SysWardService sysWardService)
        {
            _logger = logger;
            _sysEmployerService = sysEmployerService;
            _sysProvinceService = sysProvinceService;
            _sysDistrictService = sysDistrictService;
            _sysWardService = sysWardService;
        }

        /// <summary>
        /// 
        /// </summary>
        /// <returns></returns>
        [HttpGet("listprovince")]
        // [AppAuthorize("system:dict:list")]
        public async Task<List<Location>> GetListProvince()
        {
            List<SysProvince> lsProvince = await _sysProvinceService.SelectListProvince();
            List<Location> lsLocation = new List<Location>();

            for (int i = 0; i < lsProvince.Count; i++)
            {
                 Location location = new Location();
                location.Value = lsProvince[i].Code;
                location.Label = lsProvince[i].Name;
                lsLocation.Add(location);
            }

            return lsLocation;
        }

        /// <summary>
        /// 
        /// </summary>
        /// <returns></returns>
        [HttpGet("listdistrict")]
        // [AppAuthorize("system:dict:list")]
        public async Task<List<Location>> GetListStrict(int proviceId)
        {
            List<SysDistrict> lsDistrict = await _sysDistrictService.SelectList(proviceId);
            List<Location> lsLocation = new List<Location>();

            for (int i = 0; i < lsDistrict.Count; i++)
            {
                Location location = new Location();
                location.Value = lsDistrict[i].Code;
                location.Label = lsDistrict[i].Name;
                lsLocation.Add(location);
            }

            return lsLocation;
        }

        /// <summary>
        /// 
        /// </summary>
        /// <returns></returns>
        [HttpGet("listward")]
        // [AppAuthorize("system:dict:list")]
        public async Task<List<Location>> GetListWard(int districtId)
        {
            List<SysWard> lsWard = await _sysWardService.SelectList(districtId);
            List<Location> lsLocation = new List<Location>();

            for (int i = 0; i < lsWard.Count; i++)
            {
                Location location = new Location();
                location.Value = lsWard[i].Code;
                location.Label = lsWard[i].Name;
                lsLocation.Add(location);
            }

            return lsLocation;
        }

        /// <summary>
        /// Save Employer Data
        /// </summary>
        /// <param name="employerDto">Employer form data</param>
        /// <returns>Success or error message</returns>
        [HttpPost("save")]
        [Log(Title = "Doanh nghiệp tuyển dụng", BusinessType = BusinessType.INSERT)]
        public async Task<IActionResult> SaveEmployer([FromBody] SysEmployerDto employerDto)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            try
            {
                await _sysEmployerService.SaveEmployerAsync(employerDto);
                return Ok(new { status = 1, msg = "Lưu thành công!" });
            }
            catch (Exception ex)
            {
                _logger.LogError(ex, "Error saving employer data");
                return StatusCode(500, new { status = 0, msg = "Lỗi khi lưu dữ liệu" });
            }
        }

        [HttpPut("update")]
        [Log(Title = "Doanh nghiệp tuyển dụng", BusinessType = BusinessType.UPDATE)]
        public async Task<IActionResult> UpdateEmployer([FromBody] SysEmployerDto employerDto)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            try
            {
                await _sysEmployerService.UpdateAsync(employerDto);
                return Ok(new { status = 1, msg = "Lưu thành công!" });
            }
            catch (Exception ex)
            {
                _logger.LogError(ex, "Error update employer data");
                return StatusCode(500, new { status = 0, msg = "Lỗi khi lưu dữ liệu" });
            }
        }

        /// <summary>
        /// 
        /// </summary>
        /// <returns></returns>
        [HttpGet("getEmployer")]
        // [AppAuthorize("system:dict:list")]
        public async Task<List<SysEmployer>> GetEmployerByUser(string userName)
        {
            
            List<SysEmployer> data = await _sysEmployerService.SelectEmployerAsync(userName);
            if (data == null)
            {
                data = new List<SysEmployer>();
            }
            return data;
        }
    }

}
