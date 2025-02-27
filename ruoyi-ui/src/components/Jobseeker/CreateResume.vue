<template>
  <div class="container">
    <h3 class="title">THÔNG TIN HỒ SƠ TÌM VIỆC LÀM</h3>

    <div class="section">
      <h3 class="section-title">👤 Việc làm mong muốn</h3>
      <div class="form-group">
        <label>Tên công việc *</label>
        <input v-model="jobTitle" type="text" class="form-control" placeholder="Nhập tên công việc" required />
      </div>
      <div class="form-group">
        <label>Loại hình doanh nghiệp *</label>
        <select v-model="businessType" class="form-control">
          <option value="">Chưa chọn</option>
          <option value="Công ty TNHH">Công ty TNHH</option>
          <option value="Công ty Cổ phần">Công ty Cổ phần</option>
          <option value="Doanh nghiệp tư nhân">Doanh nghiệp tư nhân</option>
        </select>
      </div>
      <div class="form-group">
        <label>Hợp đồng</label>
        <select v-model="industry" class="form-control">
          <option value="">Chưa chọn</option>
          <option value="Công nghệ thông tin">Không xác định thời gian</option>
          <option value="Kế toán">Xác định thời gian dưới 12 tháng</option>
          <option value="Sản xuất">Xác định thời gian từ 12 tháng đến 36 tháng</option>
        </select>
      </div>
    </div>

    <div class="section">
      <h3 class="section-title">👤 Mô tả công việc</h3>
      <textarea v-model="jobDescription" class="form-control textarea" placeholder="Nhập mô tả công việc"></textarea>
    </div>

    <div class="section">
      <h3 class="section-title">👤 Thông tin ngành nghề</h3>
      <div class="form-group">
        <label>Mã nghề *</label>
        <select v-model="jobCode" class="form-control">
          <option value="">[1] Lãnh đạo, quản lý trong các ngành, các cấp và các đơn vị</option>
          <option value="1">Cấp 1</option>
          <option value="2">Cấp 2</option>
          <option value="3">Cấp 3</option>
          <option value="4">Cấp 4</option>
        </select>
        <label>Cấp 1</label>
        <input type="text" class="form-control" placeholder="Nhập mã nghề" />
        <label>Cấp 2</label>
        <input type="text" class="form-control" placeholder="Nhập mã nghề" />
        <label>Cấp 3</label>
        <input type="text" class="form-control" placeholder="Nhập mã nghề" />
        <label>Cấp 4</label>
        <input type="text" class="form-control" placeholder="Nhập mã nghề" />
      </div>
    </div>

    <div class="section">
      <h3 class="section-title">👤 Chức vụ</h3>
      <div class="form-group">
        <label>Chức vụ</label>
        <select v-model="position" class="form-control">
          <option value="">Nhân viên</option>
          <option value="Nhân viên">Nhân viên</option>
          <option value="Quản lý">Quản lý</option>
          <option value="Trưởng phòng">Trưởng phòng</option>
        </select>
      </div>
    </div>

    <div class="section">
      <h3 class="section-title">👤 Kinh nghiệm làm việc trong lĩnh vực này</h3>
      <div class="form-group">
        <label>Kinh nghiệm</label>
        <select v-model="experience" class="form-control">
          <option value="">-- Chọn --</option>
          <option value="Dưới 1 năm">Dưới 1 năm</option>
          <option value="1-3 năm">1-3 năm</option>
          <option value="3-5 năm">3-5 năm</option>
          <option value="Trên 5 năm">Trên 5 năm</option>
        </select>
      </div>
    </div>

    <div class="section">
      <h3 class="section-title">👤 Nơi muốn làm việc</h3>
      <div class="form-group">
        <label>Ưu tiên 1: Tỉnh</label>
        <select v-model="priority1Province" class="form-control">
          <option value="">-- Chọn tỉnh --</option>
          <option value="Hà Nội">Hà Nội</option>
          <option value="Hải Phòng">Hải Phòng</option>
          <option value="Đà Nẵng">Đà Nẵng</option>
        </select>
        <select v-model="priority1District" class="form-control">
          <option value="">Quận/ Huyện/ KCN -- Chọn --</option>
          <option value="Quận 1">Quận 1</option>
          <option value="Quận 2">Quận 2</option>
          <option value="KCN Hòa Xá">KCN Hòa Xá</option>
        </select>
      </div>
      <div class="form-group">
        <label>Ưu tiên 2: Tỉnh</label>
        <select v-model="priority2Province" class="form-control">
          <option value="">-- Chọn tỉnh --</option>
          <option value="Hà Nội">Hà Nội</option>
          <option value="Hải Phòng">Hải Phòng</option>
          <option value="Đà Nẵng">Đà Nẵng</option>
        </select>
        <select v-model="priority2District" class="form-control">
          <option value="">Quận/ Huyện/ KCN -- Chọn --</option>
          <option value="Quận 1">Quận 1</option>
          <option value="Quận 2">Quận 2</option>
          <option value="KCN Hòa Xá">KCN Hòa Xá</option>
        </select>
      </div>
    </div>

    <div class="section">
      <h3 class="section-title">👤 Khả năng di chuyển</h3>
      <div class="form-group">
        <label>Làm ca</label>
        <input type="checkbox" v-model="shiftWork" /> Làm ca
        <input type="checkbox" v-model="nightShift" /> Đi công tác
        <input type="checkbox" v-model="remoteWork" /> Đi biệt phái
      </div>
      <div class="form-group">
        <label>Hình thức làm việc</label>
        <select v-model="workType" class="form-control">
          <option value="">Chưa chọn</option>
          <option value="Toàn thời gian">Toàn thời gian</option>
          <option value="Bán thời gian">Bán thời gian</option>
          <option value="Thực tập">Thực tập</option>
        </select>
      </div>
      <div class="form-group">
        <label>Mục đích làm việc</label>
        <select v-model="workType" class="form-control">
          <option value="">Chưa chọn</option>
          <option value="Toàn thời gian">Làm việc lâu dài</option>
          <option value="Bán thời gian">Làm việc tạm thời</option>
          <option value="Thực tập">Làm thêm</option>
        </select>
      </div>
    </div>

    <div class="section">
      <h3 class="section-title">👤 Mức lương, Chế độ phúc lợi</h3>
      <div class="form-group">
        <label>Kiểu lương hưởng *</label>
        <select v-model="salaryRange" class="form-control" required>
          <option value="">-- Chọn --</option>
          <option value="Dưới 5 triệu">Lương tháng</option>
          <option value="5-10 triệu">Lương ngày</option>
          <option value="10-15 triệu">Lương giờ</option>
        </select>
        <label>Thỏa thuận khi phỏng vấn</label>
        <input type="checkbox" v-model="periodicRaise" />
        <label>Hoa hồng theo doanh thu sản phẩm</label>
        <input type="checkbox" v-model="periodicRaise" />
        <label>Hỗ trợ ăn</label>
        <input type="text" class="form-control" placeholder="Nhập mã nghề" />
        <label>Phúc lợi</label>
        <input type="text" class="form-control" placeholder="Nhập mã nghề" />
        <label>Xe đưa đón</label>
        <input type="text" class="form-control" placeholder="Nhập mã nghề" />
        <label>Hỗ trợ</label>
        <input type="text" class="form-control" placeholder="Nhập mã nghề" />
      </div>
      <div class="form-group">
        <label>Chế độ phúc lợi khác</label>
        <textarea v-model="otherBenefits" class="form-control textarea" placeholder="Nhập chế độ lương khác"></textarea>
      </div>      
    </div>

    <div class="section">
      <h3 class="section-title">👤 Điều kiện làm việc, Thời gian đi làm</h3>
      <div class="form-group">
        <label>Nơi làm việc</label>
        <select v-model="workLocation" class="form-control">
          <option value="">Chưa chọn</option>
          <option value="Hà Nội">Hà Nội</option>
          <option value="Hải Phòng">Hải Phòng</option>
          <option value="Đà Nẵng">Đà Nẵng</option>
        </select>
        <div class="sub-group">
          <label>Trọng lượng nâng</label>
          <select v-model="workTime" class="form-control">
            <option value="">Chưa chọn</option>
            <option value="Toàn thời gian">Dưới 50 kg</option>
            <option value="Bán thời gian">Trên 50 kg</option>
          </select>
          <label>Đứng hoặc đi lại</label>
          <select v-model="workDays" class="form-control">
            <option value="">Chưa chọn</option>
            <option value="Thứ 2-Thứ 6">Hầu như không</option>
            <option value="Thứ 7-Chủ nhật">Mức trung bình</option>
          </select>
          <label>Nghe nói</label>
          <select v-model="workHours" class="form-control">
            <option value="">Chưa chọn</option>
            <option value="8h-17h">Cơ bản</option>
            <option value="9h-18h">Nâng cao</option>
          </select>
        </div>
      </div>
      <div class="form-group">
        <label>Thao tác bằng tay</label>
        <select v-model="startTime1" class="form-control">
          <option value="">Chưa chọn</option>
          <option value="Ngay lập tức">Bình thường</option>
          <option value="Trong 1 tháng">Trung bình</option>
        </select>
      </div>
      <div class="form-group">
        <label>Dùng 2 tay</label>
        <select v-model="startTime" class="form-control">
          <option value="">Chưa chọn</option>
          <option value="Ngay lập tức">Bình thường</option>
          <option value="Trong 1 tháng">Trung bình</option>
        </select>
      </div>
      <div class="form-group">
        <label>Sẵn sàng làm việc</label>
        <select v-model="readyToWork" class="form-control">
          <option value="">-- Chọn --</option>
          <option value="Có">Có</option>
          <option value="Không">Không</option>
        </select>
      </div>
    </div>

    <div class="section">
      <h3 class="section-title">👤 Hình thức tuyển dụng</h3>
      <div class="form-group">
        <label>Phương thức *</label>
        <select v-model="recruitmentMethod" class="form-control" required>
          <option value="">Chưa chọn</option>
          <option value="Trực tiếp">Trực tiếp</option>
          <option value="Online">Online</option>
        </select>
      </div>
    </div>

    <div class="button-group">
      <button class="back-button">Quay lại</button>
      <button class="save-button">Lưu lại</button>
    </div>
  </div>
