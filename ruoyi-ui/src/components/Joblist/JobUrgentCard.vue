<template>
  <div class="col mb-5">
    <!-- Card -->
    <div class="card card-bordered h-100">
      <!-- Card Body -->
      <div class="card-body card-body-job pt-3">
        <div class="row mb-3">
          <div class="col">
            <!-- Media -->
            <div class="d-flex align-items-top">
              <div class="flex-shrink-0">
                <img class="avatar avatar-sm avatar-4x3 mt-2" :src="job.companyLogo" alt="Company Logo">
              </div>

              <div class="flex-grow-1 ms-3">
                <h6 class="card-title">

                  <a class="text-dark" :href="job.jobLink">{{ job.jobTitle }}</a>
                  <img v-if="job.isClaimed" class="avatar avatar-xss ms-1" :src="job.claimedBadge" alt="Claimed Profile">
                </h6>
                <p class="fw-light">
                  <a class="text-dark" :href="job.jobLink">{{ job.company }}</a>
                </p>
                <span class="badge bg-soft-info text-info me-2">
                  <span class="legend-indicator" :class="job.jobTypeClass"></span>
                  {{ job.jobType }}
                </span>
              </div>
            </div>
            <!-- End Media -->
          </div>
          <!-- End Col -->
        </div>
        <!-- End Row -->
      </div>
      <!-- End Card Body -->

      <!-- Card Footer -->
      <div class="card-footer py-2">
        <ul class="list-inline list-separator small text-body">
          <li class="list-inline-item">{{ job.postedTime }}</li>
          <li class="list-inline-item">{{ job.location }}</li>
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
    job: Object
  }
};
</script>

<style scoped>
.card-body-job {
  padding-bottom: 0;
  border-bottom: 1px solid #f1f1f1;
}
</style>
