<template>
    <div class="vbanner"> 
      <!-- Logo & Menu Aligned Left -->
      <div class="container">
        <div class="header">
          <!-- Logo Section -->
          <div class="logo">
            <a href="http://v2.vieclamnamdinh.gov.vn" title="home">
              <img :src="logoSrc" @error="handleImageError" alt="Trung Tâm Dịch Vụ Việc Làm Nam Định">
            </a>
          </div>
          
          <!-- Navigation Menu -->
          <nav class="nav-menu">
            <ul class="main-menu">
              <li v-for="(menu, index) in menuItems" :key="index">
                <a :href="menu.link" :title="menu.title">{{ menu.title }}</a>      
                <!-- Submenu (Now Aligned Left) -->
                <ul v-if="menu.submenu.length" class="submenu">
                  <li v-for="(sub, subIndex) in menu.submenu" :key="subIndex">
                    <a :href="sub.link" :title="sub.title">{{ sub.title }}</a>
                  </li>
                </ul>
              </li>
              <!-- "ĐĂNG TIN" Button -->
              <li class="recruit">
                <a class="for-bus btn btn-primary" href="http://v2.vieclamnamdinh.gov.vn">
                  <i class="fa fa-plus-circle"></i> ĐĂNG TIN
                </a>
              </li>
            </ul>
          </nav>
        </div>
      </div>
    </div>
  </template>
  
  <script>
  export default {
    name: "VBanner",
    data() {
      return {
        logoSrc: "http://file2.vieclamnamdinh.gov.vn/data/0/images/2024/06/10/host/logonamdinhv2.png?dpi=150&quality=100&h=70",
        defaultLogoSrc: "http://file2.vieclamnamdinh.gov.vn/image/noimage/2.jpg?dpi=150&quality=100&h=70",
        menuItems: [
          { title: "Giới thiệu", link: "/gioi-thieu", submenu: [] },
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
          { title: "Việc tìm người", link: "/viec-lam", submenu: [] },
          { title: "Người tìm việc", link: "/ho-so-xin-viec", submenu: [] },
          { title: "Bảo hiểm thất nghiệp", link: "/bao-hiem-that-nghiep", submenu: [] },
          { title: "Văn bản", link: "/van-ban", submenu: [] },
          { title: "Sàn việc làm", link: "/san-viec-lam", submenu: [] },
          {
            title: "Đa phương tiện",
            link: "#",
            submenu: [
              { title: "Video", link: "/video" },
              { title: "Hình ảnh", link: "/album-anh" }
            ]
          }
        ]
      };
    },
    methods: {
      handleImageError(event) {
        event.target.src = this.defaultLogoSrc;
      }
    }
  };
  </script>
  
  <style scoped>
  /* Top Bar */
  .topbar {
    background: #f8f9fa;
    padding: 10px 0;
    border-bottom: 1px solid #ddd;
  }
  
  .topbar .container {
    display: flex;
    justify-content: space-between;
    align-items: center;
  }
  
  .contact-info {
    font-size: 14px;
    color: #333;
  }
  
  .contact-info a {
    color: #007bff;
    text-decoration: none;
  }
  
  .auth-buttons .btn {
    font-size: 14px;
    margin-left: 8px;
  }
  
  /* Header */
  .header {
    display: flex;
    align-items: center;
    padding: 15px 0;
  }
  
  /* Logo */
  .logo {
    flex-shrink: 0;
    margin-right: 20px;
  }
  
  .logo img {
    max-height: 70px;
    display: block;
  }
  
  /* Navigation */
  .nav-menu {
    flex-grow: 1;
  }
  
  .main-menu {
    list-style: none;
    padding: 0;
    margin: 0;
    display: flex;
    align-items: center;
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
  
  /* Submenu - Now Aligned Left */
  .submenu {
    display: none;
    position: absolute;
    background: white;
    top: 100%;
    left: 0; /* Align left */
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
    display: block;
    padding: 10px;
    white-space: nowrap;
  }
  
  .submenu li a {
    display: block;
    width: 100%;
    color: #333;
  }
  
  .submenu li a:hover {
    background: #f8f9fa;
  }
  
  /* "ĐĂNG TIN" Button */
  .recruit .for-bus {
    background: #007bff;
    color: white !important;
    padding: 8px 12px;
    border-radius: 5px;
    font-weight: bold;
  }
  
  .recruit .for-bus:hover {
    background: #0056b3;
  }
  </style>
  