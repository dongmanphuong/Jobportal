<template>
    <div class="container">
      <!-- Tiêu đề -->
      <h3 class="title">📂 Danh sách hồ sơ ứng viên đã lưu ({{ filteredCandidates.length }})</h3>
  
      <!-- Thanh tìm kiếm -->
      <div class="search-filter">
        <input v-model="searchText" type="text" class="search-input" placeholder="🔍 Tìm kiếm hồ sơ..." @keyup.enter="search" />
        <button class="btn-search" @click="search">🔍</button>
      </div>
  
      <!-- Bộ lọc -->
      <div class="filter-container">
        <select v-model="selectedPosition" class="filter-select">
          <option value="">Chức vụ</option>
          <option value="manager">Trưởng phòng</option>
          <option value="staff">Nhân viên</option>
        </select>
        <select v-model="selectedIndustry" class="filter-select">
          <option value="">Ngành nghề</option>
          <option value="it">IT</option>
          <option value="marketing">Marketing</option>
        </select>
        <select v-model="selectedLocation" class="filter-select">
          <option value="">Tỉnh/TP</option>
          <option value="hanoi">Hà Nội</option>
          <option value="hcm">TP.HCM</option>
        </select>
        <select v-model="selectedSalary" class="filter-select">
          <option value="">Mức lương</option>
          <option value="5-10">5-10 triệu</option>
          <option value="10-20">10-20 triệu</option>
        </select>
      </div>
  
      <!-- Bảng danh sách hồ sơ -->
      <table class="custom-table">
        <thead>
          <tr>
            <th><input type="checkbox" v-model="selectAll" @change="toggleSelectAll" /></th>
            <th class="text-center" style="width: 5%">#</th>
            <th>📄 Hồ sơ xin việc</th>
            <th class="text-center" style="width: 20%">📅 Ngày lưu</th>
          </tr>
        </thead>
        <tbody>
          <tr v-for="(candidate, index) in filteredCandidates" :key="candidate.id">
            <td><input type="checkbox" v-model="selectedCvs" :value="candidate.id" /></td>
            <td class="text-center">{{ index + 1 }}</td>
            <td><a href="#" @click.prevent="viewDetail(candidate)">{{ candidate.name }}</a></td>
            <td class="text-center">{{ candidate.savedDate }}</td>
          </tr>
        </tbody>
      </table>
  
      <!-- Nút hành động -->
      <div class="action-buttons">
        <button class="btn-secondary" @click="goBack">⬅ Quay lại</button>
        <button class="btn-danger" @click="deleteSelected">🗑 Xóa</button>
      </div>
    </div>
  </template>
  
  <script>
  export default {
    data() {
      return {
        searchText: "",
        selectedPosition: "",
        selectedIndustry: "",
        selectedLocation: "",
        selectedSalary: "",
        selectAll: false,
        selectedCvs: [],
        candidates: [
          { id: 1, name: "Xin việc làm kỹ sư tự động hóa", savedDate: "17/10/2024 08:46" },
          { id: 2, name: "Nhân viên văn phòng", savedDate: "17/10/2024 08:43" },
        ],
        filteredCandidates: [],
      };
    },
    methods: {
      search() {
        this.filteredCandidates = this.candidates.filter(candidate =>
          candidate.name.toLowerCase().includes(this.searchText.toLowerCase())
        );
      },
      viewDetail(candidate) {
        alert(`Xem chi tiết: ${candidate.name}`);
      },
      goBack() {
        alert("Quay lại trang trước!");
      },
      deleteSelected() {
        if (this.selectedCvs.length === 0) {
          alert("Vui lòng chọn ít nhất một hồ sơ để xóa!");
          return;
        }
        if (confirm("Bạn có chắc muốn xóa các hồ sơ đã chọn?")) {
          this.candidates = this.candidates.filter(candidate => !this.selectedCvs.includes(candidate.id));
          this.filteredCandidates = this.candidates; // Cập nhật danh sách sau khi xóa
          this.selectedCvs = [];
          this.selectAll = false;
          alert("Đã xóa thành công!");
        }
      },
      toggleSelectAll() {
        this.selectedCvs = this.selectAll ? this.filteredCandidates.map(cv => cv.id) : [];
      },
    },
    mounted() {
      this.filteredCandidates = this.candidates;
    },
  };
  </script>
  
  <style scoped>
  /* =================== Tổng thể =================== */
  .container {
    max-width: 900px;
    margin: auto;
    padding: 20px;
    background: #fff;
    border-radius: 8px;
    box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
  }
  
  .title {
    text-align: center;
    font-weight: bold;
    margin-bottom: 20px;
    color: #333;
  }
  
  /* =================== Tìm kiếm =================== */
  .search-filter {
  display: flex;
  align-items: center;
  gap: 8px;
  margin-bottom: 15px;
  justify-content: flex-start; /* 👈 Căn trái thay vì căn giữa */
}

  .search-input {
    width: 100%;
    max-width: 500px;
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 5px;
  }
  
  .btn-search {
    background: #007bff;
    color: white;
    padding: 10px 15px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
  }
  
  .btn-search:hover {
    background: #0056b3;
  }
  
  /* =================== Bộ lọc =================== */
  .filter-container {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(150px, 1fr));
    gap: 10px;
    margin-bottom: 20px;
  }
  
  .filter-select {
    padding: 8px;
    border: 1px solid #ccc;
    border-radius: 5px;
  }
  
  /* =================== Bảng danh sách =================== */
  .custom-table {
    width: 100%;
    border-collapse: collapse;
    margin-top: 10px;
  }
  
  .custom-table th {
    background: #007bff;
    color: white;
    padding: 10px;
    text-align: left;
  }
  
  .custom-table td {
    padding: 8px;
    border: 1px solid #ddd;
  }
  
  .custom-table tr:hover {
    background: #f1f1f1;
  }
  
  a {
    color: #007bff;
    text-decoration: none;
  }
  
  a:hover {
    text-decoration: underline;
  }
  
  /* =================== Nút hành động =================== */
  .action-buttons {
    text-align: center;
    margin-top: 20px;
  }
  
  .btn-secondary,
  .btn-danger {
    padding: 10px 15px;
    border: none;
    border-radius: 5px;
    margin: 5px;
    cursor: pointer;
  }
  
  .btn-secondary {
    background: #6c757d;
    color: white;
  }
  
  .btn-secondary:hover {
    background: #5a6268;
  }
  
  .btn-danger {
    background: #dc3545;
    color: white;
  }
  
  .btn-danger:hover {
    background: #c82333;
  }
  </style>
  