<template>
    <div class="container">
      <!-- Tiêu đề -->
      <h3 class="title">📂 Danh sách hồ sơ ứng viên đã mời ({{ filteredCandidates.length }})</h3>
  
      <!-- Bộ lọc -->
      <div class="filter-container">
        <select v-model="selectedStatus" class="filter-select">
          <option value="-1">Tất cả</option>
          <option value="0">Đang chờ</option>
          <option value="1">Đã nộp hồ sơ</option>
          <option value="2">Đã từ chối</option>
        </select>
  
        <select v-model="pageSize" class="filter-select">
          <option value="35">35</option>
          <option value="50">50</option>
          <option value="70">70</option>
          <option value="100">100</option>
          <option value="200">200</option>
        </select>
  
        <input v-model="searchText" type="text" class="search-input" placeholder="🔍 Tìm kiếm hồ sơ..." />
        <button class="btn-search" @click="search">🔍</button>
      </div>
  
      <!-- Bảng danh sách hồ sơ -->
      <table class="custom-table">
        <thead>
          <tr>
            <th><input type="checkbox" v-model="selectAll" @change="toggleSelectAll" /></th>
            <th class="text-center">#</th>
            <th>📄 Hồ sơ xin việc</th>
            <th>💼 Việc làm</th>
            <th class="text-center">📅 Ngày mời</th>
            <th class="text-center">📌 Trạng thái</th>
          </tr>
        </thead>
        <tbody>
          <tr v-for="(candidate, index) in filteredCandidates" :key="candidate.id">
            <td><input type="checkbox" v-model="selectedCvs" :value="candidate.id" /></td>
            <td class="text-center">{{ index + 1 }}</td>
            <td><a href="#" @click.prevent="viewDetail(candidate)">{{ candidate.name }}</a></td>
            <td>{{ candidate.job }}</td>
            <td class="text-center">{{ candidate.date }}</td>
            <td class="text-center">
              <span class="label" :class="statusClass(candidate.status)">
                {{ statusText(candidate.status) }}
              </span>
            </td>
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
        selectedStatus: "-1",
        pageSize: "35",
        selectAll: false,
        selectedCvs: [],
        candidates: [
          { id: 1, name: "Nhân viên hành chính", job: "Lắp ráp máy móc", date: "17/02/2025 14:38", status: 0 },
          { id: 2, name: "Ứng tuyển IT", job: "Lắp ráp máy móc", date: "29/08/2024 14:08", status: 0 },
          { id: 3, name: "Nhân viên văn phòng", job: "Tư vấn tuyển sinh", date: "19/06/2024 10:59", status: 0 },
          { id: 4, name: "CV Nguyễn Xuân Chính", job: "Nhân viên thị trường", date: "06/04/2024 10:34", status: 1 },
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
          this.filteredCandidates = this.candidates;
          this.selectedCvs = [];
          this.selectAll = false;
          alert("Đã xóa thành công!");
        }
      },
      toggleSelectAll() {
        this.selectedCvs = this.selectAll ? this.filteredCandidates.map(cv => cv.id) : [];
      },
      statusText(status) {
        return status === 0 ? "Đang chờ" : status === 1 ? "Đã nộp hồ sơ" : "Đã từ chối";
      },
      statusClass(status) {
        return status === 0 ? "label-info" : status === 1 ? "label-success" : "label-danger";
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
    max-width: 1000px;
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
  
  /* =================== Bộ lọc =================== */
  .filter-container {
    display: flex;
    gap: 10px;
    margin-bottom: 20px;
  }
  
  .filter-select,
  .search-input {
    padding: 8px;
    border: 1px solid #ccc;
    border-radius: 5px;
  }
  
  .btn-search {
    background: #007bff;
    color: white;
    padding: 10px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
  }
  
  .btn-search:hover {
    background: #0056b3;
  }
  
  /* =================== Bảng danh sách =================== */
  .custom-table {
    width: 100%;
    border-collapse: collapse;
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
  
  .label {
    padding: 5px 10px;
    border-radius: 3px;
    color: white;
    font-weight: bold;
  }
  
  .label-info {
    background-color: #17a2b8;
  }
  
  .label-success {
    background-color: #28a745;
  }
  
  .label-danger {
    background-color: #dc3545;
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
  