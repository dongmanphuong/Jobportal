<template>
  <div>
    <div class="container-fluid bg-primary border-bottom">

      <ul class="nav  justify-content-end">
        <li class="nav-item">
          <a class="nav-link text-white" href="#">Đăng ký</a>

        </li>
        <li class="nav-item">


          <!-- Hiển thị khi chưa đăng nhập -->
          <template v-if="!isLoggedIn">
            <a class="nav-link text-white" href="#">Đăng nhập</a>
            </template>

            <!-- Hiển thị khi đã đăng nhập -->
            <template v-else>
              <!-- Account -->
              <div class="dropdown mt-1">
                <a href="#" id="navbarShoppingCartDropdown" role="button" data-bs-toggle="dropdown"
                  aria-expanded="false" data-bs-dropdown-animation>
                  <img class="avatar avatar-xs avatar-circle" src="/assets/img/160x160/img9.jpg"
                    alt="Image Description">
                </a>

                <div class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarShoppingCartDropdown"
                  style="min-width: 16rem;">
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
            </template>
        </li>

      </ul>
    </div>
    <div class="container-fluid border-bottom">


      <nav class="js-mega-menu navbar-nav-wrap">
        <!-- Default Logo -->
        <a class="navbar-brand" href="/home" aria-label="Front">
          <img class="navbar-brand-logo" src="@/assets/logo/backan-logo.png" alt="Logo">
        </a>
        <!-- End Default Logo -->



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
        <div class="collapse navbar-collapse mx-5" id="navbarNavDropdown">
          <ul class="navbar-nav ">
            <!-- Landings -->
            <li class=" nav-item">
              <a class="nav-link"
                href="/gioi-thieu">Giới thiệu</a>
            </li>
            <!-- End Landings -->

            <!-- Blog -->
            <li class="hs-has-sub-menu nav-item">
              <a id="blogMegaMenu" class="hs-mega-menu-invoker nav-link dropdown-toggle" href="#" role="button"
                data-bs-toggle="dropdown" aria-expanded="false">Việc làm</a>

              <!-- Mega Menu -->
              <div class="hs-sub-menu dropdown-menu" aria-labelledby="blogMegaMenu" style="min-width: 14rem;">
                <a class="dropdown-item" href="/viec-lam">Tìm việc làm</a>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item" href="#">Danh sách công ty</a>
                <a class="dropdown-item" href="/top-cong-ty">Top công ty</a>
              </div>
              <!-- End Mega Menu -->
            </li>
            <!-- End Blog -->

            <!-- Company -->
            <li class="hs-has-sub-menu nav-item">
              <a id="companyMegaMenu" class="hs-mega-menu-invoker nav-link dropdown-toggle" href="#" role="button"
                data-bs-toggle="dropdown" aria-expanded="false">Tin tức & Sự kiện</a>

              <!-- Mega Menu -->
              <div class="hs-sub-menu dropdown-menu" aria-labelledby="companyMegaMenu" style="min-width: 14rem;">
                <a class="dropdown-item" href="#">Báo cáo & phân tích</a>
                <a class="dropdown-item" href="/tin-tuc">Tin thị trường</a>
                <a class="dropdown-item" href="#">Sự kiện<span
                    class="badge bg-primary rounded-pill ms-1">Hot</span></a>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item" href="#">Đào tạo nghề</a>
                <a class="dropdown-item" href="#">Tin bảo hiểm</a>
                <a class="dropdown-item" href="#">Tư vấn việc làm</a>
              </div>
              <!-- End Mega Menu -->
            </li>
            <!-- End Company -->

            <!-- Pages -->
            <li class="hs-has-sub-menu nav-item">
              <a id="pagesMegaMenu" class="hs-mega-menu-invoker nav-link dropdown-toggle" href="#" role="button"
                data-bs-toggle="dropdown" aria-expanded="false">Công cụ & Tài liệu</a>
              <div class="hs-sub-menu dropdown-menu" aria-labelledby="pagesMegaMenu" style="min-width: 14rem;">
                <a class="dropdown-item" href="#">Mobile App Bắc Kạn</a>
                <a class="dropdown-item" href="#">Văn bản</a>
              </div>
            </li>
            <!-- End Pages -->

            <!-- Pages -->
            <li class="nav-item">
              <a class="nav-link" href="/san-viec-lam">Sàn việc làm</a>
            </li>
            <!-- End Pages -->
          </ul>
        </div>
        <!-- End Collapse -->

        <!-- Secondary Content  d-none d-sm-block-->
        <div class="navbar-nav-wrap-secondary-content d-none d-sm-block">
          <div class="d-flex gap-2">
            <!-- Hiển thị khi chưa đăng nhập -->
            <template v-if="!isLoggedIn">
              <a class="btn btn-dark px-3" href="#">Đăng tuyển</a>
            </template>
          </div>


        </div>
        <!-- End Secondary Content -->
      </nav>
    </div>
  </div>
</template>


<script>
import 'bootstrap-icons/font/bootstrap-icons.css';
import '@/assets/front4/vendor/hs-mega-menu/dist/hs-mega-menu.min.css';

import HSMegaMenu from "@/assets/front4/vendor/hs-mega-menu/dist/hs-mega-menu.min.js"; // Import file JS

export default {
  data() {
    return {
      isLoggedIn: false, // Giả lập trạng thái đăng nhập
    };
  },
  methods: {
    login() {
      // Thực hiện hành động đăng nhập
      this.isLoggedIn = true;
      console.log("User logged in");
    },
    register() {
      console.log("Redirect to register page");
    },
    manage() {
      console.log("Redirect to manage jobs");
    },
    logout() {
      this.isLoggedIn = false;
      console.log("User logged out");
    }
  },
  mounted() {
    this.$nextTick(() => {
      new HSMegaMenu(".js-mega-menu");
    });
  }
};
</script>

<style scoped>
.navbar-expand-lg .dropdown-menu {
  margin-top: 0;
}

header,
#header {
  padding: 0;
  margin: 0;
}

.dropdown-toggle::after {
  border: 0;
}

.navbar-brand-logo {
  width: auto;
  max-width: 11rem;
}
</style>
