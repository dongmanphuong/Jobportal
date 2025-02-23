<template>
    <div class="container">
      <h3 class="title">📌 BÀN LÀM VIỆC NGƯỜI TÌM VIỆC</h3>
  
      <!-- 3 Ô thống kê -->
      <div class="stat-container">
        <div class="info-box" v-for="(stat, index) in statistics" :key="index">
          <div class="info-box-icon" :class="stat.bgColor">
            <i :class="stat.icon"></i>
          </div>
          <div class="info-box-content">
            <span class="info-box-text">{{ stat.title }}</span>
            <span class="info-box-number">{{ stat.value }}</span>
          </div>
        </div>
      </div>
  
      <!-- Danh mục việc làm -->
      <div class="job-categories">
        <span v-for="(category, index) in jobCategories" :key="index" 
              :class="{ active: activeCategory === index }" 
              @click="setActiveCategory(index)">
          {{ category }}
        </span>
      </div>
  
      <!-- Danh sách việc làm -->
      <div class="job-list">
        <div class="job-item" v-for="(job, index) in jobs" :key="index">
          <div class="job-image">
            <img :src="job.image" alt="Logo" @error="setDefaultImage">
          </div>
          <div class="job-details">
            <h4><a :href="job.link">{{ job.title }}</a></h4>
            <p class="company">{{ job.company }}</p>
            <div class="job-meta">
              <span><i class="fa fa-map-marker"></i> {{ job.location }}</span>
              <span><i class="fa fa-calendar"></i> {{ job.deadline }}</span>
              <span><i class="fa fa-bookmark"></i> {{ job.experience }}</span>
            </div>
          </div>
        </div>
      </div>
    </div>
  </template>
  
  <script>
  export default {
    data() {
      return {
        // Dữ liệu thống kê
        statistics: [
          { title: "Hồ sơ xin việc đã đăng", value: 9, icon: "fa fa-upload", bgColor: "bg-red" },
          { title: "Việc làm đã ứng tuyển", value: 6, icon: "fa fa-sign-in", bgColor: "bg-green" },
          { title: "Việc làm đã lưu", value: 3, icon: "fa fa-download", bgColor: "bg-yellow" },
        ],
        // Danh mục việc làm
        jobCategories: ["Việc làm tốt nhất", "Việc làm mới nhất", "Việc làm lương cao", "Tuyển gấp"],
        activeCategory: 0, // Mặc định chọn "Việc làm tốt nhất"
        // Danh sách việc làm
        jobs: [
          {
            title: "Nhân viên biết tiếng Trung",
            company: "Công ty TNHH Kỹ Thuật điện tử MSL Việt Nam",
            location: "Nam Định",
            deadline: "30/06/2022",
            experience: "1 năm",
            image: "http://file2.vieclamnamdinh.gov.vn/image/images/noimage.png",
            link: "#",
          },
          {
            title: "LAO ĐỘNG KỸ THUẬT HÀNH CHÍNH NHÂN SỰ",
            company: "Chi nhánh Công ty TNHH Giày Victory Việt Nam",
            location: "Nam Định",
            deadline: "14/02/2024",
            experience: "Trên 5 năm",
            image: "http://file2.vieclamnamdinh.gov.vn/data/0/images/2024/04/03/tinh.namdinh/ma-nganh-nghe-san-xuat-giay-dep.jpg",
            link: "#",
          },
        ],
      };
    },
    methods: {
      // Đổi tab danh mục việc làm
      setActiveCategory(index) {
        this.activeCategory = index;
      },
      // Nếu ảnh lỗi, hiển thị ảnh mặc định
      setDefaultImage(event) {
        event.target.src = "http://file2.vieclamnamdinh.gov.vn/image/noimage/3.jpg";
      },
    },
  };
  </script>
  
  <style scoped>
  /* Container tổng */
  .container {
    max-width: 1000px;
    margin: auto;
    padding: 20px;
    background: #fff;
    border-radius: 8px;
    box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
  }
  
  /* Tiêu đề */
  .title {
    text-align: center;
    font-weight: bold;
    color: #333;
    border-bottom: 3px solid #007bff;
    padding-bottom: 10px;
  }
  
  /* 3 Ô thống kê */
  .stat-container {
    display: flex;
    justify-content: space-between;
    flex-wrap: wrap;
    margin-bottom: 15px;
  }
  
  .info-box {
    display: flex;
    align-items: center;
    width: 32%;
    background: #f8f9fa;
    padding: 15px;
    border-radius: 8px;
    box-shadow: 0px 2px 5px rgba(0, 0, 0, 0.1);
  }
  
  .info-box-icon {
    width: 45px;
    height: 45px;
    display: flex;
    align-items: center;
    justify-content: center;
    color: white;
    font-size: 20px;
    border-radius: 8px;
    margin-right: 10px;
  }
  
  .bg-red {
    background: #e74c3c;
  }
  .bg-green {
    background: #28a745;
  }
  .bg-yellow {
    background: #f39c12;
  }
  
  .info-box-content {
    flex: 1;
  }
  .info-box-text {
    font-size: 14px;
    font-weight: bold;
  }
  .info-box-number {
    font-size: 18px;
    color: #333;
  }
  
  /* Danh mục việc làm */
  .job-categories {
    display: flex;
    justify-content: center;
    gap: 15px;
    margin-bottom: 15px;
  }
  
  .job-categories span {
    padding: 8px 15px;
    border-radius: 20px;
    background: #ddd;
    cursor: pointer;
    transition: 0.3s;
  }
  
  .job-categories span.active {
    background: #007bff;
    color: white;
  }
  
  /* Danh sách việc làm */
  .job-list {
    display: grid;
    grid-template-columns: 1fr 1fr;
    gap: 15px;
  }
  
  .job-item {
    display: flex;
    align-items: center;
    background: #f8f9fa;
    padding: 15px;
    border-radius: 8px;
    box-shadow: 0px 2px 5px rgba(0, 0, 0, 0.1);
  }
  
  .job-image img {
    width: 60px;
    height: 60px;
    border-radius: 5px;
  }
  
  .job-details {
    margin-left: 15px;
    flex: 1;
  }
  
  .job-details h4 {
    margin: 0;
  }
  
  .company {
    font-size: 14px;
    color: #666;
  }
  
  .job-meta {
    display: flex;
    justify-content: space-between;
    font-size: 12px;
    color: #555;
  }
  
  /* Responsive */
  @media (max-width: 768px) {
    .stat-container {
      flex-direction: column;
      align-items: center;
    }
  
    .info-box {
      width: 90%;
      margin-bottom: 10px;
    }
  
    .job-list {
      grid-template-columns: 1fr;
    }
  }
  </style>
  