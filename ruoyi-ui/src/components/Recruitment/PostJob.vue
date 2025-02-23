<template>
    <div class="container">
        <h2 class="title">Thông tin tuyển dụng việc làm</h2>

        <section class="section">
            <h3 class="section-title">1. Thông tin tuyển dụng</h3>

            <label class="label small-label">Tên công việc *</label>
            <input v-model="jobName" type="text" class="input" />


            <label class="label small-label">Số lượng *</label>
            <input v-model="soluong" type="text" class="input" />

            <label class="label small-label">Mô tả công việc *</label>
            <textarea v-model="mota" class="input textarea" rows="4" placeholder="Nhập mô tả công việc..."></textarea>

            <h3 class="section-title">Thông tin nghề nghiệp</h3>

            <label class="label small-label">Mã nghề *</label>
            <v-select v-model="companyType" :options="companyTypeOptions" label="label" placeholder="Chọn loại hình..."
                class="custom-select"></v-select>
            <label class="label small-label">Cấp 1</label><input v-model="cap1" type="text" class="input" readonly />
            <label class="label small-label">Cấp 2</label><input v-model="cap2" type="text" class="input" readonly />
            <label class="label small-label">Cấp 3</label><input v-model="cap3" type="text" class="input" readonly />
            <label class="label small-label">Cấp 4</label><input v-model="cap4" type="text" class="input" readonly />
            <label class="label small-label">Chức vụ</label><input v-model="soluong" type="text" class="input" />

            <h3 class="section-title">Trình độ học vấn</h3>
            <label class="label small-label">Trình độ học vấn *</label>
            <div class="address-group">
                <v-select v-model="province" :options="provinceOptions" label="label" placeholder="Chọn"
                    class="custom-select"></v-select>
            </div>
            <label class="label small-label">Trình độ CMKT *</label>
            <div class="address-group">
                <v-select v-model="province" :options="provinceOptions" label="label" placeholder="Chọn"
                    class="custom-select"></v-select>
            </div>
            <label class="label small-label">Chuyên ngành đào tạo</label>
            <textarea v-model="chuyennghanhdaotao" class="input textarea" rows="4"
                placeholder="Nhập mô tả chuyên nghành đào tạo..."></textarea>


            <h3 class="section-title">Trình độ khác</h3>
            <label class="label small-label">Trình độ khác 1.</label>
            <input v-model="address" class="input"></input>
            <label class="label small-label">Trình độ khác 2.</label>
            <input v-model="address" class="input"></input>
            <label class="label small-label">Trình độ kỹ năng nghề</label>
            <v-select v-model="province" :options="provinceOptions" label="label" placeholder="Chọn"
                class="custom-select"></v-select>
            <label class="label small-label">Kỹ năng nghề bậc</label>
            <input v-model="address" class="input"></input>

            <h3 class="section-title">Trình độ ngoại ngữ</h3>
            <label class="label small-label">Ngoại ngữ 1</label>
            <input v-model="address" class="input"></input>
            <label class="label small-label">Chứng chỉ</label>
            <input v-model="address" class="input"></input>
            <label class="label small-label">Khả năng sử dụng</label>
            <v-select v-model="province" :options="provinceOptions" label="label" placeholder="Chọn"
                class="custom-select"></v-select>
            <label class="label small-label">Ngoại ngữ 2</label>
            <input v-model="address" class="input"></input>
            <label class="label small-label">Chứng chỉ</label>
            <input v-model="address" class="input"></input>
            <label class="label small-label">Khả năng sử dụng</label>
            <v-select v-model="province" :options="provinceOptions" label="label" placeholder="Chọn"
                class="custom-select"></v-select>

            <h3 class="section-title">Trình độ tin học</h3>
            <label class="label small-label">Tin học văn phòng</label>
            <input v-model="address" class="input"></input>
            <label class="label small-label">Khả năng sử dụng</label>
            <v-select v-model="province" :options="provinceOptions" label="label" placeholder="Chọn"
                class="custom-select"></v-select>
            <label class="label small-label">Trình độ khác</label>
            <input v-model="address" class="input"></input>
            <label class="label small-label">Khả năng sử dụng</label>
            <v-select v-model="province" :options="provinceOptions" label="label" placeholder="Chọn"
                class="custom-select"></v-select>

            <h3 class="section-title">Kỹ năng mềm</h3>
            <label class="label small-label">Kỹ năng mềm</label>
            <v-select v-model="province" :options="provinceOptions" label="label" placeholder="Chọn"
                class="custom-select"></v-select>
            <label class="label small-label">Yêu cầu kinh nghiệm</label>
            <v-select v-model="province" :options="provinceOptions" label="label" placeholder="Chọn"
                class="custom-select"></v-select>

            <h3 class="section-title">Nơi làm việc dự kiến</h3>
            <label class="label small-label">Nơi làm việc *</label>
            <v-select v-model="province" :options="provinceOptions" label="label" placeholder="Chọn"
                class="custom-select"></v-select>
            <v-select v-model="district" :options="districtOptions" label="label" placeholder="Chọn"
                class="custom-select"></v-select>
            <v-select v-model="ward" :options="wardOptions" label="label" placeholder="Chọn"
                class="custom-select"></v-select>
            <h3 class="section-title">Loại hợp đồng lao động</h3>
            <v-select v-model="contractType" :options="contractTypedOptions" label="label" placeholder="Chọn"
                class="custom-select"></v-select>

            <h3 class="section-title">Yêu cầu thêm</h3>
            <div class="checkbox-group">
                <label class="label small-label">
                    <input type="checkbox" v-model="lamca" />
                    Làm ca
                </label>
            </div>
            <div class="checkbox-group">
                <label class="label small-label">
                    <input type="checkbox" v-model="dicongtac" />
                    Đi công tác
                </label>
            </div>
            <div class="checkbox-group">
                <label class="label small-label">
                    <input type="checkbox" v-model="bietphai" />
                    Đi biệt phái
                </label>
            </div>
            <label class="label small-label">Hình thức làm việc *</label>
            <v-select v-model="hinhthuclamviec" :options="hinhthuclamviecOptions" label="label" placeholder="Chọn"
                class="custom-select"></v-select>
            <label class="label small-label">Mục đích làm việc *</label>
            <v-select v-model="mucdichlamviec" :options="mucdichlamviecOptions" label="label" placeholder="Chọn"
                class="custom-select"></v-select>

            <h3 class="section-title">Mức lương</h3>
            <label class="label small-label">Chọn kiểu lương *</label>
            <v-select v-model="kieuluong" :options="kieuluongOptions" label="label" placeholder="Chọn"
                class="custom-select"></v-select>
            <label class="label small-label">Mức lương *</label>
            <v-select v-model="mucluong" :options="mucluongOptions" label="label" placeholder="Chọn"
                class="custom-select"></v-select>
            <div class="checkbox-group">
                <label class="label small-label">
                    <input type="checkbox" v-model="dicongtac" />
                    Thỏa thuận khi phỏng vấn
                </label>
            </div>
            <div class="checkbox-group">
                <label class="label small-label">
                    <input type="checkbox" v-model="bietphai" />
                    Hoa hồng theo doanh thu/sản phẩm
                </label>
            </div>

            <h3 class="section-title">Chế độ phúc lợi</h3>
            <label class="label small-label">Hỗ trợ ăn</label>
            <v-select v-model="hotroan" :options="hotroanOptions" label="label" placeholder="Chọn"
                class="custom-select"></v-select>
            <label class="label small-label">Phúc lợi</label>
            <v-select v-model="hotroan" :options="hotroanOptions" label="label" placeholder="Chọn"
                class="custom-select"></v-select>
            <label class="label small-label">Xe đưa đón</label>
            <v-select v-model="xeduadon" :options="xeduadonOptions" label="label" placeholder="Chọn"
                class="custom-select"></v-select>
            <label class="label small-label">Hỗ trợ</label>
            <v-select v-model="hotro" :options="hotroOptions" label="label" placeholder="Chọn"
                class="custom-select"></v-select>
            <label class="label small-label">Khác</label>
            <input v-model="khac" class="input"></input>
            <h3 class="section-title">Điều kiện làm việc</h3>
            <label class="label small-label">Nơi làm việc</label>
            <v-select v-model="noilamviec" :options="noilamviecOptions" label="label" placeholder="Chọn"
                class="custom-select"></v-select>
            <label class="label small-label">Trọng lượng nâng</label>
            <v-select v-model="trongluong" :options="trongluongOptions" label="label" placeholder="Chọn"
                class="custom-select"></v-select>
            <label class="label small-label">Đứng hoặc đi lại</label>
            <v-select v-model="dklamvc" :options="dklamvcOptions" label="label" placeholder="Chọn"
                class="custom-select"></v-select>
            <label class="label small-label">Nghe nói</label>
            <v-select v-model="nghenoi" :options="nghenoiOptions" label="label" placeholder="Chọn"
                class="custom-select"></v-select>
            <label class="label small-label">Thị lực</label>
            <v-select v-model="thiluc" :options="thilucOptions" label="label" placeholder="Chọn"
                class="custom-select"></v-select>
            <label class="label small-label">Thao tác bằng tay</label>
            <v-select v-model="thaotac" :options="thaotacOptions" label="label" placeholder="Chọn"
                class="custom-select"></v-select>
            <label class="label small-label">Dùng 2 tay</label>
            <v-select v-model="thaotac" :options="thaotacOptions" label="label" placeholder="Chọn"
                class="custom-select"></v-select>

            <h3 class="section-title">Đối tượng ưu tiên</h3>
            <label class="label small-label">Đối tượng ưu tiên</label>
            <v-select v-model="thaotac" :options="thaotacOptions" label="label" placeholder="Chọn"
                class="custom-select"></v-select>
            <h3 class="section-title">Hình thức tuyển dụng</h3>
            <label class="label small-label">Hình thức tuyển dụng</label>
            <v-select v-model="thaotac" :options="thaotacOptions" label="label" placeholder="Chọn"
                class="custom-select"></v-select>
            <label class="label small-label">Thời gian tuyển dụng</label>

            <h3 class="section-title">Mong muốn của doanh nghiệp đối với TTDVVL</h3>
            <label class="label small-label">Mong muốn doanh nghiệp</label>
            <v-select v-model="thaotac" :options="thaotacOptions" label="label" placeholder="Chọn"
                class="custom-select"></v-select>


            <h3 class="section-title">2. Thông tin người liên hệ tuyển dụng</h3>
            <label class="label small-label">Doanh nghiệp tuyển dụng *</label>
            <input v-model="name" type="text" class="input" />
            <label class="label small-label">Địa chỉ liên hệ</label>
            <input v-model="name" type="text" class="input" />
            <label class="label small-label">MST *</label>
            <input v-model="name" type="text" class="input" />
            <label class="label small-label">Người liên hệ *</label>
            <input v-model="name" type="text" class="input" />
            <label class="label small-label">Điện thoại *</label>
            <input v-model="name" type="text" class="input" />
            <label class="label small-label">Email liên hệ *</label>
            <input v-model="name" type="text" class="input" />
            <label class="label small-label">Hình thức liên hệ khác (nếu có)</label>
            <textarea v-model="mota" class="input textarea" rows="4" placeholder="Nhập mô tả ..."></textarea>

            <div class="checkbox-group">
                <label class="label small-label">
                    <input type="checkbox" v-model="dicongtac" />
                    Hồ sơ đã duyệt
                </label>
            </div>
            <div class="checkbox-group">
                <label class="label small-label">
                    <input type="checkbox" v-model="dicongtac" />
                    Tin nổi bật
                </label>
            </div>
            <div class="checkbox-group">
                <label class="label small-label">
                    <input type="checkbox" v-model="dicongtac" />
                    Dấu thông tin DN
                </label>
            </div>
            <div class="checkbox-group">
                <label class="label small-label">
                    <input type="checkbox" v-model="dicongtac" />
                    Đăng gấp
                </label>
            </div>
            <div class="checkbox-group">
                <label class="label small-label">
                    <input type="checkbox" v-model="dicongtac" />
                    Ghim tin
                </label>
            </div>

            <h3 class="section-title">Thông tin vị trí trên bản đồ</h3>
            <label class="label small-label">Lat(Vĩ độ)</label>
            <input v-model="name" type="text" class="input" />
            <label class="label small-label">Lng(Kinh độ)</label>
            <input v-model="name" type="text" class="input" />

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
    font-size: 14px;
    /* Kích thước mặc định */
    font-weight: bold;
    margin-top: 8px;
}

.small-label {
    font-size: 13px;
    /* Giảm kích thước cho các label nhỏ */
    font-weight: 400;
    /* Mảnh hơn */
    color: #555;
}

.input,
.custom-select {
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