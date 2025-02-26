<template>
  <div>
    <div class="ps-lg-4">
      <!-- Sticky Block -->
      <div id="stickyBlockStartPointEg4">
        <div ref="stickyBlock" class="js-sticky-block">
          <!-- Card -->
          <div class="card card-bordered">
            <div class="card-body">
              <div class="mb-5">
                <h3>Search millions of resumes across your industry and location.</h3>
              </div>

              <div class="d-grid mb-5">
                <a class="btn btn-primary" href="#">Select a subscription</a>
              </div>

              <img class="card-img-bottom" src="/assets/svg/illustrations/oc-chatting.svg" alt="Image Description">
            </div>
          </div>
          <!-- End Card -->
        </div>
      </div>
      <!-- End Sticky Block -->
    </div>
  </div>
</template>

<script>
import HSStickyBlock from "@/assets/front4/vendor/hs-sticky-block/src/js/hs-sticky-block.js";

export default {
  mounted() {
    this.initStickyBlock();
  },
  methods: {
    initStickyBlock() {
      new HSStickyBlock(this.$refs.stickyBlock, {
        parentSelector: "#stickyBlockStartPointEg4",
        breakpoint: "lg",
        startPoint: "#stickyBlockStartPointEg4",
        endPoint: "#stickyBlockEndPointEg4",
        stickyOffsetTop: 20,
        stickyOffsetBottom: 20,
        targetSelector: document.getElementById("header")?.classList.contains("navbar-fixed")
          ? "#header"
          : null
      });
    }
  }
};
</script>

<style scoped>
/* Add any additional styles if needed */
</style>
