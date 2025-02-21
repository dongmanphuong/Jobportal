<template>
    <div class="container">
      <h3 class="title">📂 Danh sách hồ sơ ứng viên đã xem ({{ candidates.length }})</h3>
  
      <!-- Thanh điều khiển -->
      <div class="controls">
        <select v-model="pageSize" class="form-control">
          <option value="35">35</option>
          <option value="50">50</option>
          <option value="70">70</option>
          <option value="100">100</option>
          <option value="200">200</option>
        </select>
  
        <div class="search-box">
          <input v-model="searchText" type="text" class="search-input" placeholder="🔍 Tìm kiếm..." @keyup.enter="search" />
          <button class="btn-search" @click="search">🔍</button>
        </div>
      </div>
  
      <!-- Bảng danh sách hồ sơ -->
      <div class="table-responsive">
        <table class="custom-table">
          <thead>
            <tr>
              <th class="text-center"><input type="checkbox" v-model="selectAll" @change="toggleSelectAll" /></th>
              <th class="text-center">STT</th>
              <th>📄 Hồ sơ xin việc</th>
              <th class="text-center">📅 Ngày xem</th>
            </tr>
          </thead>
          <tbody>
            <tr v-for="(candidate, index) in filteredCandidates" :key="candidate.id">
              <td class="text-center"><input type="checkbox" v-model="selectedCandidates" :value="candidate.id" /></td>
              <td class="text-center">{{ index + 1 }}</td>
              <td>
                <a href="#" @click.prevent="viewDetail(candidate)">
                  <img src="/image/images/view.png" class="icon-view" /> {{ candidate.name }}
                </a>
              </td>
              <td class="text-center">{{ candidate.viewedDate }}</td>
            </tr>
          </tbody>
        </table>
      </div>
  
      <!-- Nút xóa -->
      <div class="action-buttons">
        <button class="btn-danger" @click="deleteSelected">🗑 Xóa</button>
      </div>
    </div>
  </template>
  
  <script>
  export default {
    data() {
      return {
        searchText: "",
        pageSize: "35",
        selectAll: false,
        selectedCandidates: [],
        candidates: [
          { id: 1, name: "HỒ SƠ XIN VIỆC", viewedDate: "16/10/2024 10:04" },
          { id: 2, name: "Sơ Yếu Lý Lịch", viewedDate: "16/10/2024 10:03" },
          { id: 3, name: "Ứng tuyển vị trí kế toán", viewedDate: "16/10/2024 10:02" },
          { id: 4, name: "Kỹ sư cơ điện", viewedDate: "16/10/2024 10:01" },
          { id: 5, name: "IT Manager", viewedDate: "16/10/2024 09:59" },
        ],
        filteredCandidates: []
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
      toggleSelectAll() {
        if (this.selectAll) {
          this.selectedCandidates = this.filteredCandidates.map(c => c.id);
        } else {
          this.selectedCandidates = [];
        }
      },
      deleteSelected() {
        if (this.selectedCandidates.length === 0) {
          alert("Vui lòng chọn ít nhất một hồ sơ để xóa.");
          return;
        }
        if (confirm("Bạn có chắc muốn xóa các hồ sơ đã chọn?")) {
          this.candidates = this.candidates.filter(c => !this.selectedCandidates.includes(c.id));
          this.filteredCandidates = this.candidates;
          this.selectedCandidates = [];
        }
      }
    },
    mounted() {
      this.filteredCandidates = this.candidates;
    }
  };
  </script>
  
  <style scoped>
  /* =================== Tổng thể =================== */
  .container {
    max-width: 1200px;
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
  
  /* =================== Điều khiển =================== */
  .controls {
    display: flex;
    align-items: center;
    justify-content: space-between;
    margin-bottom: 15px;
    flex-wrap: wrap;
  }
  .form-control {
    padding: 8px;
    border: 1px solid #ccc;
    border-radius: 5px;
  }
  .search-box {
    display: flex;
    align-items: center;
    gap: 8px;
  }
  .search-input {
    padding: 10px;
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
  .table-responsive {
    overflow-x: auto;
  }
  .custom-table {
    width: 100%;
    border-collapse: collapse;
  }
  .custom-table th {
    background: #007bff;
    color: white;
    padding: 10px;
    text-align: left;
    white-space: nowrap;
  }
  .custom-table td {
    padding: 8px;
    border: 1px solid #ddd;
    white-space: nowrap;
  }
  .custom-table tr:hover {
    background: #f1f1f1;
  }
  .icon-view {
    width: 16px;
    height: 16px;
    margin-right: 5px;
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
  .btn-danger {
    background: #dc3545;
    color: white;
    padding: 10px 15px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
  }
  .btn-danger:hover {
    background: #c82333;
  }
  
  /* =================== Responsive =================== */
  @media (max-width: 768px) {
    .controls {
      flex-direction: column;
      align-items: flex-start;
    }
    .search-box {
      width: 100%;
    }
    .search-input {
      width: 100%;
    }
  }
  </style>
  