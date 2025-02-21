<template>
    <div class="container">
      <!-- 🔍 Tìm kiếm & Bộ lọc -->
      <div class="search-box">
        <h3 class="section-title">🔍 Tìm kiếm & Bộ lọc</h3>
        <div class="search-controls">
          <input
            v-model="searchText"
            type="text"
            class="search-input"
            placeholder="Nhập từ khóa tìm kiếm..."
            @keyup.enter="searchJob"
          />
          <button @click="searchJob" class="btn search-btn">🔍 Tìm kiếm</button>
        </div>
  
        <div class="filter-row">
          <v-select v-model="selectedSalary" :options="salaryOptions" label="label" placeholder="Mức lương" class="custom-select"></v-select>
          <v-select v-model="selectedExperience" :options="experienceOptions" label="label" placeholder="Kinh nghiệm" class="custom-select"></v-select>
          <v-select v-model="selectedStatus" :options="statusOptions" label="label" placeholder="Trạng thái" class="custom-select"></v-select>
        </div>
      </div>
  
      <!-- 📋 Danh sách tin tuyển dụng -->
      <div class="box">
        <div class="box-header">
          <h3 class="box-title">📋 Danh sách tin tuyển dụng ({{ filteredJobs.length }})</h3>
        </div>
  
        <div class="table-container">
          <table class="table">
            <thead>
              <tr>
                <th><input type="checkbox" v-model="selectAll" @change="toggleSelectAll" /></th>
                <th>STT</th>
                <th>✏️</th>
                <th>Tin tuyển dụng</th>
                <th>Thông tin tuyển dụng</th>
                <th>Thời hạn</th>
                <th>Thông tin hồ sơ</th>
              </tr>
            </thead>
            <tbody>
              <tr v-for="(job, index) in filteredJobs" :key="job.id">
                <td><input type="checkbox" v-model="selectedJobs" :value="job.id" /></td>
                <td>{{ index + 1 }}</td>
                <td><a :href="'system/tuyendung/' + job.id" class="edit-link">✏️</a></td>
                <td>{{ job.title }} <div class="small-text">{{ job.location }}</div></td>
                <td>
                  <div>Kinh nghiệm: {{ job.experience }}</div>
                  <div>Mức lương: {{ job.salary }}</div>
                </td>
                <td>{{ job.deadline }}</td>
                <td>
                  <div><input type="checkbox" disabled :checked="job.isApproved" /> Đã duyệt</div>
                  <div><input type="checkbox" disabled :checked="job.isHot" /> Tin nổi bật</div>
                  <div><input type="checkbox" disabled :checked="job.isUrgent" /> Tuyển gấp</div>
                </td>
              </tr>
            </tbody>
          </table>
        </div>
  
        <!-- 🛠 Nút thao tác -->
        <div class="box-footer">
          <button @click="goBack" class="btn cancel">Quay lại</button>
          <button @click="addNew" class="btn add">Thêm mới</button>
          <button @click="deleteJobs" class="btn delete" :disabled="selectedJobs.length === 0">Xóa</button>
        </div>
      </div>
    </div>
  </template>
  
  <script>
  import vSelect from "vue-select";
  import "vue-select/dist/vue-select.css";
  
  export default {
    components: { vSelect },
    data() {
      return {
        searchText: "",
        selectedSalary: "",
        selectedExperience: "",
        selectedStatus: "",
        selectAll: false,
        selectedJobs: [],
        salaryOptions: [
          { value: "", label: "- - Mức lương - -" },
          { value: "3-5", label: "3-5 triệu" },
          { value: "5-7", label: "5-7 triệu" }
        ],
        experienceOptions: [
          { value: "", label: "- - Kinh nghiệm - -" },
          { value: "0", label: "Chưa có kinh nghiệm" },
          { value: "1", label: "Dưới 1 năm" }
        ],
        statusOptions: [
          { value: "", label: "- - Trạng thái - -" },
          { value: "approved", label: "Đã duyệt" },
          { value: "hot", label: "Tin nổi bật" },
          { value: "urgent", label: "Tuyển gấp" }
        ],
        jobs: [
          {
            id: "1",
            title: "Nhân viên lắp ráp máy móc",
            location: "Nam Định",
            experience: "2-5 năm",
            salary: "10-12 triệu",
            deadline: "30/06/2025",
            isApproved: true,
            isHot: true,
            isUrgent: false
          }
        ]
      };
    },
    computed: {
      filteredJobs() {
        return this.jobs.filter(job => {
          return (
            (this.searchText === "" || job.title.toLowerCase().includes(this.searchText.toLowerCase())) &&
            (this.selectedSalary === "" || job.salary.includes(this.selectedSalary)) &&
            (this.selectedExperience === "" || job.experience.includes(this.selectedExperience)) &&
            (this.selectedStatus === "" ||
              (this.selectedStatus === "approved" && job.isApproved) ||
              (this.selectedStatus === "hot" && job.isHot) ||
              (this.selectedStatus === "urgent" && job.isUrgent))
          );
        });
      }
    },
    methods: {
      searchJob() {
        console.log("Tìm kiếm:", this.searchText);
      },
      toggleSelectAll() {
        this.selectedJobs = this.selectAll ? this.filteredJobs.map(job => job.id) : [];
      },
      goBack() {
        console.log("Quay lại");
      },
      addNew() {
        console.log("Thêm mới tin tuyển dụng");
      },
      deleteJobs() {
        if (confirm("Bạn có muốn xóa các tin đã chọn?")) {
          this.jobs = this.jobs.filter(job => !this.selectedJobs.includes(job.id));
          this.selectedJobs = [];
        }
      }
    }
  };
  </script>
  
  <style scoped>
  .container {
    max-width: 100%;
    margin: auto;
    padding: 20px;
    background: #fff;
  }
  
  /* 🔍 Vùng tìm kiếm & bộ lọc */
  .search-box {
    background: #f8f9fa;
    padding: 20px;
    border-radius: 8px;
    margin-bottom: 20px;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
  }
  
  .search-controls {
    display: flex;
    gap: 12px;
    align-items: center;
    margin-bottom: 15px;
  }
  
  .search-input {
    padding: 10px;
    width: 100%;
    max-width: 300px;
    border: 1px solid #ccc;
    border-radius: 5px;
  }
  
  .search-btn {
    background: #28a745;
    color: white;
    padding: 10px 15px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
  }
  
  .search-btn:hover {
    background: #218838;
  }
  
  /* 📋 Bảng dữ liệu */
  .table-container {
    overflow-x: auto;
  }
  
  .table {
    width: 100%;
    border-collapse: collapse;
  }
  
  .table th, .table td {
    padding: 12px;
    border: 1px solid #ddd;
    text-align: left;
  }
  
  .table th {
    background: #f4f4f4;
  }
  
  .box-footer {
    display: flex;
    gap: 10px;
    padding: 10px;
    justify-content: flex-end;
  }
  
  .btn {
    padding: 10px 15px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
  }
  
  .add {
    background: #007bff;
    color: white;
  }
  
  .delete {
    background: #dc3545;
    color: white;
  }
  
  .cancel {
    background: #6c757d;
    color: white;
  }
  </style>
  