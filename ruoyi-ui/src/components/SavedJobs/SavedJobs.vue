<template>
  <div class="job-list-container">
    <!-- Tiêu đề -->
    <h3 class="title">Danh sách việc làm đã lưu (5)</h3>

    <!-- Thanh tìm kiếm và lọc -->
    <div class="search-filter">
      <select class="filter-select" v-model="selectedCity">
        <option value="">-- Quận/huyện --</option>
        <option value="ha_dong">Hà Đông</option>
        <option value="hoan_kiem">Hoàn Kiếm</option>
        <!-- Thêm các quận/huyện khác nếu cần -->
      </select>
      <select class="filter-select" v-model="selectedArea">
        <option value="">-- Nganh nghề --</option>
        <option value="it">CNTT</option>
        <option value="marketing">Marketing</option>
      </select>
      <select class="filter-select" v-model="selectedJobType">
        <option value="">-- Loại công việc --</option>
        <option value="fulltime">Full-time</option>
        <option value="parttime">Part-time</option>
      </select>
      <select class="filter-select" v-model="selectedSalary">
        <option value="">-- Mức lương --</option>
        <option value="low">Dưới 10 triệu</option>
        <option value="high">Trên 10 triệu</option>
      </select>
      <select class="filter-select" v-model="selectedExperience">
        <option value="">-- Kinh nghiệm --</option>
        <option value="junior">Dưới 1 năm</option>
        <option value="senior">Trên 3 năm</option>
      </select>
      <input type="text" class="search-input" placeholder="Tìm kiếm..." v-model="searchQuery" />
    </div>

    <!-- Bảng danh sách việc làm -->
    <table class="job-table">
      <thead>
        <tr>
          <th></th> <!-- Cột cho checkbox -->
          <th>STT</th>
          <th>Vị trí công việc</th>
          <th>Thông tin doanh nghiệp</th>
        </tr>
      </thead>
      <tbody>
        <tr v-for="(job, index) in filteredJobs" :key="job.id">
          <td>
            <input type="checkbox" v-model="selectedJobs" :value="job.id" />
          </td>
          <td>{{ index + 1 }}</td>
          <td>
            {{ job.position }}<br />
            Lượt xem: {{ job.views }}<br />
            Ngày lưu: {{ job.savedDate }}
          </td>
          <td>
            Đơn vị: {{ job.company }}<br />
            ĐT: {{ job.phone }}<br />
            ĐC: {{ job.address }}
          </td>
        </tr>
      </tbody>
    </table>

    <!-- Nút quay lại và xóa -->
    <div class="button-group">
      <button class="back-button">Quay lại</button>
      <button class="delete-button" @click="deleteSelectedJobs">Xóa</button>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      searchQuery: '',
      selectedCity: '',
      selectedArea: '',
      selectedJobType: '',
      selectedSalary: '',
      selectedExperience: '',
      selectedJobs: [], // Mảng lưu ID của các công việc được chọn
      jobs: [
        {
          id: 1,
          position: 'Nhân viên kỹ thuật',
          views: '02',
          savedDate: '21/02/2025 15:09',
          company: 'Công ty TNHN Smart Shirts Garments Manufacturing Hai Hâu',
          phone: '02286282626',
          address: 'Xóm 4 + 5 Xã Hai Hâu, Huyện Hai Hâu, Tỉnh Nam Định',
        },
        {
          id: 2,
          position: 'Kế toán bán hàng',
          views: '17',
          savedDate: '16/02/2025 22:41',
          company: 'CHI NHÁNH CÔNG TY CỔ PHẦN TRAPHACO TẠI NAM ĐỊNH',
          phone: '02283849586',
          address: 'Bường Trụng Hán Sửu, KĐT Hòa Vưong, TP Nam Định',
        },
        {
          id: 3,
          position: 'Quản lý vệ quáng cao sản phẩm',
          views: '0',
          savedDate: '06/02/2025 16:31',
          company: 'CÔNG TY TNHN NỘI NGHIỆP BÌNH AN PHÁT',
          phone: '0228817120',
          address: 'Bường Số 59/17, Thôn 3, Xã Tân Hạ, Huyện Định Lĩnh, Tỉnh Bình Thuận',
        },
        {
          id: 4,
          position: 'Tổng giám đốc',
          views: '01',
          savedDate: '04/02/2025 22:06',
          company: 'Công ty TNHN Smart Shirts Garments Manufacturing Hai Hâu',
          phone: '02286282626',
          address: 'Xóm 4 + 5 Xã Hai Hâu, Huyện Hai Hâu, Tỉnh Nam Định',
        },
        {
          id: 11,
          position: 'Tuyển dụng nhân viên hành chính',
          views: '20',
          savedDate: '20/07/2024 21:25',
          company: 'CÔNG TY TNHN MAI VĂN ĐẮNG',
          phone: '0984871695',
          address: 'KCN Hòa Xá - Phường Mỹ Xá - Thành Phố Nam Định',
        },
      ],
    };
  },
  computed: {
    filteredJobs() {
      let filtered = this.jobs;

      if (this.searchQuery) {
        filtered = filtered.filter(job =>
          job.position.toLowerCase().includes(this.searchQuery.toLowerCase()) ||
          job.company.toLowerCase().includes(this.searchQuery.toLowerCase())
        );
      }

      if (this.selectedCity) {
        filtered = filtered.filter(job => job.address.includes(this.selectedCity));
      }

      // Thêm các bộ lọc khác nếu cần (area, jobType, salary, experience)

      return filtered;
    },
  },
  methods: {
    deleteSelectedJobs() {
      if (this.selectedJobs.length > 0) {
        // Xóa các công việc có ID trong selectedJobs khỏi mảng jobs
        this.jobs = this.jobs.filter(job => !this.selectedJobs.includes(job.id));
        // Reset mảng selectedJobs sau khi xóa
        this.selectedJobs = [];
        alert('Các công việc đã được xóa thành công!');
      } else {
        alert('Vui lòng chọn ít nhất một công việc để xóa!');
      }
    },
  },
};
</script>

<style scoped>
.job-list-container {
  padding: 20px;
  font-family: Arial, sans-serif;
}

.title {
  color: #007bff;
  font-size: 24px;
  font-weight: bold;
  margin-bottom: 15px;
  text-align: left;
}

.search-filter {
  margin-bottom: 20px;
  display: flex;
  gap: 10px;
  flex-wrap: wrap;
}

.filter-select, .search-input {
  padding: 8px;
  border: 1px solid #ccc;
  border-radius: 4px;
  font-size: 14px;
}

.search-input {
  width: 200px;
}

.job-table {
  width: 100%;
  border-collapse: collapse;
  background-color: #fff;
  box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
}

.job-table th {
  background-color: #007bff;
  color: white;
  padding: 12px;
  text-align: left;
  border-bottom: 2px solid #0066cc;
}

.job-table td {
  padding: 12px;
  border-bottom: 1px solid #ddd;
  vertical-align: top;
}

.job-table tr:nth-child(even) {
  background-color: #f9f9f9;
}

.button-group {
  margin-top: 20px;
  display: flex;
  gap: 10px;
}

.back-button, .delete-button {
  padding: 10px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  font-size: 14px;
}

.back-button {
  background-color: #007bff;
  color: white;
}

.back-button:hover {
  background-color: #0056b3;
}

.delete-button {
  background-color: #ff4444;
  color: white;
}

.delete-button:hover {
  background-color: #cc0000;
}
</style>