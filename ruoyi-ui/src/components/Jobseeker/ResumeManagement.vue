<template>
  <div class="job-list-container">
    <h3 class="title">Quản lý tủ hồ sơ xin việc cá nhân ({{ resumes.length }})</h3>      
      <div class="search-filter">
        <select v-model="selectedSort" class="form-control">
          <option value="0">Mặc định</option>
          <option value="1">Đã phê duyệt</option>
          <option value="2">Chưa phê duyệt</option>
        </select>

        <select v-model="selectedPageSize" class="form-control">
          <option value="35">35</option>
          <option value="50">50</option>
          <option value="70">70</option>
          <option value="100">100</option>
          <option value="200">200</option>
        </select>
      </div>
      <div class="search-filter">
        <input v-model="searchQuery" type="text" class="search-input" placeholder="Tìm kiếm..." />
      
        <select v-model="selectedProvince" class="form-control">
          <option value="0">Tất cả tỉnh thành</option>
          <option v-for="(province, index) in provinces" :key="index" :value="province">{{ province }}</option>
        </select>

        <select v-model="selectedDistrict" class="form-control">
          <option value="">- - Quận/ huyện - -</option>
          <option v-for="(district, index) in districts" :key="index" :value="district">{{ district }}</option>
        </select>

        <select v-model="selectedSalary" class="form-control">
          <option value="">- - Mức lương - -</option>
          <option v-for="(salary, index) in salaries" :key="index" :value="salary">{{ salary }}</option>
        </select>

        <select v-model="selectedSalary" class="form-control">
          <option value="">- - Ngành nghề - -</option>
          <option v-for="(salary, index) in salaries" :key="index" :value="salary">{{ industry }}</option>
        </select>

        <select v-model="selectedExperience" class="form-control">
          <option value="">- - Kinh nghiệm - -</option>
          <option v-for="(exp, index) in experiences" :key="index" :value="exp">{{ exp }}</option>
        </select>
      </div>
  
      <div class="table-container">
        <table>
          <thead>
            <tr>
              <th>STT</th>
              <th>Hồ sơ xin việc</th>
              <th>Thông tin hồ sơ</th>
              <th>Thời hạn đăng</th>
              <th>Tình trạng</th>
            </tr>
          </thead>
          <tbody>
            <tr v-for="(resume, index) in filteredResumes" :key="index">
              <td>{{ index + 1 }}</td>
              <td>
                <a :href="resume.link">{{ resume.name }}</a>
                <div class="small-text">Khu vực: {{ resume.location }} - Lượt xem: {{ resume.views }}</div>
              </td>
              <td>
                <div>Ngành nghề: {{ resume.career }}</div>
                <div>Kinh nghiệm: {{ resume.experience }} - Mức lương: {{ resume.salary }}</div>
              </td>
              <td>
                <div>Từ: {{ resume.startDate }}</div>
                <div>Đến: {{ resume.endDate }}</div>
              </td>
              <td>{{ resume.status }}</td>
            </tr>
          </tbody>
        </table>
        <button class="back-button">Quay lại</button>
      </div>    
  </div>
</template>
  
  <script>
  export default {
    data() {
      return {
        selectedSort: "0",
        selectedPageSize: "35",
        searchQuery: "",
        selectedProvince: "0",
        selectedDistrict: "",
        selectedSalary: "",
        selectedExperience: "",
  
        provinces: ["Hà Nội", "Hải Phòng", "Đà Nẵng", "TP.Hồ Chí Minh", "Nam Định"],
        districts: ["Quận 1", "Quận 2", "Quận 3", "Quận 4", "Quận 5"],
        salaries: ["Thoả thuận", "3-5 triệu", "5-7 triệu", "7-10 triệu", "10-12 triệu", "Trên 30 triệu"],
        experiences: ["Chưa có kinh nghiệm", "Dưới 1 năm", "Từ 1 - 2 năm", "Từ 2 - 5 năm", "Trên 5 năm"],
  
        resumes: [
          {
            name: "Nhân viên IT",
            location: "Hà Nội",
            views: 10,
            career: "Công nghệ thông tin",
            experience: "2 năm",
            salary: "10-12 triệu",
            startDate: "01/01/2025",
            endDate: "01/02/2025",
            status: "Chờ duyệt",
            link: "#",
          },
          {
            name: "Nhân viên kế toán",
            location: "Nam Định",
            views: 5,
            career: "Kế toán",
            experience: "1 năm",
            salary: "7-10 triệu",
            startDate: "05/02/2025",
            endDate: "05/03/2025",
            status: "Chờ duyệt",
            link: "#",
          }
        ],
      };
    },
    computed: {
      filteredResumes() {
        return this.resumes.filter((resume) => {
          return (
            (this.selectedProvince === "0" || resume.location.includes(this.selectedProvince)) &&
            (this.selectedDistrict === "" || resume.location.includes(this.selectedDistrict)) &&
            (this.selectedSalary === "" || resume.salary.includes(this.selectedSalary)) &&
            (this.selectedExperience === "" || resume.experience.includes(this.selectedExperience)) &&
            (this.searchQuery === "" || resume.name.toLowerCase().includes(this.searchQuery.toLowerCase()))
          );
        });
      },
    },
  };
  </script>
  
  <style scoped>

  .job-list-container {
    padding: 20px;
    font-family: Arial, sans-serif;
  }
  /* Box tổng */
  .box {
    background: #fff;
    border-radius: 10px;
    padding: 20px;
    box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
  }

  .box-header {
    display: flex;
    justify-content: space-between;
    align-items: center;
    padding: 10px 15px;
    background-color: #fff;
    border-bottom: 1px solid #ddd;
  }

  .search-filter {
    margin-bottom: 20px;
    display: flex;
    gap: 10px;
    flex-wrap: wrap;
  }
  
  /* Tiêu đề */
  .title {
    color: #007bff;
    font-size: 24px;
    font-weight: bold;
    margin-bottom: 15px;
    text-align: left;
  }
  
  /* Bộ lọc */
  .filters {
    display: flex;
    gap: 10px;
    align-items: center;
  }

  .filters-row {
    display: flex;
    gap: 10px;
    padding: 15px;
    background-color: #fff;
    border-bottom: 1px solid #ddd;
  }
  
  .form-control, .search-input { 
    padding: 8px;
    border: 1px solid #ccc;
    border-radius: 4px;
    font-size: 14px;
  }

  .search-input {
    width: 200px;
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

  option {
    padding: 5px;
    color: #333;
  }

  select[multiple] {
    height: auto;
  }

  /* Bảng */
  .table-container {
    overflow-x: auto;
  }
  
  table {
    width: 100%;
    border-collapse: collapse;
    background: #fff;
  }
  
  th {
    background: #007bff;
    color: white;
    padding: 10px;
    text-align: left;
  }
  
  td {
    padding: 10px;
    border-bottom: 1px solid #ddd;
  }
  
  tr:hover {
    background: #f1f1f1;
  }
  
  /* Mobile */
  @media (max-width: 768px) {
    .filters, .filters-row {
      flex-direction: column;
    }
  
    th, td {
      font-size: 14px;
    }
  }

  .container {
    display: flex;
    justify-content: space-between;
    align-items: center;
    padding: 10px;
  }

  .button-group {
    margin-top: 20px;
    display: flex;
    gap: 10px;
  }

  .placeholder {
    width: 100px; /* Điều chỉnh kích thước theo ý muốn */
    height: 30px; /* Điều chỉnh kích thước theo ý muốn */
    background-color: #ccc;
  }
  </style>
  