import Vue from 'vue'
import Router from 'vue-router'

Vue.use(Router)

/* Layout */
import Layout from '@/layout'
import DefaultLayout from '../layout/default.vue'

export const constantRoutes = [
  {
    path: '/redirect',
    component: Layout,
    hidden: true,
    children: [
      {
        path: '/redirect/:path(.*)',
        component: () => import('@/views/redirect')
      }
    ]
  },
  {
    path: "/viec-lam",
    component: DefaultLayout,
    children: [
      { path: "", component: () => import('@/views/joblists.vue') },
      { path: "jobs", component: () => import('@/views/joblists.vue') }
    ]
  },
  {
    path: '/home',
    component: () => import('@/views/home'),
    hidden: true
  },
  {
    path: '/login',
    component: () => import('@/views/login'),
    hidden: true
  },
  {
    path: '/register',
    component: () => import('@/views/register'),
    hidden: true
  },
  {
    path: '/404',
    component: () => import('@/views/error/404'),
    hidden: true
  },
  {
    path: '/401',
    component: () => import('@/views/error/401'),
    hidden: true
  },
  {
    path: '',
    component: Layout,
    redirect: 'index',
    children: [
      {
        path: 'index',
        component: () => import('@/views/index'),
        name: 'Index',
        meta: { title: 'Trang chủ', icon: 'dashboard', affix: true }
      }
    ]
  },
  {
    path: '/user',
    component: Layout,
    hidden: true,
    redirect: 'noredirect',
    children: [
      {
        path: 'profile',
        component: () => import('@/views/system/user/profile/index'),
        name: 'Profile',
        meta: { title: 'Thông tin', icon: 'user' }
      }
    ]
  }
]


export const dynamicRoutes = [
  {
    path: '/system/user-auth',
    component: Layout,
    hidden: true,
    permissions: ['system:user:edit'],
    children: [
      {
        path: 'role/:userId(\\d+)',
        component: () => import('@/views/system/user/authRole'),
        name: 'AuthRole',
        meta: { title: 'Phân quyền', activeMenu: '/system/user' }
      }
    ]
  },
  {
    path: '/system/role-auth',
    component: Layout,
    hidden: true,
    permissions: ['system:role:edit'],
    children: [
      {
        path: 'user/:roleId(\\d+)',
        component: () => import('@/views/system/role/authUser'),
        name: 'AuthUser',
        meta: { title: 'Phân quyền người dùng', activeMenu: '/system/role' }
      }
    ]
  },
  {
    path: '/system/dict-data',
    component: Layout,
    hidden: true,
    permissions: ['system:dict:list'],
    children: [
      {
        path: 'index/:dictId(\\d+)',
        component: () => import('@/views/system/dict/data'),
        name: 'Data',
        meta: { title: 'Dữ liệu từ điển', activeMenu: '/system/dict' }
      }
    ]
  },
  {
    path: '/monitor/job-log',
    component: Layout,
    hidden: true,
    permissions: ['monitor:job:list'],
    children: [
      {
        path: 'index/:jobId(\\d+)',
        component: () => import('@/views/monitor/job/log'),
        name: 'JobLog',
        meta: { title: 'Quản lý job', activeMenu: '/monitor/job' }
      }
    ]
  },
  
  {
    path: '/tuyendung/doanhnghiep',
    component: () => import('@/views/tuyendung/thongtin'),
    hidden: true
  },
  {
    path: '/tuyendung/dangtin',
    component: () => import('@/views/tuyendung/dangtin'),
    hidden: true
  },
  {
    path: '/tuyendung/danhsach',
    component: () => import('@/views/tuyendung/danhsach'),
    hidden: true
  }, 
  {
    path: '/hosoungvien/danhsach',
    component: () => import('@/views/hosoungvien/danhsach'),
    hidden: true
  }, 
  {
    path: '/hosoungvien/ApplicantList',
    component: () => import('@/views/hosoungvien/ApplicantList'),
    hidden: true
  }, 
  {
    path: '/hosoungvien/SavedCandidates',
    component: () => import('@/views/hosoungvien/SavedCandidates'),
    hidden: true
  }, 
  {
    path: '/hosoungvien/InvitedCandidates',
    component: () => import('@/views/hosoungvien/InvitedCandidates'),
    hidden: true
  }, 
  {
    path: '/hosoungvien/ViewedCandidates',
    component: () => import('@/views/hosoungvien/ViewedCandidates'),
    hidden: true
  }, 
  {
    path: '/hosoungvien/BlacklistedCandidates',
    component: () => import('@/views/hosoungvien/BlacklistedCandidates'),
    hidden: true
  }, 
  {
    path: '/hosoungvien/TransactionList',
    component: () => import('@/views/hosoungvien/TransactionList'),
    hidden: true
  }, 
  {
    path: '/hosoungvien/EmployerDashboard',
    component: () => import('@/views/hosoungvien/EmployerDashboard'),
    hidden: true
  }, 
  
  {
    path: '/jobseeker/Dashboard',
    component: () => import('@/views/jobseeker/Dashboard'),
    hidden: true
  }, 
  {
    path: '/jobseeker/ResumeManagement',
    component: () => import('@/views/jobseeker/ResumeManagement'),
    hidden: true
  }, 
  
  {
    path: '/jobseeker/WorkPreferences',
    component: () => import('@/views/jobseeker/WorkPreferences'),
    hidden: true
  }, 
  {
    path: '/tool/gen-edit',
    component: Layout,
    hidden: true,
    permissions: ['tool:gen:edit'],
    children: [
      {
        path: 'index/:tableId(\\d+)',
        component: () => import('@/views/tool/gen/editTable'),
        name: 'GenEdit',
        meta: { title: 'Sửa đổi cấu hình', activeMenu: '/tool/gen' }
      }
    ]
  }
]

let routerPush = Router.prototype.push;
let routerReplace = Router.prototype.replace;
// push
Router.prototype.push = function push(location) {
  return routerPush.call(this, location).catch(err => err)
}
// replace
Router.prototype.replace = function push(location) {
  return routerReplace.call(this, location).catch(err => err)
}

export default new Router({
  mode: 'history', 
  scrollBehavior: () => ({ y: 0 }),
  routes: constantRoutes
})
