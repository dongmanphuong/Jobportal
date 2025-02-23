<template>
    <div class="container">
      <div class="box">
        <div class="box-header">
          <h3 class="box-title">📌 Danh sách hồ sơ đã ứng tuyển ({{ applicants.length }})</h3>
        </div>
  
        <!-- 🔍 Tìm kiếm & Bộ lọc -->
        <div class="search-filter">
          <input
            v-model="searchText"
            type="text"
            class="form-control search-box"
            placeholder="🔍 Tìm kiếm..."
            @keyup.enter="searchApplicants"
          />
          <v-select v-model="pageSize" :options="pageSizes" class="select-box"></v-select>
        </div>
  
        <div class="filter-container">
          <v-select v-model="selectedStatus" :options="statusOptions" placeholder="📌 Trạng thái"></v-select>
          <v-select v-model="selectedIndustry" :options="industryOptions" placeholder="🏢 Ngành nghề"></v-select>
          <v-select v-model="selectedSalary" :options="salaryOptions" placeholder="💰 Mức lương"></v-select>
          <v-select v-model="selectedGender" :options="genderOptions" placeholder="👤 Giới tính"></v-select>
          <v-select v-model="selectedExperience" :options="experienceOptions" placeholder="📅 Kinh nghiệm"></v-select>
        </div>
  
        <!-- 🏢 Công ty -->
        <div class="company-box">
          <label>🏢 Công ty:</label>
          <input type="text" class="form-control company-name" v-model="companyName" disabled />
        </div>
  
        <!-- 📝 Bảng danh sách hồ sơ -->
        <div class="table-responsive">
          <table class="cv-table">
            <thead>
              <tr>
                <th>STT</th>
                <th>Thông tin hồ sơ</th>
                <th>Tuổi</th>
                <th>CV ứng tuyển</th>
                <th>Trạng thái hồ sơ</th>
              </tr>
            </thead>
            <tbody>
              <tr v-for="(applicant, index) in filteredApplicants" :key="applicant.id">
                <td>{{ index + 1 }}</td>
                <td>{{ applicant.info }}</td>
                <td>{{ applicant.age }}</td>
                <td>
                  <a href="#" @click.prevent="showDetail(applicant.id)">{{ applicant.cv }}</a>
                </td>
                <td>{{ applicant.status }}</td>
              </tr>
            </tbody>
          </table>
        </div>
  
        <!-- 📌 Nút hành động -->
        <div class="btn-group">
          <button class="btn btn-secondary" @click="goBack">⬅ Quay lại</button>
          <button class="btn btn-primary" @click="updateApplicants">💾 Cập nhật</button>
        </div>
      </div>
  
      <!-- Modal Chi Tiết -->
      <ApplicantDetailModal v-if="selectedApplicant" :applicant="selectedApplicant" @close="selectedApplicant = null" />
    </div>
  </template>
  
  <script>
  import vSelect from "vue-select";
  import "vue-select/dist/vue-select.css";
  import ApplicantDetailModal from "./ApplicantDetailModal.vue";
  
  export default {
    components: { vSelect, ApplicantDetailModal },
    data() {
      return {
        searchText: "",
        pageSize: 35,
        pageSizes: [35, 50, 70, 100, 200],
        companyName: "Công ty vận tải Hưng Phát",
        selectedStatus: null,
        selectedIndustry: null,
        selectedSalary: null,
        selectedGender: null,
        selectedExperience: null,
        applicants: [
          { id: 1, info: "Nguyễn Văn A", age: 25, cv: "CV-NV01.pdf", status: "Đã xem" },
          { id: 2, info: "Trần Thị B", age: 30, cv: "CV-TB02.pdf", status: "Đã liên hệ" },
        ],
        selectedApplicant: null,
        statusOptions: ["Đã xem", "Đã liên hệ", "Đã phỏng vấn", "Đã test", "Trúng tuyển", "Từ chối"],
        industryOptions: ["IT", "Marketing", "Bán hàng", "Xây dựng"],
        salaryOptions: ["Thoả thuận", "3-5 triệu", "10-12 triệu"],
        genderOptions: ["Nam", "Nữ"],
        experienceOptions: ["Chưa có kinh nghiệm", "Dưới 1 năm", "2-5 năm"],
      };
    },
    computed: {
      filteredApplicants() {
        return this.applicants.filter((applicant) =>
          applicant.info.toLowerCase().includes(this.searchText.toLowerCase())
        );
      },
    },
    methods: {
      searchApplicants() {
        console.log("Đang tìm kiếm: " + this.searchText);
      },
      showDetail(id) {
        this.selectedApplicant = this.applicants.find((applicant) => applicant.id === id);
      },
      goBack() {
        console.log("Quay lại");
      },
      updateApplicants() {
        console.log("Cập nhật danh sách ứng viên");
      },
    },
  };
  </script>
  
  <style scoped>
  /* 📌 Tổng thể */
  .container {
    max-width: 1000px;
    margin: auto;
  }
  
  .box {
    background: #fff;
    border-radius: 8px;
    box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
    padding: 20px;
  }
  
  /* 🔍 Tìm kiếm & Bộ lọc */
  .search-filter {
    display: flex;
    justify-content: space-between;
    align-items: center;
    margin-bottom: 15px;
  }
  
  .search-box {
    width: 70%;
    padding: 8px;
    border: 1px solid #ccc;
    border-radius: 5px;
  }
  
  .select-box {
    width: 25%;
  }
  
  /* 📌 Bộ lọc */
  .filter-container {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
    gap: 10px;
    margin-bottom: 15px;
  }
  
  /* 🏢 Công ty */
  .company-box {
    margin-bottom: 15px;
  }
  
  .company-name {
    width: 100%;
    padding: 8px;
    border-radius: 5px;
    border: 1px solid #ccc;
  }
  
  /* 📝 Bảng danh sách */
  .cv-table {
    width: 100%;
    border-collapse: collapse;
    margin-top: 10px;
  }
  
  .cv-table th, .cv-table td {
    border: 1px solid #ddd;
    padding: 10px;
    text-align: center;
  }
  
  .cv-table th {
    background: #007bff;
    color: white;
  }
  
  /* 📌 Nút hành động */
  .btn-group {
    text-align: center;
    margin-top: 15px;
  }
  
  .btn {
    margin: 5px;
    padding: 8px 15px;
    font-size: 16px;
  }
  
  /* 📱 Responsive */
  @media (max-width: 768px) {
    .search-filter {
      flex-direction: column;
    }
  
    .search-box, .select-box {
      width: 100%;
      margin-bottom: 10px;
    }
  
    .filter-container {
      grid-template-columns: repeat(auto-fit, minmax(150px, 1fr));
    }
  
    .cv-table th, .cv-table td {
      font-size: 14px;
      padding: 5px;
    }
  }
  </style>
  