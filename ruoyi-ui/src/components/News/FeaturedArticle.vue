<template>
  <div class="card card-stretched-vertical mb-10">
    <div class="row gx-0">
      <!-- Hình ảnh lớn -->
      <div class="col-lg-8">
        <div class="overflow-hidden">
          <img class="card-img" :src="article.image" alt="Image Description">

          <!-- Shape cho desktop -->
          <div class="shape shape-end d-none d-lg-block zi-1">
            <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 100.1 1920" height="101%">
              <path fill="#fff" d="M0,1920c0,0,93.4-934.4,0-1920h100.1v1920H0z"/>
            </svg>
          </div>

          <!-- Shape cho mobile -->
          <div class="shape shape-bottom d-lg-none zi-1" style="margin-bottom: -.25rem">
            <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1920 100.1">
              <path fill="#fff" d="M0,0c0,0,934.4,93.4,1920,0v100.1H0L0,0z"></path>
            </svg>
          </div>
        </div>
      </div>
      <!-- End Col -->

      <div class="col-lg-4">
        <!-- Nội dung bài viết -->
        <div class="card-body">
          <h3 class="card-title">
            <a class="text-dark" :href="article.link">{{ article.title }}</a>
          </h3>

          <p class="card-text">{{ article.description }}</p>

          <!-- Tác giả & ngày đăng -->
          <div class="card-footer">
            <div class="d-flex align-items-center">
              <div class="flex-shrink-0 avatar-group avatar-group-xs">
                <a v-for="(author, index) in article.authors" :key="index"
                   class="avatar avatar-xs avatar-circle"
                   href="#"
                   data-bs-toggle="tooltip"
                   :title="author.name">
                  <img class="avatar-img" :src="author.avatar" alt="Author Image">
                </a>
              </div>

              <div class="flex-grow-1">
                <div class="d-flex justify-content-end">
                  <p class="card-text">{{ article.date }}</p>
                </div>
              </div>
            </div>
          </div>
          <!-- End Card Footer -->
        </div>
        <!-- End Card Body -->
      </div>
      <!-- End Col -->
    </div>
    <!-- End Row -->
  </div>
</template>

<script>
export default {
  props: {
    article: {
      type: Object,
      required: true
    }
  }
};
</script>
