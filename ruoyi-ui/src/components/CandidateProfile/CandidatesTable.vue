<template>
    <table class="table table-bordered table-striped">
      <thead>
        <tr>
          <th class="text-center" style="width: 5%">#</th>
          <th>Hồ sơ xin việc</th>
          <th class="text-center" style="width: 20%">Ngày lưu</th>
        </tr>
      </thead>
      <tbody>
        <tr v-for="(candidate, index) in candidates" :key="candidate.id">
          <td class="text-center">{{ index + 1 }}</td>
          <td>
            <a href="#" @click.prevent="viewDetail(candidate)">
              {{ candidate.name }}
            </a>
          </td>
          <td class="text-center">{{ candidate.date }}</td>
        </tr>
      </tbody>
    </table>
  </template>
  
  <script>
  export default {
    props: ["candidates"],
    methods: {
      viewDetail(candidate) {
        alert(`Xem chi tiết: ${candidate.name}`);
      }
    }
  };
  </script>
  
  <style scoped>
  .table {
    width: 100%;
    border-collapse: collapse;
    margin-top: 20px;
  }
  
  th {
    background: #007bff;
    color: white;
    text-align: center;
  }
  
  td {
    padding: 8px;
  }
  
  a {
    color: #007bff;
    text-decoration: none;
  }
  
  a:hover {
    text-decoration: underline;
  }
  </style>
  