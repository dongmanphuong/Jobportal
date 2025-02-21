<template>
  <div class="container">
    <h2 class="title">THÔNG TIN DOANH NGHIỆP/NGƯỜI TUYỂN DỤNG</h2>

    <section class="section">
      <h3 class="section-title">1. Thông tin người sử dụng lao động</h3>

      <label class="label small-label">Tên doanh nghiệp *</label>
      <input v-model="companyName" type="text" class="input" />

      <label class="label small-label">Chủ thể tuyển dụng *</label>
      <v-select v-model="employmentType" :options="employmentOptions" label="label" placeholder="Chọn loại..." class="custom-select"></v-select>

      <label class="label small-label">Mã số CMND/CCCD *</label>
      <input v-model="idNumber" type="text" class="input" />

      <label class="label small-label">Loại hình doanh nghiệp *</label>
      <v-select v-model="companyType" :options="companyTypeOptions" label="label" placeholder="Chọn loại hình..." class="custom-select"></v-select>

      <label class="label small-label">Địa chỉ *</label>
      <div class="address-group">
        <v-select v-model="province" :options="provinceOptions" label="label" placeholder="Chọn tỉnh/thành phố..." class="custom-select"></v-select>
        <v-select v-model="district" :options="districtOptions" label="label" placeholder="Chọn quận/huyện..." class="custom-select"></v-select>
        <v-select v-model="ward" :options="wardOptions" label="label" placeholder="Chọn phường/xã..." class="custom-select"></v-select>
      </div>

      <label class="label small-label">Địa chỉ cụ thể *</label>
      <textarea v-model="address" class="input"></textarea>

      <div class="checkbox-group">
        <label class="label small-label">
          <input type="checkbox" v-model="Isindustryzone" />
          Thuộc KCN
        </label>
      </div>

      <input v-if="Isindustryzone" v-model="industryzone" type="text" class="input" placeholder="Nhập tên KCN" />

      <label class="label small-label">Điện thoại *</label>
      <input v-model="phone" type="text" class="input" />

      <label class="label small-label">Email *</label>
      <input v-model="email" type="email" class="input" />

      <h3 class="section-title">2. Đăng ký dịch vụ *</h3>
      <v-select v-model="dangkydichvu" :options="dangkydichvuOptions" label="label" placeholder="Chọn dịch vụ..." class="custom-select"></v-select>

      <input v-if="dangkydichvu === 'K'" v-model="dangkydichvunote" type="text" placeholder="Nhập chi tiết dịch vụ khác" class="input" />

      <h3 class="section-title">3. Thời gian đăng ký *</h3>
      <input v-model="registertime" type="datetime-local" class="input" readonly/>

      <h3 class="section-title">4. Thông tin người đại diện doanh nghiệp *</h3>
      <label class="label small-label">Họ tên *</label>
      <input v-model="name" type="text" class="input" />
      
      <label class="label small-label">Chức vụ</label>
      <input v-model="position" type="text" class="input" />
      
      <label class="label small-label">Điện thoại *</label>
      <input v-model="telephone" type="text" class="input" />
      
      <label class="label small-label">Hình thức liên hệ khác (nếu có)</label>
      <input v-model="othercontact" type="text" class="input" />

      <div class="buttons">
        <button class="btn cancel">Quay lại</button>
        <button class="btn save" @click="submitForm">Lưu lại</button>
      </div>
    </section>
  </div>
</template>

<script>
import vSelect from "vue-select";
import "vue-select/dist/vue-select.css";

export default {
  components: { vSelect },
  data() {
    return {
      companyName: "",
      employmentType: "",
      idNumber: "",
      companyType: "",
      address: "",
      phone: "",
      email: "",
      Isindustryzone: false,
      industryzone: "",
      registertime: new Date().toISOString().slice(0, 16),
      dangkydichvu: "",
      dangkydichvunote: "",
      name: "",
      position: "",
      telephone: "",
      othercontact: "",
      province: "",
      district: "",
      ward: "",
      employmentOptions: [
        { value: "Cá nhân", label: "Cá nhân (Bắt buộc CMND/CCCD)" },
        { value: "Doanh nghiệp", label: "Doanh nghiệp (Bắt buộc mã số thuế)" }
      ],
      companyTypeOptions: [
        { value: "Nhà nước", label: "Doanh nghiệp Nhà nước" },
        { value: "Tư nhân", label: "Doanh nghiệp Tư nhân" }
      ],
      provinceOptions: [
        { value: "HCM", label: "Hồ Chí Minh" },
        { value: "HN", label: "Hà Nội" },
        { value: "DN", label: "Đà Nẵng" }
      ],
      districtOptions: [
        { value: "Q1", label: "Quận 1" },
        { value: "Q2", label: "Quận 2" },
        { value: "BT", label: "Bình Thạnh" }
      ],
      wardOptions: [
        { value: "P1", label: "Phường 1" },
        { value: "P2", label: "Phường 2" },
        { value: "P3", label: "Phường 3" }
      ],
      dangkydichvuOptions: [
        { value: "TVPL", label: "Tư vấn pháp luật" },
        { value: "K", label: "Khác" }
      ],
    };
  },
  methods: {
    submitForm() {
      alert("Lưu thành công!");
    },
  },
};
</script>

<style scoped>
.container {
  max-width: 100%;
  margin: auto;
  padding: 20px;
  font-family: Arial, sans-serif;
  background: #fff;
  border-radius: 5px;
  box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
}
.section {
  border: 1px solid #ddd;
  padding: 15px;
  margin-bottom: 15px;
  border-radius: 5px;
  background: #f9f9f9;
}
.section-title {
  font-weight: bold;
  font-size: 18px;
  padding: 5px;
}
.label {
  font-size: 14px; /* Kích thước mặc định */
  font-weight: bold;
  margin-top: 8px;
}
.small-label {
  font-size: 13px; /* Giảm kích thước cho các label nhỏ */
  font-weight: 400; /* Mảnh hơn */
  color: #555;
}
.input, .custom-select {
  width: 100%;
  padding: 10px;
  border: 1px solid #ccc;
  border-radius: 5px;
}
.buttons {
  display: flex;
  justify-content: center;
  gap: 15px;
  margin-top: 25px;
}
.btn {
  padding: 10px;
  border: none;
  cursor: pointer;
  border-radius: 5px;
}
.save {
  background: #4caf50;
  color: white;
}
</style>