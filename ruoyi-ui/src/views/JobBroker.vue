<template>
  <div>
    <JobBreadCrumb />
    <!-- Content -->
<div class="container mt-5">
  <div class="mx-lg-auto">
    <!-- Card -->
    <div class="card bg-soft-dark">
      <div class="card-body">
        <div class="row col-md-divider align-items-md-center">
          <div class="col-md-8">
            <h3>PHIÊN GIAO DỊCH VIỆC LÀM TRỰC TUYẾN KẾT NỐI 06 TỈNH</h3>
            <p>Thái Nguyên, Hà Nội, Bắc Ninh, Bắc Giang, Bắc Kạn và Sơn La</p>

            <div class="row border-top pt-2">
              <div class="col-sm-6 mb-2 mb-sm-0">
                <!-- List Checked -->
                <ul class="list-checked list-checked-bg-success list-checked-sm mb-0">
                  <li class="list-checked-item">Hotline: <span class="fw-bold">02093.810.908</span></li>
                </ul>
                <!-- End List Checked -->
              </div>
              <!-- End Col -->


            </div>
            <!-- End Row -->
          </div>
          <!-- End Col -->

          <div class="col-md-4">
            <div class="ps-md-2">
              <h4>Phiên giao dịch</h4>
              <p>Bắt đầu: 07:50 25/03/2025
                <br />Kết thúc:16:00 25/03/2025
              </p>
              <a class="btn btn-primary" href="#">Đăng ký lên sàn <i class="bi-chevron-right small ms-1"></i></a>
            </div>
          </div>
          <!-- End Col -->
        </div>
        <!-- End Row -->
      </div>
    </div>
    <!-- End Card -->
  </div>
</div>
    <!-- Content -->
  <BrokerTabs />

  </div>
</template>
<script>
import BrokerTabs from '../components/JobBroker/BrokerTabs.vue';
import JobBreadCrumb from '../components/Joblist/TemplateParts/JobBreadCrumb.vue';

export default {
  components: {
    JobBreadCrumb,
    BrokerTabs
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
