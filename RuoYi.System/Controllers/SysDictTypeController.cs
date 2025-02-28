using RuoYi.Common.Enums;
using RuoYi.Common.Utils;
using RuoYi.Data.Dtos;
using RuoYi.Data.Models;
using RuoYi.Framework;
using RuoYi.System.Services;

namespace RuoYi.System.Controllers
{
    /// <summary>
    /// 字典类型表
    /// </summary>
    [ApiDescriptionSettings("System")]
    [Route("system/dict/type")]
    public class SysDictTypeController : ControllerBase
    {
        private readonly ILogger<SysDictTypeController> _logger;
        private readonly SysDictTypeService _sysDictTypeService;

        public SysDictTypeController(ILogger<SysDictTypeController> logger,
            SysDictTypeService sysDictTypeService)
        {
            _logger = logger;
            _sysDictTypeService = sysDictTypeService;
        }


        /// <summary>
        /// 查询字典类型表列表
        /// </summary>
        [HttpGet("listdicttype")]
        // [AppAuthorize("system:dict:list")]
        public async Task<List<SelectBox>> GetSysDictTypeList(string dictType)
        {
            List<SysDictData> ls = await _sysDictTypeService.SelectDictDataByTypeAsync(dictType);
            List<SelectBox> lsSelectBox = new List<SelectBox>();

            for (int i = 0; i < ls.Count; i++)
            {
                SelectBox slBox = new SelectBox();
                slBox.Value = Convert.ToInt16(ls[i].DictValue);
                slBox.Label = ls[i].DictLabel;
                lsSelectBox.Add(slBox);
            }

            return lsSelectBox;
        }



        /// <summary>
        /// 查询字典类型表列表
        /// </summary>
        [HttpGet("list")]
        [AppAuthorize("system:dict:list")]
        public async Task<SqlSugarPagedList<SysDictTypeDto>> GetSysDictTypeList([FromQuery] SysDictTypeDto dto)
        {
            return await _sysDictTypeService.GetDtoPagedListAsync(dto);
        }

        /// <summary>
        /// 获取 字典类型表 详细信息
        /// </summary>
        [HttpGet("{id}")]
        [AppAuthorize("system:dict:query")]
        public async Task<AjaxResult> Get(long? id)
        {
            var data = await _sysDictTypeService.GetAsync(id);
            return AjaxResult.Success(data);
        }

        /// <summary>
        /// 新增 字典类型表
        /// </summary>
        [HttpPost("")]
        [AppAuthorize("system:dict:add")]
        [TypeFilter(typeof(RuoYi.Framework.DataValidation.DataValidationFilter))]
        [Log(Title = "Loại từ điển", BusinessType = BusinessType.INSERT)]
        public async Task<AjaxResult> Add([FromBody] SysDictTypeDto dto)
        {
            if (!await _sysDictTypeService.CheckDictTypeUniqueAsync(dto))
            {
                return AjaxResult.Error("Thêm từ điển mới '" + dto.DictName + "' Không thành công, loại từ điển đã tồn tại");
            }
            var data = await _sysDictTypeService.InsertDictTypeAsync(dto);
            return AjaxResult.Success(data);
        }

        /// <summary>
        /// 修改 字典类型表
        /// </summary>
        [HttpPut("")]
        [AppAuthorize("system:dict:edit")]
        [TypeFilter(typeof(RuoYi.Framework.DataValidation.DataValidationFilter))]
        [Log(Title = "Loại từ điển", BusinessType = BusinessType.UPDATE)]
        public async Task<AjaxResult> Edit([FromBody] SysDictTypeDto dto)
        {
            if (!await _sysDictTypeService.CheckDictTypeUniqueAsync(dto))
            {
                return AjaxResult.Error("Sửa đổi từ điển'" + dto.DictName + "'Không thành công, loại từ điển đã tồn tại");
            }
            var data = await _sysDictTypeService.UpdateDictTypeAsync(dto);
            return AjaxResult.Success(data);
        }

        /// <summary>
        /// 删除 字典类型表
        /// </summary>
        [HttpDelete("{ids}")]
        [AppAuthorize("system:dict:remove")]
        [Log(Title = "Loại từ điển", BusinessType = BusinessType.DELETE)]
        public async Task<AjaxResult> Remove(long[] ids)
        {
            await _sysDictTypeService.DeleteDictTypeByIdsAsync(ids);
            return AjaxResult.Success();
        }

        /// <summary>
        /// 刷新字典缓存
        /// </summary>
        [HttpDelete("refreshCache")]
        [AppAuthorize("system:dict:remove")]
        [Log(Title = "Loại từ điển", BusinessType = BusinessType.CLEAN)]
        public AjaxResult RefreshCache()
        {
            _sysDictTypeService.ResetDictCache();
            return AjaxResult.Success();
        }

        /// <summary>
        /// 获取字典选择框列表
        /// </summary>
        [HttpGet("optionselect")]
        public async Task<AjaxResult> OptionSelect()
        {
            var data = await _sysDictTypeService.SelectDictTypeAllAsync();
            return AjaxResult.Success(data);
        }

        /// <summary>
        /// 导出 字典类型表
        /// </summary>
        [HttpPost("export")]
        [AppAuthorize("system:dict:export")]
        [Log(Title = "Loại từ điển", BusinessType = BusinessType.EXPORT)]
        public async Task Export(SysDictTypeDto dto)
        {
            var list = await _sysDictTypeService.GetDtoListAsync(dto);
            await ExcelUtils.ExportAsync(App.HttpContext.Response, list);
        }
    }
}