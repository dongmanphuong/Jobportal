<template>
  <div class="container">
    <h2 class="title">THÔNG TIN DOANH NGHIỆP/NGƯỜI TUYỂN DỤNG</h2>

    <!-- Block 1: Thông tin người sử dụng lao động -->
    <section class="section">
      <h3 class="section-title">1. Thông tin người sử dụng lao động</h3>

      <!-- Tên doanh nghiệp -->
      <label class="label small-label">Tên doanh nghiệp *</label>
      <input v-model="companyName" type="text" class="input" placeholder="Nhập tên doanh nghiệp" />
      <div v-if="errors.companyName" class="error">{{ errors.companyName }}</div>

      <!-- Chủ thể tuyển dụng -->
      <label class="label small-label">Chủ thể tuyển dụng *</label>

      <v-select v-model="employmentType" :options="employmentOptions" label="label" placeholder="Chọn loại..."
        class="custom-select" clearable :reduce="option => option.value"></v-select>
      <div v-if="errors.employmentType" class="error">{{ errors.employmentType }}</div>

      <!-- Mã số CMND/CCCD -->
      <label class="label small-label">Mã số CMND/CCCD *</label>
      <input v-model="idNumber" type="text" class="input" placeholder="Nhập mã số CMND/CCCD" />
      <div v-if="errors.idNumber" class="error">{{ errors.idNumber }}</div>

      <!-- Loại hình doanh nghiệp -->
      <label class="label small-label">Loại hình doanh nghiệp *</label>
      <v-select v-model="companyType" :options="companyTypeOptions" label="label" placeholder="Chọn loại hình..."
        class="custom-select" :reduce="option => option.value" clearable></v-select>
      <div v-if="errors.companyType" class="error">{{ errors.companyType }}</div>

      <!-- Địa chỉ (Tỉnh, Huyện, Xã) -->
      <label class="label small-label">Địa chỉ *</label>
      <div class="address-group">
        <v-select v-model="province" :options="provinceOptions" label="label" placeholder="Chọn tỉnh/thành phố..."
          class="custom-select" :reduce="option => option.value" clearable></v-select>
        <div v-if="errors.province" class="error">{{ errors.province }}</div>

        <v-select v-model="district" :options="districtOptions" label="label" placeholder="Chọn quận/huyện..."
          class="custom-select" :reduce="option => option.value" clearable></v-select>
        <div v-if="errors.district" class="error">{{ errors.district }}</div>

        <v-select v-model="ward" :options="wardOptions" label="label" placeholder="Chọn phường/xã..."
          class="custom-select" :reduce="option => option.value" clearable></v-select>
        <!-- ward không bắt buộc, nên không check lỗi -->
      </div>

      <!-- Địa chỉ cụ thể -->
      <label class="label small-label">Địa chỉ cụ thể *</label>
      <textarea v-model="address" class="input" placeholder="Nhập địa chỉ cụ thể"></textarea>
      <div v-if="errors.address" class="error">{{ errors.address }}</div>

      <!-- Thuộc KCN -->
      <div class="checkbox-group">
        <label class="label small-label">
          <input type="checkbox" v-model="Isindustryzone" />
          Thuộc KCN
        </label>
      </div>
      <v-select v-if="Isindustryzone" v-model="industryzone" placeholder="Nhập tên KCN" :options="industryzoneOptions"
        label="label" class="custom-select" :reduce="option => option.value" clearable></v-select>
      <!-- Điện thoại + Email -->
      <div class="contact-group">
        <div class="contact-item">
          <label class="label small-label">Điện thoại *</label>
          <input v-model="phone" type="text" class="input" placeholder="Nhập số điện thoại" />
          <div v-if="errors.phone" class="error">{{ errors.phone }}</div>
        </div>

        <div class="contact-item">
          <label class="label small-label">Email *</label>
          <input v-model="email" type="email" class="input" placeholder="Nhập địa chỉ email" />
          <div v-if="errors.email" class="error">{{ errors.email }}</div>
        </div>
      </div>

      <!-- Ngành kinh doanh chính -->
      <label class="label small-label">Ngành kinh doanh chính *</label>
      <v-select v-model="mainBusiness" :options="businessOptions" label="label" placeholder="Chọn ngành..."
        class="custom-select" :reduce="option => option.value" clearable></v-select>
      <div v-if="errors.mainBusiness" class="error">{{ errors.mainBusiness }}</div>

      <!-- Mặt hàng/sản phẩm chính (1) -->
      <label class="label small-label">Mặt hàng/sản phẩm chính *</label>
      <input v-model="mainProduct" type="text" class="input" placeholder="Nhập mặt hàng/sản phẩm chính" />
      <div v-if="errors.mainProduct" class="error">{{ errors.mainProduct }}</div>

      <!-- Quy mô lao động và Số lao động tuyển 6 tháng tới nằm trên 1 dòng -->
      <div class="contact-group">
        <div class="contact-item">
          <label class="label small-label">Quy mô lao động *</label>
          <v-select v-model="workforceScale" :options="scaleOptions" label="label" placeholder="Chọn quy mô..."
            class="custom-select" :reduce="option => option.value" clearable></v-select>
          <div v-if="errors.workforceScale" class="error">{{ errors.workforceScale }}</div>
        </div>
        <div class="contact-item">
          <label class="label small-label">Tuyển 6 tháng tới *</label>
          <input v-model="next6month" type="text" class="input" placeholder="Nhập Số lao động tuyển 6 tháng tới" />
          <div v-if="errors.next6month" class="error">{{ errors.next6month }}</div>
        </div>
      </div>
    </section>

    <!-- Block 2: Đăng ký dịch vụ -->
    <section class="section">
      <h3 class="section-title">2. Đăng ký dịch vụ *</h3>
      <div class="service-group">
        <div class="service-item">
          <v-select v-model="dangkydichvu" :options="dangkydichvuOptions" label="label" placeholder="Chọn dịch vụ..."
            class="custom-select" :reduce="option => option.value" clearable></v-select>
          <div v-if="errors.dangkydichvu" class="error">{{ errors.dangkydichvu }}</div>
        </div>
        <div class="service-item" v-if="dangkydichvu === 2">
          <input v-model="dangkydichvunote" type="text" placeholder="Nhập chi tiết dịch vụ khác" class="input" />
        </div>
      </div>
    </section>

    <!-- Block 3: Thời gian đăng ký -->
    <section class="section">
      <h3 class="section-title">3. Thời gian đăng ký *</h3>
      <input v-model="registertime" type="datetime-local" class="input" readonly />
    </section>

    <!-- Block 4: Thông tin người đại diện doanh nghiệp -->
    <section class="section">
      <h3 class="section-title">4. Thông tin người đại diện doanh nghiệp *</h3>
      <div class="name-position-group">
        <div class="name-item">
          <label class="label small-label">Họ tên *</label>
          <input v-model="name" type="text" class="input" placeholder="Nhập họ tên người đại diện" />
          <div v-if="errors.name" class="error">{{ errors.name }}</div>
        </div>
        <div class="name-item">
          <label class="label small-label">Chức vụ</label>
          <input v-model="position" type="text" class="input" placeholder="Nhập chức vụ (nếu có)" />
        </div>
      </div>

      <label class="label small-label">Điện thoại *</label>
      <input v-model="telephone" type="text" class="input" placeholder="Nhập số điện thoại người đại diện" />
      <div v-if="errors.telephone" class="error">{{ errors.telephone }}</div>

      <label class="label small-label">Hình thức liên hệ khác (nếu có)</label>
      <input v-model="othercontact" type="text" class="input" placeholder="Nhập hình thức liên hệ khác" />
    </section>

    <!-- Nút Lưu -->
    <div class="buttons">
      <button class="btn cancel" @click="goBack">Quay lại</button>
      <button class="btn save" @click="submitForm">Lưu lại</button>
    </div>
  </div>
