<template>
  <el-form ref="form" :model="user" :rules="rules" label-width="150px">
    <el-form-item label="Tên đăng nhập" prop="nickName">
      <el-input v-model="user.nickName" maxlength="30" />
    </el-form-item> 
    <el-form-item label="Điện thoại" prop="phonenumber">
      <el-input v-model="user.phonenumber" maxlength="11" />
    </el-form-item>
    <el-form-item label="Email" prop="email">
      <el-input v-model="user.email" maxlength="50" />
    </el-form-item>
    <el-form-item label="Giới tính">
      <el-radio-group v-model="user.sex">
        <el-radio label="0">Nam</el-radio>
        <el-radio label="1">Nữ</el-radio>
      </el-radio-group>
    </el-form-item>
    <el-form-item>
      <el-button type="primary" size="mini" @click="submit">OK</el-button>
      <el-button type="danger" size="mini" @click="close">Close</el-button>
    </el-form-item>
  </el-form>
</template>

<script>
import { updateUserProfile } from "@/api/system/user";

export default {
  props: {
    user: {
      type: Object
    }
  },
  data() {
    return {
      // 表单校验
      rules: {
        nickName: [
          { required: true, message: "Tên đăng nhập không được để trống", trigger: "blur" }
        ],
        email: [
          { required: true, message: "Email không được để trống", trigger: "blur" },
          {
            type: "email",
            message: "Vui lòng nhập địa chỉ email hợp lệ",
            trigger: ["blur", "change"]
          }
        ],
        phonenumber: [
          { required: true, message: "Số điện thoại di động không được để trống", trigger: "blur" },
          {
            pattern: /^1[3|4|5|6|7|8|9][0-9]\d{10}$/,
            message: "Vui lòng nhập số điện thoại di động hợp lệ",
            trigger: "blur"
          }
        ]
      }
    };
  },
  methods: {
    submit() {
      this.$refs["form"].validate(valid => {
        if (valid) {
          updateUserProfile(this.user).then(response => {
            this.$modal.msgSuccess("Sửa đổi thành công");
          });
        }
      });
    },
    close() {
      this.$tab.closePage();
    }
  }
};
</script>
