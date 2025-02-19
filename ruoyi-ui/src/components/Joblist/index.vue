<template>
  <div>
    <div class="row align-items-center mb-5">
      <div class="col-sm mb-3 mb-sm-0">
        <h3 class="mb-0">{{ filteredJobs.length }} jobs for <span class="fw-normal">UK</span></h3>
      </div>

      <div class="col-sm-auto">
        <div class="d-sm-flex justify-content-sm-end align-items-center">
          <!-- Select -->
          <div class="mb-2 mb-sm-0 me-sm-2">
            <select v-model="sortOption" class="form-select form-select-sm">
              <option value="relevance">Relevance</option>
              <option value="recent">Most recent</option>
            </select>
          </div>
          <!-- End Select -->

          <!-- Select -->
          <div class="mb-2 mb-sm-0 me-sm-2">
            <select v-model="sortAlphaOption" class="form-select form-select-sm">
              <option value="a-z">A-to-Z</option>
              <option value="z-a">Z-to-A</option>
            </select>
          </div>
          <!-- End Select -->

          <!-- Nav -->
          <ul class="nav nav-segment">
            <li class="nav-item">
              <a class="nav-link" href="#">
                <i class="bi-grid-fill"></i>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link active" href="#">
                <i class="bi-list"></i>
              </a>
            </li>
          </ul>
          <!-- End Nav -->
        </div>
      </div>
    </div>
    <!-- End Row -->

    <!-- Card List -->
    <div class="d-grid gap-5 mb-10">
      <!-- Card -->
      <div v-for="job in paginatedJobs" :key="job.id" class="card card-bordered">
        <div class="card-body">
          <div class="d-sm-flex">
            <div class="d-flex align-items-center align-items-sm-start mb-3">
              <div class="flex-shrink-0">
                <img class="avatar avatar-sm avatar-4x3" :src="job.companyLogo" alt="Company Logo" />
              </div>
              <div class="d-sm-none flex-grow-1 ms-3">
                <h6 class="card-title">
                  <a class="text-dark" href="#">{{ job.company }}</a>
                </h6>
              </div>
            </div>

            <div class="flex-grow-1 ms-sm-3">
              <div class="row">
                <div class="col col-md-8">
                  <h3 class="card-title">
                    <a class="text-dark" href="#">{{ job.title }}</a>
                  </h3>
                  <div class="d-none d-sm-inline-block">
                    <h6 class="card-title">
                      <a class="text-dark" href="#">{{ job.company }}</a>
                    </h6>
                  </div>
                </div>
                <!-- End Col -->

                <div class="col-auto order-md-3">
                  <!-- Checkbox Bookmark -->
                  <div class="form-check form-check-bookmark">
                    <input class="form-check-input" type="checkbox" :id="'bookmark-' + job.id" />
                    <label class="form-check-label" :for="'bookmark-' + job.id">
                      <span class="form-check-bookmark-default">
                        <i class="bi-star"></i>
                      </span>
                      <span class="form-check-bookmark-active">
                        <i class="bi-star-fill"></i>
                      </span>
                    </label>
                  </div>
                  <!-- End Checkbox Bookmark -->
                </div>
                <!-- End Col -->

                <div class="col-12 col-md mt-3 mt-md-0">
                  <span class="d-block small text-body mb-1">{{ job.salary }}</span>
                  <span class="badge bg-soft-info text-info me-2">
                    <span class="legend-indicator bg-info"></span>{{ job.type }}
                  </span>
                </div>
                <!-- End Col -->
              </div>
              <!-- End Row -->
            </div>
          </div>
        </div>

        <div class="card-footer pt-0">
          <ul class="list-inline list-separator small text-body">
            <li class="list-inline-item">Posted {{ job.posted }}</li>
            <li class="list-inline-item">{{ job.location }}</li>
            <li class="list-inline-item">{{ job.jobType }}</li>
          </ul>
        </div>
      </div>
      <!-- End Card -->
    </div>
    <!-- End Card List -->

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
    <!-- End Pagination -->
  </div>
</template>

<script>
export default {
  data() {
    return {
      sortOption: "relevance",
      sortAlphaOption: "a-z",
      currentPage: 1,
      jobsPerPage: 3,
      jobs: [
        {
          id: 1,
          title: "Senior B2B Sales Consultant",
          company: "Mailchimp",
          companyLogo: "/assets/svg/brands/mailchimp-icon.svg",
          salary: "$125k-$135k yearly",
          type: "Remote",
          posted: "7 hours ago",
          location: "Oxford",
          jobType: "Full time",
        },
        {
          id: 2,
          title: "Office Assistant/Social Media Assistant",
          company: "Capsule",
          companyLogo: "/assets/svg/brands/capsule-icon.svg",
          salary: "$50-$135 hourly",
          type: "Onsite",
          posted: "21 hours ago",
          location: "Newcastle",
          jobType: "Part time",
        },
        {
          id: 3,
          title: "Marketing and Communications Manager",
          company: "Dropbox",
          companyLogo: "/assets/svg/brands/dropbox-icon.svg",
          salary: "$5k monthly",
          type: "Hybrid",
          posted: "1 day ago",
          location: "London",
          jobType: "Full time",
        },
        {
          id: 4,
          title: "Marketing and Communications Manager",
          company: "Dropbox",
          companyLogo: "/assets/svg/brands/dropbox-icon.svg",
          salary: "$5k monthly",
          type: "Hybrid",
          posted: "1 day ago",
          location: "London",
          jobType: "Full time",
        },
        {
          id: 5,
          title: "Marketing and Communications Manager",
          company: "Dropbox",
          companyLogo: "/assets/svg/brands/dropbox-icon.svg",
          salary: "$5k monthly",
          type: "Hybrid",
          posted: "1 day ago",
          location: "London",
          jobType: "Full time",
        },
        {
          id: 6,
          title: "Marketing and Communications Manager",
          company: "Dropbox",
          companyLogo: "/assets/svg/brands/dropbox-icon.svg",
          salary: "$5k monthly",
          type: "Hybrid",
          posted: "1 day ago",
          location: "London",
          jobType: "Full time",
        },
        {
          id: 7,
          title: "Marketing and Communications Manager",
          company: "Dropbox",
          companyLogo: "/assets/svg/brands/dropbox-icon.svg",
          salary: "$5k monthly",
          type: "Hybrid",
          posted: "1 day ago",
          location: "London",
          jobType: "Full time",
        },
        {
          id: 8,
          title: "Marketing and Communications Manager",
          company: "Dropbox",
          companyLogo: "/assets/svg/brands/dropbox-icon.svg",
          salary: "$5k monthly",
          type: "Hybrid",
          posted: "1 day ago",
          location: "London",
          jobType: "Full time",
        }
      ],
    };
  },
  computed: {
    filteredJobs() {
      let sortedJobs = [...this.jobs];

      if (this.sortAlphaOption === "a-z") {
        sortedJobs.sort((a, b) => a.title.localeCompare(b.title));
      } else if (this.sortAlphaOption === "z-a") {
        sortedJobs.sort((a, b) => b.title.localeCompare(a.title));
      }

      return sortedJobs;
    },
    totalPages() {
      return Math.ceil(this.filteredJobs.length / this.jobsPerPage);
    },
    paginatedJobs() {
      const start = (this.currentPage - 1) * this.jobsPerPage;
      return this.filteredJobs.slice(start, start + this.jobsPerPage);
    },
  },
  methods: {
    changePage(page) {
      if (page >= 1 && page <= this.totalPages) {
        this.currentPage = page;
      }
    },
  },
};
</script>
