<template>
    <div class="modal-overlay">
      <div class="modal-content">
        <h4>Thông tin chi tiết hồ sơ</h4>
        <p><strong>Họ tên:</strong> {{ applicant.info }}</p>
        <p><strong>Tuổi:</strong> {{ applicant.age }}</p>
        <p><strong>CV:</strong> <a href="#">{{ applicant.cv }}</a></p>
        <p><strong>Trạng thái:</strong> {{ applicant.status }}</p>
        <button class="btn btn-secondary" @click="$emit('close')">Đóng</button>
      </div>
    </div>
  </template>
  
  <script>
  export default {
    props: ["applicant"],
  };
  </script>
  
  <style scoped>
  .modal-overlay {
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background: rgba(0, 0, 0, 0.5);
    display: flex;
    justify-content: center;
    align-items: center;
  }
  
  .modal-content {
    background: white;
    padding: 20px;
    border-radius: 8px;
    text-align: center;
  }
  
  .btn {
    margin-top: 10px;
  }
  </style>
  