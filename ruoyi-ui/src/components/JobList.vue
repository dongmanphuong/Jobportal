<template>
    <div class="job-list-container">
      <div class="container">
        <!-- Tiêu đề -->
        <div class="section-title text-center">
          <h1>DANH SÁCH VIỆC LÀM</h1>
          <p>
            Tổng hợp những việc làm hot nhất từ các top công ty tốt nhất và dựa trên những tiêu chí Chất lượng dịch vụ ...
          </p>
        </div>
  
        <!-- Tabs -->
        <div class="job-tabs">
          <button @click="filterJobs(0)" :class="{ active: activeFilter === 0 }">Tất cả</button>
          <button @click="filterJobs(1)" :class="{ active: activeFilter === 1 }">Mới nhất</button>
          <button @click="filterJobs(2)" :class="{ active: activeFilter === 2 }">Lương cao</button>
          <button @click="filterJobs(3)" :class="{ active: activeFilter === 3 }">Tuyển gấp</button>
          <a href="/viec-lam" class="view-more">Xem thêm</a>
        </div>
  
        <!-- Danh sách công việc -->
        <div class="job-grid">
          <JobItem v-for="job in filteredJobs" :key="job.id" :job="job" />
        </div>
      </div>
    </div>
  </template>
  
  <script>
  import JobItem from "./JobItem.vue";
  
  export default {
    components: {
      JobItem,
    },
    data() {
      return {
        activeFilter: 0,
        jobs: [
          { id: 1, title: "Nhân viên kinh doanh", company: "Công ty A", location: "Nam Định", deadline: "31/10/2020", experience: "Dưới 1 năm", category: 1 },
          { id: 2, title: "Lao động kỹ thuật", company: "Công ty B", location: "Nam Định", deadline: "31/05/2024", experience: "5 năm", category: 3 },
          { id: 3, title: "Thợ kỹ thuật", company: "Công ty C", location: "Nam Định", deadline: "17/09/2020", experience: "2 năm", category: 2 },
          { id: 4, title: "Nhân viên thiết kế", company: "Công ty D", location: "Nam Định", deadline: "30/07/2022", experience: "1 năm", category: 1 },
          { id: 5, title: "Công nhân là hơi", company: "Công ty E", location: "Nam Định", deadline: "31/08/2024", experience: "2 năm", category: 3 },
          { id: 6, title: "Nhân viên bán hàng", company: "Công ty F", location: "Nam Định", deadline: "31/12/2023", experience: "Chưa có kinh nghiệm", category: 1 },
          { id: 7, title: "Kỹ sư cơ khí", company: "Công ty G", location: "Nam Định", deadline: "15/11/2022", experience: "3 năm", category: 2 },
        ],
      };
    },
    computed: {
      filteredJobs() {
        if (this.activeFilter === 0) {
          return this.jobs;
        }
        return this.jobs.filter(job => job.category === this.activeFilter);
      },
    },
    methods: {
      filterJobs(category) {
        this.activeFilter = category;
      },
    },
  };
  </script>
  
  <style scoped>
  /* Container */
  .job-list-container {
    padding: 20px 0;
  }
  
  /* Tiêu đề */
  .section-title h1 {
    font-size: 24px;
    font-weight: bold;
  }
  
  /* Tabs */
  .job-tabs {
    display: flex;
    justify-content: center;
    gap: 10px;
    margin-bottom: 20px;
  }
  
  .job-tabs button {
    background: #fff;
    border: 1px solid #ddd;
    padding: 10px 15px;
    border-radius: 5px;
    cursor: pointer;
  }
  
  .job-tabs button.active {
    background: blue;
    color: white;
  }
  
  /* Danh sách việc làm */
  .job-grid {
    display: grid;
    grid-template-columns: repeat(3, 1fr); /* Hiển thị 3 job trên 1 dòng */
    gap: 15px;
  }
  
  /* Responsive */
  @media (max-width: 1024px) {
    .job-grid {
      grid-template-columns: repeat(2, 1fr); /* 2 job trên 1 dòng cho màn hình nhỏ hơn */
    }
  }
  
  @media (max-width: 768px) {
    .job-grid {
      grid-template-columns: 1fr; /* 1 job trên 1 dòng cho mobile */
    }
  }
  </style>
  