<template>
  <!-- Hero -->
<div class="position-relative gradient-x-three-sm-primary rounded-2 content-space-t-md-1 content-space-b-md-2 mx-md-10">
  <div class="container position-relative content-space-t-2 content-space-t-lg-3 content-space-b-1">
    <div class="row position-relative zi-2">
      <div class="col-lg-8">
        <!-- Heading -->
        <div class="w-lg-75 text-center text-lg-start mb-5 mb-lg-7">
          <p class="display-6">Trung Tâm Dịch Vụ</p>
          <h1 class="display-4"><span class="text-primary text-highlight-warning">Việc Làm</span> Bắc Kạn</h1>
            <p class="">Tổ 8A, phường Phùng Chí Kiên, thành phố Bắc Kạn, tỉnh Bắc Kạn</p>
        </div>
        <!-- End Heading -->

        <form>
          <!-- Input Card -->
          <div class="input-card input-card-sm">
            <div class="input-card-form">
              <label for="jobTitleForm" class="form-label visually-hidden">Tên công việc, kỹ năng hoặc tên công ty</label>
              <div class="input-group input-group-merge">
                <span class="input-group-prepend input-group-text">
                  <i class="bi-search"></i>
                </span>
                <input type="text" class="form-control" id="jobTitleForm" placeholder="Công việc, kỹ năng hoặc tên công ty" aria-label="Job, title, skills, or company">
              </div>
            </div>

            <div class="input-card-form">
              <label for="cityForm" class="form-label visually-hidden">Quận, Huyện hoặc thành phố</label>
              <div class="input-group input-group-merge">
                <span class="input-group-prepend input-group-text">
                  <i class="bi-geo-alt"></i>
                </span>
                <input type="text" class="form-control" id="cityForm" placeholder="Quận, Huyện hoặc thành phố" aria-label="City, state, or zip">
              </div>
            </div>
            <button type="button" class="btn btn-primary">Tìm</button>
          </div>
          <!-- End Input Card -->
        </form>

        <p class="form-text">Đã có 125,000 công việc đăng tuyển</p>
      </div>
      <!-- End Col -->
    </div>
    <!-- End Row -->

    <div class="d-none d-lg-block col-lg-6 position-lg-absolute top-0 end-0">
      <img class="img-fluid rounded-2" src="/images/backan-banner.jpg" alt="Image Description">

      <!-- SVG Shape -->
      <div class="position-absolute top-0 start-0 zi-n1 mt-n6 ms-n7" style="width: 10rem;">
        <svg xmlns="http://www.w3.org/2000/svg" x="0px" y="0px" viewBox="0 0 335.2 335.2" width="100" height="100">
          <circle fill="#FFC107" opacity=".7" cx="167.6" cy="167.6" r="130.1"/>
        </svg>
      </div>
      <!-- End SVG Shape -->

      <!-- SVG Shape -->
      <div class="position-absolute bottom-0 end-0 zi-n1 mb-n6 me-n10" style="width: 10rem;">
        <svg xmlns="http://www.w3.org/2000/svg" x="0px" y="0px" viewBox="0 0 335.2 335.2" width="120" height="120">
          <circle fill="none" stroke="#377dff" stroke-width="75" cx="167.6" cy="167.6" r="130.1"/>
        </svg>
      </div>
      <!-- End SVG Shape -->
    </div>
  </div>
</div>
<!-- End Hero -->
</template>
