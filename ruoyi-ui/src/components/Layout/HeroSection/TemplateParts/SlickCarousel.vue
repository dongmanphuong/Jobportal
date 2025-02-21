<template>
  <div class="position-relative">
    <VueSlickCarousel v-bind="settings" ref="carousel">
      <div v-for="(image, index) in images" :key="index">
        <img :src="image" alt="Slider Image" class="slider-img mx-2" />
      </div>
    </VueSlickCarousel>

    <div class="slider-controls">
      <button @click="prevSlide" class="slider-btn prev">&#10094;</button>
      <button @click="nextSlide" class="slider-btn next">&#10095;</button>
    </div>
  </div>
</template>

<script>
import VueSlickCarousel from "vue-slick-carousel";
import "vue-slick-carousel/dist/vue-slick-carousel.css";
import "vue-slick-carousel/dist/vue-slick-carousel-theme.css";

export default {
  components: { VueSlickCarousel },
  data() {
    return {
      images: [
        "http://file2.vieclamnamdinh.gov.vn/data/0/images/2024/10/14/host/a0f239d67cb0a0eef9a121-1.jpg?dpi=150&quality=100&h=490",
        "http://file2.vieclamnamdinh.gov.vn/data/0/images/2024/10/14/host/74bdd8999dff41a118ee25-1.jpg?dpi=150&quality=100&h=490",
        "http://file2.vieclamnamdinh.gov.vn/data/0/images/2024/10/14/host/e176b995fdf321ad78e236-1.jpg?dpi=150&quality=100&h=490",
        "http://file2.vieclamnamdinh.gov.vn/data/0/images/2024/10/14/host/110ab824ff42231c7a5366-1.jpg?dpi=150&quality=100&h=490",
        "http://file2.vieclamnamdinh.gov.vn/data/0/images/2024/10/14/host/a0f239d67cb0a0eef9a121-1.jpg?dpi=150&quality=100&h=490",
        "http://file2.vieclamnamdinh.gov.vn/data/0/images/2024/10/14/host/e176b995fdf321ad78e236-1.jpg?dpi=150&quality=100&h=490",
      ],
      settings: {
        "dots": false,
        "infinite": true,
        "initialSlide": 2,
        "autoplay": true,
        "speed": 500,
        "slidesToShow": 3,
        "slidesToScroll": 1,
        "swipeToSlide": true
      }
    };
  },
  methods: {
    nextSlide() {
      this.$refs.carousel.next();
    },
    prevSlide() {
      this.$refs.carousel.prev();
    },
  },
};
</script>

<style>
.slider-img {
  width: 100%;
  height: auto;
}

.slider-controls {
  display: flex;
  justify-content: space-between;
  position: absolute;
  top: 50%;
  width: 100%;
  transform: translateY(-50%);
}

.slider-btn {
  background: rgba(0, 0, 0, 0.5);
  color: white;
  border: none;
  padding: 10px 15px;
  cursor: pointer;
  font-size: 24px;
  transition: 0.3s;
  top: -20px;
}

.slider-btn:hover {
  background: rgba(0, 0, 0, 0.8);
}

.prev {
  position: absolute;
  left: 10px;
}

.next {
  position: absolute;
  right: 10px;
}
</style>
