<template>
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
    <div class="container py-3">
      <Slickcarousel />
    </div>
  </div>
</template>

<script>
import SearchForm from "./TemplateParts/SearchForm.vue";
import Slickcarousel from "./TemplateParts/SlickCarousel.vue";

export default {
  components: {
    SearchForm,
    Slickcarousel
  }
};
</script>
