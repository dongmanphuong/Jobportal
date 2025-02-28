<template>
  <div class="job-list-container">
    <h3 class="title">Danh sách việc làm đã ứng tuyển (1)</h3>
    <!-- Thanh tìm kiếm và lọc -->
    <div class="search-filter">
      <select class="filter-select" v-model="selectedCity">
        <option value="">-- Tỉnh/Thành --</option>
        <option value="ha_dong">Hà Nội</option>
        <option value="hoan_kiem">Thái Bình</option>
        <!-- Thêm các quận/huyện khác nếu cần -->
      </select>
      <select class="filter-select" v-model="selectedCity">
        <option value="">-- Quận/huyện --</option>
        <option value="ha_dong">Hà Đông</option>
        <option value="hoan_kiem">Hoàn Kiếm</option>
        <!-- Thêm các quận/huyện khác nếu cần -->
      </select>
      <select class="filter-select" v-model="selectedDistrict">
        <option value="">-- Ngành nghề --</option>
        <option value="male">Bán hàng</option>
        <option value="female">Kỹ thuật</option>
      </select>
      <select class="filter-select" v-model="selectedDistrict">
        <option value="">-- Giới tính --</option>
        <option value="male">Nam</option>
        <option value="female">Nữ</option>
      </select>
      <select class="filter-select" v-model="selectedStatus">
        <option value="">-- Trạng thái --</option>
        <option value="active">Đang hoạt động</option>
        <option value="inactive">Ngưng hoạt động</option>
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
          <th>STT</th>
          <th>Thông tin việc làm</th>
          <th>Thông tin doanh nghiệp</th>
          <th>Trạng thái hồ sơ</th>
        </tr>
      </thead>
      <tbody>
        <tr v-for="(job, index) in filteredJobs" :key="job.id">
          <td>{{ index + 1 }}</td>
          <td>
            {{ job.title }}<br />
            {{ job.description }}<br />
            Ngày đăng: {{ job.date }}
          </td>
          <td>
            {{ job.company }}<br />
            ĐC: {{ job.address }}
          </td>
          <td>
            <input type="checkbox" v-model="job.status.xem" /> Đã xem<br />
            <input type="checkbox" v-model="job.status.lienhe" /> Đã liên hệ<br />
            <input type="checkbox" v-model="job.status.phongvan" /> Đã phỏng vấn<br />
            <input type="checkbox" v-model="job.status.test" /> Đã test<br />
            <input type="checkbox" v-model="job.status.trungtuyen" /> Trúng tuyển<br />
            <input type="checkbox" v-model="job.status.tuchoi" /> Từ chối
          </td>
        </tr>
      </tbody>
    </table>

    <!-- Nút quay lại -->
    <button class="back-button">Quay lại</button>
  </div>
</template>

<script>
export default {
  data() {
    return {
      searchQuery: '',
      selectedCity: '',
      selectedDistrict: '',
      selectedStatus: '',
      selectedSalary: '',
      selectedExperience: '',
      jobs: [
        {
          id: 1,
          title: 'Nhân viên kỹ thuật',
          description: 'Nhân viên kỹ thuật',
          date: '02/10/2024 09:26',
          company: 'TNHN Smart Shirts Garments Manufacturing Hai Hâu',
          address: 'ĐC: 3028682826, 5 + 5 XA Hai Hâu, Huyện Hai Hâu, Tỉnh Nam Định',
          status: {
            xem: false,
            lienhe: false,
            phongvan: false,
            test: false,
            trungtuyen: false,
            tuchoi: false,
          },
        },
        // Thêm dữ liệu khác nếu cần
      ],
    };
  },
  computed: {
    filteredJobs() {
      let filtered = this.jobs;

      if (this.searchQuery) {
        filtered = filtered.filter(job =>
          job.title.toLowerCase().includes(this.searchQuery.toLowerCase()) ||
          job.company.toLowerCase().includes(this.searchQuery.toLowerCase())
        );
      }

      if (this.selectedCity) {
        filtered = filtered.filter(job => job.address.includes(this.selectedCity));
      }

      // Thêm các bộ lọc khác nếu cần (district, status, salary, experience)

      return filtered;
    },
  },
};
</script>

<style scoped>
.job-list-container {
  padding: 20px;
  font-family: Arial, sans-serif;
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

.back-button {
  margin-top: 20px;
  padding: 10px 20px;
  background-color: #007bff;
  color: white;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  font-size: 14px;
}

.title {
  color: #007bff;
  font-size: 24px;
  font-weight: bold;
  margin-bottom: 15px;
  text-align: left;
}
.back-button:hover {
  background-color: #0056b3;
}
</style>