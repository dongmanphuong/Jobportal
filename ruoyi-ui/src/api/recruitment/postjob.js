import request from '@/utils/request'



export function listProvince() {
    return request({
      url: '/api/employer/listprovince' ,
      method: 'get'
    })
  }
  
export function listDistrict(provinceId) {
    return request({
      url: '/api/employer/listdistrict' ,
      method: 'get',
      params: provinceId
    })
  }

  export function listWard(districtId) {
    return request({
      url: '/api/employer/listward' ,
      method: 'get',
      params: districtId
    })
  }

  export function getEmployer(userName) {
    return request({
      url: '/api/employer/getEmployer' ,
      method: 'get',
      params: userName
    })
  }
export function addEmployer(data) {
  return request({
    url: '/api/employer/save',
    method: 'post',
    data: data
  })
}


export function updateEmployer(data) {
  return request({
    url: '/api/employer/update',
    method: 'put',
    data: data
  })
}


export function delEmployer(deptId) {
  return request({
    url: '/recruitment/employer/' + deptId,
    method: 'delete'
  })
}

export function listDictType(query) {
    return request({
      url: '/system/dict/type/listdicttype',
      method: 'get',
      params: query
    })
  }