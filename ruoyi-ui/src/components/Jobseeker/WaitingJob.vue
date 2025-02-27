<template>
  <div class="container">
    <div class="box-header">
      <h3 class="title">DANH SÁCH VIỆC LÀM TUYỂN DỤNG</h3>

      <div class="filters">
        <select v-model="selectedPosition" class="form-control">
          <option value="">- - Tất cả vị trí - -</option>
          <option v-for="(position, index) in positions" :key="index" :value="position">{{ position }}</option>
        </select>

        <select v-model="selectedIndustry" class="form-control">
          <option value="">- - Tất cả ngành nghề - -</option>
          <option v-for="(industry, index) in industries" :key="index" :value="industry">{{ industry }}</option>
        </select>

        <select v-model="selectedProvince" class="form-control">
          <option value="">- - Tất cả tỉnh thành - -</option>
          <option v-for="(province, index) in provinces" :key="index" :value="province">{{ province }}</option>
        </select>

        <select v-model="selectedSalary" class="form-control">
          <option value="">- - Tất cả mức lương - -</option>
          <option v-for="(salary, index) in salaries" :key="index" :value="salary">{{ salary }}</option>
        </select>

        <select v-model="selectedExperience" class="form-control">
          <option value="">- - Tất cả kinh nghiệm - -</option>
          <option v-for="(exp, index) in experiences" :key="index" :value="exp">{{ exp }}</option>
        </select>

        <select v-model="selectedGender" class="form-control">
          <option value="">- - Tất cả giới tính - -</option>
          <option value="Nam">Nam</option>
          <option value="Nữ">Nữ</option>
          <option value="Khác">Khác</option>
        </select>

        <input v-model="searchQuery" type="text" class="search-input" placeholder="Tìm kiếm..." />
      </div>
    </div>

    <div class="job-list">
      <h4 class="job-count">TẤT CẢ NGÀNH NGHỀ (5234)</h4>
      <div v-for="(job, index) in paginatedJobs" :key="index" class="job-item">
        <div class="job-title">{{ job.title }}</div>
        <div class="job-details">
          <span class="salary">💰 {{ job.salary }}</span>
          <span class="location">📍 {{ job.location }}</span>
          <span class="date">⏳ {{ job.date }}</span>
        </div>
      </div>
    </div>

    <div class="pagination">
      <button class="pagination-button" :disabled="currentPage === 1" @click="previousPage">❮</button>
      <button v-for="page in pages" :key="page" class="pagination-button" 
              :class="{ 'active': currentPage === page }" @click="goToPage(page)">
        {{ page }}
      </button>
      <button class="pagination-button" :disabled="currentPage === totalPages" @click="nextPage">❯</button>
      <button class="pagination-button" :disabled="currentPage === totalPages" @click="lastPage">❯❯</button>
    </div>
  </div>
</template>

