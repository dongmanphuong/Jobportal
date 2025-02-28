<template>
  <div class="container mt-4">
    <div class="row row-cols-1 row-cols-sm-3">
      <div v-for="(job, index) in jobs" :key="index" class="col mb-5">
        <!-- Job Card -->
        <div class="card card-bordered h-100">
          <!-- Card Body -->
          <div class="card-body card-body-job pt-3">
            <div class="row mb-3">
              <div class="col">
                <!-- Media -->
                <div class="d-flex align-items-top">
                  <div class="flex-shrink-0">
                    <img class="avatar avatar-sm avatar-4x3 mt-2" :src="job.companyLogo" alt="Company Logo">
                  </div>

                  <div class="flex-grow-1 ms-3">
                    <h6 class="card-title">
                      <a class="text-dark" :href="job.jobLink">{{ job.jobTitle }}</a>
                      <img v-if="job.isClaimed" class="avatar avatar-xss ms-1" :src="job.claimedBadge" alt="Claimed Profile">
                    </h6>
                    <p class="fw-light">
                      <a class="text-dark" href="#">{{ job.company }}</a>
                    </p>
                    <span class="badge bg-soft-info text-info me-2">
                      <span class="legend-indicator bg-info"></span>{{ job.jobType }}
                    </span>
                  </div>
                </div>
                <!-- End Media -->
              </div>
              <!-- End Col -->
            </div>
            <!-- End Row -->
          </div>
          <!-- End Card Body -->

          <!-- Card Footer -->
          <div class="card-footer py-2">
            <ul class="list-inline list-separator small text-body">
              <li class="list-inline-item">{{ job.postedTime }}</li>
              <li class="list-inline-item">{{ job.location }}</li>
            </ul>
          </div>
          <!-- End Card Footer -->
        </div>
        <!-- End Job Card -->
      </div>
      <!-- End Col -->
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      jobs: [
      {
          company: "Công Ty TNHH Đầu Tư Và Thương Mại An Lành",
          companyLogo: "/images/company/cong-ty-tnhh-dau-tu-va-thuong-mai-an-lanh.jpg",
          jobTitle: "Cơ điện",
          jobLink: "/viec-lam/detail",
          isClaimed: true,
          claimedBadge: "/assets/svg/illustrations/top-vendor.svg",
          jobType: "Toàn thời gian",
          jobTypeClass: "bg-info",
          postedTime: "7 giờ trước",
          location: "Bắc Kạn"
        },
        {
          company: "Công ty CP Bảo Linh",
          companyLogo: "/images/company/cong-ty-cp-bao-linh.jpg",
          jobTitle: "Công nhân may",
          jobLink: "/viec-lam/detail",
          isClaimed: false,
          jobType: "Toàn thời gian",
          jobTypeClass: "bg-warning",
          postedTime: "1 ngày trước",
          location: "Bắc Kạn"
        },
        {
          company: "CÔNG TY TNHH ĐIỆN TỬ - TIN HỌC PHI DŨNG",
          companyLogo: "/images/company/cong-ty-tnhh-dien-tu-tin-hoc-phi-dung.png",
          jobTitle: "Nhân viên kế toán",
          jobLink: "/viec-lam/detail",
          jobType: "Toàn thời gian",
          jobTypeClass: "bg-info",
          postedTime: "7 giờ trước",
          location: "Bắc Kạn"
        },
        {
          company: "CÔNG TY TNHH CÔNG NGHIỆP SINTE NAM ĐỊNH",
          companyLogo: "/images/company/cty-sinte.png",
          jobTitle: "Lao động kỹ thuật - Nhân viên kiểm định chất lượng",
          jobLink: "/viec-lam/detail",
          isClaimed: false,
          jobType: "Toàn thời gian",
          jobTypeClass: "bg-warning",
          postedTime: "1 ngày trước",
          location: "Bắc Kạn"
        },
        {
          company: "Công Ty TNHH Đầu Tư Và Thương Mại An Lành",
          companyLogo: "/images/company/cong-ty-tnhh-dau-tu-va-thuong-mai-an-lanh.jpg",
          jobTitle: "Cơ điện",
          jobLink: "/viec-lam/detail",
          isClaimed: true,
          claimedBadge: "/assets/svg/illustrations/top-vendor.svg",
          jobType: "Toàn thời gian",
          jobTypeClass: "bg-info",
          postedTime: "7 giờ trước",
          location: "Bắc Kạn"
        },
        {
          company: "Công ty CP Bảo Linh",
          companyLogo: "/images/company/cong-ty-cp-bao-linh.jpg",
          jobTitle: "Công nhân may",
          jobLink: "/viec-lam/detail",
          isClaimed: false,
          jobType: "Toàn thời gian",
          jobTypeClass: "bg-warning",
          postedTime: "1 ngày trước",
          location: "Bắc Kạn"
        }
      ]
    };
  }
};
</script>

<style scoped>
.card-body-job {
  padding-bottom: 0;
  border-bottom: 1px solid #f1f1f1;
}
</style>
