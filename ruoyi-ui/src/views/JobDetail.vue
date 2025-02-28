<template>
  <div>
    <JobBreadCrumb />
    <!-- Content -->
    <div class="container content-space-2">
      <div class="row">
        <div class="col-lg-8">

          <div class="mx-lg-auto">
            <div class="page-header">
              <!-- Media -->
              <div class="d-sm-flex mb-3">
                <div class="flex-shrink-0 mb-2 mb-sm-0">
                  <a href="#">
                    <img class="avatar avatar-lg mb-3" src="/images/company/cty-sinte.png"
                      alt="Image Description">
                  </a>
                </div>

                <div class="flex-grow-1 ms-sm-4">
                  <div class="row">
                    <div class="col">
                      <h1 class="page-header-title h2">Lao động kỹ thuật - Nhân viên kiểm định chất lượng</h1>
                    </div>
                    <!-- End Col -->


                  </div>
                  <!-- End Row -->

                  <ul class="list-inline list-separator d-flex align-items-center mb-2">
                    <li class="list-inline-item">
                      <a class="link" href="../demo-jobs/employer.html">CÔNG TY TNHH CÔNG NGHIỆP SINTE NAM ĐỊNH</a>
                    </li>

                  </ul>

                  <ul class="list-inline list-separator small text-body mb-2">
                    <li class="list-inline-item">Hết hạn: 28/03/2025</li>
                    <li class="list-inline-item">Ba Bể, Bắc Kạn</li>
                    <li class="list-inline-item">Full time</li>
                  </ul>
                </div>
              </div>
              <!-- End Media -->

              <!-- Footer -->
              <div class="d-flex justify-content-end d-print-none gap-3">
                <a class="btn btn-primary" href="javascript:;" onclick="window.print(); return false;">
                  <i class="bi-send me-1"></i> Ứng tuyển
                </a>
                <a class="btn btn-white" href="#">
                  <i class="bi-bookmark-heart me-1"></i> Lưu tin
                </a>


              </div>
            </div>


          </div>

          <div class="my-8">
            <h3>Chi tiết tin tuyển dụng</h3>
            <h4>Mô tả công việc</h4>
            <p>- Đọc bản thiết kế và thông số kỹ thuật;
              <br />- Giám sát hoạt động sản xuất để đảm bảo đáp ứng các tiêu chuẩn;
              <br />- Đề nghị điều chỉnh quy trình lắp ráp hoặc sản xuất;
              <br />- Kiểm tra, thử nghiệm hoặc đo lường vật liệu, sản phẩm được sản xuất;
              <br />- Chấp nhận hoặc từ chối đưa vào sản xuất hàng loạt các sản phẩm;
              <br />- Loại bỏ tất cả các sản phẩm và vật liệu không đáp ứng thông số kỹ thuật;
              <br />- Thảo luận về kết quả kiểm tra chất lượng với những người chịu trách nhiệm về sản phẩm;
              <br />- Lưu trữ dữ liệu kiểm tra và lập báo cáo;
              <br />- Giữ cho các thiết bị đo lường, kiểm hoạt động hiệu quả, chính xác bằng cách làm theo hướng dẫn vận hành và gọi sửa chữa, bảo dưỡng khi cần thiết.</p>

            <div class="row">
              <div class="col-sm-4">
                <div class="mb-4">
                  <h5>Mức lương: </h5>
                  <p>Thoả thuận</p>
                </div>

                <div class="mb-4">
                  <h5>Chức vụ:</h5>
                  <p>Nhân viên</p>
                </div>
              </div>
              <!-- End Col -->

              <div class="col-sm-4">
                <div class="mb-4">
                  <h5>Bằng cấp:</h5>
                  <p>Cao đẳng</p>
                </div>

                <div class="mb-4">
                  <h5>Hình thức làm việc:</h5>
                  <p>Giờ hành chính</p>
                </div>
              </div>
              <!-- End Col -->

              <div class="col-sm-4">
                <div class="mb-4">
                  <h5>Nơi làm việc: </h5>
                  <p>Nam Định</p>
                </div>

                <div class="mb-4">
                  <h5>Hình thức làm việc:</h5>
                  <p>Giờ hành chính</p>
                </div>
              </div>
              <!-- End Col -->
            </div>
            <!-- End Row -->
          </div>

          <div class="mb-8">
            <div class="mb-4">
              <h3>Quyền lợi được hưởng</h3>
            </div>

            <h5>Yêu cầu công việc</h5>
            <p>
              - Có ít nhất 05 năm kinh nghiệm làm việc ở vị trí Nhân viên kiểm định chất lượng hoặc các vị trí tương đương;
              <br />- Thông thạo ngoại ngữ;
              <br />- Có kỹ năng giao tiếp, làm việc nhóm;
              <br />- Chịu được áp lực công việc.

            </p>

          </div>
          <!-- Sticky Block End Point -->
          <div id="stickyBlockEndPointEg4"></div>
        </div>
        <!-- End Col -->

        <div class="col-lg-4">
          <StickyBlock />
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
import StickyBlock from '../components/Joblist/TemplateParts/StickyBlock.vue';

export default {
  components: {
    JobBreadCrumb,
    StickyBlock
  }
}
</script>