</template>

<script>
export default {
  name: 'JobApplicationForm',
  data() {
    return {
      jobTitle: '',
      businessType: '',
      industry: '',
      jobDescription: '',
      jobCode: '',
      position: '',
      experience: '',
      priority1Province: '',
      priority1District: '',
      priority2Province: '',
      priority2District: '',
      shiftWork: false,
      nightShift: false,
      remoteWork: false,
      workType: '',
      salaryRange: '',
      otherBenefits: '',
      periodicRaise: false,
      housingSupport: false,
      mealSupport: false,
      travelSupport: false,
      workLocation: '',
      workTime: '',
      workDays: '',
      workHours: '',
      startTime: '',
      readyToWork: '',
      recruitmentMethod: '',
    };
  },
};
</script>

<style scoped>
.container {
  font-family: Arial, sans-serif;
  background-color: #fff;
  padding: 20px;
  border: 1px solid #ddd;
  border-radius: 0;
  box-shadow: none;
  max-width: 800px;
  margin: 0 auto;
}

.title {
  font-size: 18px;
  font-weight: bold;
  color: #333;
  margin-bottom: 20px;
  text-align: center;
}

.section {
  margin-bottom: 20px;
}

.section-title {
  background-color: #007bff;
  color: white;
  padding: 10px;
  font-size: 16px;
  font-weight: bold;
  border-radius: 4px 4px 0 0;
  margin-bottom: 10px;
}

