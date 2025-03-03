<template>
  <div class="container content-space-1 content-space-lg-1">
    <!-- Heading -->
    <div class="w-md-100 w-lg-75 text-center mx-md-auto mb-1">
      <h2>Phiên giao dịch đang diễn ra</h2>
      <p>Tổng hợp những việc làm hot nhất từ các  <a class="link" href="#">top công ty</a> tốt nhất và dựa trên những tiêu chí Chất lượng dịch vụ ...</p>
    </div>
    <!-- End Heading -->
    <!-- Nav -->
    <div class="text-center">
      <ul class="nav nav-segment nav-pills mb-3" role="tablist">
        <li class="nav-item">
          <a class="nav-link active" id="nav-one-eg1-tab" href="#nav-one-eg1" data-bs-toggle="pill"
            data-bs-target="#nav-one-eg1" role="tab" aria-controls="nav-one-eg1" aria-selected="true">Thông tin doanh nghiệp</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" id="nav-two-eg1-tab" href="#nav-two-eg1" data-bs-toggle="pill"
            data-bs-target="#nav-two-eg1" role="tab" aria-controls="nav-two-eg1" aria-selected="false">Tin việc làm</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" id="nav-three-eg1-tab" href="#nav-three-eg1" data-bs-toggle="pill"
            data-bs-target="#nav-three-eg1" role="tab" aria-controls="nav-three-eg1" aria-selected="false">Ứng cử viên</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" id="nav-four-eg1-tab" href="#nav-four-eg1" data-bs-toggle="pill"
            data-bs-target="#nav-four-eg1" role="tab" aria-controls="nav-four-eg1" aria-selected="false">Kết quả</a>
        </li>
      </ul>
    </div>
    <!-- End Nav -->

    <!-- Tab Content -->
    <div class="tab-content">
      <div class="tab-pane fade show active" id="nav-one-eg1" role="tabpanel" aria-labelledby="nav-one-eg1-tab">
        <CompanyList />
      </div>

      <div class="tab-pane fade" id="nav-two-eg1" role="tabpanel" aria-labelledby="nav-two-eg1-tab">
        <JobBid />
      </div>

      <div class="tab-pane fade" id="nav-three-eg1" role="tabpanel" aria-labelledby="nav-three-eg1-tab">
        <SeekerBid />
      </div>
      <div class="tab-pane fade" id="nav-four-eg1" role="tabpanel" aria-labelledby="nav-four-eg1-tab">
        <JobBid />
      </div>
    </div>
    <!-- End Tab Content -->

    <div class="text-center">
      <a class="btn btn-outline-primary" href="/viec-lam">Danh sách việc làm <i
          class="bi-chevron-right small ms-1"></i></a>
    </div>
  </div>
</template>

<script>
import CompanyList from './TemplateParts/CompanyList.vue';
import JobBid from './TemplateParts/JobBid.vue';
import SeekerBid from './TemplateParts/SeekerBid.vue';
export default {
  components: {
    CompanyList,
    JobBid,
    SeekerBid
  }
}
</script>
