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
        { id: 1, title: "Nhân viên kinh doanh", company: "Công ty A", location: "Nam Định", deadline: "31/10/2024", experience: "Dưới 1 năm", category: 1 },
        { id: 2, title: "Lao động kỹ thuật", company: "Công ty B", location: "Nam Định", deadline: "31/05/2024", experience: "5 năm", category: 3 },
        { id: 3, title: "Thợ kỹ thuật", company: "Công ty C", location: "Nam Định", deadline: "17/09/2024", experience: "2 năm", category: 2 },
        { id: 4, title: "Nhân viên thiết kế", company: "Công ty D", location: "Nam Định", deadline: "30/07/2024", experience: "1 năm", category: 1 },
        { id: 5, title: "Công nhân lò hơi", company: "Công ty E", location: "Nam Định", deadline: "31/08/2024", experience: "2 năm", category: 3 },
        { id: 6, title: "Nhân viên bán hàng", company: "Công ty F", location: "Nam Định", deadline: "31/12/2024", experience: "Chưa có kinh nghiệm", category: 1 },
        { id: 7, title: "Kỹ sư cơ khí", company: "Công ty G", location: "Nam Định", deadline: "15/11/2024", experience: "3 năm", category: 2 },
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
/* Tổng thể danh sách việc làm */
.job-list-container {
  padding: 50px 0;
  background: #f9f9f9;
}

/* Tiêu đề */
.section-title h1 {
  font-size: 28px;
  font-weight: 700;
  color: #333;
}

.section-title p {
  font-size: 16px;
  color: #666;
  margin-bottom: 30px;
}

/* Tabs Filter */
.job-tabs {
  display: flex;
  justify-content: center;
  flex-wrap: wrap;
  gap: 10px;
  margin-bottom: 30px;
}

.job-tabs button {
  background: white;
  border: 2px solid #007bff;
  padding: 10px 18px;
  border-radius: 8px;
  font-size: 14px;
  font-weight: 600;
  cursor: pointer;
  transition: 0.3s;
}

.job-tabs button:hover,
.job-tabs button.active {
  background: #007bff;
  color: white;
}

/* Xem thêm */
.view-more {
  padding: 10px 18px;
  font-size: 14px;
  font-weight: 600;
  color: #007bff;
  text-decoration: none;
  border: 2px solid #007bff;
  border-radius: 8px;
  transition: 0.3s;
}

.view-more:hover {
  background: #007bff;
  color: white;
}

/* Danh sách việc làm */
.job-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
  gap: 20px;
  max-width: 1200px;
  margin: 0 auto;
  padding: 0 15px;
}

/* Responsive */
@media (max-width: 1024px) {
  .job-grid {
    grid-template-columns: repeat(2, 1fr);
  }
}

@media (max-width: 768px) {
  .job-grid {
    grid-template-columns: 1fr;
  }

  .job-tabs {
    flex-direction: column;
    align-items: center;
  }
}

@media (max-width: 480px) {
  .job-tabs button {
    padding: 8px 14px;
    font-size: 13px;
  }

  .view-more {
    padding: 8px 14px;
    font-size: 13px;
  }
}
</style>
