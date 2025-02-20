<template>
  <div class="container">
    <!-- 🔍 Tìm kiếm -->
    <div class="search-bar">
      <h3 class="title">📂 Danh sách hồ sơ ứng viên (13)</h3>
      <div class="search-box">
        <input v-model="searchText" type="text" placeholder="Tìm kiếm..." class="search-input" @keyup.enter="searchCandidates">
        <button @click="searchCandidates" class="search-btn">🔍</button>
      </div>
    </div>

    <!-- 📌 Bộ lọc -->
    <div class="filter-container">
      <v-select v-model="selectedPosition" :options="positionOptions" placeholder="Chức vụ"></v-select>
      <v-select v-model="selectedIndustry" :options="industryOptions" placeholder="Ngành nghề"></v-select>
      <v-select v-model="selectedLocation" :options="locationOptions" placeholder="Tỉnh/TP"></v-select>
      <v-select v-model="selectedSalary" :options="salaryOptions" placeholder="Mức lương"></v-select>
      <v-select v-model="selectedEducation" :options="educationOptions" placeholder="Trình độ"></v-select>
      <v-select v-model="selectedExperience" :options="experienceOptions" placeholder="Kinh nghiệm"></v-select>
      <v-select v-model="selectedGender" :options="genderOptions" placeholder="Giới tính"></v-select>
    </div>
  </div>
</template>

<script>
import vSelect from "vue-select";
import "vue-select/dist/vue-select.css";

export default {
  components: { vSelect },
  data() {
    return {
      searchText: "",
      selectedPosition: "",
      selectedIndustry: "",
      selectedLocation: "",
      selectedSalary: "",
      selectedEducation: "",
      selectedExperience: "",
      selectedGender: "",
      positionOptions: ["Tất cả Chức vụ", "Chuyên viên", "Trưởng phòng", "Công nhân"],
      industryOptions: ["Tất cả Ngành nghề", "IT - Phần mềm", "Marketing"],
      locationOptions: ["Tất cả tỉnh thành", "Hà Nội", "Hồ Chí Minh", "Đà Nẵng"],
      salaryOptions: ["Tất cả Mức lương", "3-5 triệu", "10-12 triệu"],
      educationOptions: ["Tất cả Trình độ", "Tiểu học", "Đại học"],
      experienceOptions: ["Tất cả Kinh nghiệm", "Dưới 1 năm", "2-5 năm"],
      genderOptions: ["Tất cả Giới tính", "Nam", "Nữ"],
    };
  },
  methods: {
    searchCandidates() {
      alert(`Tìm kiếm: ${this.searchText}`);
    },
  },
};
</script>

<style scoped>
.container {
  max-width: 100%;
  width: 1000px; /* Cùng size với bảng */
  margin: auto;
  padding: 20px;
  background: #fff;
  border-radius: 8px;
  box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
}

.search-bar {
  display: flex;
  justify-content: space-between;
  align-items: center;
  margin-bottom: 15px;
}

.search-box {
  display: flex;
  width: 60%;
  gap: 10px;
}

.search-input {
  flex: 1;
  padding: 10px;
  border: 1px solid #ccc;
  border-radius: 5px;
}

.search-btn {
  background: #007bff;
  color: white;
  padding: 10px;
  border-radius: 5px;
}

.filter-container {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
  gap: 10px;
  margin-top: 15px;
}

@media (max-width: 768px) {
  .search-bar {
    flex-direction: column;
    align-items: flex-start;
  }

  .search-box {
    width: 100%;
  }
}
</style>
