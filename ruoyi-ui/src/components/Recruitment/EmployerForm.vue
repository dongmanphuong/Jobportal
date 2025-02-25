<template>
  <div class="container">
    <h2 class="title">THÔNG TIN DOANH NGHIỆP/NGƯỜI TUYỂN DỤNG</h2>

    <!-- Block 1: Thông tin người sử dụng lao động -->
    <section class="section">
      <h3 class="section-title">1. Thông tin người sử dụng lao động</h3>

      <!-- Tên doanh nghiệp -->
      <label class="label small-label">Tên doanh nghiệp *</label>
      <input v-model="companyName" type="text" class="input" />
      <!-- Thông báo lỗi nếu trống -->
      <div v-if="errors.companyName" class="error">{{ errors.companyName }}</div>

      <!-- Chủ thể tuyển dụng -->
      <label class="label small-label">Chủ thể tuyển dụng *</label>
      <v-select
        v-model="employmentType"
        :options="employmentOptions"
        label="label"
        placeholder="Chọn loại..."
        class="custom-select"
      ></v-select>
      <div v-if="errors.employmentType" class="error">{{ errors.employmentType }}</div>

      <!-- Mã số CMND/CCCD -->
      <label class="label small-label">Mã số CMND/CCCD *</label>
      <input v-model="idNumber" type="text" class="input" />
      <div v-if="errors.idNumber" class="error">{{ errors.idNumber }}</div>

      <!-- Loại hình doanh nghiệp -->
      <label class="label small-label">Loại hình doanh nghiệp *</label>
      <v-select
        v-model="companyType"
        :options="companyTypeOptions"
        label="label"
        placeholder="Chọn loại hình..."
        class="custom-select"
      ></v-select>
      <div v-if="errors.companyType" class="error">{{ errors.companyType }}</div>

      <!-- Địa chỉ (Tỉnh, Huyện, Xã) -->
      <label class="label small-label">Địa chỉ *</label>
      <div class="address-group">
        <v-select
          v-model="province"
          :options="provinceOptions"
          label="label"
          placeholder="Chọn tỉnh/thành phố..."
          class="custom-select"
        ></v-select>
        <div v-if="errors.province" class="error">{{ errors.province }}</div>

        <v-select
          v-model="district"
          :options="districtOptions"
          label="label"
          placeholder="Chọn quận/huyện..."
          class="custom-select"
        ></v-select>
        <div v-if="errors.district" class="error">{{ errors.district }}</div>

        <v-select
          v-model="ward"
          :options="wardOptions"
          label="label"
          placeholder="Chọn phường/xã..."
          class="custom-select"
        ></v-select>
        <!-- ward không bắt buộc, nên không check lỗi -->
      </div>

      <!-- Địa chỉ cụ thể -->
      <label class="label small-label">Địa chỉ cụ thể *</label>
      <textarea v-model="address" class="input"></textarea>
      <div v-if="errors.address" class="error">{{ errors.address }}</div>

      <!-- ... (Các trường khác) ... -->
      <!-- Điện thoại -->
      <div class="contact-group">
        <div class="contact-item">
          <label class="label small-label">Điện thoại *</label>
          <input v-model="phone" type="text" class="input" />
          <div v-if="errors.phone" class="error">{{ errors.phone }}</div>
        </div>

        <!-- Email -->
        <div class="contact-item">
          <label class="label small-label">Email *</label>
          <input v-model="email" type="email" class="input" />
          <div v-if="errors.email" class="error">{{ errors.email }}</div>
        </div>
      </div>

      <!-- Ngành kinh doanh chính -->
      <label class="label small-label">Ngành kinh doanh chính *</label>
      <v-select
        v-model="mainBusiness"
        :options="businessOptions"
        label="label"
        placeholder="Chọn ngành..."
        class="custom-select"
      ></v-select>
      <div v-if="errors.mainBusiness" class="error">{{ errors.mainBusiness }}</div>

      <!-- Quy mô lao động -->
      <div class="contact-group">
        <div class="contact-item">
          <label class="label small-label">Quy mô lao động *</label>
          <v-select
            v-model="workforceScale"
            :options="scaleOptions"
            label="label"
            placeholder="Chọn quy mô..."
            class="custom-select"
          ></v-select>
          <div v-if="errors.workforceScale" class="error">{{ errors.workforceScale }}</div>
        </div>
        <!-- Số lao động tuyển 6 tháng tới (không bắt buộc) -->
      </div>
    </section>

    <!-- Block 2: Đăng ký dịch vụ -->
    <section class="section">
      <h3 class="section-title">2. Đăng ký dịch vụ *</h3>
      <v-select
        v-model="dangkydichvu"
        :options="dangkydichvuOptions"
        label="label"
        placeholder="Chọn dịch vụ..."
        class="custom-select"
      ></v-select>
      <div v-if="errors.dangkydichvu" class="error">{{ errors.dangkydichvu }}</div>

      <input
        v-if="dangkydichvu === 'K'"
        v-model="dangkydichvunote"
        type="text"
        placeholder="Nhập chi tiết dịch vụ khác"
        class="input"
      />
    </section>

    <!-- Block 3: Thời gian đăng ký -->
    <section class="section">
      <h3 class="section-title">3. Thời gian đăng ký *</h3>
      <input v-model="registertime" type="datetime-local" class="input" readonly />
      <!-- Có thể không cần check vì readonly -->
    </section>

    <!-- Block 4: Thông tin người đại diện doanh nghiệp -->
    <section class="section">
      <h3 class="section-title">4. Thông tin người đại diện doanh nghiệp *</h3>
      <div class="name-position-group">
        <div class="name-item">
          <label class="label small-label">Họ tên *</label>
          <input v-model="name" type="text" class="input" />
          <div v-if="errors.name" class="error">{{ errors.name }}</div>
        </div>
        <div class="name-item">
          <label class="label small-label">Chức vụ</label>
          <input v-model="position" type="text" class="input" />
        </div>
      </div>

      <label class="label small-label">Điện thoại *</label>
      <input v-model="telephone" type="text" class="input" />
      <div v-if="errors.telephone" class="error">{{ errors.telephone }}</div>

      <label class="label small-label">Hình thức liên hệ khác (nếu có)</label>
      <input v-model="othercontact" type="text" class="input" />
    </section>

    <!-- Các nút điều hướng -->
    <div class="buttons">
      <button class="btn cancel">Quay lại</button>
      <button class="btn save" @click="submitForm">Lưu lại</button>
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
      // Các biến lưu giá trị input
      companyName: "",
      employmentType: "",
      idNumber: "",
      companyType: "",
      province: "",
      district: "",
      ward: "",
      address: "",
      phone: "",
      email: "",
      mainBusiness: "",
      workforceScale: "",
      dangkydichvu: "",
      dangkydichvunote: "",
      name: "",
      position: "",
      telephone: "",
      othercontact: "",
      registertime: new Date().toISOString().slice(0, 16),

      // Tùy chọn cho v-select
      employmentOptions: [
        { value: "Cá nhân", label: "Cá nhân (Bắt buộc CMND/CCCD)" },
        { value: "Doanh nghiệp", label: "Doanh nghiệp (Bắt buộc mã số thuế)" },
      ],
      companyTypeOptions: [
        { value: "Nhà nước", label: "Doanh nghiệp Nhà nước" },
        { value: "Tư nhân", label: "Doanh nghiệp Tư nhân" },
      ],
      provinceOptions: [
        { value: "HCM", label: "Hồ Chí Minh" },
        { value: "HN", label: "Hà Nội" },
        { value: "DN", label: "Đà Nẵng" },
      ],
      districtOptions: [
        { value: "Q1", label: "Quận 1" },
        { value: "Q2", label: "Quận 2" },
      ],
      wardOptions: [
        { value: "P1", label: "Phường 1" },
        { value: "P2", label: "Phường 2" },
      ],
      businessOptions: [
        { value: "NongLam", label: "Nông lâm nghiệp thủy sản" },
        { value: "KhaiKhoang", label: "Khai khoáng" },
      ],
      scaleOptions: [
        { value: "duoi10", label: "Dưới 10 lao động" },
        { value: "10-50", label: "10 đến 50 lao động" },
      ],
      dangkydichvuOptions: [
        { value: "TVPL", label: "Tư vấn pháp luật" },
        { value: "K", label: "Khác" },
      ],

      // Đối tượng lưu thông báo lỗi
      errors: {}
    };
  },
  methods: {
    submitForm() {
      // Xóa các lỗi cũ trước khi kiểm tra
      this.errors = {};

      // Kiểm tra các trường
      if (!this.companyName) {
        this.errors.companyName = "Input data should be not null.";
      }
      if (!this.employmentType) {
        this.errors.employmentType = "Input data should be not null.";
      }
      if (!this.idNumber) {
        this.errors.idNumber = "Input data should be not null.";
      }
      if (!this.companyType) {
        this.errors.companyType = "Input data should be not null.";
      }
      if (!this.province) {
        this.errors.province = "Input data should be not null.";
      }
      if (!this.district) {
        this.errors.district = "Input data should be not null.";
      }
      if (!this.address) {
        this.errors.address = "Input data should be not null.";
      }
      if (!this.phone) {
        this.errors.phone = "Input data should be not null.";
      }
      if (!this.email) {
        this.errors.email = "Input data should be not null.";
      }
      if (!this.mainBusiness) {
        this.errors.mainBusiness = "Input data should be not null.";
      }
      if (!this.workforceScale) {
        this.errors.workforceScale = "Input data should be not null.";
      }
      if (!this.dangkydichvu) {
        this.errors.dangkydichvu = "Input data should be not null.";
      }
      if (!this.name) {
        this.errors.name = "Input data should be not null.";
      }
      if (!this.telephone) {
        this.errors.telephone = "Input data should be not null.";
      }

      // Nếu không có lỗi, ta có thể tiến hành xử lý (lưu dữ liệu)
      if (Object.keys(this.errors).length === 0) {
        alert("Lưu thành công!");
        // Thực hiện gửi dữ liệu lên server, v.v.
      }
    },
  },
};
</script>

