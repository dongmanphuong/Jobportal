<template>
  <div>
    <JobBreadCrumb />
    <!-- Content -->
    <div class="container content-space-2">
      <div class="row">
        <div class="col-lg-8">

          <div class="card shadow-lg">
        <div class="card-body">
            <!-- Tiêu đề bài viết -->
            <h1 class="h2">
                Trung tâm Lao động ngoài nước ký kết các hợp đồng cung ứng lao động có tay nghề đi làm việc tại Đức, Nhật Bản
            </h1>

            <!-- Thông tin phụ -->
            <div class="row my-3">
                <div class="col-md-6">
                    <p class="text-muted">Thứ hai, 24/02/2025 (GMT+7)</p>
                </div>

            </div>



            <!-- Tóm tắt bài viết -->
            <div class="alert alert-info">
                <h2 class="h4 fw-normal">Được sự đồng ý của Bộ Lao động – Thương binh và Xã hội, Trung tâm Lao động ngoài nước đã ký kết hợp đồng cung ứng lao động tay nghề cao đi làm việc tại CHLB Đức và Nhật Bản vào ngày 13-14/02/2025.</h2>
            </div>

            <!-- Nội dung bài viết -->
            <div class="post-content">
                <p>Ông Đặng Huy Hồng, Giám đốc Trung tâm Lao động ngoài nước cho biết:</p>
                <blockquote class="blockquote">"Sau thời gian đàm phán và xin ý kiến từ Bộ Lao động – Thương binh và Xã hội, Trung tâm đã hoàn tất các thủ tục ký kết hợp đồng cung ứng, mở ra nhiều cơ hội việc làm có thu nhập hấp dẫn cho người lao động."</blockquote>

                <h3 class="h4 mt-3"> Chương trình Hand in Hand for International Talents</h3>
                <p>Ký kết với DIHK Service GmbH CHLB Đức, dành cho người có bằng cấp chế biến món ăn, quản trị nhà hàng - khách sạn.</p>
                <p>✔ Hỗ trợ học tiếng Đức B1, chi phí xin visa, vé máy bay.</p>
                <p>✔ Lương từ <strong>2.000 Euro/tháng</strong> (khoảng 54 triệu VNĐ).</p>
                <div class="text-center my-3">
                    <img src="https://www.colab.gov.vn/uploads/18-2-2025.1.jpg" class="img-fluid rounded" alt="Lễ ký kết">
                    <p class="text-muted"><em>Lễ ký kết hợp đồng Hand in Hand for International Talents</em></p>
                </div>

                <h3 class="h4 mt-3"> Chương trình trợ lý điều dưỡng tại Đức</h3>
                <p>Ký kết với Công ty Vivantes - Diễn đàn cho người cao tuổi Đức.</p>
                <p>✔ Hỗ trợ học tiếng Đức B2, phí sinh hoạt 300 Euro/tháng.</p>
                <p>✔ Lương trước thuế <strong>hơn 3.000 Euro/tháng</strong> (khoảng 80 triệu VNĐ).</p>
                <div class="text-center my-3">
                    <img src="https://www.colab.gov.vn/uploads/18-2-2025%20hai.jpg" class="img-fluid rounded" alt="Lễ ký kết điều dưỡng">
                    <p class="text-muted"><em>Lễ ký kết hợp đồng chương trình trợ lý điều dưỡng tại Đức</em></p>
                </div>

                <h3 class="h4 mt-3"> Chương trình thực tập hộ lý tại Nhật Bản</h3>
                <p>Ký kết với Hiệp hội We are Asian, dành cho người có bằng điều dưỡng.</p>
                <p>✔ Hỗ trợ học tiếng Nhật N4, chi phí sinh hoạt <strong>35.000 Yên/tháng</strong>.</p>
                <p>✔ Lương thực tập: <strong>184.000 Yên/tháng</strong> (~30 triệu VNĐ).</p>
                <div class="text-center my-3">
                    <img src="https://www.colab.gov.vn/uploads/18-2-2025%20ba.jpg" class="img-fluid rounded" alt="Lễ ký kết thực tập hộ lý Nhật Bản">
                    <p class="text-muted"><em>Lễ ký kết hợp đồng thực tập hộ lý tại Nhật Bản</em></p>
                </div>

                <p class="fw-bold text-danger">📢 Người lao động vui lòng đăng ký trực tiếp trên <a href="http://www.colab.gov.vn/" target="_blank">www.colab.gov.vn</a>, không qua trung gian.</p>
            </div>

            <!-- Thông tin tác giả -->
            <div class="alert alert-secondary">
                <p class="mb-0">✍️ <strong>Tác giả:</strong> Khánh Hòa</p>
                <p class="mb-0">📌 Nguồn: <a href="https://www.colab.gov.vn/tin-tuc/4164/" target="_blank">colab.gov.vn</a></p>
            </div>


        </div>
    </div>
        </div>
        <!-- End Col -->

        <div class="col-lg-4">
          <InterestedJobs />
        </div>
        <!-- End Col -->
      </div>
      <!-- End Row -->
    </div>
    <!-- Content -->

  </div>
</template>
<script>
import JobBreadCrumb from '../components/Joblist/TemplateParts/JobBreadCrumb.vue';
import InterestedJobs from '../components/News/InterestedJobs.vue';

export default {
  components: {
    JobBreadCrumb,
    InterestedJobs
  }
}
</script>

<style>
    /* Giữ footer cố định ở đáy modal */
    .modal-footer {
        position: sticky;
        bottom: 0;
        background: #fff;
        z-index: 1050;
        border-top: 1px solid #f1f1f1;
    }
    /* Định dạng modal-body để có thể scroll khi nội dung dài */
    .modal-body {
        max-height: 75vh;
        overflow-y: auto;
    }
</style>
