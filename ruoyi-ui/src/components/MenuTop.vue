<template>
    <div class="topbar">
      <div class="container">
        <div class="contact-info">
          <span>Hotline: 0228.8602176</span>
          <span>Email: <a href="mailto:ttgtvlnamdinh@gmail.com">ttgtvlnamdinh@gmail.com</a></span>
        </div>
        <div class="auth-buttons">
          <a href="#" class="btn">Đăng ký</a>
          <a href="#" class="btn">Đăng nhập</a>
          <a href="#" class="btn">Liên hệ</a>
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
  
  /* Contact Info */
  .contact-info {
    display: flex;
    gap: 15px; /* Space between hotline & email */
    color: #333;
  }
  
  .contact-info a {
    color: #007bff;
    text-decoration: none;
  }
  
  /* Auth Buttons */
  .auth-buttons {
    display: flex;
    gap: 10px; /* Add spacing between buttons */
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
  </style>
  