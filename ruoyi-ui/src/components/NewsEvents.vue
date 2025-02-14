<template>
    <section class="news-section bg-white">
      <div class="container">
        <!-- Tiêu đề -->
        <div class="section-title center-block text-center">
          <h1>TIN TỨC SỰ KIỆN</h1>
          <p>
            Cập nhật tin tức, sự kiện nóng nhất xung quanh vấn đề việc làm được bạn đọc quan tâm nhất.
          </p>
        </div>
  
        <!-- Danh sách tin tức -->
        <div class="news-grid">
          <div v-for="(news, index) in newsList" :key="index" class="news-card">
            <div class="card">
              <div class="news-image">
                <a :href="news.link" target="_blank">
                  <img :src="news.image" :alt="news.title" @error="imageError($event)" />
                </a>
              </div>
              <div class="card-body">
                <div class="news-meta">
                  <span class="news-date"><i class="fa fa-calendar"></i> {{ news.date }}</span>
                </div>
                <a :href="news.link" target="_blank" class="news-title">
                  <h4>{{ news.title }}</h4>
                </a>
                <p class="news-summary">{{ news.summary }}</p>
              </div>
            </div>
          </div>
        </div>
  
        <!-- Button "Xem thêm" -->
        <div class="button-container">
          <a href="/tin-tuc-va-su-kien" class="btn btn-primary">
            ➜ Xem thêm
          </a>
        </div>
      </div>
    </section>
  </template>
  
  <script>
  export default {
    data() {
      return {
        newsList: [
          {
            title: "PHIÊN GIAO DỊCH VIỆC LÀM NGÀY 10/07/2024",
            date: "08/07/2024 08:27",
            summary: "PHIÊN GIAO DỊCH VIỆC LÀM NGÀY 10/7/2024",
            image: "http://file2.vieclamnamdinh.gov.vn/image/noimage/4.jpg",
            link: "http://v2.vieclamnamdinh.gov.vn/tin-tuc-va-su-kien/phien-giao-dich-viec-lam-ngay-10-07-2024-9258.html"
          },
          {
            title: "THÔNG BÁO TUYỂN CHỌN LAO ĐỘNG THỜI VỤ NĂM 2024",
            date: "16/05/2024 07:47",
            summary: "Tuyển chọn lao động thời vụ tại tỉnh Jeju (Hàn Quốc).",
            image: "http://file2.vieclamnamdinh.gov.vn/data/0/images/2024/05/16/tinh.namdinh/13-logo-trung-tam-dich-vu-viec-lam-tinh-nam-dinh.jpg",
            link: "http://v2.vieclamnamdinh.gov.vn/tin-tuc-va-su-kien/thong-bao-tuyen-chon-lao-dong-thoi-vu-nam-2024-lam-viec-tai-tinh-jeju-han-quoc-8257.html"
          },
          {
            title: "Hoán đổi ngày làm việc dịp nghỉ lễ 30/4 & 1/5",
            date: "25/04/2024 08:57",
            summary: "Thông báo thực hiện hoán đổi ngày làm việc dịp nghỉ lễ.",
            image: "http://file2.vieclamnamdinh.gov.vn/data/0/images/2024/04/25/tinh.namdinh/13-logo-trung-tam-dich-vu-viec-lam-tinh-nam-dinh.jpg",
            link: "http://v2.vieclamnamdinh.gov.vn/tin-tuc-va-su-kien/cong-van-thong-bao-thuc-hien-hoan-doi-ngay-lam-viec-dip-nghi-le-ngay-chien-thang-30-4-va-ngay-quoc-te-lao-dong-01-5-7258.html"
          }
        ]
      };
    },
    methods: {
      imageError(event) {
        event.target.src = "http://file2.vieclamnamdinh.gov.vn/image/noimage/4.jpg";
      }
    }
  };
  </script>
  
  <style scoped>
  /* Căn chỉnh section */
  .news-section {
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
  
  /* Bố cục tin tức dạng grid */
  .news-grid {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(320px, 1fr)); /* Responsive grid */
    gap: 20px;
    max-width: 1200px;
    margin: 0 auto;
    padding: 0 20px;
  }
  
  /* Thẻ tin tức */
  .news-card {
    background: #fff;
    border: 1px solid #ddd;
    border-radius: 5px;
    overflow: hidden;
    transition: all 0.3s ease;
  }
  
  .news-card:hover {
    transform: translateY(-5px);
  }
  
  /* Ảnh tin tức */
  .news-image img {
    width: 100%;
    height: 200px;
    object-fit: cover;
    display: block;
  }
  
  /* Nội dung tin tức */
  .card-body {
    padding: 15px;
  }
  
  .news-meta {
    font-size: 14px;
    color: #888;
    margin-bottom: 5px;
  }
  
  .news-title {
    font-weight: bold;
    color: #007bff;
    text-decoration: none;
    display: block;
    margin-bottom: 8px;
  }
  
  .news-title:hover {
    text-decoration: underline;
  }
  
  .news-summary {
    font-size: 14px;
    color: #555;
  }
  
  /* Button "Xem thêm" */
  .button-container {
    text-align: center;
    margin-top: 40px;
  }
  
  .button-container .btn {
    font-size: 16px;
    padding: 12px 24px;
    border-radius: 5px;
    background: #007bff;
    color: #fff;
    text-decoration: none;
    display: inline-block;
    transition: 0.3s ease;
  }
  
  .button-container .btn:hover {
    background-color: #0056b3;
  }
  </style>
  