<template>
  <!-- ========== HEADER ========== -->
  <header id="header" class="navbar navbar-expand-lg navbar-end navbar-light">
    <!-- Topbar -->
    <nav class="py-2 bg-body-tertiary border-bottom">
      <div class="container d-flex flex-wrap">
        <ul class="nav me-auto">
          <li class="nav-item"><a href="#" class="nav-link link-body-emphasis px-2 active" aria-current="page"> Hotline: 0228.8602176</a>
          </li>

        </ul>
        <ul class="nav">
          <li class="nav-item"><a href="#" class="nav-link link-body-emphasis px-2">Đăng nhập</a></li>
          <li class="nav-item"><a href="#" class="nav-link link-body-emphasis px-2">Đăng ký</a></li>
        </ul>
      </div>
    </nav>
    <!-- End Topbar -->

    <div class="container">
      <nav class="js-mega-menu navbar-nav-wrap">
        <!-- Default Logo -->
        <a class="navbar-brand" href="#" aria-label="Front">
          <img class="navbar-brand-logo" src="@/assets/logo/backan-logo.png" alt="Logo">
        </a>
        <!-- End Default Logo -->

        <!-- Secondary Content -->
        <div class="navbar-nav-wrap-secondary-content">


          <!-- Account -->
          <div class="dropdown">
            <a href="#" id="navbarShoppingCartDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false"
              data-bs-dropdown-animation>
              <img class="avatar avatar-xs avatar-circle" src="@/assets/front4//img/160x160/img9.jpg"
                alt="Image Description">
            </a>

            <div class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarShoppingCartDropdown"
              style="min-width: 16rem;">
              <a class="d-flex align-items-center p-2" href="#">
                <div class="flex-shrink-0">
                  <img class="avatar" src="@/assets/front4//img/160x160/img9.jpg" alt="Image Description">
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
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown"
          aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-default">
            <i class="bi-list"></i>
          </span>
          <span class="navbar-toggler-toggled">
            <i class="bi-x"></i>
          </span>
        </button>
        <!-- End Toggler -->

        <!-- Collapse -->
        <div class="collapse navbar-collapse" id="navbarNavDropdown">
          <ul class="navbar-nav mt-2">
            <li class="nav-item">
              <a class="nav-link " href="#">Giới thiệu</a>
            </li>

            <!-- Thông tin hữu ích -->
            <li class="hs-has-sub-menu nav-item">
              <a id="coursesMegaMenu" class="hs-mega-menu-invoker nav-link dropdown-toggle" href="#" role="button"
                data-bs-toggle="dropdown" aria-expanded="false">Thông tin hữu ích</a>

              <!-- Mega Menu -->
              <div class="hs-sub-menu dropdown-menu" aria-labelledby="coursesMegaMenu" style="min-width: 17rem;">
                <!-- Business -->
                <div class="hs-has-sub-menu nav-item">
                  <a id="businessMegaMenu" class="hs-mega-menu-invoker dropdown-item dropdown-toggle" href="#"
                    role="button" data-bs-toggle="dropdown" aria-expanded="false">Cầm nang nghề nghiệp</a>

                  <div class="hs-sub-menu dropdown-menu" aria-labelledby="businessMegaMenu" style="min-width: 14rem;">
                    <a class="dropdown-item" href="#">All Finance & Accounting</a>
                    <a class="dropdown-item" href="#">Accounting & Bookkeeping</a>
                    <a class="dropdown-item" href="#">Compliance</a>
                    <a class="dropdown-item" href="#">Economics</a>
                    <a class="dropdown-item" href="#">Finance</a>
                    <a class="dropdown-item" href="#">Other</a>
                  </div>
                </div>
                <!-- End Business -->

                <!-- Finance & Accounting -->
                <div class="hs-has-sub-menu nav-item">
                  <a id="financeAccountingMegaMenu" class="hs-mega-menu-invoker dropdown-item dropdown-toggle" href="#"
                    role="button" data-bs-toggle="dropdown" aria-expanded="false">Công cụ</a>

                  <div class="hs-sub-menu dropdown-menu" aria-labelledby="financeAccountingMegaMenu"
                    style="min-width: 14rem;">
                    <a class="dropdown-item" href="#">All IT & Software</a>
                    <a class="dropdown-item" href="#">IT Sertification</a>
                    <a class="dropdown-item" href="#">Network & security</a>
                    <a class="dropdown-item" href="#">Hardware</a>
                    <a class="dropdown-item" href="#">Operating systems</a>
                    <a class="dropdown-item" href="#">Other</a>
                  </div>
                </div>
                <!-- End Finance & Accounting -->


                <!-- Design -->
                <div class="hs-has-sub-menu nav-item">
                  <a id="designMegaMenu" class="hs-mega-menu-invoker dropdown-item dropdown-toggle" href="#"
                    role="button" data-bs-toggle="dropdown" aria-expanded="false">Media</a>

                  <div class="hs-sub-menu dropdown-menu" aria-labelledby="designMegaMenu" style="min-width: 14rem;">
                    <a class="dropdown-item" href="#">All Marketing</a>
                    <a class="dropdown-item" href="#">Digital marketing</a>
                    <a class="dropdown-item" href="#">Branding</a>
                    <a class="dropdown-item" href="#">Advertising</a>
                    <a class="dropdown-item" href="#">Other</a>
                  </div>
                </div>
                <!-- End Design -->

              </div>
              <!-- End Mega Menu -->
            </li>
            <!-- End Courses -->
            <!-- Tim viec lam -->
            <li class="hs-has-sub-menu nav-item">
              <a id="listingsDropdown" class="hs-mega-menu-invoker nav-link dropdown-toggle " href="#" role="button"
                data-bs-toggle="dropdown" aria-expanded="false">Tìm việc làm</a>
              <div class="hs-sub-menu dropdown-menu" aria-labelledby="listingsDropdown" style="min-width: 14rem;">
                <a class="dropdown-item " href="#">Courses</a>
                <a class="dropdown-item " href="#">Course Overview</a>
                <a class="dropdown-item " href="#">Author Profile</a>
              </div>
            </li>
            <!-- End Tim viec lam -->

            <!-- Tim viec lam -->
            <li class="hs-has-sub-menu nav-item">
              <a id="listingsDropdown" class="hs-mega-menu-invoker nav-link dropdown-toggle " href="#" role="button"
                data-bs-toggle="dropdown" aria-expanded="false">Hồ sơ & CV</a>
              <div class="hs-sub-menu dropdown-menu" aria-labelledby="listingsDropdown" style="min-width: 14rem;">
                <a class="dropdown-item " href="#">Courses</a>
                <a class="dropdown-item " href="#">Course Overview</a>
                <a class="dropdown-item " href="#">Author Profile</a>
              </div>
            </li>
            <!-- End Tim viec lam -->

            <!-- Tim viec lam -->
            <li class="hs-has-sub-menu nav-item">
              <a id="listingsDropdown" class="hs-mega-menu-invoker nav-link dropdown-toggle " href="#" role="button"
                data-bs-toggle="dropdown" aria-expanded="false">Cẩm nang nghề nghiệp</a>
              <div class="hs-sub-menu dropdown-menu" aria-labelledby="listingsDropdown" style="min-width: 14rem;">
                <a class="dropdown-item " href="#">Courses</a>
                <a class="dropdown-item " href="#">Course Overview</a>
                <a class="dropdown-item " href="#">Author Profile</a>
              </div>
            </li>
            <!-- End Tim viec lam -->

          </ul>
        </div>
        <!-- End Collapse -->
      </nav>
    </div>
  </header>
  <!-- ========== END HEADER ========== -->
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
</style>