</template>

<script>
import vSelect from "vue-select";
import "vue-select/dist/vue-select.css";
import { listDictType, listProvince, listDistrict, listWard, addEmployer, getEmployer, updateEmployer } from "@/api/recruitment/employer";
import Cookies from "js-cookie";

export default {
  components: { vSelect },
  data() {
    return {
      // Thông tin cơ bản
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
      Isindustryzone: false, // CheckBox "Thuộc KCN"
      industryzone: "",
      industryzoneOptions: [],      // Tên KCN nếu tick checkbox

      mainBusiness: "",      // Ngành kinh doanh chính
      mainProduct: "",       // Mặt hàng/sản phẩm chính (1)
      next6month: "",        // Số lao động tuyển 6 tháng tới *
      workforceScale: "",
      dangkydichvu: "",
      dangkydichvunote: "",
      name: "",
      position: "",
      telephone: "",
      othercontact: "",
      registertime: new Date().toISOString().slice(0, 16),
      loading: true,

      // Tuỳ chọn cho v-select
      employmentOptions: [],

      companyTypeOptions: [],

      provinceOptions: [],

      districtOptions: [],

      wardOptions: [],

      businessOptions: [],

      scaleOptions: [],

      dangkydichvuOptions: [],

      isUpdate: false,

      employerId: null,

      // Lưu lỗi
      errors: {}

    };
  },
  mounted() {
    this.fetchDictTypeList();
    // Also load province options
    listProvince()
      .then(response => {
        this.provinceOptions = response;
        this.loading = false;
      })
      .catch(error => {
        console.error("Error fetching provinceOptions", error);
        this.loading = false;
      });
    // Fetch employer data for the current username
    this.fetchEmployerData();
  },
  watch: {
    // When province changes, load districts
    province(newProvince) {
      if (newProvince) {
        this.fetchDistrictOptions(newProvince);
      } else {
        this.districtOptions = [];
        this.district = "";
        this.wardOptions = [];
        this.ward = "";
      }
    },
    // When district changes, load wards
    district(newDistrict) {
      if (newDistrict) {
        this.fetchWardOptions(newDistrict);
      } else {
        this.wardOptions = [];
        this.ward = "";
      }
    }
  },
  methods: {
    fetchDictTypeList() {
      this.loading = true;
      // Call the imported listDictType function
      listDictType({ dictType: "recruit_subject" })
        .then(response => {
          this.employmentOptions = response;
          this.loading = false;
        })
        .catch(error => {
          this.loading = false;
        });

      listDictType({ dictType: "business_type" })
        .then(response => {
          this.companyTypeOptions = response;
          this.loading = false;
        })
        .catch(error => {
          console.error("Error fetching companyTypeOptions", error);
          this.loading = false;
        });

      listDictType({ dictType: "industrial_zone" })
        .then(response => {
          this.industryzoneOptions = response;
          this.loading = false;
        })
        .catch(error => {
          console.error("Error fetching industryzoneOptions", error);
          this.loading = false;
        });

      listDictType({ dictType: "service_registration" })
        .then(response => {
          this.dangkydichvuOptions = response;
          this.loading = false;
        })
        .catch(error => {
          console.error("Error fetching dangkydichvuOptions", error);
          this.loading = false;
        });

      listDictType({ dictType: "workforce_scale" })
        .then(response => {
          this.scaleOptions = response;
          this.loading = false;
        })
        .catch(error => {
          console.error("Error fetching scaleOptions", error);
          this.loading = false;
        });

      listDictType({ dictType: "business_sector" })
        .then(response => {
          this.businessOptions = response;
          this.loading = false;
        })
        .catch(error => {
          console.error("Error fetching scaleOptions", error);
          this.loading = false;
        });
    },
    fetchDistrictOptions(provinceId) {
      // Call the API function for districts, passing provinceId
      listDistrict({ proviceId: provinceId })
        .then(response => {
          console.log("District options:", response);
          this.districtOptions = response;
        })
        .catch(error => {
          console.error("Error fetching district options", error);
        });
    },
    fetchWardOptions(districtId) {
      // Call the API function for wards, passing districtId
      listWard({ districtId: districtId })
        .then(response => {
          console.log("Ward options:", response);
          this.wardOptions = response;
        })
        .catch(error => {
          console.error("Error fetching ward options", error);
        });
    },
    fetchEmployerData() {
      // Call an API function that returns the employer information for the current username.
      this.loading = true;
      const username = Cookies.get("username");
      getEmployer({ userName: username })
        .then(dataArray => {  // 'dataArray' is the returned data array directly
          console.log("Employer data:", dataArray);
          if (dataArray && dataArray.length > 0) {
            const data = dataArray[0];

            // Fill the form with the retrieved data
            this.companyName = data.companyName;
            this.employmentType = data.employmentType;
            this.idNumber = data.idNumber;
            this.companyType = data.companyType;
            this.province = data.province;
            this.district = data.district;
            this.ward = data.ward;
            this.address = data.address;
            this.phone = data.phone;
            this.email = data.email;
            this.industryzone = data.industryZone;
            if (data.industryZone > 0) {
              this.Isindustryzone = true;
            }
            this.mainBusiness = data.mainBusiness;
            this.mainProduct = data.mainProduct;
            this.next6month = data.next6Month;
            this.workforceScale = data.workforceScale;
            this.dangkydichvu = data.dangkyDichvu;
            this.dangkydichvunote = data.dangkyDichvunote;
            this.name = data.representativeName;
            this.position = data.position;
            this.telephone = data.representativePhone;
            this.othercontact = data.otherContact;
            this.registertime = data.registerTime;
            this.isUpdate = true;
            this.employerId = data.id;
          }
          this.loading = false;
        })
        .catch(error => {
          console.error("Error fetching employer data", error);
          this.loading = false;
        });
    },
    saveEmployerData() {
      // Build the payload based on your form data
      const employerData = {
        companyName: this.companyName,
        employmentType: this.employmentType,
        idNumber: this.idNumber,
        companyType: this.companyType,
        province: this.province,
        district: this.district,
        ward: this.ward,
        address: this.address,
        phone: this.phone,
        email: this.email,
        industryZone: this.industryzone,
        mainBusiness: this.mainBusiness,
        mainProduct: this.mainProduct,
        next6Month: this.next6month,
        workforceScale: this.workforceScale,
        dangkydichvu: this.dangkydichvu,
        dangkydichvunote: this.dangkydichvunote,
        representativeName: this.name,
        position: this.position,
        representativePhone: this.telephone,
        otherContact: this.othercontact,
        registerTime: this.registertime
      };
      if (this.isUpdate) {
        // Update existing employer data
        updateEmployer({ id: this.employerId, ...employerData })
          .then(response => {
            this.$modal.msgSuccess("Cập nhật thành công");
          })
          .catch(error => {
            console.error("Error updating employer data:", error);
          });
      } else {
        addEmployer(employerData).then(response => {
          this.$modal.msgSuccess("Đã thêm thành công");
        });
      }
    },
    submitForm() {
      // Reset lỗi trước khi kiểm tra
      this.errors = {};

      // Kiểm tra các trường bắt buộc
      if (!this.companyName) this.errors.companyName = "Cần nhập thông tin";
      if (!this.employmentType) this.errors.employmentType = "Cần nhập thông tin";
      if (!this.idNumber) this.errors.idNumber = "Cần nhập thông tin";
      if (!this.companyType) this.errors.companyType = "Cần nhập thông tin";
      if (!this.province) this.errors.province = "Cần nhập thông tin";
      if (!this.district) this.errors.district = "Cần nhập thông tin";
      if (!this.address) this.errors.address = "Cần nhập thông tin";
      if (!this.phone) this.errors.phone = "Cần nhập thông tin";
      if (!this.email) this.errors.email = "Cần nhập thông tin";
      if (!this.mainBusiness) this.errors.mainBusiness = "Cần nhập thông tin";
      if (!this.mainProduct) this.errors.mainProduct = "Cần nhập thông tin";
      if (!this.next6month) this.errors.next6month = "Cần nhập thông tin";
      if (!this.workforceScale) this.errors.workforceScale = "Cần nhập thông tin";
      if (!this.dangkydichvu) this.errors.dangkydichvu = "Cần nhập thông tin";
      if (!this.name) this.errors.name = "Cần nhập thông tin";
      if (!this.telephone) this.errors.telephone = "Cần nhập thông tin";
      // Nếu không có lỗi => xử lý tiếp
      if (Object.keys(this.errors).length === 0) {
        this.saveEmployerData();
      }
    },
    
    goBack() {
    this.$router.push('/index');   
  }
  }
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

/* Input style */
.input {
  width: 100%;
  font-size: 13px;
  padding: 6px;
  margin-bottom: 8px;
  box-sizing: border-box;
  border: 1px solid #ccc;
  border-radius: 3px;
}

/* Wrapper chứa input và clear icon (bạn có thể áp dụng cho các trường cần clearable) */
.input-wrapper {
  position: relative;
  display: inline-block;
  width: 100%;
}

.input-wrapper .input {
  width: 100%;
  padding-right: 24px;
  /* Chừa chỗ cho nút clear */
}

.clear-icon {
  position: absolute;
  right: 8px;
  top: 50%;
  transform: translateY(-50%);
  cursor: pointer;
  font-weight: bold;
  color: #aaa;
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

.error {
  color: red;
  font-size: 12px;
  margin-bottom: 4px;
}

/* Tỉnh/Huyện/Xã */
.address-group {
  display: flex;
  gap: 8px;
  flex-wrap: wrap;
}

.address-group .custom-select {
  flex: 1;
  min-width: 120px;
}

/* Checkbox group */
.checkbox-group {
  margin-bottom: 8px;
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

/* Service group cho Block 2: Đăng ký dịch vụ */
.service-group {
  display: flex;
  gap: 8px;
  flex-wrap: nowrap;
  align-items: center;
}

.service-group .service-item {
  flex: 1;
}

/* Nút */
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
