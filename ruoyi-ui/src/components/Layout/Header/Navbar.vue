<template>

<div class="container-fluid">
    <nav class="js-mega-menu navbar-nav-wrap">
      <!-- Default Logo -->
      <a class="navbar-brand" href="../index.html" aria-label="Front">
        <img class="navbar-brand-logo" src="@/assets/logo/backan-logo.png" alt="Logo">
      </a>
      <!-- End Default Logo -->

      <!-- Secondary Content -->
      <div class="navbar-nav-wrap-secondary-content">
        <!-- Search -->
        <div class="dropdown dropdown-course-search d-lg-none d-inline-block">
          <a class="btn btn-ghost-secondary btn-sm btn-icon" href="#" id="navbarCourseSearchDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            <i class="bi-search"></i>
          </a>

          <div class="dropdown-menu dropdown-card" aria-labelledby="navbarCourseSearchDropdown">
            <!-- Card -->
            <div class="card card-sm">
              <div class="card-body">
                <form class="input-group input-group-merge">
                  <input type="text" class="form-control" placeholder="What do you want to learn?" aria-label="What do you want to learn?">
                  <div class="input-group-append input-group-text">
                    <i class="bi-search"></i>
                  </div>
                </form>
              </div>
            </div>
            <!-- End Card -->
          </div>
        </div>
        <!-- End Search -->

        <!-- Account -->
        <div class="dropdown">
          <a href="#" id="navbarShoppingCartDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false" data-bs-dropdown-animation>
            <img class="avatar avatar-xs avatar-circle" src="/assets/img/160x160/img9.jpg" alt="Image Description">
          </a>

          <div class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarShoppingCartDropdown" style="min-width: 16rem;">
            <a class="d-flex align-items-center p-2" href="#">
              <div class="flex-shrink-0">
                <img class="avatar" src="/assets/img/160x160/img9.jpg" alt="Image Description">
              </div>
              <div class="flex-grow-1 ms-3">
                <span class="d-block fw-semibold">Lida Reidy <span class="badge bg-primary ms-1">Pro</span></span>
                <span class="d-block text-muted small">lidareidy@gmail.com</span>
              </div>
            </a>

            <div class="dropdown-divider my-3"></div>

            <a class="dropdown-item" href="#">
              <span class="dropdown-item-icon">
                <i class="bi-chat-left-dots"></i>
              </span> Messages
            </a>
            <a class="dropdown-item" href="#">
              <span class="dropdown-item-icon">
                <i class="bi-wallet2"></i>
              </span> Purchase history
            </a>
            <a class="dropdown-item" href="#">
              <span class="dropdown-item-icon">
                <i class="bi-person"></i>
              </span> Account
            </a>
            <a class="dropdown-item" href="#">
              <span class="dropdown-item-icon">
                <i class="bi-credit-card"></i>
              </span> Payment methods
            </a>

            <div class="dropdown-divider"></div>

            <a class="dropdown-item" href="#">
              <span class="dropdown-item-icon">
                <i class="bi-question-circle"></i>
              </span> Help
            </a>
            <a class="dropdown-item" href="#">
              <span class="dropdown-item-icon">
                <i class="bi-box-arrow-right"></i>
              </span> Log out
            </a>
          </div>
        </div>
        <!-- End Account -->
      </div>
      <!-- End Secondary Content -->

      <!-- Toggler -->
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-default">
          <i class="bi-list"></i>
        </span>
        <span class="navbar-toggler-toggled">
          <i class="bi-x"></i>
        </span>
      </button>
      <!-- End Toggler -->

      <!-- Collapse -->
      <div class="collapse navbar-collapse mx-5" id="navbarNavDropdown">
        <ul class="navbar-nav ">
          <!-- Landings -->
          <li class="hs-has-mega-menu nav-item">
            <a id="landingsMegaMenu" class="hs-mega-menu-invoker nav-link dropdown-toggle" aria-current="page" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">Trung tâm VLBK</a>

            <!-- Mega Menu -->
            <div class="hs-mega-menu dropdown-menu w-100" aria-labelledby="landingsMegaMenu" style="min-width: 30rem;">
              <div class="row">
                <div class="col-lg-6 d-none d-lg-block">
                  <!-- Banner Image -->
                  <div class="navbar-dropdown-menu-banner" style="background-image: url(/assets/svg/components/shape-3.svg);">
                    <div class="navbar-dropdown-menu-banner-content">
                      <div class="mb-4">
                        <span class="h2 d-block">Sàn việc làm</span>
                        <p class="fw-bold">PHIÊN GIAO DỊCH VIỆC LÀM NAM ĐỊNH T10</p>
                        <p>Số 64 đường Trần Phú, phường Trần Hưng Đạo, TP.Nam Định</p>
                      </div>
                      <a class="btn btn-primary btn-transition" href="#">Xem thêm <i class="bi-chevron-right small"></i></a>
                    </div>
                  </div>
                  <!-- End Banner Image -->
                </div>
                <!-- End Col -->

                <div class="col-lg-6">
                  <div class="navbar-dropdown-menu-inner">
                    <div class="row">
                      <div class="col-sm mb-3 mb-sm-0">
                        <div class="mb-3">

                          <span class="dropdown-header">Tin tức & Sự kiện</span>
                          <a class="dropdown-item" href="#">Văn bản</a>
                          <a class="dropdown-item" href="#">Bản tin thị trường</a>
                          <a class="dropdown-item" href="#">Báo cáo & Phân tích <span class="badge bg-primary rounded-pill ms-1">Hot</span></a>
                          <a class="dropdown-item" href="#">Bảo hiểm thất nghiệp</a>
                        </div>
                        <div class="dropdown-divider"></div>
                        <span class="dropdown-header">Đa phương tiện</span>
                        <a class="dropdown-item" href="#">Hình ảnh</a>
                        <a class="dropdown-item" href="#">Video </a>
                        <a class="dropdown-item" href="#">Văn bản </a>
                      </div>
                      <!-- End Col -->

                      <div class="col-sm">
                        <div class="mb-3">
                          <span class="dropdown-header">Về trung tâm</span>
                          <a class="dropdown-item" href="#">Tư vấn việc làm</a>
                          <a class="dropdown-item" href="#">Góc báo chí</a>
                          <a class="dropdown-item" href="#">Tuyển dụng</a>
                          <a class="dropdown-item" href="#">Liên hệ</a>
                          <a class="dropdown-item" href="#">Hỏi đáp <span class="badge bg-primary rounded-pill ms-1">Hot</span></a>
                        </div>


                      </div>
                      <!-- End Col -->
                    </div>
                    <!-- End Row -->
                  </div>
                </div>
                <!-- End Col -->
              </div>
              <!-- End Row -->
            </div>
            <!-- End Mega Menu -->
          </li>
          <!-- End Landings -->

          <!-- Blog -->
          <li class="hs-has-sub-menu nav-item">
            <a id="blogMegaMenu" class="hs-mega-menu-invoker nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">Tìm việc làm</a>

            <!-- Mega Menu -->
            <div class="hs-sub-menu dropdown-menu" aria-labelledby="blogMegaMenu" style="min-width: 14rem;">
              <a class="dropdown-item" href="#">Tìm việc làm</a>
              <div class="dropdown-divider"></div>
              <a class="dropdown-item" href="#">Việc làm phù hợp</a>
              <a class="dropdown-item" href="#">Việc làm IT</a>
              <a class="dropdown-item" href="#">Việc làm Bắc Kạn</a>
              <div class="dropdown-divider"></div>
              <a class="dropdown-item" href="#">Danh sách công ty</a>
              <a class="dropdown-item" href="#">Top công ty</a>
            </div>
            <!-- End Mega Menu -->
          </li>
          <!-- End Blog -->

          <!-- Company -->
          <li class="hs-has-sub-menu nav-item">
            <a id="companyMegaMenu" class="hs-mega-menu-invoker nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">Hồ sơ & CV</a>

            <!-- Mega Menu -->
            <div class="hs-sub-menu dropdown-menu" aria-labelledby="companyMegaMenu" style="min-width: 14rem;">
              <a class="dropdown-item" href="#">Tạo CV</a>
              <a class="dropdown-item" href="#">Tạo cover letter</a>
              <a class="dropdown-item" href="#">Thư viện CV theo ngành nghề <span class="badge bg-primary rounded-pill ms-1">Hot</span></a>
              <a class="dropdown-item" href="#">Hướng dẫn viết CV</a>
              <a class="dropdown-item" href="#">Tạo CV profile</a>
              <div class="dropdown-divider"></div>
              <a class="dropdown-item" href="#">Tư vấn việc làm</a>
            </div>
            <!-- End Mega Menu -->
          </li>
          <!-- End Company -->

          <!-- Account -->
          <li class="hs-has-sub-menu nav-item">
            <a id="accountMegaMenu" class="hs-mega-menu-invoker nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">Cẩm nang nghề nghiệp</a>

            <!-- Mega Menu -->
            <div class="hs-sub-menu dropdown-menu" aria-labelledby="accountMegaMenu" style="min-width: 14rem;">
              <a class="dropdown-item" href="#">Định hướng nghề nghiệp</a>
              <a class="dropdown-item" href="#">Bí kíp tìm việc</a>
              <a class="dropdown-item" href="#">Chế độ lương thưởng</a>
              <a class="dropdown-item" href="#">Kiến thức chuyên ngành</a>
              <a class="dropdown-item" href="#">Hành trang nghề nghiệp</a>
              <a class="dropdown-item" href="#">Thị trường & Xu hướng tuyển dụng</a>
            </div>
            <!-- End Mega Menu -->
          </li>
          <!-- End Account -->

          <!-- Pages -->
          <li class="hs-has-sub-menu nav-item">
            <a id="pagesMegaMenu" class="hs-mega-menu-invoker nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">Công cụ</a>
            <div class="hs-sub-menu dropdown-menu" aria-labelledby="pagesMegaMenu" style="min-width: 14rem;">
              <a class="dropdown-item" href="#">Mobile App Bắc Kạn</a>
            </div>
          </li>
          <!-- End Pages -->
        </ul>
      </div>
      <!-- End Collapse -->

    </nav>
  </div>
</template>


<script>
import 'bootstrap-icons/font/bootstrap-icons.css';
import '@/assets/front4/vendor/hs-mega-menu/dist/hs-mega-menu.min.css';

import HSMegaMenu from "@/assets/front4/vendor/hs-mega-menu/dist/hs-mega-menu.min.js"; // Import file JS

export default {
  mounted() {
    this.$nextTick(() => {
      new HSMegaMenu(".js-mega-menu");
    });
  }
};
</script>

<style scoped>
.dropdown-toggle::after {
  border: 0;
}
.navbar-brand-logo {
  width: auto;
  max-width: 11rem;
}
</style>
