<template>
    <div class="container">
      <div class="box box-info">
        <div class="box-header with-border row">
          <div class="col-md-6">
            <h3 class="box-title">Danh sách hồ sơ đã ứng tuyển ({{ applicants.length }})</h3>
          </div>
          <div class="col-md-3">
            <input
              v-model="searchText"
              type="text"
              class="timKiemD form-control"
              placeholder="Tìm kiếm..."
              @keyup.enter="searchApplicants"
            />
          </div>
          <div class="col-md-1">
            <v-select v-model="pageSize" :options="pageSizes" label="label" class="select-box"></v-select>
          </div>
        </div>
  
        <div class="box-body">
          <div class="main-body">
            <div class="row">
              <div class="col-md-5">
                <input type="text" class="form-control" v-model="companyName" disabled />
              </div>
              <div class="col-md-2">
                <v-select v-model="selectedStatus" :options="statusOptions" placeholder="Trạng thái"></v-select>
              </div>
              <div class="col-md-5">
                <v-select v-model="selectedIndustry" :options="industryOptions" placeholder="Ngành nghề"></v-select>
              </div>
            </div>
  
            <div class="row">
              <div class="col-md-5">
                <v-select v-model="selectedSalary" :options="salaryOptions" placeholder="Mức lương"></v-select>
              </div>
              <div class="col-md-2">
                <v-select v-model="selectedGender" :options="genderOptions" placeholder="Giới tính"></v-select>
              </div>
              <div class="col-md-5">
                <v-select v-model="selectedExperience" :options="experienceOptions" placeholder="Kinh nghiệm"></v-select>
              </div>
            </div>
  
            <div class="row">
              <table class="table-bordered respo-table table">
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
  
            <div class="row text-center pd10">
              <button class="btn btn-secondary" @click="goBack">Quay lại</button>
              <button class="btn btn-primary" @click="updateApplicants">Cập nhật</button>
            </div>
          </div>
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
  
  .table {
    width: 100%;
  }
  
  .table th {
    background: #007bff;
    color: white;
  }
  
  .select-box {
    width: 100%;
  }
  
  .pd10 {
    margin-top: 10px;
  }
  
  .btn {
    margin: 5px;
  }
  </style>
  