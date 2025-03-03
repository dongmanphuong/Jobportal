<template>
  <div class="container content-space-0 content-space-lg-1">

    <!-- Companies Grid -->
    <div class="row gx-3 mx-n2">
      <div v-for="(company, index) in topCompanies" :key="index" class="col-sm-6 col-md-4 mb-3">
        <!-- Card -->
        <div class="card card-bordered card-transition h-100">
          <a class="card-body" :href="company.link">
            <div class="d-flex">
              <div class="flex-shrink-0">
                <img class="avatar avatar-xs" :src="company.logo" :alt="company.name">
              </div>

              <div class="flex-grow-1 ms-3">
                <div class="d-flex align-items-center">
                  <h5 class="card-title mb-0">{{ company.name }}</h5>
                  <img v-if="company.isTopVendor" class="avatar avatar-xss ms-1"
                       src="/assets/svg/illustrations/top-vendor.svg" alt="Top Vendor" title="Top Vendor">
                </div>
                <p class="card-text text-body small">Đang tuyển {{ company.jobs }} việc làm</p>
              </div>
            </div>
          </a>
        </div>
        <!-- End Card -->
      </div>
    </div>
    <!-- End Row -->
  </div>
</template>

<script>
export default {
  data() {
    return {
      topCompanies: [
        { name: "Công Ty TNHH Đầu Tư Và Thương Mại An Lành", logo: "/images/company/cong-ty-tnhh-dau-tu-va-thuong-mai-an-lanh.jpg", link: "#", jobs: 5, isTopVendor: true },
        { name: "Công ty CP Bảo Linh", logo: "/images/company/cong-ty-cp-bao-linh.jpg", link: "#", jobs: 15, isTopVendor: false },
        { name: "CÔNG TY TNHH ĐIỆN TỬ - TIN HỌC PHI DŨNG", logo: "/images/company/cong-ty-tnhh-dien-tu-tin-hoc-phi-dung.png", link: "#", jobs: 2, isTopVendor: true },
        { name: "CÔNG TY TNHH CÔNG NGHIỆP SINTE NAM ĐỊNH", logo: "/images/company/cty-sinte.png", link: "#", jobs: 3, isTopVendor: false },
        { name: "Công Ty TNHH Đầu Tư Và Thương Mại An Lành", logo: "/images/company/cong-ty-tnhh-dau-tu-va-thuong-mai-an-lanh.jpg", link: "#", jobs: 6, isTopVendor: true },
        { name: "Công ty CP Bảo Linh", logo: "/images/company/cong-ty-cp-bao-linh.jpg", link: "#", jobs: 15, isTopVendor: false },
      ]
    };
  }
};
</script>
