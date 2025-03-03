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

// Dynamic routes – cấu trúc đã được sửa lỗi duplicate key "component"
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
    hidden: true,
    children: [
      {
        path: '',
        component: () => import('@/views/recruitment/EmployerForm')
      }
    ]
  },
  {
    path: '/recruitment/postjob',
    component: Layout,
    hidden: true,
    children: [
      {
        path: '',
        component: () => import('@/views/recruitment/PostJob')
      }
    ]
  },
  {
    path: '/recruitment/joblisting',
    component: Layout,
    hidden: true,
    children: [
      {
        path: '',
        component: () => import('@/views/recruitment/JobListing')
      }
    ]
  },
  {
    path: '/candidateprofile/list',
    component: Layout,
    hidden: true,
    children: [
      {
        path: '',
        component: () => import('@/views/candidateprofile/CandidateList')
      }
    ]
  },
  {
    path: '/candidateprofile/ApplicantList',
    component: Layout,
    hidden: true,
    children: [
      {
        path: '',
        component: () => import('@/views/candidateprofile/ApplicantList')
      }
    ]
  },
  {
    path: '/candidateprofile/SavedCandidates',
    component: Layout,
    hidden: true,
    children: [
      {
        path: '',
        component: () => import('@/views/candidateprofile/SavedCandidates')
      }
    ]
  },
  {
    path: '/candidateprofile/InvitedCandidates',
    component: Layout,
    hidden: true,
    children: [
      {
        path: '',
        component: () => import('@/views/candidateprofile/InvitedCandidates')
      }
    ]
  },
  {
    path: '/candidateprofile/ViewedCandidates',
    component: Layout,
    hidden: true,
    children: [
      {
        path: '',
        component: () => import('@/views/candidateprofile/ViewedCandidates')
      }
    ]
  },
  {
    path: '/candidateprofile/BlacklistedCandidates',
    component: Layout,
    hidden: true,
    children: [
      {
        path: '',
        component: () => import('@/views/candidateprofile/BlacklistedCandidates')
      }
    ]
  },  
  {
    path: '/candidateprofile/TransactionList',
    component: Layout,
    hidden: true,
    children: [
      {
        path: '',
        component: () => import('@/views/candidateprofile/TransactionList')
      }
    ]
  },
  {
    path: '/candidateprofile/EmployerDashboard',
    component: Layout,
    hidden: true,
    children: [
      {
        path: '',
        component: () => import('@/views/candidateprofile/EmployerDashboard')
      }
    ]
  },
  {
    path: '/jobseeker/Dashboard',
    component: Layout,
    hidden: true,
    children: [
      {
        path: '',
        component: () => import('@/views/jobseeker/Dashboard')
      }
    ]
  },
  {
    path: '/jobseeker/ResumeManagement',
    component: Layout,
    hidden: true,
    children: [
      {
        path: '',
        component: () => import('@/views/jobseeker/ResumeManagement')
      }
    ]
  },
  {
    path: '/jobseeker/WorkPreferences',
    component: Layout,
    hidden: true,
    children: [
      {
        path: '',
        component: () => import('@/views/jobseeker/WorkPreferences')
      }
    ]
  },
  {
    path: '/AppliedJobs/Dashboard',
    component: Layout,
    hidden: true,
    children: [
      {
        path: '',
        component: () => import('@/views/AppliedJobs/Dashboard')
      }
    ]
  },
  {
    path: '/AppliedJobs/AppliedJobsManagement',
    component: Layout,
    hidden: true,
    children: [
      {
        path: '',
        component: () => import('@/views/AppliedJobs/AppliedJobsManagement')
      }
    ]
  },
  {
    path: '/AppliedJobs/AppliedJobs',
    component: Layout,
    hidden: true,
    children: [
      {
        path: '',
        component: () => import('@/views/AppliedJobs/AppliedJobs')
      }
    ]
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
// Xử lý lỗi khi gọi router.push
Router.prototype.push = function push(location) {
  return routerPush.call(this, location).catch(err => err)
}
// Xử lý lỗi khi gọi router.replace
Router.prototype.replace = function replace(location) {
  return routerReplace.call(this, location).catch(err => err)
}

export default new Router({
  mode: 'history',
  scrollBehavior: () => ({ y: 0 }),
  routes: constantRoutes
})