<script>
export default {
  name: 'JobListings',
  data() {
    return {
      selectedPosition: '',
      selectedIndustry: '',
      selectedProvince: '',
      selectedSalary: '',
      selectedExperience: '',
      selectedGender: '',
      searchQuery: '',
      currentPage: 1,
      jobsPerPage: 10, // Number of jobs per page

      positions: ['Nhân viên IT', 'Kế toán nội bộ', 'Nhân viên may', 'Nhân viên QC', 'Giáo viên ngữ văn', 'Kế toán nội bộ', 'Nhân viên quản lý', 'Tổ trưởng tổ cát', 'Nhân viên lái xe', 'Tuyển thợ điện lành', 'Nhân viên kho', 'Kỹ thuật giặt ủi', 'Công nhân may mặc', 'Công nhân làm hồ thiếc'],
      industries: ['Công nghệ thông tin', 'Kế toán', 'Sản xuất', 'May mặc', 'Giáo dục', 'Xây dựng', 'Vận tải', 'Điện lực', 'Kinh doanh', 'Dịch vụ'],
      provinces: ['Hà Nội', 'Hải Phòng', 'Đà Nẵng', 'TP. Hồ Chí Minh', 'Nam Định'],
      salaries: ['Thoả thuận', 'Dưới 5 triệu', '5-10 triệu', '10-15 triệu', '15-20 triệu', 'Trên 20 triệu'],
      experiences: ['Chưa có kinh nghiệm', 'Dưới 1 năm', '1-3 năm', '3-5 năm', 'Trên 5 năm'],
      genders: ['Nam', 'Nữ', 'Khác'],

      jobs: [
        { title: 'Tuyển dụng vị trí công nhân lập trình', salary: 'Thoả thuận', location: 'Nam Định', date: '10/04/2025' },
        { title: 'Tuyển dụng vị trí công nhân đóng gói', salary: 'Thoả thuận', location: 'Nam Định', date: '10/04/2025' },
        { title: 'Tuyển dụng vị trí công nhân may', salary: 'Thoả thuận', location: 'Nam Định', date: '10/04/2025' },
        { title: 'Tuyển dụng vị trí QC', salary: 'Thoả thuận', location: 'Nam Định', date: '10/04/2025' },
        { title: 'Tuyển dụng giáo viên ngữ văn nước ngoài dạy tiếng Anh tại trung tâm và các trường', salary: '15-20 triệu', location: 'Nam Định', date: '12/04/2025' },
        { title: 'Kế toán nội bộ', salary: 'Thoả thuận', location: 'Nam Định', date: '25/03/2025' },
        { title: 'Nhân viên quản lý đơn hàng', salary: 'Thoả thuận', location: 'Nam Định', date: '31/03/2025' },
        { title: 'Tổ trưởng tổ cát', salary: '12-15 triệu', location: 'Nam Định', date: '31/03/2025' },
        { title: 'Nhân viên lái xe', salary: '10-12 triệu', location: 'Nam Định', date: '25/03/2025' },
        { title: 'Tuyển thợ điện lành', salary: '10-12 triệu', location: 'Nam Định', date: '25/03/2025' },
        { title: 'Nhân viên kho', salary: '10-12 triệu', location: 'Nam Định', date: '25/03/2025' },
        { title: 'Kỹ thuật giặt ủi', salary: '10-12 triệu', location: 'Nam Định', date: '31/03/2025' },
        { title: 'Công nhân may mặc', salary: '7-10 triệu', location: 'Nam Định', date: '31/03/2025' },
        { title: 'Công nhân làm hồ thiếc', salary: '7-10 triệu', location: 'Nam Định', date: '31/03/2025' },
      ],
    };
  },
  computed: {
    filteredJobs() {
      return this.jobs.filter((job) => {
        return (
          (this.selectedPosition === '' || job.title.includes(this.selectedPosition)) &&
          (this.selectedIndustry === '' || job.title.includes(this.selectedIndustry)) &&
          (this.selectedProvince === '' || job.location.includes(this.selectedProvince)) &&
          (this.selectedSalary === '' || job.salary.includes(this.selectedSalary)) &&
          (this.selectedExperience === '' || job.experience?.includes(this.selectedExperience)) &&
          (this.selectedGender === '' || job.gender?.includes(this.selectedGender)) &&
          (this.searchQuery === '' || job.title.toLowerCase().includes(this.searchQuery.toLowerCase()) ||
            job.location.toLowerCase().includes(this.searchQuery.toLowerCase()))
        );
      });
    },
    totalPages() {
      return Math.ceil(this.filteredJobs.length / this.jobsPerPage);
    },
    paginatedJobs() {
      const start = (this.currentPage - 1) * this.jobsPerPage;
      const end = start + this.jobsPerPage;
      return this.filteredJobs.slice(start, end);
    },
    pages() {
      return Array.from({ length: this.totalPages }, (_, i) => i + 1);
    },
  },
  methods: {
    previousPage() {
      if (this.currentPage > 1) this.currentPage--;
    },
    nextPage() {
      if (this.currentPage < this.totalPages) this.currentPage++;
    },
    goToPage(page) {
      this.currentPage = page;
    },
    lastPage() {
      this.currentPage = this.totalPages;
    },
  },
};
</script>