.form-group {
  margin-bottom: 15px;
}

label {
  display: block;
  margin-bottom: 5px;
  font-size: 14px;
  color: #333;
}

.form-control {
  width: 100%;
  padding: 8px 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  font-size: 14px;
  color: #333;
  background-color: #fff;
  height: 35px;
  appearance: none;
  background-image: url('data:image/svg+xml;utf8,<svg fill="%23333" height="24" viewBox="0 0 24 24" width="24" xmlns="http://www.w3.org/2000/svg"><path d="M7 10l5 5 5-5z"/></svg>');
  background-repeat: no-repeat;
  background-position: right 10px center;
}

.textarea {
  width: 100%;
  padding: 8px 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  font-size: 14px;
  color: #333;
  background-color: #fff;
  min-height: 100px;
  resize: vertical;
}

.form-control:focus, .textarea:focus {
  outline: none;
  border-color: #007bff;
  box-shadow: 0 0 5px rgba(0, 123, 255, 0.3);
}

input[type="checkbox"] {
  margin-right: 10px;
}

.sub-group {
  display: flex;
  gap: 10px;
  flex-wrap: wrap;
}

.sub-group .form-control {
  flex: 1;
  min-width: 150px;
}

.button-group {
  margin-top: 20px;
  text-align: center;
}

.back-button, .save-button {
  padding: 10px 20px;
  border: none;
  border-radius: 4px;
  font-size: 14px;
  cursor: pointer;
  margin: 0 5px;
}

.back-button {
  background-color: #6c757d;
  color: white;
}

.save-button {
  background-color: #007bff;
  color: white;
}

.back-button:hover {
  background-color: #5a6268;
}

.save-button:hover {
  background-color: #0056b3;
}

/* Responsive Design */
@media (max-width: 768px) {
  .container {
    padding: 10px;
  }

  .form-group, .sub-group {
    flex-direction: column;
  }

  .form-control, .textarea {
    width: 100%;
  }

  .sub-group .form-control {
    min-width: 100%;
    margin-bottom: 10px;
  }

  .button-group {
    text-align: center;
  }
}
</style>