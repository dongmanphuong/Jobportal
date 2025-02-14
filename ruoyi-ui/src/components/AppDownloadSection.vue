<template>
    <section class="download-app">
      <a :href="appLink" target="_blank" rel="noopener noreferrer">
        <img :src="appImage" alt="Tải ứng dụng việc làm" />
      </a>
    </section>
  </template>
  
  <script>
  export default {
    data() {
      return {
        appLink: "https://play.google.com/store/apps/details?id=com.vieclamnd",
        appImage: require("@/assets/images/taiungdung.png"), // Đảm bảo ảnh nằm đúng thư mục
      };
    },
  };
  </script>
  
  <style scoped>
  .download-app {
    display: flex;
    justify-content: center;
    align-items: center;
    padding: 30px 20px;
  }
  
  .download-app a {
    display: inline-block;
    text-decoration: none;
  }
  
  .download-app img {
    max-width: 500px; /* Tăng kích thước tối đa trên PC */
    width: 90%; /* Trên mobile, ảnh chiếm 90% màn hình */
    height: auto;
    display: block;
    transition: transform 0.2s ease-in-out;
    touch-action: manipulation;
    border-radius: 10px; /* Bo góc ảnh để đẹp hơn */
    box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.2); /* Thêm hiệu ứng đổ bóng */
  }
  
  /* Hiệu ứng hover trên PC */
  @media (min-width: 1800px) {
    .download-app img:hover {
      transform: scale(1.1); /* Phóng to nhẹ khi hover */
    }
  }
  
  /* Responsive cho mobile */
  @media (max-width: 768px) {
    .download-app {
      padding: 15px;
    }
  
    .download-app img {
      max-width: 90%;
      border-radius: 8px;
    }
  }
  </style>
  