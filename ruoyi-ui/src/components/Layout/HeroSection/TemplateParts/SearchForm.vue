<template>
  <div>
  <form>
    <!-- Input Card -->
    <div class="input-card input-card-sm">
      <div class="input-card-form">
        <label for="jobTitleForm" class="form-label visually-hidden">Vị trí, mức lương...</label>
        <div class="input-group input-group-merge">
          <span class="input-group-prepend input-group-text">
            <i class="bi-search"></i>
          </span>
          <input type="text" class="form-control" id="jobTitleForm" placeholder="Vị trí, mức lương..."
            aria-label="Job, title, skills, or company">
        </div>
      </div>

      <div class="input-card-form">
        <!-- Select -->
        <select class="form-select form-select-lg" aria-label=".form-select-lg example">
          <option selected>Tất cả các tỉnh</option>
          <option value="1">One</option>
          <option value="2">Two</option>
          <option value="3">Three</option>
        </select>
        <!-- End Select -->
      </div>
      <div class="input-card-form">
        <!-- Select -->
        <select class="form-select form-select-lg" aria-label=".form-select-lg example">
          <option selected>Tất cả ngành nghề</option>
          <option value="1">One</option>
          <option value="2">Two</option>
          <option value="3">Three</option>
        </select>
      </div>
      <button type="button" class="btn btn-primary">Tìm</button>
    </div>
    <!-- End Input Card -->
  </form>

  <p class="form-text">Đã có 125,000 công việc đăng tuyển</p>
  </div>
</template>


