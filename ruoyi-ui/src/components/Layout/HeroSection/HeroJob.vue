<template>
  <div>
    <div>
    <div
      class="position-relative gradient-x-three-sm-primary rounded-2 content-space-t-md-1 content-space-b-md-2 mx-md-0">
      <div class="container position-relative">
        <div class="row position-relative zi-2">
          <div class="col-lg-10 offset-lg-1">
            <!-- Heading -->
            <div class="w-lg-100 text-center mb-5 mb-lg-7">
              <h1 class="fs-2">Trung Tâm Dịch Vụ <span class="text-primary text-highlight-warning">Việc Làm</span> tỉnh
                Bắc Kạn</h1>
              <p class="fs-5">
                Là đơn vị sự nghiệp công lập trực thuộc Sở Lao động – Thương binh và Xã hội tỉnh Bắc Kạn
                <br />Tổ 8A, phường Phùng Chí Kiên, thành phố Bắc Kạn, tỉnh Bắc Kạn
              </p>
            </div>
            <!-- End Heading -->
            <SearchForm />
          </div>
          <!-- End Col -->
        </div>
        <!-- End Row -->
      </div>
    </div>

  </div>

  <div class="container">
      <div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
        <a href="/" class="d-flex align-items-center mb-2 mb-lg-0 text-white text-decoration-none">
          <svg class="bi me-2" width="40" height="32" role="img" aria-label="Bootstrap"><use xlink:href="#bootstrap"></use></svg>
        </a>

        <ul class="nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0">
          <li><a href="#" class="nav-link px-2 text-secondary">Home</a></li>
          <li><a href="#" class="nav-link px-2 text-white">Features</a></li>
          <li><a href="#" class="nav-link px-2 text-white">Pricing</a></li>
          <li><a href="#" class="nav-link px-2 text-white">FAQs</a></li>
          <li><a href="#" class="nav-link px-2 text-white">About</a></li>
        </ul>

        <form class="col-12 col-lg-auto mb-3 mb-lg-0 me-lg-3" role="search">
          <input type="search" class="form-control form-control-dark text-bg-dark" placeholder="Search..." aria-label="Search">
        </form>

        <div class="text-end">
          <button type="button" class="btn btn-outline-light me-2">Login</button>
          <button type="button" class="btn btn-warning">Sign-up</button>
        </div>
      </div>
    </div>


</div>
</template>

<script>
import SearchForm from "./TemplateParts/SearchForm.vue";

export default {
  components: {
    SearchForm
  }
};
</script>
