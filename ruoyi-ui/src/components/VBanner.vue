<template>
  <div class="vbanner">
    <div class="container">
      <div class="header">
        <!-- Logo -->
        <div class="logo">
          <a href="https://vieclambackan.gov.vn/" title="home">
            <img :src="logoSrc" @error="handleImageError" alt="Trung Tâm Dịch Vụ Việc Làm Bắc Kạn">
          </a>
        </div>

        <!-- Menu for Desktop -->
        <nav class="nav-menu desktop-menu">
          <ul class="main-menu">
            <li v-for="(menu, index) in menuItems" :key="index">
              <a :href="menu.link" :title="menu.title">{{ menu.title }}</a>
              <ul v-if="menu.submenu.length" class="submenu">
                <li v-for="(sub, subIndex) in menu.submenu" :key="subIndex">
                  <a :href="sub.link" :title="sub.title">{{ sub.title }}</a>
                </li>
              </ul>
            </li>
            <li class="recruit">
              <a class="for-bus btn btn-primary" href="http://v2.vieclamnamdinh.gov.vn">
                <i class="fa fa-plus-circle"></i> ĐĂNG TIN
              </a>
            </li>
          </ul>
        </nav>

        <!-- Mobile Menu Button -->
        <button class="burger-btn" @click="toggleMenu">
          ☰
        </button>

        <!-- Mobile Menu -->
        <transition name="slide">
          <div v-if="isMenuOpen" class="mobile-nav">
            <button class="close-btn" @click="toggleMenu">✖</button>
            <ul>
              <li v-for="(menu, index) in menuItems" :key="index">
                <a :href="menu.link" @click="toggleMenu">{{ menu.title }}</a>
                <ul v-if="menu.submenu.length">
                  <li v-for="(sub, subIndex) in menu.submenu" :key="subIndex">
                    <a :href="sub.link" @click="toggleMenu">{{ sub.title }}</a>
                  </li>
                </ul>
              </li>
              <li>
                <a class="for-bus btn btn-primary" href="http://v2.vieclamnamdinh.gov.vn">
                  <i class="fa fa-plus-circle"></i> ĐĂNG TIN
                </a>
              </li>
            </ul>
          </div>
        </transition>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: "VBanner",
  data() {
    return {
      isMenuOpen: false, // Trạng thái mở/đóng menu trên mobile
      logoSrc: "http://file.vieclambackan.gov.vn/data/0/images/2019/07/17/host/logobackannew2.png?dpi=150&quality=100&h=70",
      defaultLogoSrc: "http://file.vieclambackan.gov.vn/data/0/images/2019/07/17/host/logobackannew2.png?dpi=150&quality=100&h=70",
      menuItems: [
        { title: "Giới thiệu", link: "/gioi-thieu", 
        submenu: [{ title: "Cơ cấu tổ chức", link: "/dao-tao-nghe" },
        { title: "Giới thiệu", link: "/tu-van" },] },
        {
          title: "Tin tức & Sự kiện",
          link: "/tin-tuc-va-su-kien",
          submenu: [
            { title: "Dự thi tiếng Hàn năm 2021", link: "/dao-tao-nghe" },
            { title: "Tư vấn", link: "/tu-van" },
            { title: "Ứng dụng hỗ trợ NLĐ", link: "/ung-dung-ho-tro-nld" },
            { title: "Báo cáo phân tích thị trường lao động", link: "/bao-cao-phan-tich" },
            { title: "Bản tin thị trường", link: "/ban-tin-thi-truong" }
          ]
        },
        { title: "Việc làm", link: "/viec-lam", submenu: [] },
        { title: "Bảo hiểm ", link: "/bao-hiem-that-nghiep", submenu: [] },
        { title: "Văn bản", link: "/van-ban", submenu: [] },
        { title: "Sàn việc làm", link: "/san-viec-lam", submenu: [] },
      ]
    };
  },
  methods: {
    handleImageError(event) {
      event.target.src = this.defaultLogoSrc;
    },
    toggleMenu() {
      this.isMenuOpen = !this.isMenuOpen;
    }
  }
};
</script>

<style scoped>
/* ======= Căn chỉnh spacing trên PC ======= */
.container {
  max-width: 1200px; /* Giữ menu gọn trong 1200px */
  margin: 0 auto;
  padding: 0 20px; /* Tạo khoảng cách rìa màn hình */
}

/* ======= PC MENU ======= */
.header {
  display: flex;
  align-items: center;
  justify-content: space-between;
  padding: 15px 0;
}

.logo img {
  max-height: 70px;
}

.nav-menu {
  flex-grow: 1;
  z-index: 1000; /* Cao hơn slider */
}

.main-menu {
  display: flex;
  list-style: none;
  padding: 0;
  margin: 0;
}

.main-menu li {
  position: relative;
  padding: 10px 15px;
}

.main-menu li a {
  text-decoration: none;
  color: #333;
  font-weight: bold;
}

/* Dropdown */
.submenu {
  display: none;
  position: absolute;
  background: white;
  top: 100%;
  left: 0;
  list-style: none;
  padding: 0;
  margin: 0;
  border: 1px solid #ddd;
  min-width: 180px;
}

.main-menu li:hover > .submenu {
  display: block;
}

.submenu li {
  padding: 10px;
}

.submenu li a {
  color: #333;
}

.submenu li a:hover {
  background: #f8f9fa;
}

/* ======= MOBILE MENU ======= */
.burger-btn {
  display: none;
  background: none;
  border: none;
  font-size: 24px;
  cursor: pointer;
}

.mobile-nav {
  position: fixed;
  top: 0;
  left: 0;
  width: 250px;
  height: 100vh;
  background: white;
  box-shadow: 2px 0 10px rgba(0, 0, 0, 0.2);
  padding: 20px;
  z-index: 1000;
}

.mobile-nav ul {
  list-style: none;
  padding: 0;
}

.mobile-nav li {
  margin-bottom: 10px;
}

.mobile-nav a {
  text-decoration: none;
  font-size: 18px;
  font-weight: bold;
  color: #333;
}

.close-btn {
  font-size: 24px;
  background: none;
  border: none;
  cursor: pointer;
}

/* Hiệu ứng trượt */
.slide-enter-active, .slide-leave-active {
  transition: transform 0.3s ease-in-out;
}
.slide-enter, .slide-leave-to {
  transform: translateX(-100%);
}

/* RESPONSIVE */
@media (max-width: 992px) {
  .desktop-menu {
    display: none;
  }
  .burger-btn {
    display: block;
  }
}
</style>
