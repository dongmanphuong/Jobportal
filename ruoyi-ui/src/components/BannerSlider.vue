<template>
    <div class="banner-slider">
      <div class="slider-container">
        <transition name="fade" mode="out-in">
          <a
            v-if="currentImage"
            :key="currentImage.src"
            :href="currentImage.link"
            :title="currentImage.title"
            class="slide"
          >
            <img
              :src="currentImage.src"
              :alt="currentImage.title"
              @error="handleImageError(currentIndex)"
            />
          </a>
        </transition>
      </div>
  
      <!-- Điều hướng -->
      <button class="prev" @click="prevSlide">❮</button>
      <button class="next" @click="nextSlide">❯</button>
    </div>
  </template>
  
  <script>
  export default {
    data() {
      return {
        images: [
          {
            title: "Tải ứng dụng tìm việc 1",
            link: "http://map.vieclamnamdinh.gov.vn/",
            src: "http://file2.vieclamnamdinh.gov.vn/data/0/images/2024/10/14/host/mainslide3.png?dpi=150&quality=100",
          },
          {
            title: "Tải ứng dụng tìm việc 2",
            link: "http://map.vieclamnamdinh.gov.vn/",
            src: "http://file2.vieclamnamdinh.gov.vn/data/0/images/2024/10/14/host/mainslide3.png?dpi=150&quality=100",
          },
          {
            title: "Tải ứng dụng tìm việc 3",
            link: "http://map.vieclamnamdinh.gov.vn/",
            src: "http://file2.vieclamnamdinh.gov.vn/data/0/images/2024/10/14/host/mainslide3.png?dpi=150&quality=100",
          },
        ],
        currentIndex: 0,
        intervalId: null,
      };
    },
    computed: {
      currentImage() {
        return this.images[this.currentIndex];
      },
    },
    methods: {
      nextSlide() {
        this.currentIndex = (this.currentIndex + 1) % this.images.length;
      },
      prevSlide() {
        this.currentIndex =
          (this.currentIndex - 1 + this.images.length) % this.images.length;
      },
      startAutoSlide() {
        this.intervalId = setInterval(() => {
          this.nextSlide();
        }, 3000);
      },
      stopAutoSlide() {
        clearInterval(this.intervalId);
      },
      handleImageError(index) {
        this.images[index].src =
          "http://file2.vieclamnamdinh.gov.vn/image/noimage/4.jpg?dpi=150&quality=100";
      },
    },
    mounted() {
      this.startAutoSlide();
    },
    beforeDestroy() {
      this.stopAutoSlide();
    },
  };
  </script>
  
  <style scoped>
  .banner-slider {
    position: relative;
    width: 100%;
    max-width: 1200px;
    margin: auto;
    overflow: hidden;
    border-radius: 10px;
  }
  
  .slider-container {
    position: relative;
    width: 100%;
  }
  
  .slide img {
    width: 100%;
    height: auto;
    border-radius: 10px;
    object-fit: cover;
  }
  
  /* Hiệu ứng fade khi chuyển ảnh */
  .fade-enter-active,
  .fade-leave-active {
    transition: opacity 0.8s ease-in-out;
  }
  .fade-enter, .fade-leave-to {
    opacity: 0;
  }
  
  /* Nút điều hướng */
  .prev, .next {
    position: absolute;
    top: 50%;
    transform: translateY(-50%);
    background: rgba(0, 0, 0, 0.5);
    color: white;
    border: none;
    padding: 10px 15px;
    cursor: pointer;
    font-size: 20px;
    border-radius: 50%;
  }
  
  .prev { left: 10px; }
  .next { right: 10px; }
  
  .prev:hover, .next:hover {
    background: black;
  }
  </style>
  