<style scoped>
.container {
  max-width: 900px;
  margin: auto;
  padding: 15px;
  font-family: Arial, sans-serif;
  background: #fff;
  border-radius: 5px;
  box-shadow: 0px 0px 8px rgba(0, 0, 0, 0.1);
}
.title {
  font-size: 16px;
  margin-bottom: 10px;
  text-align: center;
  font-weight: 600;
}
.section {
  border: 1px solid #eee;
  padding: 15px;
  margin-bottom: 20px;
  border-radius: 5px;
  background: #fafafa;
}
.section-title {
  font-size: 14px;
  font-weight: 600;
  margin-bottom: 12px;
  color: #333;
  padding-bottom: 5px;
  border-bottom: 1px solid #ddd;
}
.label {
  display: block;
  margin: 8px 0 4px;
}
.small-label {
  font-size: 12px;
  color: #555;
  font-weight: 500;
}
/* Input */
.input {
  width: 100%;
  font-size: 13px;
  padding: 6px;
  margin-bottom: 8px;
  box-sizing: border-box;
  border: 1px solid #ccc;
  border-radius: 3px;
}
/* Tắt border mặc định của v-select */
.custom-select {
  margin-bottom: 8px;
}
.custom-select .vs__dropdown-toggle {
  border: none !important;
  box-shadow: none !important;
  background: transparent !important;
  outline: none !important;
}
/* Lỗi hiển thị màu đỏ */
.error {
  color: red;
  font-size: 12px;
  margin-bottom: 4px;
}
/* Tỉnh/Huyện/Xã trên 1 dòng */
.address-group {
  display: flex;
  gap: 8px;
  flex-wrap: wrap;
}
.address-group .custom-select {
  flex: 1;
  min-width: 120px;
}
/* Điện thoại + Email */
.contact-group {
  display: flex;
  gap: 8px;
  flex-wrap: nowrap;
}
.contact-item {
  flex: 1;
}
/* Họ tên + Chức vụ */
.name-position-group {
  display: flex;
  gap: 8px;
  flex-wrap: nowrap;
}
.name-position-group .name-item {
  flex: 1;
}
.checkbox-group {
  margin-bottom: 8px;
}
.buttons {
  display: flex;
  justify-content: center;
  gap: 15px;
  margin-top: 20px;
}
.btn {
  padding: 6px 12px;
  border: none;
  cursor: pointer;
  border-radius: 4px;
  font-size: 13px;
  font-weight: 500;
}
.cancel {
  background: #ccc;
  color: #333;
}
.save {
  background: #4caf50;
  color: white;
}
.save:hover {
  background: #43a047;
}
</style>
