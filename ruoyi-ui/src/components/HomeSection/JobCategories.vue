<template>
  <div class="container content-space-1 content-space-lg-1">
    <!-- Heading -->
    <div class="w-md-100 w-lg-75 text-center mx-md-auto mb-7">
      <h2>NHÓM VIỆC LÀM</h2>
      <p>
        Các việc làm phổ biến được phân chia theo từng nhóm, từng ngành cụ thể...
        <a class="link" href="#">Tìm việc làm.</a>
      </p>
    </div>
    <!-- End Heading -->

    <!-- Job Categories Grid -->
    <div class="row row-cols-2 row-cols-sm-3 row-cols-md-3 row-cols-lg-4 mb-5">
      <div v-for="(category, index) in jobCategories" :key="index" class="col mb-3 mb-sm-4">
        <a class="card card-sm card-bordered card-transition h-100" :href="category.link">
          <div class="card-body">
            <div class="row align-items-center">
              <div class="col">
                <h5 class="card-title text-inherit">{{ category.title }}</h5>
                <p class="card-text text-body small">{{ category.jobs }} việc làm</p>
              </div>
              <div class="col-auto">
                <span class="text-muted">
                  <i class="bi-chevron-right small"></i>
                </span>
              </div>
            </div>
          </div>
        </a>
      </div>
    </div>
    <!-- End Job Categories Grid -->

    <div class="text-center">
      <a class="btn btn-outline-primary" href="/viec-lam">
        Danh sách việc làm <i class="bi-chevron-right small ms-1"></i>
      </a>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      jobCategories: [
        { title: "Dệt may", jobs: 4, link: "/viec-lam" },
        { title: "Bán hàng", jobs: 26, link: "/viec-lam" },
        { title: "Kế toán", jobs: 9, link: "/viec-lam" },
        { title: "Sản xuất", jobs: 11, link: "/viec-lam" },
        { title: "Cơ khí", jobs: 37, link: "/viec-lam" },
        { title: "IT", jobs: 2, link: "/viec-lam" },
        { title: "Điện tử", jobs: 10, link: "/viec-lam" },
        { title: "Xây dựng", jobs: 14, link: "/viec-lam" }
      ]
    };
  }
};
</script>
