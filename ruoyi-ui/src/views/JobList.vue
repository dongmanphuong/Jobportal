<template>
  <div>
    <BreadCrumb />
    <div class="container-fluid bg-light">
      <div class="container content-space-t-1 content-space-t-md-2 content-space-b-1 content-space-b-lg-1">
        <!-- Title Section -->
        <div class="section-title text-center">
          <h1>Tuyển gấp</h1>
          <p>Các việc làm phổ biến được phân chia theo từng nhóm, từng ngành cụ thể...</p>
        </div>
        <JobUrgent />
      </div>
    </div>

    <!-- Card Grid -->
    <div class="container content-space-t-1 content-space-t-md-2 content-space-b-2 content-space-b-lg-3">
      <div class="row">
        <div class="col-lg-3 order-lg-2">
          <!-- Navbar -->
          <Rightbar />
          <!-- End Navbar -->
        </div>
        <!-- End Col -->

        <div class="col-lg-9">
    <!-- Header -->
    <div class="row align-items-center mb-5">
      <div class="col-sm mb-3 mb-sm-0">
        <h3 class="mb-0">Việc làm phù hợp</h3>
      </div>

      <div class="col-sm-auto">
        <div class="d-sm-flex justify-content-sm-end align-items-center">
          <div class="mb-2 mb-sm-0 me-sm-2">
            <select v-model="sortOption" class="form-select form-select-sm">
              <option value="Relevance">Lương cao</option>
              <option value="mostRecent">Mới nhất</option>
            </select>
          </div>

          <div class="mb-2 mb-sm-0 me-sm-2">
            <select v-model="alphabetOption" class="form-select form-select-sm">
              <option value="A-to-Z">A-Z</option>
              <option value="Z-to-A">Z-A</option>
            </select>
          </div>

          <ul class="nav nav-segment">
            <li class="nav-item">
              <a class="nav-link" href="/viec-lam/view-grid">
                <i class="bi-grid-fill"></i>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" :class="{ active: viewMode === 'list' }" href="#">
                <i class="bi-list"></i>
              </a>
            </li>
          </ul>
        </div>
      </div>
    </div>

    <!-- Job List -->
    <div class="d-grid gap-5 mb-10">
      <JobCard v-for="job in jobs" :key="job.id" :job="job" />
    </div>

    <!-- Pagination -->
    <nav aria-label="Page navigation">
      <ul class="pagination justify-content-center">
        <li class="page-item" :class="{ disabled: currentPage === 1 }">
          <a class="page-link" href="#" @click.prevent="changePage(currentPage - 1)">
            <i class="bi-chevron-double-left small"></i>
          </a>
        </li>
        <li v-for="page in totalPages" :key="page" class="page-item" :class="{ active: page === currentPage }">
          <a class="page-link" href="#" @click.prevent="changePage(page)">{{ page }}</a>
        </li>
        <li class="page-item" :class="{ disabled: currentPage === totalPages }">
          <a class="page-link" href="#" @click.prevent="changePage(currentPage + 1)">
            <i class="bi-chevron-double-right small"></i>
          </a>
        </li>
      </ul>
    </nav>
  </div>
        <!-- End Col -->
      </div>
      <!-- End Row -->
    </div>
    <!-- End Card Grid -->
    <!-- ========== END MAIN CONTENT ========== -->
  </div>
</template>

<script>
import JobUrgent from '../components/HomeSection/JobTab/JobUrgent.vue';
import Rightbar from '../components/Joblist/Rightbar.vue';
import JobCard from '../components/Joblist/JobCard.vue';
import JobBreadCrumb from '../components/Joblist/TemplateParts/JobBreadCrumb.vue';

export default {
  name: 'Index',
  components: {
    JobBreadCrumb,
    JobUrgent,
    Rightbar,
    JobCard
  },
  data() {
    return {
      totalJobs: 90,
      country: "UK",
      sortOption: "Relevance",
      alphabetOption: "A-to-Z",
      viewMode: "list",
      currentPage: 1,
      totalPages: 3,
      jobs: [
        {
          id: 1,
          company: "Công ty Cổ phần Giáo dục và Đào tạo Quốc tế Sydney",
          position: "Công nhân may mẫu",
          salary: "Thoả thuận ",
          location: "Bắc Kạn",
          type: "Full time",
          posted: "7 hours ago",
          jobLink: "/viec-lam/detail",
          image: "/images/company/cong-ty-tnhh-dau-tu-va-thuong-mai-an-lanh.jpg"
        },
        {
          id: 2,
          company: "CÔNG TY TNHH UNIKO",
          position: "Nhân viên kho",
          salary: "12-15 triệu/tháng",
          location: "Bắc Kạn",
          type: "Part time",
          posted: "21 hours ago",
          jobLink: "/viec-lam/detail",
          image: "/images/company/cong-ty-cp-bao-linh.jpg"
        },
        {
          id: 3,
          company: "CÔNG TY TNHH FENGXIN SPORTSWEAR VIỆT NAM",
          position: "Kế toán thuế",
          salary: "9 triệu/tháng",
          location: "Bắc Kạn",
          type: "Full time",
          posted: "1 day ago",
          jobLink: "/viec-lam/detail",
          image: "/images/company/cong-ty-tnhh-dien-tu-tin-hoc-phi-dung.png"
        },
        {
          id: 4,
          company: "Công ty Cổ phần Giáo dục và Đào tạo Quốc tế Sydney",
          position: "Công nhân may mẫu",
          salary: "Thoả thuận ",
          location: "Bắc Kạn",
          type: "Full time",
          posted: "7 hours ago",
          jobLink: "/viec-lam/detail",
          image: "/images/company/cong-ty-tnhh-dau-tu-va-thuong-mai-an-lanh.jpg"
        },
        {
          id: 5,
          company: "CÔNG TY TNHH UNIKO",
          position: "Nhân viên kho",
          salary: "12-15 triệu/tháng",
          location: "Bắc Kạn",
          type: "Part time",
          posted: "21 hours ago",
          jobLink: "/viec-lam/detail",
          image: "/images/company/cong-ty-cp-bao-linh.jpg"
        },
        {
          id: 6,
          company: "CÔNG TY TNHH FENGXIN SPORTSWEAR VIỆT NAM",
          position: "Kế toán thuế",
          salary: "9 triệu/tháng",
          location: "Bắc Kạn",
          type: "Full time",
          posted: "1 day ago",
          jobLink: "/viec-lam/detail",
          image: "/images/company/cong-ty-tnhh-dien-tu-tin-hoc-phi-dung.png"
        }
      ]
    };
  },
  methods: {
    toggleView(mode) {
      this.viewMode = mode;
    },
    changePage(page) {
      if (page >= 1 && page <= this.totalPages) {
        this.currentPage = page;
      }
    }
  }
}
</script>

<style lang="scss" scoped>
.dashboard-editor-container {
  padding: 32px;
  background-color: rgb(240, 242, 245);
  position: relative;

  .chart-wrapper {
    background: #fff;
    padding: 16px 16px 0;
    margin-bottom: 32px;
  }
}

@media (max-width:1024px) {
  .chart-wrapper {
    padding: 8px;
  }
}
</style>
