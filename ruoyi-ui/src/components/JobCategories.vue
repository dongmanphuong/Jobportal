<template>
  <section class="sptb">
    <div class="container">
      <!-- Title Section -->
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
      <div class="view-more-container">
        <a href="/viec-lam" title="Xem thêm việc làm" class="btn btn-category">
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
      ]
    };
  }
};
</script>

<style scoped>
/* General Section Padding */
.sptb {
  padding: 60px 0;
  background: #f9f9f9;
}

/* Section Title */
.section-title h1 {
  font-size: 28px;
  font-weight: 700;
  color: #333;
}

.section-title p {
  font-size: 16px;
  color: #666;
  margin-bottom: 30px;
}

/* Job Category Grid */
.job-category-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
  gap: 30px;
  justify-content: center;
  max-width: 1200px;
  margin: 0 auto;
  padding: 0 15px;
}

/* Job Category Card */
.job-category-card {
  background: white;
  padding: 25px;
  border-radius: 10px;
  box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
  transition: all 0.3s ease-in-out;
  cursor: pointer;
}

.job-category-card:hover {
  transform: translateY(-5px);
  box-shadow: 0 6px 12px rgba(0, 0, 0, 0.15);
}

/* Job Icon */
.job-icon i {
  font-size: 34px;
  color: #007bff;
}

/* Job Text */
.job-text h5 {
  font-size: 16px;
  font-weight: 600;
  color: #333;
}

.career-number {
  font-weight: bold;
  color: #007bff;
}

/* View More Button */
.view-more-container {
  text-align: center;
  margin-top: 50px;
}

.btn-category {
  padding: 14px 28px;
  font-size: 16px;
  font-weight: 600;
  background: #007bff;
  color: white;
  border-radius: 30px;
  display: inline-flex;
  align-items: center;
  transition: 0.3s;
  box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}

.btn-category i {
  margin-right: 8px;
}

.btn-category:hover {
  background: #0056b3;
  box-shadow: 0 6px 12px rgba(0, 0, 0, 0.15);
}

/* Responsive */
@media (max-width: 1024px) {
  .job-category-grid {
    grid-template-columns: repeat(3, 1fr);
    gap: 25px;
  }
}

@media (max-width: 768px) {
  .job-category-grid {
    grid-template-columns: repeat(2, 1fr);
    gap: 20px;
  }

  .btn-category {
    font-size: 14px;
    padding: 12px 24px;
  }
}

@media (max-width: 480px) {
  .job-category-grid {
    grid-template-columns: repeat(1, 1fr);
    gap: 15px;
  }

  .btn-category {
    font-size: 14px;
    padding: 10px 20px;
  }
}
</style>
