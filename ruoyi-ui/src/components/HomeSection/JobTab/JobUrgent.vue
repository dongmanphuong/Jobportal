<template>
  <div class="row row-cols-1 row-cols-sm-3">
    <JobUrgentCard
      v-for="(job, index) in jobs"
      :key="index"
      :job="job"
    />
  </div>
</template>

<script>
import JobUrgentCard from '../../Joblist/JobUrgentCard.vue';

export default {
  components: { JobUrgentCard },
  data() {
    return {
      jobs: [
        {
          company: "Công Ty TNHH Đầu Tư Và Thương Mại An Lành",
          companyLogo: "/images/company/cong-ty-tnhh-dau-tu-va-thuong-mai-an-lanh.jpg",
          jobTitle: "Cơ điện",
          jobLink: "/viec-lam/chi-tiet",
          isClaimed: true,
          claimedBadge: "/assets/svg/illustrations/top-vendor.svg",
          jobType: "Toàn thời gian",
          jobTypeClass: "bg-info",
          postedTime: "7 giờ trước",
          location: "Bắc Kạn"
        },
        {
          company: "Công ty CP Bảo Linh",
          companyLogo: "/images/company/cong-ty-cp-bao-linh.jpg",
          jobTitle: "Công nhân may",
          jobLink: "/viec-lam/chi-tiet",
          isClaimed: false,
          jobType: "Toàn thời gian",
          jobTypeClass: "bg-warning",
          postedTime: "1 ngày trước",
          location: "Bắc Kạn"
        },
        {
          company: "CÔNG TY TNHH ĐIỆN TỬ - TIN HỌC PHI DŨNG",
          companyLogo: "/images/company/cong-ty-tnhh-dien-tu-tin-hoc-phi-dung.png",
          jobTitle: "Nhân viên kế toán",
          jobLink: "/viec-lam/chi-tiet",
          jobType: "Toàn thời gian",
          jobTypeClass: "bg-info",
          postedTime: "7 giờ trước",
          location: "Bắc Kạn"
        },
        {
          company: "CÔNG TY TNHH CÔNG NGHIỆP SINTE NAM ĐỊNH",
          companyLogo: "/images/company/cty-sinte.png",
          jobTitle: "Lao động kỹ thuật - Nhân viên kiểm định chất lượng",
          jobLink: "/viec-lam/chi-tiet",
          isClaimed: false,
          jobType: "Toàn thời gian",
          jobTypeClass: "bg-warning",
          postedTime: "1 ngày trước",
          location: "Bắc Kạn"
        },
        {
          company: "Công Ty TNHH Đầu Tư Và Thương Mại An Lành",
          companyLogo: "/images/company/cong-ty-tnhh-dau-tu-va-thuong-mai-an-lanh.jpg",
          jobTitle: "Cơ điện",
          jobLink: "/viec-lam/chi-tiet",
          isClaimed: true,
          claimedBadge: "/assets/svg/illustrations/top-vendor.svg",
          jobType: "Toàn thời gian",
          jobTypeClass: "bg-info",
          postedTime: "7 giờ trước",
          location: "Bắc Kạn"
        },
        {
          company: "Công ty CP Bảo Linh",
          companyLogo: "/images/company/cong-ty-cp-bao-linh.jpg",
          jobTitle: "Công nhân may",
          jobLink: "/viec-lam/chi-tiet",
          isClaimed: false,
          jobType: "Toàn thời gian",
          jobTypeClass: "bg-warning",
          postedTime: "1 ngày trước",
          location: "Bắc Kạn"
        }
      ]
    };
  }
};
</script>
