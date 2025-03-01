<template>
  <div>
    <div class="ps-lg-4">
      <!-- Sticky Block -->
      <div id="stickyBlockStartPointEg4">
        <div ref="stickyBlock" class="js-sticky-block">
          <!-- Card -->
          <div class="card card-bordered">
            <div class="card-body">
              <!--Media-->
              <div class="d-sm-flex mb-3 border-bottom">
                <div class="flex-shrink-0 mb-2 mb-sm-0">
                  <a href="#">
                    <img class="avatar avatar-lg mb-3" src="/images/company/cty-sinte.png"
                      alt="Image Description">
                  </a>
                </div>

                <div class="flex-grow-1 ms-sm-4">


                  <ul class="list-inline list-separator d-flex align-items-center mb-2">
                    <li class="list-inline-item">
                      <a class="link" href="../demo-jobs/employer.html">CÔNG TY TNHH CÔNG NGHIỆP SINTE NAM ĐỊNH</a>
                    </li>

                  </ul>


                </div>
              </div>
              <!--End media-->
              <h5>Thông tin liên hệ</h5>
              <p class="fw-bold">Trần Thị Khánh Ly</p>
              <p>Lô số 59-69, Cụm công nghiệp An Xá, xã Lộc An, TP. Nam Định, tỉnh Nam Định</p>
              <p>Điện thoại: <br />0932261979</p>
              <p>Email: <br />lyttk@lengerseafoodsvietnam.com</p>

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
