<template>
  <el-form ref="form" :model="user" :rules="rules" label-width="150px">
    <el-form-item label="Mật khẩu cũ" prop="oldPassword">
      <el-input v-model="user.oldPassword" placeholder="Nhập mật khẩu cũ" type="password" show-password/>
    </el-form-item>
    <el-form-item label="Mật khẩu mới" prop="newPassword">
      <el-input v-model="user.newPassword" placeholder="Nhập mật khẩu mới" type="password" show-password/>
    </el-form-item>
    <el-form-item label="Xác nhận mật khẩu" prop="confirmPassword">
      <el-input v-model="user.confirmPassword" placeholder="Nhập mật khẩu mới" type="password" show-password/>
    </el-form-item>
    <el-form-item>
      <el-button type="primary" size="mini" @click="submit">OK</el-button>
      <el-button type="danger" size="mini" @click="close">Close</el-button>
    </el-form-item>
  </el-form>
</template>

<script>
import { updateUserPwd } from "@/api/system/user";

export default {
  data() {
    const equalToPassword = (rule, value, callback) => {
      if (this.user.newPassword !== value) {
        callback(new Error("Mật khẩu bạn nhập hai lần không khớp"));
      } else {
        callback();
      }
    };
    return {
      user: {
        oldPassword: undefined,
        newPassword: undefined,
        confirmPassword: undefined
      },
      // 表单校验
      rules: {
        oldPassword: [
          { required: true, message: "Mật khẩu cũ không được để trống", trigger: "blur" }
        ],
        newPassword: [
          { required: true, message: "Mật khẩu mới không được để trống", trigger: "blur" },
          { min: 6, max: 20, message: "Độ dài từ 6 đến 20 ký tự", trigger: "blur" }
        ],
        confirmPassword: [
          { required: true, message: "Xác nhận mật khẩu không được để trống", trigger: "blur" },
          { required: true, validator: equalToPassword, trigger: "blur" }
        ]
      }
    };
  },
  methods: {
    submit() {
      this.$refs["form"].validate(valid => {
        if (valid) {
          updateUserPwd(this.user.oldPassword, this.user.newPassword).then(response => {
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
