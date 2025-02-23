<template>
    <div class="container">
      <div class="box box-info">
        <div class="box-header with-border">
          <h3 class="box-title">Thông tin hồ sơ tìm việc làm</h3>
        </div>
  
        <div class="box-body">
          <div class="section">
            <div class="title">
              <img src="/image/note_edit.png" alt="logo" />
              <span>Thông tin người lao động</span>
            </div>
            <div class="profile">
              <div class="profile-left">
                <div class="form-group">
                  <strong>Số CCCD/CMND:</strong> {{ worker.idNumber }}
                </div>
                <div class="form-group">
                  <strong>Mã số BHXH:</strong> {{ worker.bhxh }}
                </div>
                <div class="form-group">
                  <strong>Email:</strong> {{ worker.email }}
                </div>
                <div class="form-group">
                  <strong>Điện thoại:</strong> {{ worker.phone }}
                </div>
                <div class="form-group">
                  <strong>Ngày sinh:</strong> {{ worker.dob }}
                </div>
              </div>
              <div class="profile-right">
                <div class="form-group">
                  <strong>Giới tính:</strong> {{ worker.gender }}
                </div>
                <div class="form-group">
                  <strong>Dân tộc:</strong> {{ worker.ethnicity }}
                </div>
                <div class="form-group">
                  <strong>Tôn giáo:</strong> {{ worker.religion }}
                </div>
                <div class="form-group">
                  <strong>Địa chỉ thường trú:</strong> {{ worker.permanentAddress }}
                </div>
                <div class="form-group">
                  <strong>Nơi ở hiện nay:</strong> {{ worker.currentAddress }}
                </div>
              </div>
            </div>
          </div>
  
          <!-- Việc làm mong muốn -->
          <div class="section">
            <div class="title">
              <img src="/image/note_edit.png" alt="logo" />
              <span>Việc làm mong muốn</span>
            </div>
            <div class="job-form">
              <div class="form-group">
                <label for="jobTitle">Tên công việc <sup class="txt-red">*</sup></label>
                <input v-model="job.title" id="jobTitle" type="text" class="form-control" />
              </div>
              <div class="form-group">
                <label for="businessType">Loại hình doanh nghiệp <sup class="txt-red">*</sup></label>
                <select v-model="job.businessType" id="businessType" multiple class="form-control">
                  <option v-for="(option, index) in businessTypes" :key="index" :value="option.value">
                    {{ option.text }}
                  </option>
                </select>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </template>
  
  <script>
  export default {
    data() {
      return {
        worker: {
          name: "Nguyễn Văn A",
          idNumber: "123456789",
          bhxh: "987654321",
          email: "email@example.com",
          phone: "0123456789",
          dob: "01/01/1990",
          gender: "Nam",
          ethnicity: "Kinh",
          religion: "Không",
          permanentAddress: "123 Đường ABC, TP.HCM",
          currentAddress: "456 Đường XYZ, Hà Nội",
        },
        job: {
          title: "",
          businessType: [],
        },
        businessTypes: [
          { value: "1", text: "Doanh nghiệp Nhà nước" },
          { value: "2", text: "Doanh nghiệp ngoài nhà nước" },
          { value: "3", text: "Doanh nghiệp FDI" },
          { value: "4", text: "Cơ quan, đơn vị nhà nước" },
          { value: "5", text: "Hộ kinh doanh" },
          { value: "6", text: "Cá nhân" },
        ],
      };
    },
  };
  </script>
  
  <style scoped>
  /* Container chính */
  .container {
    width: 80%;
    margin: auto;
    font-family: Arial, sans-serif;
  }
  
  /* Khung thông tin */
  .box {
    border: 1px solid #ddd;
    border-radius: 5px;
    padding: 20px;
    background-color: #fff;
    box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
  }
  
  /* Header */
  .box-header {
    text-align: center;
    font-size: 20px;
    font-weight: bold;
    padding-bottom: 10px;
    border-bottom: 2px solid #007bff;
  }
  
  /* Section chung */
  .section {
    margin: 20px 0;
  }
  
  /* Tiêu đề */
  .title {
    display: flex;
    align-items: center;
    font-size: 18px;
    font-weight: bold;
    margin-bottom: 10px;
  }
  
  .title img {
    width: 20px;
    height: 20px;
    margin-right: 10px;
  }
  
  /* Hồ sơ người lao động */
  .profile {
    display: flex;
    justify-content: space-between;
  }
  
  .profile-left,
  .profile-right {
    width: 48%;
  }
  
  .form-group {
    margin-bottom: 10px;
    font-size: 14px;
  }
  
  /* Việc làm mong muốn */
  .job-form {
    display: flex;
    flex-direction: column;
  }
  
  .job-form .form-group {
    width: 100%;
  }
  
  label {
    font-weight: bold;
    display: block;
    margin-bottom: 5px;
  }
  
  input,
  select {
    width: 100%;
    padding: 8px;
    border: 1px solid #ccc;
    border-radius: 4px;
  }
  
  .txt-red {
    color: red;
  }
  </style>
  