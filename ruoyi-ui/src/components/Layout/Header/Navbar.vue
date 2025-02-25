<template>

<div class="container-fluid border-bottom">
    <nav class="js-mega-menu navbar-nav-wrap">
    <!-- Default Logo -->
    <a class="navbar-brand" href="/home" aria-label="Front">
      <img class="navbar-brand-logo" src="@/assets/logo/backan-logo.png" alt="Logo" />
    </a>
    <!-- End Default Logo -->

    <!-- Secondary Content -->
    <div class="navbar-nav-wrap-secondary-content">
      <!-- Search -->
      <div class="dropdown dropdown-course-search d-lg-none d-inline-block">
        <button
          class="btn btn-ghost-secondary btn-sm btn-icon"
          id="navbarCourseSearchDropdown"
          data-bs-toggle="dropdown"
          aria-expanded="false"
        >
          <i class="bi-search"></i>
        </button>
        <div class="dropdown-menu dropdown-card">
          <div class="card card-sm">
            <div class="card-body">
              <form class="input-group input-group-merge">
                <input type="text" class="form-control" placeholder="What do you want to learn?" />
                <div class="input-group-append input-group-text">
                  <i class="bi-search"></i>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
      <!-- End Search -->

      <!-- Account -->
      <div class="dropdown">
        <a href="#" id="navbarShoppingCartDropdown" data-bs-toggle="dropdown">
          <img class="avatar avatar-xs avatar-circle" src="/assets/img/160x160/img9.jpg" alt="User" />
        </a>
        <div class="dropdown-menu dropdown-menu-end" style="min-width: 16rem;">
          <a class="d-flex align-items-center p-2" href="#">
            <img class="avatar" src="/assets/img/160x160/img9.jpg" alt="User" />
            <div class="ms-3">
              <span class="fw-semibold">Lida Reidy <span class="badge bg-primary ms-1">Pro</span></span>
              <span class="d-block text-muted small">lidareidy@gmail.com</span>
            </div>
          </a>
          <div class="dropdown-divider my-3"></div>
          <a v-for="item in accountMenu" :key="item.text" class="dropdown-item" :href="item.link">
            <span class="dropdown-item-icon"><i :class="item.icon"></i></span> {{ item.text }}
          </a>
        </div>
      </div>
      <!-- End Account -->
    </div>
    <!-- End Secondary Content -->

    <!-- Toggler -->
    <button class="navbar-toggler" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown">
      <span class="navbar-toggler-default"><i class="bi-list"></i></span>
      <span class="navbar-toggler-toggled"><i class="bi-x"></i></span>
    </button>
    <!-- End Toggler -->

    <!-- Collapse -->
    <div class="collapse navbar-collapse mx-5" id="navbarNavDropdown">
      <ul class="navbar-nav">
        <li v-for="menu in menus" :key="menu.title" class="nav-item hs-has-sub-menu">
          <a class="nav-link dropdown-toggle" :href="menu.link" data-bs-toggle="dropdown">{{ menu.title }}</a>
          <div class="dropdown-menu" :style="{ minWidth: menu.minWidth }">
            <a v-for="sub in menu.items" :key="sub.text" class="dropdown-item" :href="sub.link">{{ sub.text }}</a>
          </div>
        </li>
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
  },
  data() {
    return {
      menus: [
        { title: "Trung tâm VLBK", minWidth: "30rem", items: [{ text: "Xem thêm", link: "#" }] },
        { title: "Tìm việc làm", link: "/viec-lam", minWidth: "14rem", items: [{ text: "Việc làm IT", link: "/viec-lam" }] },
        { title: "Hồ sơ & CV", minWidth: "14rem", items: [{ text: "Tạo CV", link: "#" }] },
        { title: "Cẩm nang nghề nghiệp", minWidth: "14rem", items: [{ text: "Định hướng nghề nghiệp", link: "#" }] },
        { title: "Công cụ", minWidth: "14rem", items: [{ text: "Mobile App Bắc Kạn", link: "#" }] }
      ],
      accountMenu: [
        { text: "Messages", icon: "bi-chat-left-dots", link: "#" },
        { text: "Purchase history", icon: "bi-wallet2", link: "#" },
        { text: "Account", icon: "bi-person", link: "#" },
        { text: "Payment methods", icon: "bi-credit-card", link: "#" },
        { text: "Help", icon: "bi-question-circle", link: "#" },
        { text: "Log out", icon: "bi-box-arrow-right", link: "#" }
      ]
    };
  }
};
</script>

<style scoped>
header,
#header{
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
