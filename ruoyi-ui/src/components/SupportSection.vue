<template>
    <div class="container">
      <!-- Hỗ trợ nhà tuyển dụng & người tìm việc -->
      <div class="support-container">
        <div class="support-box">
          <h3>Hỗ trợ Nhà tuyển dụng:</h3>
          <p>- Hotline: <span class="hotline">0972489899</span></p>
          <p>- Email: <a href="mailto:tunghatrang@gmail.com">tunghatrang@gmail.com</a></p>
        </div>
  
        <div class="support-box">
          <h3>Hỗ trợ Người tìm việc:</h3>
          <p>- Hotline: <span class="hotline">0948111429</span></p>
          <p>- Email: <a href="mailto:huytung25051985@gmail.com">huytung25051985@gmail.com</a></p>
        </div>
      </div>
  
      <!-- Trung tâm -->
      <div class="center-info">
        <strong>TRUNG TÂM DỊCH VỤ VIỆC LÀM VIỆC LÀM BẮC KẠN</strong>
      </div>
  
      <!-- Form đăng ký -->
      <form class="email-form" @submit.prevent="submitEmail">
        <input type="email" v-model="email" class="email-input" placeholder="Nhập địa chỉ email đăng ký nhận tin" required />
        <button type="submit" class="submit-btn">Gửi đăng ký</button>
      </form>
    </div>
  </template>
  
  <script>
  export default {
    data() {
      return {
        email: ""
      };
    },
    methods: {
      submitEmail() {
        alert(`Email đã đăng ký: ${this.email}`);
        this.email = ""; // Reset input sau khi gửi
      }
    }
  };
  </script>
  
  <style scoped>
  /* =========== HỖ TRỢ NHÀ TUYỂN DỤNG & NGƯỜI TÌM VIỆC =========== */
  .support-container {
    display: flex;
    justify-content: space-between;
    align-items: flex-start;
    background: white;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0px 2px 10px rgba(0, 0, 0, 0.1);
    max-width: 900px;
    margin: 0 auto;
  }
  
  .support-box {
    width: 48%;
  }
  
  .support-box h3 {
    font-size: 18px;
    font-weight: bold;
    margin-bottom: 10px;
  }
  
  .hotline {
    color: red;
    font-weight: bold;
  }
  
  /* =========== TRUNG TÂM =========== */
  .center-info {
    text-align: center;
    font-style: italic;
    font-size: 16px;
    margin-top: 20px;
  }
  
  /* =========== FORM ĐĂNG KÝ EMAIL =========== */
  .email-form {
    display: flex;
    justify-content: center;
    align-items: center;
    background: white;
    padding: 15px;
    border-radius: 8px;
    box-shadow: 0px 2px 10px rgba(0, 0, 0, 0.1);
    max-width: 600px;
    margin: 20px auto;
  }
  
  .email-input {
    flex: 1;
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 5px 0 0 5px;
    font-size: 14px;
  }
  
  .submit-btn {
    background-color: #ff3366;
    color: white;
    border: none;
    padding: 10px 20px;
    border-radius: 0 5px 5px 0;
    cursor: pointer;
  }
  
  .submit-btn:hover {
    background-color: #e60050;
  }
  
  /* =========== RESPONSIVE =========== */
  @media (max-width: 768px) {
    .support-container {
      flex-direction: column;
      text-align: center;
    }
  
    .support-box {
      width: 100%;
      margin-bottom: 15px;
    }
  
    .email-form {
      flex-direction: column;
    }
  
    .email-input {
      border-radius: 5px;
      margin-bottom: 10px;
    }
  
    .submit-btn {
      border-radius: 5px;
      width: 100%;
    }
  }
  </style>
  