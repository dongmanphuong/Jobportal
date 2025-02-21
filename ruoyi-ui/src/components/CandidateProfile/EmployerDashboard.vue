<template>
    <div class="container">
      <h3 class="title">📌 BÀN LÀM VIỆC NHÀ TUYỂN DỤNG</h3>
  
      <!-- Thống kê (3 ô trên 1 dòng) -->
      <div class="stat-container">
        <div class="info-box" v-for="(stat, index) in statistics" :key="index">
          <div class="info-box-icon" :class="stat.bgColor">
            <i :class="stat.icon"></i>
          </div>
          <div class="info-box-content">
            <span class="info-box-text">{{ stat.title }}</span>
            <span class="info-box-number">{{ stat.value }}</span>
          </div>
        </div>
      </div>
  
      <!-- Bảng danh sách ứng viên phù hợp -->
      <div class="table-responsive">
        <table class="custom-table">
          <thead>
            <tr>
              <th>STT</th>
              <th>📄 Hồ sơ ứng viên phù hợp</th>
              <th>📌 Chức vụ</th>
              <th>🕑 Kinh nghiệm</th>
              <th>💰 Mức lương</th>
              <th>📅 Ngày đăng tin</th>
              <th>🔎 Chi tiết</th>
            </tr>
          </thead>
          <tbody>
            <tr v-for="(cv, index) in candidateList" :key="cv.id">
              <td class="text-center">{{ index + 1 }}</td>
              <td>{{ cv.title }}</td>
              <td>{{ cv.position }}</td>
              <td>{{ cv.experience }}</td>
              <td>{{ cv.salary }}</td>
              <td class="text-center">{{ cv.postedDate }}</td>
              <td class="text-center">
                <a :href="cv.detailLink" class="btn-view">
                  <i class="fa fa-search"></i> Xem
                </a>
              </td>
            </tr>
          </tbody>
        </table>
      </div>
    </div>
  </template>
  
  <script>
  export default {
    data() {
      return {
        // Dữ liệu thống kê
        statistics: [
          { title: "Số tin tuyển dụng đã đăng", value: 1, icon: "fa fa-upload", bgColor: "bg-red" },
          { title: "Số hồ sơ ứng tuyển", value: 0, icon: "fa fa-sign-in", bgColor: "bg-pink" },
          { title: "Số hồ sơ mời ứng tuyển", value: 2, icon: "fa fa-download", bgColor: "bg-yellow" },
        ],
        // Danh sách hồ sơ ứng viên phù hợp
        candidateList: [
          {
            id: "1",
            title: "Nhân viên hành chính",
            position: "Nhân viên",
            experience: "5 năm",
            salary: "5-7 triệu",
            postedDate: "23/06/2021",
            detailLink: "#",
          },
        ],
      };
    },
  };
  </script>
  
  <style scoped>
  /* Tổng quan */
  .container {
    max-width: 1000px;
    margin: auto;
    padding: 20px;
    background: #fff;
    border-radius: 8px;
    box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
  }
  
  /* Tiêu đề */
  .title {
    text-align: center;
    font-weight: bold;
    color: #333;
    border-bottom: 3px solid #007bff;
    padding-bottom: 10px;
  }
  
  /* 3 Ô thống kê trên 1 dòng */
  .stat-container {
    display: flex;
    justify-content: space-between; /* Canh đều 3 ô */
    flex-wrap: wrap; /* Đảm bảo responsive */
    margin-bottom: 15px;
  }
  
  /* Hộp thông tin */
  .info-box {
    display: flex;
    align-items: center;
    width: 32%; /* Chia đều 3 ô */
    background: #f8f9fa;
    padding: 15px;
    border-radius: 8px;
    box-shadow: 0px 2px 5px rgba(0, 0, 0, 0.1);
  }
  
  .info-box-icon {
    width: 45px;
    height: 45px;
    display: flex;
    align-items: center;
    justify-content: center;
    color: white;
    font-size: 20px;
    border-radius: 8px;
    margin-right: 10px;
  }
  
  .bg-red {
    background: #e74c3c;
  }
  .bg-pink {
    background: #d63384;
  }
  .bg-yellow {
    background: #f39c12;
  }
  
  .info-box-content {
    flex: 1;
  }
  .info-box-text {
    font-size: 14px;
    font-weight: bold;
  }
  .info-box-number {
    font-size: 18px;
    color: #333;
  }
  
  /* Bảng dữ liệu */
  .custom-table {
    width: 100%;
    border-collapse: collapse;
    margin-top: 10px;
  }
  
  .custom-table th {
    background: #1c5ea3;
    color: white;
    padding: 10px;
    text-align: left;
  }
  
  .custom-table td {
    padding: 8px;
    border: 1px solid #ddd;
  }
  
  .btn-view {
    background: #007bff;
    color: white;
    padding: 5px 10px;
    border-radius: 5px;
    text-decoration: none;
  }
  
  .btn-view:hover {
    background: #0056b3;
  }
  
  /* Responsive */
  @media (max-width: 768px) {
    .stat-container {
      flex-direction: column;
      align-items: center;
    }
  
    .info-box {
      width: 90%;
      margin-bottom: 10px;
    }
  
    .custom-table {
      font-size: 14px;
    }
  
    .custom-table th,
    .custom-table td {
      padding: 6px;
    }
  }
  </style>
  