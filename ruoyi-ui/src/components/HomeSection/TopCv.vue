<template>
  <div class="container content-space-0 content-space-lg-1">
    <!-- Heading -->
    <div class="w-md-100 w-lg-75 text-center mx-md-auto mb-1">
      <h2>Hồ sơ xin việc</h2>
      <p>Thông tin cá nhân: Họ và tên, ngày tháng năm sinh, SĐT, email, địa chỉ cư trú...</p>
    </div>
    <!-- End Heading -->

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
                      Ngành nghề: <a class="text-dark" href="#">{{ topcv.seekerTitle }}</a>
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
          seekerName: "Công Ty TNHH Đầu Tư Và Thương Mại An Lành",
          seekerImg: "/images/cv/u1.jpg",
          seekerTitle: "Cơ điện",
          seekerLink: "#",
          postedTime: "7 giờ trước",
        },
        {
          seekerName: "Công Ty TNHH Đầu Tư Và Thương Mại An Lành",
          seekerImg: "/images/cv/u2.jpg",
          seekerTitle: "Cơ điện",
          seekerLink: "#",
          postedTime: "7 giờ trước",
        },
        {
          seekerName: "Công Ty TNHH Đầu Tư Và Thương Mại An Lành",
          seekerImg: "/images/cv/u3.jpg",
          seekerTitle: "Cơ điện",
          seekerLink: "#",
          postedTime: "7 giờ trước",
        },
        {
          seekerName: "Công Ty TNHH Đầu Tư Và Thương Mại An Lành",
          seekerImg: "/images/cv/u1.jpg",
          seekerTitle: "Cơ điện",
          seekerLink: "#",
          postedTime: "7 giờ trước",
        },
        {
          seekerName: "Công Ty TNHH Đầu Tư Và Thương Mại An Lành",
          seekerImg: "/images/cv/u2.jpg",
          seekerTitle: "Cơ điện",
          seekerLink: "#",
          postedTime: "7 giờ trước",
        },
        {
          seekerName: "Công Ty TNHH Đầu Tư Và Thương Mại An Lành",
          seekerImg: "/images/cv/u3.jpg",
          seekerTitle: "Cơ điện",
          seekerLink: "#",
          postedTime: "7 giờ trước",
        }
      ]
    };
  }
};
</script>
