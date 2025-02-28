<template>
  <div class="container overflow-hidden">
    <div class="swiper-container mySwiper swiper-backface-hidden" ref="swiperContainer">
      <div class="swiper-wrapper">
        <div v-for="(slide, index) in slides" :key="index" class="swiper-slide">
          <img :src="slide" alt="Slider Image" class="slider-img mx-2" />
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import Swiper from "swiper/swiper-bundle.js";
import "swiper/swiper-bundle.css";

export default {
  data() {
    return {
      slides: [
        "http://file2.vieclamnamdinh.gov.vn/data/0/images/2024/10/14/host/a0f239d67cb0a0eef9a121-1.jpg?dpi=150&quality=100&h=490",
        "http://file2.vieclamnamdinh.gov.vn/data/0/images/2024/10/14/host/74bdd8999dff41a118ee25-1.jpg?dpi=150&quality=100&h=490",
        "http://file2.vieclamnamdinh.gov.vn/data/0/images/2024/10/14/host/e176b995fdf321ad78e236-1.jpg?dpi=150&quality=100&h=490",
        "http://file2.vieclamnamdinh.gov.vn/data/0/images/2024/10/14/host/110ab824ff42231c7a5366-1.jpg?dpi=150&quality=100&h=490",
        "http://file2.vieclamnamdinh.gov.vn/data/0/images/2024/10/14/host/a0f239d67cb0a0eef9a121-1.jpg?dpi=150&quality=100&h=490",
        "http://file2.vieclamnamdinh.gov.vn/data/0/images/2024/10/14/host/e176b995fdf321ad78e236-1.jpg?dpi=150&quality=100&h=490",
      ]
    };
  },
  mounted() {
    this.$nextTick(() => {
    new Swiper(this.$refs.swiperContainer, {
      watchSlidesProgress: true,
      slidesPerView: 2, // Giới hạn số slide hiển thị để không tràn màn hình
      autoplay: {
        delay: 3000,
        disableOnInteraction: false
      },
      loop: true,
      spaceBetween: 20,
      centeredSlides: true
    });
  });
  }
};
</script>

<style scoped>
.container {
  max-width: 1240px; /* Giới hạn chiều rộng của slider */
  margin: 0 auto; /* Căn giữa container */
  padding: 20px 0;
}

.swiper-container {
  width: 100%; /* Đảm bảo Swiper không tràn ra ngoài */
  max-width: 800px; /* Điều chỉnh chiều rộng tối đa của Swiper */
  margin: 0 auto; /* Căn giữa Swiper */
  padding: 20px 0;
}

.swiper-slide {
  text-align: center;
  font-size: 18px;
  background: #ffffff;
  display: flex;
  justify-content: center;
  align-items: center;
  height: 200px; /* Điều chỉnh chiều cao slide */
  border-radius: 10px;
  box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
  overflow: hidden;
}

.slider-img {
  width: 100%;
  height: 100%;
  object-fit: cover;
  border-radius: 10px;
}
</style>
