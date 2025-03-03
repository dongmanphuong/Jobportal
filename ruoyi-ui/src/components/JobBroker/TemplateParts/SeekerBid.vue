<template>
  <div class="container content-space-0 content-space-lg-1">

    <!-- Companies Grid -->
    <div class="row gx-3 mx-n2 mb-3">
      <div v-for="(topcv, index) in topcvs" :key="index" class="col-sm-6 mb-3">
        <!-- Card -->
        <div class="card card-bordered h-100">
          <!-- Card Body -->
          <div class="card-body card-body-job pt-3">
            <div class="row">
              <div class="col">
                <!-- Media -->
                <div class="d-flex align-items-top">
                  <div class="flex-shrink-0">
                    <img class="avatar avatar-sm avatar-4x3 mt-2" :src="topcv.seekerImg" alt="Seeker image">
                  </div>

                  <div class="flex-grow-1 ms-3">
                    <h6 class="card-title">
                      <a class="text-dark" :href="topcv.seekerLink">{{ topcv.seekerTitle }}</a>
                    </h6>
                    <p class="fw-light">
                      Ngành nghề: <a class="text-dark" href="#">{{ topcv.seekerIndustry }}</a>
                    </p>
                    <span class="badge bg-soft-info text-info me-2">
                      <span class="legend-indicator bg-info"></span>{{ topcv.postedTime }}
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
        </div>
        <!-- End Card -->
      </div>
    </div>
    <!-- End Row -->
    <div class="text-center">
      <a class="btn btn-outline-primary" href="#">
        Xem thêm hồ sơ <i class="bi-chevron-right small ms-1"></i>
      </a>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      topcvs: [
        {
          seekerIndustry: "Xây dựng",
          seekerImg: "/images/cv/u1.jpg",
          seekerTitle: "Công nhân xây",
          seekerLink: "#",
          postedTime: "7 giờ trước",
        },
        {
          seekerIndustry: "Vận chuyển",
          seekerImg: "/images/cv/u2.jpg",
          seekerTitle: "Lái xe tải",
          seekerLink: "#",
          postedTime: "7 giờ trước",
        },
        {
          seekerIndustry: "IT phần mềm",
          seekerImg: "/images/cv/u3.jpg",
          seekerTitle: "Code backend C#, PHP, Java",
          seekerLink: "#",
          postedTime: "7 giờ trước",
        },
        {
          seekerIndustry: "IT phần cứng",
          seekerImg: "/images/cv/u1.jpg",
          seekerTitle: "Quản trị mạng",
          seekerLink: "#",
          postedTime: "7 giờ trước",
        },
        {
          seekerIndustry: "Điện/Điện tử",
          seekerImg: "/images/cv/u2.jpg",
          seekerTitle: "Kỹ sư cơ điện",
          seekerLink: "#",
          postedTime: "7 giờ trước",
        },
        {
          seekerIndustry: "Marketing/Sale",
          seekerImg: "/images/cv/u3.jpg",
          seekerTitle: "Bán hàng",
          seekerLink: "#",
          postedTime: "7 giờ trước",
        }
      ]
    };
  }
};
</script>
