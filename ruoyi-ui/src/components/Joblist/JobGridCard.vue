<template>
  <div class="col mb-5">
    <div class="card card-bordered h-100">
        <!-- Card Body -->
        <div class="card-body">
          <div class="row mb-3">
            <div class="col">
              <!-- Media -->
              <div class="d-flex align-items-center">
                <div class="flex-shrink-0">
                  <img class="avatar avatar-sm avatar-4x3" :src="job.image" :alt="job.image" />
                </div>

                <div class="flex-grow-1 ms-3">
                  <h6 class="card-title">
                    <a class="text-dark" href="../demo-jobs/employer.html">{{ job.company }}</a>
                    <img class="avatar avatar-xss ms-1" src="/assets/svg/illustrations/top-vendor.svg" alt="Review rating" data-toggle="tooltip" data-placement="top" title="Claimed profile">
                  </h6>
                </div>
              </div>
              <!-- End Media -->
            </div>
            <!-- End Col -->

            <div class="col-auto">
              <!-- Checkbbox Bookmark -->
              <div class="form-check form-check-bookmark">
                <input class="form-check-input" type="checkbox" value="" id="jobsCardBookmarkCheck1">
                <label class="form-check-label" for="jobsCardBookmarkCheck1">
                  <span class="form-check-bookmark-default" data-bs-toggle="tooltip" data-bs-placement="top" title="Save this job">
                    <i class="bi-star"></i>
                  </span>
                  <span class="form-check-bookmark-active" data-bs-toggle="tooltip" data-bs-placement="top" title="Saved">
                    <i class="bi-star-fill"></i>
                  </span>
                </label>
              </div>
              <!-- End Checkbbox Bookmark -->
            </div>
            <!-- End Col -->
          </div>
          <!-- End Row -->

          <h3 class="card-title">
            <a class="text-dark" href="#">{{ job.position }}</a>
          </h3>

          <span class="d-block small text-body mb-1">{{ job.salary }}</span>

          <span class="badge bg-soft-info text-info me-2">
            <span class="legend-indicator bg-info"></span>Remote
          </span>
        </div>
        <!-- End Card Body -->

        <!-- Card Footer -->
        <div class="card-footer pt-0">
        <ul class="list-inline list-separator small text-body">
          <li class="list-inline-item">Posted {{ job.postedTime }}</li>
          <li class="list-inline-item">{{ job.location }}</li>
          <li class="list-inline-item">{{ job.jobType }}</li>
        </ul>
      </div>
        <!-- End Card Footer -->
      </div>
      <!-- End Card -->

  </div>
</template>

<script>
export default {
  props: {
    job: {
      type: Object,
      required: true
    }
  }
};
</script>
