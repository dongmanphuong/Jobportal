<template>
    <section class="sptb bg-white">
      <div class="container">
        <div class="home-jobuser">
          <!-- Tiêu đề -->
          <div class="section-title center-block text-center">
            <h1>HỒ SƠ XIN VIỆC</h1>
            <p>Thông tin cá nhân: Họ và tên, ngày tháng năm sinh, SĐT, email, địa chỉ cư trú...</p>
          </div>
  
          <!-- GRID HIỂN THỊ HỒ SƠ -->
          <div class="data-jobuser-home">
            <div 
              v-for="(profile, index) in jobProfiles" 
              :key="index" 
              class="profile-card"
              :class="{ 'highlight': profile.isHighlighted }"
            >
              <div class="box-jobus">
                <div class="avatar-jobus">
                  <img :src="profile.image" :alt="profile.title">
                </div>
                <div class="des-jobus">
                  <a class="link-jobus" :href="profile.link" :title="profile.title">
                    {{ profile.title }}
                  </a>
                  <p class="name-jobus">Ngành nghề: {{ profile.category }}</p>
                  <p class="ex-jobus">Ngày đăng: {{ profile.postDate }}</p>
                </div>
              </div>
            </div>
          </div>
  
          <!-- BUTTON XEM THÊM -->
          <div class="button-container">
            <a href="/ho-so-xin-viec" title="Xem thêm hồ sơ" class="btn btn-primary btn-category">
              ➜ Xem thêm
            </a>
          </div>
  
        </div>
      </div>
    </section>
  </template>
  
  <script>
  export default {
    data() {
      return {
        jobProfiles: [
          {
            title: "CV-CNTT-NAM",
            link: "#",
            category: "Khác",
            postDate: "21/01/2025",
            image: "https://via.placeholder.com/65",
            isHighlighted: true
          },
          {
            title: "Kỹ sư điện công nghiệp",
            link: "#",
            category: "Khác",
            postDate: "18/12/2024",
            image: "https://via.placeholder.com/65",
            isHighlighted: false
          },
          {
            title: "Tài xế Lái xe",
            link: "#",
            category: "Vận chuyển/Giao nhận",
            postDate: "04/07/2024",
            image: "https://via.placeholder.com/65",
            isHighlighted: false
          },
          {
            title: "Kỹ sư cơ điện",
            link: "#",
            category: "Điện/Điện tử",
            postDate: "08/04/2024",
            image: "https://via.placeholder.com/65",
            isHighlighted: false
          },
          {
            title: "Sơ Yếu Lý Lịch",
            link: "#",
            category: "IT - Phần cứng/Mạng",
            postDate: "19/02/2024",
            image: "https://via.placeholder.com/65",
            isHighlighted: true
          },
          {
            title: "HỒ SƠ XIN VIỆC",
            link: "#",
            category: "Thời trang",
            postDate: "24/01/2024",
            image: "https://via.placeholder.com/65",
            isHighlighted: false
          },
          {
            title: "Tài Xế Lái xe",
            link: "#",
            category: "Vận chuyển/Giao nhận",
            postDate: "29/09/2023",
            image: "https://via.placeholder.com/65",
            isHighlighted: false
          },
          {
            title: "CV_Hoàng Mai Nam",
            link: "#",
            category: "Bán hàng",
            postDate: "17/11/2022",
            image: "https://via.placeholder.com/65",
            isHighlighted: false
          },
          {
            title: "HỒ SƠ XIN VIỆC",
            link: "#",
            category: "Khác",
            postDate: "10/11/2022",
            image: "https://via.placeholder.com/65",
            isHighlighted: true
          },
          {
            title: "Vũ Thị Mỹ Linh",
            link: "#",
            category: "Hành chính/Thư ký",
            postDate: "15/07/2021",
            image: "https://via.placeholder.com/65",
            isHighlighted: false
          }
        ]
      };
    }
  };
  </script>
  
  <style scoped>
  /* Căn chỉnh section */
  .sptb {
    padding: 50px 0;
  }
  
  /* Tiêu đề */
  .section-title h1 {
    font-size: 24px;
    font-weight: bold;
    margin-bottom: 10px;
  }
  
  .section-title p {
    font-size: 16px;
    color: #666;
  }
  
  /* Grid hiển thị 2 cột, căn giữa với padding hai bên */
  .data-jobuser-home {
    display: grid;
    grid-template-columns: repeat(2, 1fr);
    gap: 20px;
    max-width: 900px; /* Giới hạn chiều rộng */
    margin: auto; /* Căn giữa grid */
    padding: 0 20px; /* Tạo khoảng cách hai bên */
  }
  
  @media (max-width: 768px) {
    .data-jobuser-home {
      grid-template-columns: repeat(1, 1fr); /* Chuyển về 1 cột trên màn hình nhỏ */
      padding: 0 10px; /* Giảm padding trên mobile */
    }
  }
  
  /* Hồ sơ xin việc */
  .profile-card {
    background: #f9f9f9;
    padding: 15px;
    border-radius: 5px;
    border: 1px solid #ddd;
    display: flex;
    align-items: center;
  }
  
  /* Hồ sơ nổi bật */
  .highlight {
    border: 1px solid #ff7f50;
    background-color: #fff4ec;
  }
  
  /* Box thông tin */
  .box-jobus {
    display: flex;
    align-items: center;
  }
  
  /* Ảnh đại diện */
  .avatar-jobus img {
    width: 65px;
    height: 65px;
    border-radius: 50%;
    object-fit: cover;
    border: 1px solid #ddd;
  }
  
  /* Nội dung hồ sơ */
  .des-jobus {
    margin-left: 10px;
  }
  
  .link-jobus {
    font-weight: bold;
    color: #007bff;
    text-decoration: none;
    display: block;
  }
  
  .link-jobus:hover {
    text-decoration: underline;
  }
  
  .name-jobus, .ex-jobus {
    font-size: 14px;
    margin: 2px 0;
    color: #555;
  }
  
  /* Button "Xem thêm" */
  .button-container {
    margin-top: 40px;
    text-align: center;
  }
  
  .btn-category {
    font-size: 16px;
    padding: 12px 24px;
    border-radius: 5px;
    background: #007bff;
    color: #fff;
    text-decoration: none;
    display: inline-block;
    transition: background 0.3s;
  }
  
  .btn-category:hover {
    background-color: #0056b3;
    color: #fff;
  }
  </style>
  