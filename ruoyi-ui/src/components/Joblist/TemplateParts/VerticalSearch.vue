<template>
  <div>
    <div class="box-search-job search-work row g-3">
      <div class="col-md-12">
        <input v-model="textSearch" type="text" class="form-control" placeholder="Nhập từ khóa" />
      </div>
      <div class="col-md-12">
        <select v-model="selectedPosition" class="form-select">
          <option value="0">Tất cả Vị trí</option>
        </select>
      </div>
      <div class="col-md-12">
        <select v-model="selectedIndustry" class="form-select">
          <option value="">Tất cả Ngành nghề</option>
          <option v-for="industry in industries" :key="industry.value" :value="industry.value">{{ industry.label }}</option>
        </select>
      </div>
      <div class="col-md-12">
        <select v-model="selectedLocation" class="form-select">
          <option value="">Tất cả Tỉnh thành</option>
          <option v-for="location in locations" :key="location.value" :value="location.value">{{ location.label }}</option>
        </select>
      </div>
      <div class="col-md-12">
        <select v-model="selectedSalary" class="form-select">
          <option value="">Tất cả Mức lương</option>
          <option v-for="salary in salaries" :key="salary.value" :value="salary.value">{{ salary.label }}</option>
        </select>
      </div>
      <div class="col-md-12">
        <select v-model="selectedEducation" class="form-select">
          <option value="">Tất cả Trình độ</option>
          <option v-for="education in educations" :key="education.value" :value="education.value">{{ education.label }}</option>
        </select>
      </div>
      <div class="col-md-12">
        <select v-model="selectedExperience" class="form-select">
          <option value="">Tất cả Kinh nghiệm</option>
          <option v-for="experience in experiences" :key="experience.value" :value="experience.value">{{ experience.label }}</option>
        </select>
      </div>
      <div class="col-md-12">
        <select v-model="selectedGender" class="form-select">
          <option value="-1">Tất cả Giới tính</option>
          <option value="1">Nam</option>
          <option value="0">Nữ</option>
        </select>
      </div>
      <div class="col-md-12 text-center">
        <button @click="searchJobs" class="btn btn-primary">Tìm kiếm việc làm</button>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      textSearch: "",
      selectedPosition: "0",
      selectedIndustry: "",
      selectedLocation: "",
      selectedSalary: "",
      selectedEducation: "",
      selectedExperience: "",
      selectedGender: "-1",
      industries: [
        { value: "34e26f3f", label: "Bán hàng" },
        { value: "f4ef2ff6", label: "Bán hàng kỹ thuật" },
        { value: "bac01121", label: "Bán lẻ/Bán sỉ" },
        { value: "7d2e4a9f", label: "Bảo hiểm" },
        { value: "13811e39", label: "Bất động sản" },
        { value: "b232396b", label: "Khác" }
      ],
      locations: [
        { value: "1", label: "Hà Nội" },
        { value: "2", label: "Hà Giang" },
        { value: "3", label: "Cao Bằng" }
      ],
      salaries: [
        { value: "7ff812b5", label: "Thoả thuận" },
        { value: "8a49c13a", label: "3-5 triệu" },
        { value: "e757c807", label: "15-20 triệu" }
      ],
      educations: [
        { value: "1024", label: "Chưa tốt nghiệp tiểu học" },
        { value: "1025", label: "Tốt nghiệp tiểu học" },
        { value: "1027", label: "Tốt nghiệp THPT" }
      ],
      experiences: [
        { value: "d2315a91", label: "Chưa có kinh nghiệm" },
        { value: "8815044d", label: "Dưới 1 năm" },
        { value: "d2315a92", label: "Từ 1 - 2 năm" }
      ]
    };
  },
  methods: {
    searchJobs() {
      console.log("Tìm kiếm việc làm với dữ liệu:", {
        textSearch: this.textSearch,
        selectedPosition: this.selectedPosition,
        selectedIndustry: this.selectedIndustry,
        selectedLocation: this.selectedLocation,
        selectedSalary: this.selectedSalary,
        selectedEducation: this.selectedEducation,
        selectedExperience: this.selectedExperience,
        selectedGender: this.selectedGender
      });
    }
  }
};
</script>
