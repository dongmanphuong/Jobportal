<template>
    <div class="table-wrapper">
      <table class="cv-table">
        <thead>
          <tr>
            <th>STT</th>
            <th>CV ứng viên</th>
            <th>Mức lương</th>
            <th>Ngành nghề</th>
            <th>Trình độ</th>
            <th>Ngày đăng</th>
            <th>Địa chỉ</th>
          </tr>
        </thead>
        <tbody>
          <tr v-for="(item, index) in cvList" :key="item.id">
            <td>{{ index + 1 }}</td>
            <td><a @click="popDetailJobuser(item.id, item.email)" href="#" class="cv-link">{{ item.name }}</a></td>
            <td>{{ item.salary || "Thoả thuận" }}</td>
            <td>{{ item.industry || "-" }}</td>
            <td>{{ item.education || "-" }}</td>
            <td>{{ item.date }}</td>
            <td>{{ item.location }}</td>
          </tr>
        </tbody>
      </table>
    </div>
  </template>
  
  <script>
  export default {
    data() {
      return {
        cvList: [
          { id: 1, name: "Test112121212121", salary: "", industry: "", education: "", date: "16/02/2025", location: "Bắc Kạn" },
          { id: 2, name: "Test", salary: "", industry: "", education: "", date: "16/02/2025", location: "TP.Hà Nội" },
          { id: 3, name: "CV-CNTT-NAM", salary: "", industry: "", education: "", date: "21/01/2025", location: "Nam Định" },
          { id: 4, name: "Kỹ sư điện công nghiệp", salary: "", industry: "", education: "", date: "18/12/2024", location: "Nam Định" },
        ],
      };
    },
    methods: {
      popDetailJobuser(id, email) {
        alert(`Xem chi tiết hồ sơ của ${email} - ID: ${id}`);
      },
    },
  };
  </script>
  
  <style scoped>
  .table-wrapper {
    overflow-x: auto;
    margin-top: 20px;
    width: 1000px; /* Cùng size với phần tìm kiếm */
    margin: auto;
  }
  
  .cv-table {
    width: 100%;
    border-collapse: collapse;
    background: #fff;
    border-radius: 5px;
  }
  
  .cv-table th {
    background: #007bff;
    color: white;
    padding: 12px;
    text-align: center;
  }
  
  .cv-table td {
    padding: 12px;
    text-align: center;
    border-bottom: 1px solid #ddd;
  }
  
  .cv-table tr:nth-child(even) {
    background: #f8f9fa;
  }
  
  .cv-link {
    color: #007bff;
    text-decoration: none;
  }
  
  .cv-link:hover {
    text-decoration: underline;
  }
  
  @media (max-width: 768px) {
    .table-wrapper {
      width: 100%;
      overflow-x: auto;
    }
  
    .cv-table th,
    .cv-table td {
      padding: 8px;
    }
  }
  </style>
  