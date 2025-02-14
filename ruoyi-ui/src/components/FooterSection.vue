<template>
    <footer id="footer" class="footer">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="foot-lienhe">
              <p><strong>CỔNG THÔNG TIN ĐIỆN TỬ: TRUNG TÂM DỊCH VỤ VIỆC LÀM TỈNH BẮC KẠN</strong></p>
              <p>
                <strong>Giấy phép số: 27/GP – TTĐT do Sở Thông tin và Truyền thông tỉnh Bắc Kạn cấp ngày 20 tháng 5 năm 2019</strong>
              </p>
              <p>Trưởng ban biên tập: Ông Ma Văn Tôn, Phó Giám đốc Trung tâm Dịch vụ việc làm tỉnh Bắc Kạn</p>
              <p>Địa chỉ: Tổ 8A, phường Phùng Chí Kiên, thành phố Bắc Kạn, tỉnh Bắc Kạn</p>
              <p>Bản quyền thuộc về: Trung tâm Dịch vụ việc làm tỉnh Bắc Kạn</p>
              <p>Cơ quan chủ quản: Trung tâm Dịch vụ việc làm tỉnh Bắc Kạn</p>
              <p>
                <em>Mọi chi tiết xin liên hệ: Điện thoại: <a href="tel:02093871363">02093.871.363</a></em> | 
                <em>Email: <a href="mailto:ttgtvlbackan@gmail.com">ttgtvlbackan@gmail.com</a></em>
              </p>
            </div>
          </div>
        </div>
      </div>
    </footer>
  </template>
  
  <script>
  export default {
    name: "FooterSection",
  };
  </script>
  
  <style scoped>
  /* Footer chung */
  .footer {
    background: #181a1b;
    color: white;
    padding: 30px 0;
    font-size: 14px;
    text-align: left; /* Căn trái toàn bộ nội dung */
  }
  
  /* Căn chỉnh nội dung cho đẹp */
  .foot-lienhe {
    max-width: 1100px;
    margin: 0 auto;
    padding: 10px 40px; /* Thêm padding trái phải */
  }
  
  /* Các đoạn văn bản */
  .foot-lienhe p {
    margin-bottom: 10px;
    line-height: 1.6;
  }
  
  /* Link trong footer */
  .foot-lienhe a {
    color: #ffcc00;
    text-decoration: none;
    font-weight: bold;
  }
  
  .foot-lienhe a:hover {
    text-decoration: underline;
  }
  
  /* Tăng kích thước chữ tiêu đề */
  .foot-lienhe strong {
    font-size: 16px;
    display: block;
    margin-bottom: 5px;
  }
  
  /* Responsive cho Mobile */
  @media (max-width: 768px) {
    .foot-lienhe {
      padding: 10px 20px; /* Giảm padding cho mobile để không bị chật */
    }
  
    .footer {
      padding: 20px 0;
    }
  }
  </style>
  