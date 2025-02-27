<template>
  <div class="container">
    <div class="box-header">
      <h3 class="title">DANH SÁCH VIỆC LÀM ĐÃ LƯU ({{ savedJobs.length }})</h3>

      <div class="filters">
        <select v-model="selectedProvince" class="form-control">
          <option value="">- - Tất cả tỉnh thành - -</option>
          <option v-for="(province, index) in provinces" :key="index" :value="province">{{ province }}</option>
        </select>

        <select v-model="selectedDistrict" class="form-control">
          <option value="">- - Quận/ huyện - -</option>
          <option v-for="(district, index) in districts" :key="index" :value="district">{{ district }}</option>
        </select>

        <select v-model="selectedIndustry" class="form-control">
          <option value="">- - Ngành nghề - -</option>
          <option v-for="(industry, index) in industries" :key="index" :value="industry">{{ industry }}</option>
        </select>

        <select v-model="selectedJobType" class="form-control">
          <option value="">- - Loại công việc - -</option>
          <option v-for="(jobType, index) in jobTypes" :key="index" :value="jobType">{{ jobType }}</option>
        </select>

        <select v-model="selectedSalary" class="form-control">
          <option value="">- - Mức lương - -</option>
          <option v-for="(salary, index) in salaries" :key="index" :value="salary">{{ salary }}</option>
        </select>

        <select v-model="selectedExperience" class="form-control">
          <option value="">- - Kinh nghiệm - -</option>
          <option v-for="(exp, index) in experiences" :key="index" :value="exp">{{ exp }}</option>
        </select>

        <select v-model="selectedSort" class="form-control">
          <option value="0">Mặc định</option>
          <option value="1">35</option>
        </select>

        <input v-model="searchQuery" type="text" class="search-input" placeholder="Tìm kiếm..." />
      </div>
    </div>

    <div class="table-container">
      <table>
        <thead>
          <tr>
            <th>STT</th>
            <th>Vị trí công việc</th>
            <th>Thông tin doanh nghiệp</th>
          </tr>
        </thead>
        <tbody>
          <tr v-for="(job, index) in filteredJobs" :key="index">
            <td>
              <input type="checkbox" v-model="selectedJobs" :value="job.id" />
              {{ index + 1 }}
            </td>
            <td>
              {{ job.position }}
              <div class="small-text">Lượt xem: {{ job.views }} - Ngày lưu: {{ job.savedDate }}</div>
            </td>
            <td>
              <div>Đơn vị: {{ job.company }}</div>
              <div>DT: {{ job.phone }}</div>
              <div>ĐC: {{ job.address }}</div>
            </td>
          </tr>
        </tbody>
      </table>
    </div>

    <div class="button-group">
      <button class="back-button" @click="goBack">Quay lại</button>
      <button class="delete-button" @click="deleteSelected">Xóa</button>
    </div>
  </div>
</template>

<script>
export default {
  name: 'SavedJobsList',
  data() {
    return {
      selectedProvince: '',
      selectedDistrict: '',
      selectedIndustry: '',
      selectedJobType: '',
      selectedSalary: '',
      selectedExperience: '',
      selectedSort: '0',
      searchQuery: '',
      selectedJobs: [],

      provinces: ['Hà Nội', 'Hải Phòng', 'Đà Nẵng', 'TP. Hồ Chí Minh', 'Nam Định'],
      districts: ['Quận 1', 'Quận 2', 'Quận 3', 'Quận 4', 'Quận 5'],
      industries: ['Công nghệ thông tin', 'Kế toán', 'Sản xuất', 'May mặc', 'Xây dựng'],
      jobTypes: ['Toàn thời gian', 'Bán thời gian', 'Thực tập', 'Tạm thời'],
      salaries: ['Thoả thuận', 'Dưới 5 triệu', '5-10 triệu', '10-15 triệu', 'Trên 15 triệu'],
      experiences: ['Chưa có kinh nghiệm', 'Dưới 1 năm', '1-3 năm', '3-5 năm', 'Trên 5 năm'],

      savedJobs: [
        {
          id: 1,
          position: 'Việc làm: Nhân viên Kế toán',
          views: 18,
          savedDate: '25/02/2025 20:06',
          company: 'CÔNG TY TNHH HÒNG QUYÊN',
          phone: '0912455464',
          address: 'KBT Hòa Vượng - P. Lộc Vượng - TP NAM ĐỊNH',
        },
        {
          id: 2,
          position: 'Việc làm: Kế toán nội bộ',
          views: 14,
          savedDate: '25/02/2025 20:06',
          company: 'Công ty TNHH Nam Định Katoth',
          phone: '0943719108',
          address: 'Lô B1 - Đường D3 - KCN Hòa Xá',
        },
      ],
    };
  },
  computed: {
    filteredJobs() {
      return this.savedJobs.filter((job) => {
        return (
          (this.selectedProvince === '' || job.address.includes(this.selectedProvince)) &&
          (this.selectedDistrict === '' || job.address.includes(this.selectedDistrict)) &&
          (this.selectedIndustry === '' || job.position.includes(this.selectedIndustry)) &&
          (this.selectedJobType === '' || job.position.includes(this.selectedJobType)) &&
          (this.selectedSalary === '' || job.salary?.includes(this.selectedSalary)) &&
          (this.selectedExperience === '' || job.experience?.includes(this.selectedExperience)) &&
          (this.searchQuery === '' || job.position.toLowerCase().includes(this.searchQuery.toLowerCase()) ||
            job.company.toLowerCase().includes(this.searchQuery.toLowerCase()))
        );
      });
    },
  },
  methods: {
    goBack() {
      // Logic to navigate back (e.g., using Vue Router or window.history)
      this.$router.go(-1); // Example using Vue Router; adjust as needed
    },
    deleteSelected() {
      // Logic to delete selected jobs
      this.savedJobs = this.savedJobs.filter(job => !this.selectedJobs.includes(job.id));
      this.selectedJobs = []; // Clear selected jobs after deletion
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

.table-container {
  overflow-x: auto;
  margin-top: 10px;
}

table {
  width: 100%;
  border-collapse: collapse;
}

th {
  background: #007bff;
  color: white;
  padding: 10px;
  text-align: left;
  font-weight: bold;
}

td {
  padding: 10px;
  border-bottom: 1px solid #ddd;
  color: #333;
}

tr:hover {
  background: #f1f1f1;
}

.small-text {
  font-size: 12px;
  color: #666;
}

.button-group {
  margin-top: 20px;
  text-align: right;
  padding: 10px;
  background-color: #e9ecef;
  border-top: 1px solid #ddd;
}

.back-button, .delete-button {
  padding: 8px 16px;
  border: 1px solid #ccc;
  border-radius: 4px;
  font-size: 14px;
  cursor: pointer;
  margin-left: 10px;
}

.back-button {
  background-color: #28a745;
  color: white;
}

.delete-button {
  background-color: #dc3545;
  color: white;
}

.back-button:hover {
  background-color: #218838;
}

.delete-button:hover {
  background-color: #c82333;
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

  th, td {
    font-size: 14px;
    padding: 8px;
  }

  .button-group {
    text-align: center;
  }

  .back-button, .delete-button {
    margin-left: 0;
    margin-bottom: 10px;
    width: 100%;
  }
}
</style>