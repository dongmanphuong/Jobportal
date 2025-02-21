<template>
    <div class="container">
      <h3 class="title">Danh sách phiên giao dịch ({{ transactions.length }})</h3>
  
      <!-- Bộ lọc tìm kiếm và phân trang -->
      <div class="filters">
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
  
      <!-- Bảng dữ liệu -->
      <div class="table-responsive">
        <table class="custom-table">
          <thead>
            <tr>
              <th>STT</th>
              <th>📅 Thời gian bắt đầu</th>
              <th>📑 Phiên giao dịch</th>
              <th>ℹ️ Thông tin giao dịch</th>
              <th>📌 Trạng thái</th>
            </tr>
          </thead>
          <tbody>
            <tr v-for="(transaction, index) in filteredTransactions" :key="transaction.id">
              <td class="text-center">{{ index + 1 }}</td>
              <td>
                <div>Từ: <b>{{ transaction.startTime }}</b></div>
                <div>Đến: <b>{{ transaction.endTime }}</b></div>
              </td>
              <td>
                <a href="#" class="transaction-title">{{ transaction.title }}</a><br />
                <span class="transaction-location">📍 {{ transaction.location }}</span><br />
                <span class="transaction-hotline">📞 Hotline: {{ transaction.hotline }}</span>
              </td>
              <td>
                <div class="progress-status">{{ transaction.status }}</div>
                <div>Nhà tuyển dụng: {{ transaction.employers }}</div>
                <div>Số lượng tin tuyển dụng: {{ transaction.jobPosts }}</div>
                <div>Ứng viên: {{ transaction.applicants }}</div>
              </td>
              <td class="text-center">
                <span class="badge" :class="{'expired': transaction.isExpired, 'active': !transaction.isExpired}">
                  {{ transaction.isExpired ? 'Đã quá hạn' : 'Còn hạn' }}
                </span>
              </td>
            </tr>
          </tbody>
        </table>
      </div>
  
      <!-- Phân trang -->
      <div class="pagination">
        <button class="btn-page" @click="prevPage" :disabled="currentPage === 1">⬅️ Trước</button>
        <span>Trang {{ currentPage }} / {{ totalPages }}</span>
        <button class="btn-page" @click="nextPage" :disabled="currentPage === totalPages">Tiếp ➡️</button>
      </div>
    </div>
  </template>
  
  <script>
  export default {
    data() {
      return {
        searchText: "",
        pageSize: 10,
        currentPage: 1,
        transactions: [
          { id: 1, title: "PHIÊN GIAO DỊCH VIỆC LÀM NAM ĐỊNH T10", location: "Số 64 Trần Phú, Nam Định", hotline: "", startTime: "12/10/2024 16:54", endTime: "31/10/2024 16:54", status: "Đã diễn ra", employers: 3, jobPosts: 0, applicants: 2, isExpired: true },
          { id: 2, title: "PHIÊN GIAO DỊCH VIỆC LÀM NGÀY 10/07/2024", location: "Số 64 Trần Phú, Nam Định", hotline: "0228848847", startTime: "10/07/2024 07:00", endTime: "10/07/2024 17:00", status: "Đã diễn ra", employers: 0, jobPosts: 0, applicants: 0, isExpired: true },
          { id: 3, title: "PHIÊN GIAO DỊCH VIỆC LÀM NGÀY 10/06/2024", location: "Số 64 Trần Phú, Nam Định", hotline: "0228848847", startTime: "10/06/2024 07:00", endTime: "10/06/2024 17:00", status: "Đã diễn ra", employers: 0, jobPosts: 0, applicants: 0, isExpired: true },
        ],
        filteredTransactions: [],
      };
    },
    computed: {
      totalPages() {
        return Math.ceil(this.filteredTransactions.length / this.pageSize);
      },
    },
    methods: {
      search() {
        this.filteredTransactions = this.transactions.filter(t =>
          t.title.toLowerCase().includes(this.searchText.toLowerCase())
        );
      },
      prevPage() {
        if (this.currentPage > 1) this.currentPage--;
      },
      nextPage() {
        if (this.currentPage < this.totalPages) this.currentPage++;
      },
    },
    mounted() {
      this.filteredTransactions = this.transactions;
    },
  };
  </script>
  
  <style scoped>
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
    color: #007bff;
  }
  .filters {
    display: flex;
    justify-content: space-between;
    margin-bottom: 15px;
  }
  .form-control {
    padding: 8px;
    border: 1px solid #ccc;
    border-radius: 5px;
  }
  .search-box {
    display: flex;
    align-items: center;
  }
  .search-input {
    padding: 8px;
    border: 1px solid #ccc;
    border-radius: 5px;
  }
  .btn-search {
    background: #007bff;
    color: white;
    padding: 8px;
    border: none;
    cursor: pointer;
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
  }
  .custom-table td {
    padding: 8px;
    border: 1px solid #ddd;
  }
  .transaction-title {
    font-weight: bold;
    color: #007bff;
    text-decoration: none;
  }
  .transaction-title:hover {
    text-decoration: underline;
  }
  .transaction-location,
  .transaction-hotline {
    font-size: 13px;
    color: gray;
  }
  .progress-status {
    font-weight: bold;
    color: red;
  }
  .badge {
    padding: 5px 10px;
    border-radius: 5px;
    color: white;
  }
  .expired {
    background: red;
  }
  .active {
    background: green;
  }
  .pagination {
    text-align: center;
    margin-top: 20px;
  }
  .btn-page {
    background: #007bff;
    color: white;
    padding: 10px;
    border: none;
    margin: 5px;
    cursor: pointer;
  }
  .btn-page:disabled {
    background: gray;
    cursor: not-allowed;
  }
  </style>
  