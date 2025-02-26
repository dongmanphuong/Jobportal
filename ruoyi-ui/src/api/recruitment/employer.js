import request from '@/utils/request'



export function employmentOptions() {
    return request({
      url: '/recruitment/employmentOptions/' ,
      method: 'get'
    })
  }
  
export function getEmployer(employerId) {
  return request({
    url: '/recruitment/employer/' + deptId,
    method: 'get'
  })
}


export function addEmployer(data) {
  return request({
    url: '/recruitment/employer',
    method: 'post',
    data: data
  })
}


export function updateEmployer(data) {
  return request({
    url: '/recruitment/employer',
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