<style scoped>
.container {
  font-family: Arial, sans-serif;
  background-color: #fff;
  border: 1px solid #ddd;
  border-radius: 0;
  padding: 0;
  box-shadow: none;
  max-width: 1000px;
  margin: 0 auto;
}

.box-header {
  display: flex;
  justify-content: space-between;
  align-items: center;
  padding: 10px 15px;
  background-color: #fff;
  border-bottom: 1px solid #ddd;
}

.title {
  font-size: 16px;
  font-weight: bold;
  color: #333;
}

.filters {
  display: flex;
  gap: 10px;
  align-items: center;
  flex-wrap: wrap;
}

.form-control {
  padding: 8px 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  font-size: 14px;
  color: #333;
  background-color: #fff;
  min-width: 150px;
  height: 35px;
  appearance: none;
  background-image: url('data:image/svg+xml;utf8,<svg fill="%23333" height="24" viewBox="0 0 24 24" width="24" xmlns="http://www.w3.org/2000/svg"><path d="M7 10l5 5 5-5z"/></svg>');
  background-repeat: no-repeat;
  background-position: right 10px center;
}

.search-input {
  padding: 8px 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  font-size: 14px;
  color: #333;
  width: 200px;
  height: 35px;
  background-image: url('data:image/svg+xml;utf8,<svg fill="%23ff8c00" height="24" viewBox="0 0 24 24" width="24" xmlns="http://www.w3.org/2000/svg"><path d="M15.5 14h-.79l-.28-.27C15.41 12.59 16 11.11 16 9.5 16 5.91 13.09 3 9.5 3S3 5.91 3 9.5 5.91 16 9.5 16c1.61 0 3.09-.59 4.23-1.57l.27.28v.79l5 4.99L20.49 19l-4.99-5zm-6 0C7.01 14 5 11.99 5 9.5S7.01 5 9.5 5 14 7.01 14 9.5 11.99 14 9.5 14z"/></svg>');
  background-repeat: no-repeat;
  background-position: right 10px center;
}

.search-input:focus, .form-control:focus {
  outline: none;
  border-color: #007bff;
  box-shadow: 0 0 5px rgba(0, 123, 255, 0.3);
}

option {
  padding: 5px;
  color: #333;
}

.job-list {
  padding: 15px;
  border-bottom: 1px solid #ddd;
}

.job-count {
  font-size: 16px;
  font-weight: bold;
  color: #007bff;
  margin-bottom: 15px;
}

.job-item {
  padding: 10px;
  border-bottom: 1px solid #ddd;
  background-color: #fff;
}

.job-title {
  font-size: 16px;
  color: #333;
  margin-bottom: 5px;
}

.job-details {
  font-size: 14px;
  color: #666;
}

.job-details span {
  margin-right: 10px;
}

.salary::before {
  content: "💰";
  margin-right: 5px;
}

.location::before {
  content: "📍";
  margin-right: 5px;
}

.date::before {
  content: "⏳";
  margin-right: 5px;
}

.pagination {
  padding: 10px;
  display: flex;
  justify-content: center;
  gap: 5px;
  background-color: #e9ecef;
  border-top: 1px solid #ddd;
}

.pagination-button {
  padding: 5px 10px;
  border: 1px solid #ccc;
  border-radius: 4px;
  font-size: 14px;
  cursor: pointer;
  background-color: #fff;
  color: #333;
}

.pagination-button:disabled {
  background-color: #e9ecef;
  cursor: not-allowed;
}

.pagination-button.active {
  background-color: #007bff;
  color: white;
  border-color: #007bff;
}

.pagination-button:hover:not(:disabled) {
  background-color: #e9ecef;
}

/* Responsive Design */
@media (max-width: 768px) {
  .filters {
    flex-direction: column;
    align-items: flex-start;
  }

  .form-control, .search-input {
    min-width: 100%;
    margin-bottom: 10px;
  }

  .job-item {
    padding: 8px;
  }

  .job-title {
    font-size: 14px;
  }

  .job-details {
    font-size: 12px;
  }
}
</style>