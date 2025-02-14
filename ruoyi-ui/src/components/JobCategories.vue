<template>
    <section class="sptb">
      <div class="container">
        <div class="section-title text-center">
          <h1>NHÓM VIỆC LÀM</h1>
          <p>Các việc làm phổ biến được phân chia theo từng nhóm, từng ngành cụ thể...</p>
        </div>
  
        <!-- Job Categories Grid -->
        <div class="job-category-grid">
          <div
            v-for="job in jobCategories"
            :key="job.id"
            class="job-category-card text-center"
          >
            <a :href="job.link" :title="job.title">
              <div class="job-icon">
                <i :class="job.icon"></i>
              </div>
              <div class="job-text mt-3">
                <h5 class="mb-0 text-body">
                  {{ job.title }} (<span class="career-number">{{ job.count }}</span>)
                </h5>
              </div>
            </a>
          </div>
        </div>
  
        <!-- View More Button -->
        <div class="mt-4 text-center">
          <a href="/viec-lam" title="Xem thêm việc làm" class="btn btn-primary btn-category">
            <i class="fa fa-long-arrow-right"></i>&nbsp;Xem thêm
          </a>
        </div>
      </div>
    </section>
  </template>
  
  <script>
  export default {
    data() {
      return {
        jobCategories: [
          { id: 1, title: "Dệt may/Da giày", count: 1449, link: "/viec-lam/nganh-nghe/det-may-da-giay-48", icon: "fa fa-check-square-o" },
          { id: 2, title: "Khác", count: 391, link: "/viec-lam/nganh-nghe/khac-36", icon: "fa fa-handshake-o" },
          { id: 3, title: "Kế toán", count: 270, link: "/viec-lam/nganh-nghe/ke-toan-33", icon: "fa fa-calculator" },
          { id: 4, title: "Sản xuất", count: 241, link: "/viec-lam/nganh-nghe/san-xuat-30", icon: "fa fa-product-hunt" },
          { id: 5, title: "Cơ khí", count: 218, link: "/viec-lam/nganh-nghe/co-khi-24", icon: "fa fa-cogs" },
          { id: 6, title: "Điện/Điện tử", count: 173, link: "/viec-lam/nganh-nghe/dien-dien-tu-15", icon: "fa fa-bolt" },
          { id: 7, title: "Bán hàng", count: 154, link: "/viec-lam/nganh-nghe/ban-hang-9", icon: "fa fa-shopping-cart" },
          { id: 8, title: "Dịch vụ khách hàng", count: 137, link: "/viec-lam/nganh-nghe/dich-vu-khach-hang-39", icon: "fa fa-volume-control-phone" },
          { id: 9, title: "Sản phẩm công nghiệp", count: 126, link: "/viec-lam/nganh-nghe/san-pham-cong-nghiep-32", icon: "fa fa-hdd-o" },
          { id: 10, title: "Xây dựng", count: 110, link: "/viec-lam/nganh-nghe/xay-dung-19", icon: "fa fa-building" },
          { id: 11, title: "Hành chính/Thư ký", count: 109, link: "/viec-lam/nganh-nghe/hanh-chinh-thu-ky-11", icon: "fa fa-pencil-square-o" },
          { id: 12, title: "Bán hàng kỹ thuật", count: 90, link: "/viec-lam/nganh-nghe/ban-hang-ky-thuat-54", icon: "fa fa-television" },
        ]
      };
    },
    mounted() {
      setTimeout(() => {
        this.animateNumbers();
      }, 500);
    },
    methods: {
      animateNumbers() {
        this.$nextTick(() => {
          document.querySelectorAll(".career-number").forEach((el) => {
            let counter = 0;
            let target = parseInt(el.textContent);
            let increment = target / 50;
            let interval = setInterval(() => {
              counter += increment;
              el.textContent = Math.ceil(counter);
              if (counter >= target) {
                el.textContent = target;
                clearInterval(interval);
              }
            }, 40);
          });
        });
      }
    }
  };
  </script>
  
  <style scoped>
  /* General Section Padding */
  .sptb {
    padding: 40px 0;
  }
  
  /* Grid Layout */
  .job-category-grid {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(160px, 1fr));
    gap: 20px;
    justify-content: center;
  }
  
  /* Job Category Card */
  .job-category-card {
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    transition: all 0.3s ease-in-out;
  }
  
  .job-category-card:hover {
    transform: translateY(-5px);
  }
  
  /* Icons */
  .job-icon i {
    font-size: 30px;
    color: #007bff;
  }
  
  /* Text Styling */
  .text-body {
    font-weight: 600;
  }
  
  /* View More Button */
  .btn-category {
    padding: 10px 20px;
    font-size: 16px;
  }
  </style>
  