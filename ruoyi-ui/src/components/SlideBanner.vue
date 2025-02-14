<template>
    <div class="slider-container">
      <!-- Background Image -->
      <div
        class="bg-background2"
        :style="{ backgroundImage: `url(${backgroundImage})` }"
      >
        <div class="header-text">
          <div class="container text-center text-white">
            <h1>Trung Tâm Dịch Vụ Việc Làm Nam Định</h1>
            <p>Là đơn vị sự nghiệp công lập trực thuộc Sở Lao động – Thương binh và Xã hội tỉnh Nam Định.</p>
            <p>Trụ sở chính: Số 64 đường Trần Phú, phường Trần Hưng Đạo, TP.Nam Định</p>
          </div>
        </div>
      </div>
  
      <!-- Image Slider -->
      <div class="slider">
        <div
          class="slides"
          :style="{ transform: `translateX(-${currentIndex * 100}%)` }"
        >
          <div v-for="(slide, index) in slides" :key="index" class="slide">
            <img :src="slide.image" :alt="slide.title" @error="imageError" />
            <p class="caption">{{ slide.caption }}</p>
          </div>
        </div>
      </div>
  
      <!-- Navigation Buttons -->
      <button class="prev" @click="prevSlide">❮</button>
      <button class="next" @click="nextSlide">❯</button>
    </div>
  </template>
  
  <script>
  export default {
    data() {
      return {
        currentIndex: 0,
        backgroundImage:
          "http://file2.vieclamnamdinh.gov.vn/data/0/images/2023/11/21/host/slide3.png",
        slides: [
          {
            title: "Slide việc làm Nam Định 1",
            image:
              "http://file2.vieclamnamdinh.gov.vn/data/0/images/2024/10/14/host/e176b995fdf321ad78e236-1.jpg",
            caption: "",
          },
          {
            title: "Ngày hội việc làm",
            image:
              "http://file2.vieclamnamdinh.gov.vn/data/0/images/2024/10/14/host/110ab824ff42231c7a5366-1.jpg",
            caption: "Ngày hội việc làm",
          },
          {
            title: "slide 3",
            image:
              "http://file2.vieclamnamdinh.gov.vn/data/0/images/2024/10/14/host/a0f239d67cb0a0eef9a121-1.jpg",
            caption: "",
          },
          {
            title: "slide 4",
            image:
              "http://file2.vieclamnamdinh.gov.vn/data/0/images/2024/10/14/host/74bdd8999dff41a118ee25-1.jpg",
            caption: "",
          },
        ],
      };
    },
    methods: {
      nextSlide() {
        this.currentIndex = (this.currentIndex + 1) % this.slides.length;
      },
      prevSlide() {
        this.currentIndex =
          (this.currentIndex - 1 + this.slides.length) % this.slides.length;
      },
      imageError(event) {
        event.target.src =
          "http://file2.vieclamnamdinh.gov.vn/image/noimage/1.jpg";
      },
    },
  };
  </script>
  
  <style scoped>
  /* Background Section */
  .bg-background2 {
    background-size: cover;
    background-position: center;
    padding: 60px 0;
    text-align: center;
    color: white;
  }
  
  /* Slider */
  .slider-container {
    position: relative;
    max-width: 800px;
    margin: 20px auto;
    overflow: hidden;
  }
  
  .slider {
    display: flex;
    width: 100%;
    overflow: hidden;
  }
  
  .slides {
    display: flex;
    transition: transform 0.5s ease-in-out;
  }
  
  .slide {
    min-width: 100%;
    text-align: center;
  }
  
  .slide img {
    width: 100%;
    height: auto;
    display: block;
    border-radius: 5px;
  }
  
  .caption {
    margin-top: 10px;
    font-size: 16px;
    color: #333;
  }
  
  /* Navigation Buttons */
  button {
    position: absolute;
    top: 50%;
    transform: translateY(-50%);
    background: rgba(0, 0, 0, 0.5);
    color: white;
    border: none;
    padding: 10px;
    cursor: pointer;
    font-size: 24px;
  }
  
  .prev {
    left: 10px;
  }
  
  .next {
    right: 10px;
  }
  
  button:hover {
    background: rgba(0, 0, 0, 0.8);
  }
  </style>
  