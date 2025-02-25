<template>
  <div class="card card-bordered">
    <div class="card-body">
      <div class="d-sm-flex">
        <div class="d-flex align-items-center align-items-sm-start mb-3">
          <div class="flex-shrink-0">
            <img class="avatar avatar-sm avatar-4x3" :src="job.image" :alt="job.image" />
          </div>
          <div class="d-sm-none flex-grow-1 ms-3">
            <h6 class="card-title">
              <a class="text-dark" href="#">{{ job.company }}</a>
            </h6>
          </div>
        </div>

        <div class="flex-grow-1 ms-sm-3">
          <div class="row">
            <div class="col col-md-8">
              <h3 class="card-title">
                <a class="text-dark" href="#">{{ job.position }}</a>
              </h3>
              <div class="d-none d-sm-inline-block">
                <h6 class="card-title">
                  <a class="text-dark" href="#">{{ job.company }}</a>
                </h6>
              </div>
            </div>

            <div class="col-auto order-md-3">
              <div class="form-check form-check-bookmark">
                <input class="form-check-input" type="checkbox" :id="'jobBookmark' + job.id" />
                <label class="form-check-label" :for="'jobBookmark' + job.id">
                  <span class="form-check-bookmark-default">
                    <i class="bi-star"></i>
                  </span>
                  <span class="form-check-bookmark-active">
                    <i class="bi-star-fill"></i>
                  </span>
                </label>
              </div>
            </div>

            <div class="col-12 col-md mt-3 mt-md-0">
              <span class="d-block small text-body mb-1">{{ job.salary }}</span>
              <span class="badge bg-soft-info text-info me-2">
                <span class="legend-indicator bg-info"></span>{{ job.type }}
              </span>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="card-footer pt-0">
      <ul class="list-inline list-separator small text-body">
        <li class="list-inline-item">Posted {{ job.postedTime }}</li>
        <li class="list-inline-item">{{ job.location }}</li>
        <li class="list-inline-item">{{ job.jobType }}</li>
      </ul>
    </div>
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
