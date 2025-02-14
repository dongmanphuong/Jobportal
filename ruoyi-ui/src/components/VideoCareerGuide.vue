<template>
    <div class="news-container">
      <!-- Video Section -->
      <div class="news-section">
        <div class="section-header">
          <i class="fa fa-video-camera section-icon"></i>
          <h2>Video</h2>
        </div>
        <div class="news-list">
          <div v-for="(item, index) in videoNews" :key="index" class="news-item">
            <a :href="item.link">
              <img :src="item.image" :alt="item.title" class="news-image" />
              <p>{{ item.title }}</p>
            </a>
          </div>
        </div>
        <a href="/video" class="view-more">→ Xem thêm</a>
      </div>
  
      <!-- Career Guide Section -->
      <div class="news-section">
        <div class="section-header">
          <i class="fa fa-question-circle section-icon"></i>
          <h2>Cẩm nang nghề nghiệp</h2>
        </div>
        <div class="news-list">
          <div v-for="(item, index) in careerNews" :key="index" class="news-item">
            <a :href="item.link">
              <img :src="item.image" :alt="item.title" class="news-image" />
              <p>{{ item.title }}</p>
            </a>
          </div>
        </div>
        <a href="/cam-nang-nghe-nghiep" class="view-more">→ Xem thêm</a>
      </div>
    </div>
  </template>
  
  <script>
  export default {
    data() {
      return {
        videoNews: [
          {
            title: "Tuyển gấp lao động tới năm 55 tuổi...",
            link: "#",
            image: "http://file2.vieclamnamdinh.gov.vn/data/0/images/2024/10/14/host/74bdd8999dff41a118ee25-1.jpg?dpi=150&quality=100&w=320&h=125",
          },
          {
            title: "Tuyển dụng nhân sự nhà máy tại Nam...",
            link: "#",
            image: "http://file2.vieclamnamdinh.gov.vn/data/0/images/2024/10/14/host/e176b995fdf321ad78e236-1.jpg?dpi=150&quality=100&w=320&h=125",
          },
        ],
        careerNews: [
          {
            title: "Mức hưởng lương hưu năm 2022 người lao động cần biết",
            link: "#",
            image: "http://file2.vieclamnamdinh.gov.vn/data/0/images/2024/10/16/host/screenshot-2024-10-16-090944.jpg?dpi=150&quality=100&h=125",
          },
          {
            title: "3 khoản tiền cán bộ, công chức, viên chức nhận khi về hưu...",
            link: "#",
            image: "http://file2.vieclamnamdinh.gov.vn/data/0/images/2024/10/16/host/screenshot-2024-10-16-090944.jpg?dpi=150&quality=100&h=125",
          },
        ],
      };
    },
  };
  </script>
  
  <style scoped>
  /* Tổng thể bố cục */
  .news-container {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
    gap: 20px;
    padding: 20px;
  }
  
  /* Từng phần tin tức */
  .news-section {
    background: white;
    padding: 20px;
    border-radius: 10px;
    box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
  }
  
  /* Tiêu đề từng phần */
  .section-header {
    display: flex;
    align-items: center;
    font-size: 18px;
    font-weight: bold;
    margin-bottom: 15px;
  }
  
  .section-icon {
    background: #1565c0;
    color: white;
    border-radius: 50%;
    padding: 10px;
    margin-right: 10px;
  }
  
  /* Danh sách bài viết */
  .news-list {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(140px, 1fr));
    gap: 15px;
  }
  
  /* Từng bài viết */
  .news-item {
    background: #f5f5f5;
    border-radius: 5px;
    overflow: hidden;
  }
  
  .news-item a {
    text-decoration: none;
    color: #333;
  }
  
  .news-item img {
    width: 100%;
    height: auto;
    aspect-ratio: 16 / 9;
    object-fit: cover;
  }
  
  .news-item p {
    padding: 10px;
    font-size: 14px;
    font-weight: 500;
  }
  
  /* Nút xem thêm */
  .view-more {
    display: block;
    color: #1565c0;
    margin-top: 10px;
    text-decoration: none;
    font-weight: bold;
  }
  
  /* Responsive */
  @media screen and (max-width: 768px) {
    .news-container {
      grid-template-columns: 1fr;
      gap: 15px;
    }
  
    .news-list {
      grid-template-columns: 1fr;
    }
  }
  </style>
  