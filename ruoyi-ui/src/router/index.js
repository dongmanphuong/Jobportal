import Vue from 'vue'
import Router from 'vue-router'

Vue.use(Router)

/* Layout */
import Layout from '@/layout'
import DefaultLayout from '../layout/default.vue'
import HomeLayout from '../layout/home.vue'

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
    path: '/home',
    component: HomeLayout,
    children: [
      {
        path: '',
        component: () => import('@/views/HomePage.vue'),
      }
    ]
  },
  {
    path: '/san-viec-lam',
    component: DefaultLayout,
    children: [
      {
        path: '',
        component: () => import('@/views/JobBroker.vue'),
      }
    ],
    hidden: true
  },
  {
    path: '/gioi-thieu',
    component: DefaultLayout,
    children: [
      {
        path: '',
        component: () => import('@/views/AboutUs.vue'),
      }
    ],
    hidden: true
  },
  {
    path: '/tin-tuc',
    component: DefaultLayout,
    children: [
      {
        path: '',
        component: () => import('@/views/News.vue'),
      },
      {
        path: 'chi-tiet',
        component: () => import('@/views/NewsDetail.vue'),
      }
    ],
    hidden: true
  },
  {
    path: '/viec-lam',
    component: DefaultLayout,
    children: [
      {
        path: '',
        component: () => import('@/views/JobList.vue'),
      },
      {
        path: 'view-grid',
        component: () => import('@/views/JobGrid.vue'),
      },
      {
        path: 'chi-tiet',
        component: () => import('@/views/JobDetail.vue'),
      }
    ]
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

// 动态路由，基于用户权限动态去加载
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
    path: '/recruitment/employer',
    component: Layout,
    component: () => import('@/views/recruitment/EmployerForm'),
    hidden: true
  },
  {
    path: '/recruitment/postjob',
    component: Layout,
    component: () => import('@/views/recruitment/PostJob'),
    hidden: true
  },
  {
    path: '/recruitment/joblisting',
    component: Layout,
    component: () => import('@/views/recruitment/JobListing'),
    hidden: true
  },
  {
    path: '/candidateprofile/list',
    component: Layout,
    component: () => import('@/views/candidateprofile/CandidateList'),
    hidden: true
  },
  {
    path: '/candidateprofile/ApplicantList',
    component: Layout,
    component: () => import('@/views/candidateprofile/ApplicantList'),
    hidden: true
  },
  {
    path: '/candidateprofile/SavedCandidates',
    component: Layout,
    component: () => import('@/views/candidateprofile/SavedCandidates'),
    hidden: true
  },
  {
    path: '/candidateprofile/InvitedCandidates',
    component: () => import('@/views/candidateprofile/InvitedCandidates'),
    hidden: true
  },
  {
    path: '/candidateprofile/ViewedCandidates',
    component: Layout,
    component: () => import('@/views/candidateprofile/ViewedCandidates'),
    hidden: true
  },
  {
    path: '/candidateprofile/BlacklistedCandidates',
    component: () => import('@/views/candidateprofile/BlacklistedCandidates'),
    hidden: true
  },
  {
    path: '/candidateprofile/TransactionList',
    component: () => import('@/views/candidateprofile/TransactionList'),
    hidden: true
  },
  {
    path: '/candidateprofile/EmployerDashboard',
    component: () => import('@/views/candidateprofile/EmployerDashboard'),
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
    path: '/AppliedJobs/Dashboard',
    component: () => import('@/views/AppliedJobs/Dashboard'),
    hidden: true
  },
  {
    path: '/AppliedJobs/AppliedJobsManagement',
    component: () => import('@/views/AppliedJobs/AppliedJobsManagement'),
    hidden: true
  },

  {
    path: '/AppliedJobs/AppliedJobs',
    component: () => import('@/views/AppliedJobs/AppliedJobs'),
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
