<template>
    <section class="sptb bg-white">
      <div class="container">
        <div class="home-jobuser">
          <div class="section-title center-block text-center">
            <h1>VIỆC LÀM TỐT NHẤT</h1>
            <p>
              Tổng hợp những việc làm hot nhất từ các top công ty tốt nhất và dựa trên những tiêu chí Chất lượng dịch vụ ...
            </p>
          </div>
  
          <!-- Danh sách việc làm -->
          <div class="datawork_home">
            <div v-for="(job, index) in jobs" :key="index" class="job-card">
              <div class="box-ct-wh">
                <div class="hm-work">
                  <img :src="job.image" 
                       :alt="job.title" 
                       @error="imageError($event)"
                       class="job-image">
                </div>
                <div class="job-info">
                  <div class="row-w-work">
                    <a :href="job.link" :title="job.title">{{ job.title }}</a>
                  </div>
                  <div class="row-w-bus">
                    <a :href="job.companyLink" :title="job.company">{{ job.company }}</a>
                  </div>
                  <div class="row-w-add">
                    <span><i class="fa fa-map-marker"></i> {{ job.location }}</span>
                    <span class="deadline"><i class="fa fa-calendar"></i> {{ job.deadline }}</span>
                    <span><i class="fa fa-bookmark"></i> {{ job.experience }}</span>
                  </div>
                </div>
              </div>
            </div>
          </div>
  
          <!-- Button "Xem thêm" -->
          <div class="button-container">
            <a href="/viec-lam" title="Xem thêm việc làm" class="btn btn-primary btn-category">
              ➜ Xem thêm
            </a>
          </div>
  
        </div>
      </div>
    </section>
  </template>
  
  <script>
  export default {
    data() {
      return {
        jobs: [
          {
            title: "Phó phòng kế toán tài chính",
            company: "Công ty bảo hiểm MIC Nam Định",
            location: "Nam Định",
            deadline: "30/04/2022",
            experience: "1 năm",
            image: "http://file2.vieclamnamdinh.gov.vn/data/0/images/2022/03/22/tinh.namdinh/cong-ty-bao-hiem-mic-nam-dinh.png",
            link: "/viec-lam/pho-phong-ke-toan-tai-chinh-2882.html",
            companyLink: "/nha-tuyen-dung/cong-ty-bao-hiem-mic-nam-dinh-2648.html"
          },
          {
            title: "Kỹ thuật công nghệ cao",
            company: "CÔNG TY CP SẢN XUẤT KINH DOANH XNK NT VỤ BẢN",
            location: "Nam Định",
            deadline: "31/03/2022",
            experience: "3 năm",
            image: "http://file2.vieclamnamdinh.gov.vn/data/0/images/2022/03/22/namdinh.vudai/tai-xuong.jpg",
            link: "/viec-lam/ky-thuat-cong-nghe-cao-2880.html",
            companyLink: "/nha-tuyen-dung/cong-ty-cp-san-xuat-kinh-doanh-xuat-nhap-khau-nt-vu-ban-2647.html"
          },
          {
            title: "Nhân viên phòng phát triển R&P",
            company: "CÔNG TY TNHH TAESUNG GLOBAL VINA",
            location: "Nam Định",
            deadline: "30/07/2022",
            experience: "3 năm",
            image: "http://file2.vieclamnamdinh.gov.vn/image/images/noimage.png",
            link: "/viec-lam/nhan-vien-phong-phat-trien-r-p-3341.html",
            companyLink: "/nha-tuyen-dung/cong-ty-tnhh-taesung-global-vina-2802.html"
          }
        ]
      };
    },
    methods: {
      imageError(event) {
        event.target.src = "http://file2.vieclamnamdinh.gov.vn/image/noimage/3.jpg";
      }
    }
  };
  </script>
  
  <style scoped>
  /* Căn chỉnh section */
  .sptb {
    padding: 50px 0;
  }
  
  /* Tiêu đề */
  .section-title h1 {
    font-size: 24px;
    font-weight: bold;
    margin-bottom: 10px;
  }
  
  .section-title p {
    font-size: 16px;
    color: #666;
  }
  
  /* Bố cục hiển thị */
  .datawork_home {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(320px, 1fr)); /* Tự động fit màn hình */
    gap: 20px;
    max-width: 1200px; /* Giới hạn chiều rộng */
    margin: 0 auto; /* Căn giữa */
    padding: 0 20px; /* Không bị dính sát 2 bên */
  }
  
  /* Box công việc */
  .job-card {
    background: #f9f9f9;
    padding: 15px;
    border-radius: 5px;
    border: 1px solid #ddd;
    display: flex;
    align-items: center;
    gap: 10px;
  }
  
  /* Ảnh công việc */
  .hm-work img {
    width: 100px;
    height: 60px;
    object-fit: cover;
    border-radius: 5px;
    border: 1px solid #ddd;
  }
  
  /* Nội dung việc làm */
  .job-info {
    flex: 1;
  }
  
  .row-w-work a {
    font-weight: bold;
    color: #007bff;
    text-decoration: none;
    display: block;
  }
  
  .row-w-work a:hover {
    text-decoration: underline;
  }
  
  .row-w-bus a {
    font-size: 14px;
    color: #555;
    text-decoration: none;
  }
  
  .row-w-bus a:hover {
    color: #007bff;
  }
  
  .row-w-add {
    font-size: 14px;
    color: #555;
    display: flex;
    justify-content: space-between;
    flex-wrap: wrap;
    margin-top: 5px;
  }
  
  .deadline {
    font-weight: bold;
    color: red;
  }
  
  /* Button "Xem thêm" */
  .button-container {
    text-align: center;
    margin-top: 40px; /* Tạo khoảng cách */
  }
  
  .button-container .btn-category {
    font-size: 16px;
    padding: 12px 24px;
    border-radius: 5px;
    background: #007bff;
    color: #fff;
    text-decoration: none;
    display: inline-block;
    transition: 0.3s ease;
  }
  
  .button-container .btn-category:hover {
    background-color: #0056b3;
  }
  </style>
  