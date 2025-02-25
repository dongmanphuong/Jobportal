<template>
  <div>
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
    <div class="row align-items-center mb-5">
      <div class="col-sm mb-3 mb-sm-0">
        <h3 class="mb-0">{{ totalJobs }} jobs for <span class="fw-normal">{{ country }}</span></h3>
      </div>

      <div class="col-sm-auto">
        <div class="d-sm-flex justify-content-sm-end align-items-center">
          <div class="mb-2 mb-sm-0 me-sm-2">
            <select v-model="sortOption" class="form-select form-select-sm">
              <option value="Relevance">Relevance</option>
              <option value="mostRecent">Most recent</option>
            </select>
          </div>

          <div class="mb-2 mb-sm-0 me-sm-2">
            <select v-model="alphabetOption" class="form-select form-select-sm">
              <option value="A-to-Z">A-to-Z</option>
              <option value="Z-to-A">Z-to-A</option>
            </select>
          </div>

          <ul class="nav nav-segment">
            <li class="nav-item">
              <a class="nav-link active" href="#" >
                <i class="bi-grid-fill"></i>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link"  href="/viec-lam" >
                <i class="bi-list"></i>
              </a>
            </li>
          </ul>
        </div>
      </div>
    </div>

    <!-- Job List -->
    <div class="row row-cols-1 row-cols-sm-2 mb-5">
      <JobGridCard v-for="job in jobs" :key="job.id" :job="job" />
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
import JobGridCard from '../components/Joblist/JobGridCard.vue';

export default {
  name: 'Index',
  components: {
    JobUrgent,
    Rightbar,
    JobGridCard
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
          company: "Mailchimp",
          position: "Senior B2B sales consultant",
          salary: "$125k-$135k yearly",
          location: "Oxford",
          type: "Full time",
          posted: "7 hours ago",
          image: "/assets/svg/brands/mailchimp-icon.svg"
        },
        {
          id: 2,
          company: "Capsule",
          position: "Office assistant/Social media assistant",
          salary: "$50-$135 hourly",
          location: "Newcastle",
          type: "Part time",
          posted: "21 hours ago",
          image: "/assets/svg/brands/capsule-icon.svg"
        },
        {
          id: 3,
          company: "Dropbox",
          position: "Marketing and Communications Manager",
          salary: "$5k monthly",
          location: "London",
          type: "Full time",
          posted: "1 day ago",
          image: "/assets/svg/brands/dropbox-icon.svg"
        },
        {
          id: 1,
          company: "Mailchimp",
          position: "Senior B2B sales consultant",
          salary: "$125k-$135k yearly",
          location: "Oxford",
          type: "Full time",
          posted: "7 hours ago",
          image: "/assets/svg/brands/mailchimp-icon.svg"
        },
        {
          id: 2,
          company: "Capsule",
          position: "Office assistant/Social media assistant",
          salary: "$50-$135 hourly",
          location: "Newcastle",
          type: "Part time",
          posted: "21 hours ago",
          image: "/assets/svg/brands/capsule-icon.svg"
        },
        {
          id: 3,
          company: "Dropbox",
          position: "Marketing and Communications Manager",
          salary: "$5k monthly",
          location: "London",
          type: "Full time",
          posted: "1 day ago",
          image: "/assets/svg/brands/dropbox-icon.svg"
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
