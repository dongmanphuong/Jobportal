<template>
    <div class="slider-container">
      <!-- Background Image Section -->
      <div class="bg-background2" :style="{ backgroundImage: `url(${backgroundImage})` }">
        <div class="header-text">
          <div class="container text-center text-white">
            <h1>Trung Tâm Dịch Vụ Việc Làm Bắc Kạn</h1>
            <p>Trụ sở chính: Tổ 8A, phường Phùng Chí Kiên, thành phố Bắc Kạn, tỉnh Bắc Kạn</p>
          </div>
        </div>
      </div>
  
      <!-- Image Slider -->
      <div class="slider">
        <div
          class="slides"
          :style="{
            transform: `translateX(-${currentIndex * (100 / slidesPerView)}%)`,
            width: `${slides.length * (100 / slidesPerView)}%`
          }"
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
        slidesPerView: window.innerWidth > 768 ? 4 : 1, // PC: 4 slides, Mobile: 1 slide
        backgroundImage:
          "http://file2.vieclamnamdinh.gov.vn/data/0/images/2023/11/21/host/slide3.png",
        slides: [
          {
            title: "Slide 1",
            image: "http://file2.vieclamnamdinh.gov.vn/data/0/images/2024/10/14/host/e176b995fdf321ad78e236-1.jpg",
            caption: "Việc làm hấp dẫn",
          },
          {
            title: "Slide 2",
            image: "http://file2.vieclamnamdinh.gov.vn/data/0/images/2024/10/14/host/110ab824ff42231c7a5366-1.jpg",
            caption: "Ngày hội việc làm",
          },
          {
            title: "Slide 3",
            image: "http://file2.vieclamnamdinh.gov.vn/data/0/images/2024/10/14/host/a0f239d67cb0a0eef9a121-1.jpg",
            caption: "Cơ hội phát triển",
          },
          {
            title: "Slide 4",
            image: "http://file2.vieclamnamdinh.gov.vn/data/0/images/2024/10/14/host/74bdd8999dff41a118ee25-1.jpg",
            caption: "Tuyển dụng đa dạng",
          },
          {
            title: "Slide 5",
            image: "http://file2.vieclamnamdinh.gov.vn/data/0/images/2024/10/14/host/slide5.jpg",
            caption: "Việc làm Bắc Kạn",
          },
        ],
      };
    },
    methods: {
      nextSlide() {
        if (this.currentIndex < this.slides.length - this.slidesPerView) {
          this.currentIndex++;
        } else {
          this.currentIndex = 0;
        }
      },
      prevSlide() {
        if (this.currentIndex > 0) {
          this.currentIndex--;
        } else {
          this.currentIndex = this.slides.length - this.slidesPerView;
        }
      },
      imageError(event) {
        event.target.src = "http://file2.vieclamnamdinh.gov.vn/image/noimage/1.jpg";
      },
      updateSlidesPerView() {
        this.slidesPerView = window.innerWidth > 768 ? 4 : 1;
        this.currentIndex = 0; // Reset vị trí khi thay đổi màn hình
      }
    },
    mounted() {
      window.addEventListener("resize", this.updateSlidesPerView);
    },
    beforeDestroy() {
      window.removeEventListener("resize", this.updateSlidesPerView);
    }
  };
  </script>
  
  <style scoped>
  /* Background Section */
  .bg-background2 {
    width: 100%;
    background-size: cover;
    background-position: center;
    padding: 60px 15px;
    text-align: center;
    color: white;
  }
  
  /* Slider Container */
  .slider-container {
    position: relative;
    width: 100%;
    max-width: 1200px;
    margin: 0 auto;
    overflow: hidden;
  }
  
  /* Slider */
  .slider {
    display: flex;
    overflow: hidden;
    width: 100%;
  }
  
  .slides {
    display: flex;
    transition: transform 0.5s ease-in-out;
  }
  
  .slide {
    flex: 1;
    min-width: 25%;
    text-align: center;
    padding: 5px;
  }
  
  .slide img {
    width: 100%;
    height: auto;
    max-height: 250px;
    object-fit: cover;
    border-radius: 5px;
  }
  
  /* Caption */
  .caption {
    margin-top: 10px;
    font-size: 16px;
    color: #333;
  }
  
  /* Navigation Buttons */
  button {
    position: absolute;
  top: 50%; /* Căn giữa theo chiều dọc */
  transform: translateY(-50%);
  background: rgba(0, 0, 0, 0.5);
  color: white;
  border: none;
  padding: 6px 10px; /* Giảm padding */
  cursor: pointer;
  font-size: 18px; /* Giảm kích thước chữ */
  border-radius: 50%; /* Làm nút tròn hơn */
  width: 35px; /* Định kích thước nút */
  height: 35px;
  display: flex;
  align-items: center;
  justify-content: center;

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
  
  /* Responsive Design */
  @media (max-width: 768px) {
    .slide {
      min-width: 100%;
    }
    
    .slide img {
      max-height: 300px;
    }
  
    button {
      font-size: 18px;
      padding: 8px;
    }
  }
  
  @media (max-width: 576px) {
    .bg-background2 {
      padding: 40px 10px;
    }
  
    .caption {
      font-size: 14px;
    }
  }
  </style>
  