<template>
  <div class="topbar">
    <div class="container">
      <!-- Contact Info (Ẩn trên Mobile) -->
      <div class="contact-info">
        <span>Hotline: 02093.871.363</span>
        <span>Email: <a href="mailto:ttgtvlbackan@gmail.com">ttgtvlbackan@gmail.com</a></span>
      </div>

      <!-- Auth Buttons (Căn phải) -->
      <div class="auth-buttons">
        <a href="#" class="btn">Đăng ký</a>
        <span class="divider">|</span>
        <a href="#" class="btn">Đăng nhập</a>
      </div>
    </div>
  </div>
</template>

<style scoped>
/* Topbar container */
.topbar {
  background: #f8f9fa;
  padding: 10px 0;
  border-bottom: 1px solid #ddd;
  font-size: 14px;
}

.container {
  display: flex;
  justify-content: space-between;
  align-items: center;
  max-width: 1200px;
  margin: 0 auto;
  padding: 0 15px;
}

/* Contact Info (Ẩn trên mobile) */
.contact-info {
  display: flex;
  gap: 15px;
  color: #333;
}

/* Căn phải Auth Buttons */
.auth-buttons {
  margin-left: auto; /* Đẩy sang phải */
  display: flex;
  align-items: center;
  gap: 10px; /* Khoảng cách mặc định */
}

.auth-buttons .btn {
  font-size: 14px;
  color: #333;
  text-decoration: none;
  padding: 5px 10px;
  border-radius: 5px;
}

.auth-buttons .btn:hover {
  color: #007bff;
}

/* Thanh phân cách giữa "Đăng ký" & "Đăng nhập" */
.divider {
  color: #333;
  font-size: 14px;
}

/* === RESPONSIVE: ẨN THÔNG TIN LIÊN HỆ TRÊN MOBILE & Giảm khoảng cách === */
@media (max-width: 768px) {
  .contact-info {
    display: none; /* Ẩn trên mobile */
  }

  .auth-buttons {
    gap: 5px; /* Giảm khoảng cách giữa các nút */
    display: inline-flex; /* Giữ các nút gần nhau hơn */
  }

  .auth-buttons .btn {
    padding: 5px 8px; /* Giảm padding để gọn hơn */
  }
}
</style>
