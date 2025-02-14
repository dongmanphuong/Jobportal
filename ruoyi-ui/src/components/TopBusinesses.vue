<template>
  <div class="top-businesses">
    <!-- Tiêu đề -->
    <div class="section-title text-center">
      <h1>DOANH NGHIỆP HÀNG ĐẦU</h1>
      <p>
        Dưới đây là các doanh nghiệp hàng đầu tuyển dụng nhân sự, mang đến cơ hội việc làm phù hợp nhất...
      </p>
    </div>

    <!-- Swiper -->
    <div class="swiper-container">
      <div class="swiper-wrapper">
        <div class="swiper-slide" v-for="(business, index) in businesses" :key="index">
          <img :src="business.image" :alt="business.name" @error="imageError" />
        </div>
      </div>

      <!-- Nút điều hướng nhỏ hơn -->
      <div class="swiper-button-next"></div>
      <div class="swiper-button-prev"></div>
    </div>

    <!-- Nút Xem thêm -->
    <div class="view-more-container">
      <a href="/nha-tuyen-dung" class="btn-view-more">
        <i class="fa fa-long-arrow-right"></i>&nbsp;Xem thêm
      </a>
    </div>
  </div>
</template>

<script>
import Swiper from "swiper";
import "swiper/css/swiper.min.css"; // 🛠 Swiper v5

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
      slidesPerView: 4, // Hiển thị 4 công ty trên PC
      spaceBetween: 30, // **✅ Khoảng cách giữa các item**
      loop: true,
      autoplay: {
        delay: 3000,
        disableOnInteraction: false,
      },
      navigation: {
        nextEl: ".swiper-button-next",
        prevEl: ".swiper-button-prev",
      },
      breakpoints: {
        1024: { slidesPerView: 4 },
        768: { slidesPerView: 2 }, // Hiển thị 2 công ty trên Tablet
        480: { slidesPerView: 1 }, // Hiển thị 1 công ty trên Mobile
      },
    });
  },
  methods: {
    imageError(event) {
      event.target.src = "http://file2.vieclamnamdinh.gov.vn/image/noimage/5.jpg";
    },
  },
};
</script>

<style scoped>
/* 📌 Căn chỉnh toàn bộ section */
.top-businesses {
  text-align: center;
  padding: 50px 0;
  background: #f9f9f9;
}

/* 📌 Định dạng Swiper */
.swiper-container {
  width: 90%;
  max-width: 1200px;
  margin: 0 auto;
  padding-bottom: 20px;
}

/* 📌 Căn chỉnh ảnh trong slider */
.swiper-slide img {
  width: 100%;
  height: 150px;
  object-fit: contain;
  border-radius: 10px;
  background: white;
  padding: 15px; /* **✅ Tạo khoảng cách đẹp xung quanh item** */
  transition: transform 0.3s ease-in-out;
}

.swiper-slide img:hover {
  transform: scale(1.05);
}

/* 📌 Nút điều hướng nhỏ hơn */
.swiper-button-next, 
.swiper-button-prev {
  width: 35px;
  height: 35px;
  background-color: rgba(0, 0, 0, 0.6);
  border-radius: 50%;
  color: white;
  font-size: 16px;
}

.swiper-button-next::after, 
.swiper-button-prev::after {
  font-size: 14px;
}

.swiper-button-next:hover, 
.swiper-button-prev:hover {
  background-color: rgba(0, 0, 0, 0.8);
}

/* 📌 Nút "Xem Thêm" */
.view-more-container {
  margin-top: 30px;
}

.btn-view-more {
  display: inline-block;
  padding: 12px 25px;
  font-size: 16px;
  font-weight: bold;
  color: white;
  background: linear-gradient(45deg, #007bff, #0056b3);
  border-radius: 8px;
  text-decoration: none;
  transition: all 0.3s ease-in-out;
}

.btn-view-more:hover {
  background: linear-gradient(45deg, #0056b3, #003f7f);
  transform: scale(1.05);
}

/* 📌 Responsive tối ưu */
@media (max-width: 1024px) {
  .swiper-slide img {
    height: 130px;
  }
}

@media (max-width: 768px) {
  .swiper-slide img {
    height: 110px;
  }

  .swiper-button-next, 
  .swiper-button-prev {
    width: 30px;
    height: 30px;
  }
}

@media (max-width: 480px) {
  .swiper-slide img {
    height: 90px;
  }

  .swiper-button-next, 
  .swiper-button-prev {
    display: none;
  }

  .btn-view-more {
    padding: 10px 20px;
    font-size: 14px;
  }
}
</style>
