<template>
    <div class="top-businesses">
      <!-- Tiêu đề -->
      <div class="section-title center-block text-center">
        <h1>DOANH NGHIỆP HÀNG ĐẦU</h1>
        <p>
          Dưới đây là các doanh nghiệp đứng đầu trong lĩnh vực tuyển dụng nhân sự sẽ mang đến cơ hội tìm kiếm việc làm có độ tương thích cao nhất ...
        </p>
      </div>
  
      <!-- Swiper -->
      <div class="swiper-container">
        <div class="swiper-wrapper">
          <div class="swiper-slide" v-for="(business, index) in businesses" :key="index">
            <img :src="business.image" :alt="business.name" />
          </div>
        </div>
  
        <!-- Nút điều hướng nhỏ hơn -->
        <div class="swiper-button-next"></div>
        <div class="swiper-button-prev"></div>
      </div>
          <!-- Nút Xem thêm -->
    <div class="mt-4 text-center">
      <a href="/nha-tuyen-dung" title="Xem thêm nhà tuyển dụng" class="btn btn-primary btn-category">
        <i class="fa fa-long-arrow-right"></i>&nbsp;Xem thêm
      </a>
    </div>

    </div>
  </template>
  
  <script>
  import Swiper from "swiper";
  import "swiper/css/swiper.css";
  
  export default {
    data() {
      return {
        businesses: [
          { name: "Công ty A", image: "http://file2.vieclamnamdinh.gov.vn/data/0/images/2020/06/30/tinh.namdinh/cong-ty-tnhh-go-uwant.png?dpi=150&quality=100" },
          { name: "Công ty B", image: "http://file2.vieclamnamdinh.gov.vn/image/noimage/5.jpg?dpi=150&quality=100" },
          { name: "Công ty C", image: "http://file2.vieclamnamdinh.gov.vn/image/noimage/5.jpg?dpi=150&quality=100" },
          { name: "Công ty D", image: "http://file2.vieclamnamdinh.gov.vn/image/noimage/5.jpg?dpi=150&quality=100" },
          { name: "Công ty E", image: "http://file2.vieclamnamdinh.gov.vn/image/noimage/5.jpg?dpi=150&quality=100" }
        ],
      };
    },
    mounted() {
      new Swiper(".swiper-container", {
        slidesPerView: 4, // Hiển thị 4 công ty trên 1 slide
        spaceBetween: 15, // Khoảng cách giữa các slide
        navigation: {
          nextEl: ".swiper-button-next",
          prevEl: ".swiper-button-prev",
        },
      });
    },
  };
  </script>
  
  <style scoped>
  /* Căn giữa toàn bộ section */
  .top-businesses {
    text-align: center;
    padding: 40px 0;
  }
  
  /* Căn giữa slider và giới hạn chiều rộng */
  .swiper-container {
    width: 90%;
    max-width: 1200px;
    height: auto;
    margin: 0 auto;
  }
  
  /* Kiểu ảnh trong slider */
  .swiper-slide img {
    width: 100%;
    height: 180px; /* Fix chiều cao hình ảnh */
    object-fit: cover; /* Giữ hình ảnh đồng đều */
    border-radius: 8px; /* Bo góc ảnh */
  }
  
  /* Nút điều hướng nhỏ hơn */
  .swiper-button-next, 
  .swiper-button-prev {
    width: 30px; /* Giảm kích thước */
    height: 30px;
    background-color: rgba(0, 0, 0, 0.5); /* Màu nền */
    border-radius: 50%; /* Làm tròn nút */
    color: white; /* Màu mũi tên */
    font-size: 18px; /* Kích thước icon */
  }
  
  /* Làm nhỏ icon mũi tên */
  .swiper-button-next::after, 
  .swiper-button-prev::after {
    font-size: 16px;
  }
  
  /* Hiệu ứng hover */
  .swiper-button-next:hover, 
  .swiper-button-prev:hover {
    background-color: rgba(0, 0, 0, 0.8);
  }
  </style>
  