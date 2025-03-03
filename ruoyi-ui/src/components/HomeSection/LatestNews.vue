<template>
  <div>
    <!-- Card Grid -->
    <div class="container content-space-0 content-space-lg-1">
      <!-- Heading -->
      <div class="w-md-100 w-lg-75 text-center mx-md-auto mb-5">
        <h2>TIN TỨC SỰ KIỆN</h2>
        <p>Cập nhật tin tức, sự kiện nóng nhất xung quanh vấn đề việc làm được bạn đọc quan tâm nhất</p>
      </div>
      <!-- End Heading -->

      <div class="overflow-hidden">
        <div class="row gx-lg-7">
          <div v-for="(news, index) in newsList" :key="index" class="col-sm-6 col-lg-4 mb-5">
            <!-- Card -->
            <a class="card card-flush h-100" :href="news.link" data-aos="fade-up" :data-aos-delay="news.delay">
              <img class="card-img" :src="news.image" :alt="news.title">
              <div class="card-body">
                <span class="card-subtitle text-body">{{ news.category }}</span>
                <h4 class="card-title text-inherit">{{ news.title }}</h4>
                <p class="card-text text-body">{{ news.description }}</p>
              </div>
            </a>
            <!-- End Card -->
          </div>
          <!-- End Col -->
        </div>
        <!-- End Row -->
      </div>

      <!-- Card Info -->
      <div class="text-center">
        <div class="card card-info-link card-sm">
          <div class="card-body">
            Bạn muốn biết thêm tin tức? <a class="card-link ms-2" href="/tin-tuc">Xem thêm <span class="bi-chevron-right small ms-1"></span></a>
          </div>
        </div>
      </div>
      <!-- End Card Info -->
    </div>
    <!-- End Card Grid -->
  </div>
</template>

<script>
export default {
  data() {
    return {
      newsList: [
        {
          category: "Tin tức",
          title: "3 khoản tiền cán bộ, công chức, viên chức được nhận khi về hưu sớm..",
          description: "Nếu thời gian tính trợ cấp có tháng lẻ thì được tính tròn theo nguyên tắc dưới 3 tháng thì không tính; từ đủ 3 tháng đến đủ 6 tháng tính là 1/2 năm;",
          image: "/images/news-1.jpg",
          link: "/tin-tuc/chi-tiet",
          delay: "0"
        },
        {
          category: "Tin tức",
          title: "Công văn thông báo thực hiện hoán đổi ngày làm việc dịp nghỉ lễ ngày Chiến thắng 30/4",
          description: "Hoán đổi ngày làm việc dịp nghỉ lễ ngày Chiến thắng 30/4 và ngày Quốc tế lao động 01/5",
          image: "/images/news-2.jpg",
          link: "/tin-tuc/chi-tiet",
          delay: "150"
        },
        {
          category: "Tư vấn việc làm",
          title: "Thông báo tuyển lao động thời vụ 2025",
          description: "Căn cứ văn bản chi tiết về việc đưa người lao động nước ngoài giữa tỉnh Bắc Kạn, Việt Nam...",
          image: "/images/news-3.jpg",
          link: "/tin-tuc/chi-tiet",
          delay: "200"
        }
      ]
    };
  }
};
</script>

<style scoped>
.card-img {
  width: 100%;
  height: auto;
}
</style>
