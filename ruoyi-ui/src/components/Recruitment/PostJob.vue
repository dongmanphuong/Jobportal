<template>
    <div class="container">
        <h2 class="title">Thông tin tuyển dụng việc làm</h2>

        <section class="section">
            <h3 class="section-title">1. Thông tin tuyển dụng</h3>

            <!-- Row cho Tên công việc và Số lượng -->
            <div class="form-row">
                <div class="col-2-3">
                    <label class="label small-label">Tên công việc *</label>
                    <input v-model="jobName" type="text" class="input" placeholder="Nhập tên công việc..." />
                </div>
                <div class="col-1-3">
                    <label class="label small-label">Số lượng *</label>
                    <input v-model="soluong" type="text" class="input" placeholder="Nhập số lượng..." />
                </div>
            </div>

            <!-- Row chứa 2 cột: bên trái mô tả công việc, bên phải thông tin nghề nghiệp -->
            <div class="form-row">
                <!-- Cột trái: Mô tả công việc -->
                <div class="col-1-2">
                    <label class="label small-label">Mô tả công việc *</label>
                    <textarea v-model="mota" class="input textarea" rows="8"
                        placeholder="Nhập mô tả công việc..."></textarea>
                </div>
                <!-- Cột phải: Thông tin nghề nghiệp -->
                <div class="col-1-2">
                    <div class="job-info">
                        <!-- Dòng 1: Mã nghề -->
                        <div class="job-info-row">
                            <label class="label small-label">Mã nghề *</label>
                            <v-select v-model="companyType" :options="companyTypeOptions" label="label"
                                placeholder="Chọn loại hình..." class="custom-select" :clearable="true"></v-select>
                        </div>
                        <!-- Dòng 2: Cấp 1 và Cấp 2 -->
                        <div class="job-info-row form-row">
                            <div class="col-1-2">
                                <label class="label small-label">Cấp 1</label>
                                <input v-model="cap1" type="text" class="input" readonly
                                    placeholder="Thông tin cấp 1..." />
                            </div>
                            <div class="col-1-2">
                                <label class="label small-label">Cấp 2</label>
                                <input v-model="cap2" type="text" class="input" readonly
                                    placeholder="Thông tin cấp 2..." />
                            </div>
                        </div>
                        <!-- Dòng 3: Cấp 3 và Cấp 4 -->
                        <div class="job-info-row form-row">
                            <div class="col-1-2">
                                <label class="label small-label">Cấp 3</label>
                                <input v-model="cap3" type="text" class="input" readonly
                                    placeholder="Thông tin cấp 3..." />
                            </div>
                            <div class="col-1-2">
                                <label class="label small-label">Cấp 4</label>
                                <input v-model="cap4" type="text" class="input" readonly
                                    placeholder="Thông tin cấp 4..." />
                            </div>
                        </div>
                        <!-- Dòng 4: Chức vụ -->
                        <div class="job-info-row">
                            <label class="label small-label">Chức vụ</label>
                            <input v-model="chucvu" type="text" class="input" placeholder="Nhập chức vụ..." />
                        </div>
                    </div>
                </div>
            </div>

            <!-- Mục Trình độ học vấn và trình độ CMKT trên cùng 1 dòng -->
            <div class="form-row">
                <div class="col-1-2">
                    <label class="label small-label">Trình độ học vấn *</label>
                    <v-select v-model="province" :options="provinceOptions" label="label"
                        placeholder="Chọn trình độ học vấn..." class="custom-select" :clearable="true"></v-select>
                </div>
                <div class="col-1-2">
                    <label class="label small-label">Trình độ CMKT *</label>
                    <v-select v-model="cmkt" :options="provinceOptions" label="label"
                        placeholder="Chọn trình độ CMKT..." class="custom-select" :clearable="true"></v-select>
                </div>
            </div>

            <label class="label small-label">Chuyên ngành đào tạo</label>
            <textarea v-model="chuyennghanhdaotao" class="input textarea" rows="4"
                placeholder="Nhập mô tả chuyên ngành đào tạo..."></textarea>

            <!-- Phần Trình độ khác -->
            <h3 class="section-title">Trình độ khác</h3>
            <div class="form-row">
                <div class="col-1-2">
                    <label class="label small-label">Trình độ khác 1.</label>
                    <input v-model="trinhdokhac1" class="input" placeholder="Nhập trình độ khác 1..." />
                </div>
                <div class="col-1-2">
                    <label class="label small-label">Trình độ khác 2.</label>
                    <input v-model="trinhdokhac2" class="input" placeholder="Nhập trình độ khác 2..." />
                </div>
            </div>

            <!-- Phần Trình độ kỹ năng nghề -->
            <div class="form-row">
                <div class="col-1-2">
                    <label class="label small-label">Trình độ kỹ năng nghề</label>
                    <v-select v-model="kynangnghe" :options="provinceOptions" label="label"
                        placeholder="Chọn trình độ kỹ năng nghề..." class="custom-select" :clearable="true"></v-select>
                </div>
                <div class="col-1-2">
                    <label class="label small-label">Kỹ năng nghề bậc</label>
                    <input v-model="kynangbac" class="input" placeholder="Nhập kỹ năng nghề bậc..." />
                </div>
            </div>


            <h3 class="section-title">Trình độ ngoại ngữ</h3>
            <!-- Ngoại ngữ 1 row -->
            <div class="form-row">
                <div class="col-1-3">
                    <label class="label small-label">Ngoại ngữ 1</label>
                    <input v-model="ngoaingu1" class="input" placeholder="Nhập ngoại ngữ 1..." />
                </div>
                <div class="col-1-3">
                    <label class="label small-label">Chứng chỉ</label>
                    <input v-model="chungchi1" class="input" placeholder="Nhập chứng chỉ..." />
                </div>
                <div class="col-1-3">
                    <label class="label small-label">Khả năng sử dụng</label>
                    <v-select v-model="khanang1" :options="provinceOptions" label="label" 
                        placeholder="Chọn khả năng sử dụng..." class="custom-select" :clearable="true"></v-select>
                </div>
            </div>

            <!-- Ngoại ngữ 2 row -->
            <div class="form-row">
                <div class="col-1-3">
                    <label class="label small-label">Ngoại ngữ 2</label>
                    <input v-model="ngoaingu2" class="input" placeholder="Nhập ngoại ngữ 2..." />
                </div>
                <div class="col-1-3">
                    <label class="label small-label">Chứng chỉ</label>
                    <input v-model="chungchi2" class="input" placeholder="Nhập chứng chỉ..." />
                </div>
                <div class="col-1-3">
                    <label class="label small-label">Khả năng sử dụng</label>
                    <v-select v-model="khanang2" :options="provinceOptions" label="label" 
                        placeholder="Chọn khả năng sử dụng..." class="custom-select" :clearable="true"></v-select>
                </div>
            </div>

            <h3 class="section-title">Trình độ tin học</h3>
            <!-- Tin học văn phòng và khả năng sử dụng -->
            <div class="form-row">
                <div class="col-1-2">
                    <div class="form-group">
                        <label class="label small-label">Tin học văn phòng</label>
                        <input v-model="tinhoc" class="input" placeholder="Nhập tên tin học văn phòng..." />
                    </div>
                </div>
                <div class="col-1-2">
                    <div class="form-group">
                        <label class="label small-label">Khả năng sử dụng</label>
                        <v-select v-model="tinhocKS" :options="provinceOptions" label="label" 
                            placeholder="Chọn khả năng sử dụng..." class="custom-select" :clearable="true"></v-select>
                    </div>
                </div>
            </div>

            <!-- Trình độ khác và khả năng sử dụng -->
            <div class="form-row">
                <div class="col-1-2">
                    <div class="form-group">
                        <label class="label small-label">Trình độ khác</label>
                        <input v-model="tinhocKhac" class="input" placeholder="Nhập trình độ khác..." />
                    </div>
                </div>
                <div class="col-1-2">
                    <div class="form-group">
                        <label class="label small-label">Khả năng sử dụng</label>
                        <v-select v-model="tinhocKS2" :options="provinceOptions" label="label"
                            placeholder="Chọn khả năng sử dụng..." class="custom-select" :clearable="true"></v-select>
                    </div>
                </div>
            </div>

            <h3 class="section-title">Kỹ năng mềm</h3>
            <div class="form-row">
                <div class="col-1-2">
                    <div class="form-group">
                        <label class="label small-label">Kỹ năng mềm</label>
                        <v-select v-model="kynangmem" :options="provinceOptions" label="label" 
                            placeholder="Chọn kỹ năng mềm..." class="custom-select" :clearable="true"></v-select>
                    </div>
                </div>
                <div class="col-1-2">
                    <div class="form-group">
                        <label class="label small-label">Yêu cầu kinh nghiệm</label>
                        <v-select v-model="kinhnghiem" :options="provinceOptions" label="label" 
                            placeholder="Chọn kinh nghiệm..." class="custom-select" :clearable="true"></v-select>
                    </div>
                </div>
            </div>

            <h3 class="section-title">Nơi làm việc dự kiến</h3>
            <div class="form-row">
                <div class="col-1-3">
                    <div class="form-group">
                        <label class="label small-label">Nơi làm việc *</label>
                        <v-select v-model="diadiem" :options="provinceOptions" label="label" 
                            placeholder="Chọn nơi làm việc..." class="custom-select" :clearable="true"></v-select>
                    </div>
                </div>
                <div class="col-1-3">
                    <div class="form-group">
                        <label class="label small-label">Quận/Huyện</label>
                        <v-select v-model="district" :options="districtOptions" label="label" 
                            placeholder="Chọn quận/huyện..." class="custom-select" :clearable="true"></v-select>
                    </div>
                </div>
                <div class="col-1-3">
                    <div class="form-group">
                        <label class="label small-label">Phường/Xã</label>
                        <v-select v-model="ward" :options="wardOptions" label="label" 
                            placeholder="Chọn phường/xã..." class="custom-select" :clearable="true"></v-select>
                    </div>
                </div>
            </div>

            <h3 class="section-title">Loại hợp đồng lao động</h3>
            <v-select v-model="contractType" :options="contractTypedOptions" label="label"
                placeholder="Chọn loại hợp đồng..." class="custom-select" :clearable="true"></v-select>

            <h3 class="section-title">Yêu cầu thêm</h3>
            <div class="form-row checkbox-row">
                <div class="col-1-3">
                    <div class="checkbox-group">
                        <label class="label small-label">
                            <input type="checkbox" v-model="lamca" />
                            Làm ca
                        </label>
                    </div>
                </div>
                <div class="col-1-3">
                    <div class="checkbox-group">
                        <label class="label small-label">
                            <input type="checkbox" v-model="dicongtac" />
                            Đi công tác
                        </label>
                    </div>
                </div>
                <div class="col-1-3">
                    <div class="checkbox-group">
                        <label class="label small-label">
                            <input type="checkbox" v-model="bietphai" />
                            Đi biệt phái
                        </label>
                    </div>
                </div>
            </div>
            <div class="form-row">
                <div class="col-1-2">
                    <div class="form-group">
                        <label class="label small-label">Hình thức làm việc *</label>
                        <v-select v-model="hinhthuclamviec" :options="hinhthuclamviecOptions" label="label"
                            placeholder="Chọn hình thức làm việc..." class="custom-select" :clearable="true"></v-select>
                    </div>
                </div>
                <div class="col-1-2">
                    <div class="form-group">
                        <label class="label small-label">Mục đích làm việc *</label>
                        <v-select v-model="mucdichlamviec" :options="mucdichlamviecOptions" label="label"
                            placeholder="Chọn mục đích làm việc..." class="custom-select" :clearable="true"></v-select>
                    </div>
                </div>
            </div>

            <h3 class="section-title">Mức lương</h3>
            <div class="form-row">
                <div class="col-1-2">
                    <div class="form-group">
                        <label class="label small-label">Chọn kiểu lương *</label>
                        <v-select v-model="kieuluong" :options="kieuluongOptions" label="label" 
                            placeholder="Chọn kiểu lương..." class="custom-select" :clearable="true"></v-select>
                    </div>
                </div>
                <div class="col-1-2">
                    <div class="form-group">
                        <label class="label small-label">Mức lương *</label>
                        <v-select v-model="mucluong" :options="mucluongOptions" label="label" 
                            placeholder="Chọn mức lương..." class="custom-select" :clearable="true"></v-select>
                    </div>
                </div>
            </div>

            <div class="form-row checkbox-row">
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
            </div>

            <h3 class="section-title">Chế độ phúc lợi</h3>
            <div class="form-row">
                <div class="col-1-4">
                    <div class="form-group">
                        <label class="label small-label">Hỗ trợ ăn</label>
                        <v-select v-model="hotroan" :options="hotroanOptions" label="label" 
                            placeholder="Chọn hỗ trợ ăn..." class="custom-select" :clearable="true"></v-select>
                    </div>
                </div>
                <div class="col-1-4">
                    <div class="form-group">
                        <label class="label small-label">Phúc lợi</label>
                        <v-select v-model="hotroan" :options="hotroanOptions" label="label" 
                            placeholder="Chọn phúc lợi..." class="custom-select" :clearable="true"></v-select>
                    </div>
                </div>
                <div class="col-1-4">
                    <div class="form-group">
                        <label class="label small-label">Xe đưa đón</label>
                        <v-select v-model="xeduadon" :options="xeduadonOptions" label="label" 
                            placeholder="Chọn xe đưa đón..." class="custom-select" :clearable="true"></v-select>
                    </div>
                </div>
                <div class="col-1-4">
                    <div class="form-group">
                        <label class="label small-label">Hỗ trợ</label>
                        <v-select v-model="hotro" :options="hotroOptions" label="label" 
                            placeholder="Chọn hỗ trợ..." class="custom-select" :clearable="true"></v-select>
                    </div>
                </div>
            </div>
            
            <div class="form-group">
                <label class="label small-label">Khác</label>
                <input v-model="khac" class="input" placeholder="Nhập thông tin khác..." />
            </div>

            <h3 class="section-title">Điều kiện làm việc</h3>
            <div class="form-row">
                <div class="col-1-4">
                    <div class="form-group">
                        <label class="label small-label">Nơi làm việc</label>
                        <v-select v-model="noilamviec" :options="noilamviecOptions" label="label" 
                            placeholder="Chọn nơi làm việc..." class="custom-select" :clearable="true"></v-select>
                    </div>
                </div>
                <div class="col-1-4">
                    <div class="form-group">
                        <label class="label small-label">Trọng lượng nâng</label>
                        <v-select v-model="trongluong" :options="trongluongOptions" label="label"
                            placeholder="Chọn trọng lượng nâng..." class="custom-select" :clearable="true"></v-select>
                    </div>
                </div>
                <div class="col-1-4">
                    <div class="form-group">
                        <label class="label small-label">Đứng hoặc đi lại</label>
                        <v-select v-model="dklamvc" :options="dklamvcOptions" label="label" 
                            placeholder="Chọn..." class="custom-select" :clearable="true"></v-select>
                    </div>
                </div>
                <div class="col-1-4">
                    <div class="form-group">
                        <label class="label small-label">Nghe nói</label>
                        <v-select v-model="nghenoi" :options="nghenoiOptions" label="label" 
                            placeholder="Chọn..." class="custom-select" :clearable="true"></v-select>
                    </div>
                </div>
            </div>

            <div class="form-row">
                <div class="col-1-3">
                    <div class="form-group">
                        <label class="label small-label">Thị lực</label>
                        <v-select v-model="thiluc" :options="thilucOptions" label="label" 
                            placeholder="Chọn..." class="custom-select" :clearable="true"></v-select>
                    </div>
                </div>
                <div class="col-1-3">
                    <div class="form-group">
                        <label class="label small-label">Thao tác bằng tay</label>
                        <v-select v-model="thaotac" :options="thaotacOptions" label="label" 
                            placeholder="Chọn..." class="custom-select" :clearable="true"></v-select>
                    </div>
                </div>
                <div class="col-1-3">
                    <div class="form-group">
                        <label class="label small-label">Dùng 2 tay</label>
                        <v-select v-model="thaotac2" :options="thaotacOptions" label="label" 
                            placeholder="Chọn..." class="custom-select" :clearable="true"></v-select>
                    </div>
                </div>
            </div>

            <h3 class="section-title">Đối tượng ưu tiên</h3>
            <label class="label small-label">Đối tượng ưu tiên</label>
            <v-select v-model="doituonguutien" :options="thaotacOptions" label="label"
                placeholder="Chọn đối tượng ưu tiên..." class="custom-select" :clearable="true"></v-select>
            <h3 class="section-title">Hình thức tuyển dụng</h3>
            <div class="form-row">
                <div class="col-1-2">
                    <div class="form-group">
                        <label class="label small-label">Hình thức tuyển dụng</label>
                        <v-select v-model="hinhthuctuyendung" :options="thaotacOptions" label="label"
                            placeholder="Chọn hình thức tuyển dụng..." class="custom-select" :clearable="true"></v-select>
                    </div>
                </div>
                <div class="col-1-2">
                    <div class="form-group">
                        <label class="label small-label">Thời gian tuyển dụng</label>
                        <Datepicker 
                            v-model="thoigiantuyendung"
                            :format="formatDate"
                            :language="vi"
                            placeholder="Chọn thời gian..."
                            input-class="input date-picker"
                            :monday-first="true"
                        />
                    </div>
                </div>
            </div>

            <h3 class="section-title">Mong muốn của doanh nghiệp đối với TTDVVL</h3>
            <label class="label small-label">Mong muốn doanh nghiệp</label>
            <v-select v-model="mongmuon" :options="thaotacOptions" label="label" placeholder="Chọn mong muốn..."
                class="custom-select" :clearable="true"></v-select>

            <h3 class="section-title">2. Thông tin người liên hệ tuyển dụng</h3>
            <div class="form-group mb-15">
                <label class="label small-label">Doanh nghiệp tuyển dụng *</label>
                <input v-model="doanhnghiep" type="text" class="input" placeholder="Nhập tên doanh nghiệp tuyển dụng..." />
            </div>
            
            <div class="form-row">
                <div class="col-2-3">
                    <div class="form-group">
                        <label class="label small-label">Địa chỉ liên hệ</label>
                        <input v-model="diachi" type="text" class="input" placeholder="Nhập địa chỉ liên hệ..." />
                    </div>
                </div>
                <div class="col-1-3">
                    <div class="form-group">
                        <label class="label small-label">MST *</label>
                        <input v-model="mst" type="text" class="input" placeholder="Nhập MST..." />
                    </div>
                </div>
            </div>

            <div class="form-row">
                <div class="col-1-2">
                    <div class="form-group">
                        <label class="label small-label">Người liên hệ *</label>
                        <input v-model="nguoiLH" type="text" class="input" placeholder="Nhập tên người liên hệ..." />
                    </div>
                </div>
                <div class="col-1-2">
                    <div class="form-group">
                        <label class="label small-label">Điện thoại *</label>
                        <input v-model="dienthoai" type="text" class="input" placeholder="Nhập số điện thoại..." />
                    </div>
                </div>
            </div>

            <div class="form-row">
                <div class="col-1-2">
                    <div class="form-group">
                        <label class="label small-label">Email liên hệ *</label>
                        <input v-model="emailLH" type="text" class="input" placeholder="Nhập email liên hệ..." />
                    </div>
                </div>
                <div class="col-1-2">
                    <div class="form-group">
                        <label class="label small-label">Hình thức liên hệ khác</label>
                        <textarea v-model="hinhthucLH" class="input textarea" rows="2"
                            placeholder="Nhập hình thức liên hệ khác..."></textarea>
                    </div>
                </div>
            </div>
            <div class="checkbox-group">
                <label class="label small-label">
                    <input type="checkbox" v-model="dicongtac" />
                    Hồ sơ đã duyệt
                </label>
            </div>
            <div class="checkbox-group">
                <label class="label small-label">
                    <input type="checkbox" v-model="tinNoiBat" />
                    Tin nổi bật
                </label>
            </div>
            <div class="checkbox-group">
                <label class="label small-label">
                    <input type="checkbox" v-model="dauThongTin" />
                    Dấu thông tin DN
                </label>
            </div>
            <div class="checkbox-group">
                <label class="label small-label">
                    <input type="checkbox" v-model="dangGap" />
                    Đăng gấp
                </label>
            </div>
            <div class="checkbox-group">
                <label class="label small-label">
                    <input type="checkbox" v-model="ghimTin" />
                    Ghim tin
                </label>
            </div>

            <h3 class="section-title">Thông tin vị trí trên bản đồ</h3>
            <div class="form-row">
                <div class="col-1-2">
                    <div class="form-group">
                        <label class="label small-label">Lat(Vĩ độ)</label>
                        <input v-model="lat" type="text" class="input" placeholder="Nhập Vĩ độ..." />
                    </div>
                </div>
                <div class="col-1-2">
                    <div class="form-group">
                        <label class="label small-label">Lng(Kinh độ)</label>
                        <input v-model="lng" type="text" class="input" placeholder="Nhập Kinh độ..." />
                    </div>
                </div>
            </div>

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
import Datepicker from 'vuejs-datepicker';
import { vi } from 'vuejs-datepicker/dist/locale';

export default {
    components: { vSelect, Datepicker },
    data() {
        return {
            jobName: "",
            soluong: "",
            mota: "",
            companyType: "",
            cap1: "",
            cap2: "",
            cap3: "",
            cap4: "",
            chucvu: "",
            province: "",
            cmkt: "",
            chuyennghanhdaotao: "",
            trinhdokhac1: "",
            trinhdokhac2: "",
            kynangnghe: "",
            kynangbac: "",
            ngoaingu1: "",
            chungchi1: "",
            khanang1: "",
            ngoaingu2: "",
            chungchi2: "",
            khanang2: "",
            tinhoc: "",
            tinhocKS: "",
            tinhocKhac: "",
            tinhocKS2: "",
            kynangmem: "",
            kinhnghiem: "",
            diadiem: "",
            district: "",
            ward: "",
            contractType: "",
            hinhthuclamviec: "",
            mucdichlamviec: "",
            kieuluong: "",
            mucluong: "",
            lamca: false,
            dicongtac: false,
            bietphai: false,
            hotroan: "",
            xeduadon: "",
            hotro: "",
            khac: "",
            noilamviec: "",
            trongluong: "",
            dklamvc: "",
            nghenoi: "",
            thiluc: "",
            thaotac: "",
            thaotac2: "",
            doituonguutien: "",
            hinhthuctuyendung: "",
            thoigiantuyendung: null,
            mongmuon: "",
            doanhnghiep: "",
            diachi: "",
            mst: "",
            nguoiLH: "",
            dienthoai: "",
            emailLH: "",
            hinhthucLH: "",
            lat: "",
            lng: "",
            hsDuyet: false,
            tinNoiBat: false,
            dauThongTin: false,
            dangGap: false,
            ghimTin: false,
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
            hotroanOptions: [
                { value: "TVPL", label: "Tư vấn pháp luật" },
                { value: "K", label: "Khác" }
            ],
            vi: vi
        };
    },
    methods: {
        submitForm() {
            alert("Lưu thành công!");
        },
        formatDate(date) {
            if (!date) return '';
            const day = date.getDate().toString().padStart(2, '0');
            const month = (date.getMonth() + 1).toString().padStart(2, '0');
            const year = date.getFullYear();
            return `${day}/${month}/${year}`;
        }
    }
};
</script>

<style>
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
    font-size: 16px;
    font-weight: 600;
    color: #334155;
    margin-top: 40px;
    margin-bottom: 20px;
    padding-bottom: 12px;
    border-bottom: 1px solid #e2e8f0;
}

.label {
    font-size: 14px;
    font-weight: 500;
    color: #475569;
    margin-bottom: 12px;
    display: block;
}

.small-label {
    font-size: 13px;
    font-weight: 400;
    color: #555;
}

/* Thống nhất kích thước cho input và select */
.input,
.custom-select {
    width: 100%;
    height: 40px;
    padding: 8px 12px;
    border: 1px solid #e2e8f0;
    border-radius: 6px;
    font-size: 14px;
    background: #fff;
    margin-top: 8px;
}

/* Điều chỉnh v-select để match với input */
::v-deep .vs__dropdown-toggle {
    min-height: 32px;
    padding: 2px 6px;
    border: none;
}

::v-deep .vs__selected-options {
    padding: 0;
    min-height: 28px;
}

::v-deep .vs__selected {
    margin: 0;
    padding: 0;
}

::v-deep .vs__search {
    margin: 0;
    padding: 4px 0;
}

::v-deep .vs__actions {
    padding: 2px 0;
}

/* Loại trừ textarea */
.input.textarea {
    height: auto;
    min-height: auto;
}

/* Các row sử dụng flexbox */
.form-row {
    display: flex;
    gap: 24px;
    margin-bottom: 30px;
}

/* Phân chia cột cho row: 2/3, 1/3, 1/2 */
.col-2-3 {
    flex: 2;
}

.col-1-3 {
    flex: 1;
}

.col-1-2 {
    flex: 1;
    min-width: 0; /* Tránh overflow */
}

/* Thêm style cho cột 1/4 */
.col-1-4 {
    flex: 1;
    min-width: 0; /* Tránh overflow */
}

/* Styling cho khối thông tin nghề nghiệp */
.job-info {
    border: 1px dashed #ccc;
    padding: 10px;
}

.job-info-row {
    margin-bottom: 10px;
}

/* Address group */
.address-group {
    margin-bottom: 10px;
}

/* Buttons */
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

.cancel {
    background: #f44336;
    color: white;
}

.save {
    background: #4caf50;
    color: white;
}

/* Điều chỉnh style cho checkbox row */
.checkbox-row {
    display: flex;
    justify-content: flex-start;
    gap: 30px;
    margin-bottom: 15px;
}

.checkbox-row .checkbox-group {
    margin: 0;
}

.checkbox-group .label {
    min-width: auto;
    margin-right: 0;
    display: flex;
    align-items: center;
    cursor: pointer;
    white-space: nowrap;
}

.checkbox-group input[type="checkbox"] {
    margin-right: 8px;
}

/* Điều chỉnh style cho form-row */
.form-row {
    display: flex;
    gap: 15px;
    margin-bottom: 15px;
}

.form-group {
    flex: 1;
    min-width: 0;
    margin-bottom: 25px;
}

.label {
    min-width: 150px;
    margin-right: 10px;
    white-space: nowrap;
}

/* Điều chỉnh form-group trong các cột */
.col-1-3 .form-group,
.col-1-4 .form-group {
    margin-bottom: 0;
}

/* Style cho date picker */
.date-picker {
    height: 34px;
    width: 100%;
    padding: 4px 8px;
    border: 1px solid #ddd;
    border-radius: 4px;
    font-size: 14px;
    color: #333;
    background-color: white;
    cursor: pointer;
}

/* Style cho popup calendar */
::v-deep .vdp-datepicker__calendar {
    border: 1px solid #ddd;
    border-radius: 4px;
    font-family: inherit;
    padding: 6px;
    background: white;
    box-shadow: 0 2px 12px rgba(0,0,0,0.15);
}

::v-deep .vdp-datepicker__calendar .cell {
    height: 30px;
    line-height: 30px;
    border-radius: 4px;
}

::v-deep .vdp-datepicker__calendar .cell:not(.blank):not(.disabled).day:hover,
::v-deep .vdp-datepicker__calendar .cell:not(.blank):not(.disabled).month:hover,
::v-deep .vdp-datepicker__calendar .cell:not(.blank):not(.disabled).year:hover {
    border-color: #2196F3;
    background: #E3F2FD;
}

::v-deep .vdp-datepicker__calendar .cell.selected {
    background: #2196F3;
    color: white;
}

::v-deep .vdp-datepicker__calendar .cell.today {
    background: #E3F2FD;
}

::v-deep .vdp-datepicker__calendar header {
    margin-bottom: 8px;
}

::v-deep .vdp-datepicker__calendar header span {
    color: #333;
    font-weight: bold;
}

::v-deep .vdp-datepicker__calendar header .prev,
::v-deep .vdp-datepicker__calendar header .next {
    color: #666;
    border-radius: 4px;
    padding: 4px 8px;
}

::v-deep .vdp-datepicker__calendar header .prev:hover,
::v-deep .vdp-datepicker__calendar header .next:hover {
    background: #f5f5f5;
}

/* Thêm margin bottom cho form-group */
.form-group {
    margin-bottom: 10px;
}

/* Class để tăng margin bottom khi cần thiết */
.mb-15 {
    margin-bottom: 15px !important;
}

.quick-options {
    display: flex;
    flex-wrap: nowrap;
    gap: 20px;
    padding: 10px 15px;
    background: #f8f9fa;
    border-radius: 4px;
    margin-bottom: 20px;
    align-items: center;
    border: 1px solid #e0e0e0;
}

.checkbox-inline {
    display: flex;
    align-items: center;
    white-space: nowrap;
}

.checkbox-label {
    display: flex;
    align-items: center;
    cursor: pointer;
    user-select: none;
}

.checkbox-label input[type="checkbox"] {
    width: 14px;
    height: 14px;
    margin-right: 6px;
    cursor: pointer;
}

.checkbox-text {
    font-size: 13px;
    color: #333;
}

/* Style cho v-select */
::v-deep .vs__clear {
    display: flex;              /* Hiện nút clear */
    align-items: center;
    justify-content: center;
    border-radius: 50%;
    width: 14px;
    height: 14px;
    margin-right: 8px;
    background: #e0e0e0;
    color: #666;
    cursor: pointer;
}

::v-deep .vs__clear:hover {
    background: #ccc;
    color: #333;
}

::v-deep .vs__actions {
    padding: 2px 8px 2px 3px;
    display: flex;
    align-items: center;
}

::v-deep .vs__dropdown-toggle {
    border: 1px solid #e0e0e0 !important;
    border-radius: 4px;
    background: white;
    min-height: 34px;
    padding: 4px 8px;
    transition: all 0.3s ease;
}

::v-deep .vs__selected {
    margin: 0 6px 0 0;
}

/* Style for inline checkboxes */
.checkbox-row-container {
    display: flex;
    flex-wrap: nowrap;
    justify-content: space-between;
    align-items: center;
    background: #fff;
    border-radius: 8px;
    padding: 12px 20px;
    margin-bottom: 20px;
    border: 1px solid #e2e8f0;
    box-shadow: 0 1px 2px rgba(0, 0, 0, 0.05);
}

.checkbox-item {
    padding: 0 8px;
    white-space: nowrap;
}

.checkbox-label {
    display: flex;
    align-items: center;
    cursor: pointer;
    padding: 4px 8px;
    border-radius: 4px;
    transition: background-color 0.2s;
}

.checkbox-label:hover {
    background-color: #f1f5f9;
}

.checkbox-label input[type="checkbox"] {
    margin-right: 8px;
    cursor: pointer;
}

.checkbox-text {
    font-size: 13px;
    color: #475569;
}

/* Responsive adjustments */
@media (max-width: 992px) {
    .checkbox-row-container {
        flex-wrap: wrap;
        gap: 10px;
        justify-content: flex-start;
    }
    
    .checkbox-item {
        flex-basis: auto;
    }
}

@media (max-width: 576px) {
    .checkbox-row-container {
        flex-direction: column;
        align-items: flex-start;
        padding: 12px 15px;
    }
    
    .checkbox-item {
        width: 100%;
        padding: 4px 0;
    }
}

/* Section spacing */
.section-divider {
    height: 1px;
    background-color: #e2e8f0;
    margin: 35px 0;
}

/* Specific spacing for recruitment sections */
.recruitment-info .section-title,
.contact-info .section-title {
    margin-top: 35px;
    margin-bottom: 25px;
}

/* Input and select controls with proper spacing */
.input,
.custom-select,
::v-deep .vs__dropdown-toggle {
    width: 100%;
    height: 40px;
    padding: 8px 12px;
    border: 1px solid #e2e8f0;
    border-radius: 6px;
    font-size: 14px;
    background: #fff;
    margin-top: 8px;
}

/* Textarea specific spacing */
textarea.input {
    min-height: 100px;
    margin-top: 8px;
    padding: 12px;
}

/* V-Select specific spacing */
::v-deep .vs__dropdown-toggle {
    padding: 6px 12px;
    margin-top: 8px;
}

::v-deep .vs__selected {
    margin: 0 6px 0 0;
}

::v-deep .vs__search {
    margin: 0;
    padding: 4px 0;
}

/* Contact info section specific spacing */
.contact-info .form-group {
    margin-bottom: 25px;
}

/* Last items in sections */
.form-group:last-child,
.form-row:last-child {
    margin-bottom: 35px;
}

/* Responsive adjustments */
@media (max-width: 768px) {
    .form-row {
        flex-direction: column;
        gap: 20px;
        margin-bottom: 25px;
    }
    
    .form-group {
        margin-bottom: 20px;
    }
    
    h3.section-title {
        margin-top: 30px;
        margin-bottom: 20px;
    }
}

/* V-Select custom styles */
::v-deep .vs__dropdown-toggle {
    padding: 4px 8px;
    border: 1px solid #e2e8f0;
    border-radius: 6px;
    background: white;
    height: 40px;
    display: flex;
    align-items: center;
}

::v-deep .vs__selected {
    margin: 0;
    padding: 0;
    font-size: 14px;
    color: #1e293b;
}

::v-deep .vs__search {
    margin: 0;
    padding: 0;
    font-size: 14px;
    color: #1e293b;
}

::v-deep .vs__search::placeholder {
    color: #94a3b8;
}

::v-deep .vs__actions {
    padding: 0 8px 0 3px;
}

::v-deep .vs__clear {
    fill: #94a3b8;
    padding: 0;
    margin: 0 8px 0 0;
}

::v-deep .vs__open-indicator {
    fill: #94a3b8;
}

::v-deep .vs__dropdown-menu {
    border: 1px solid #e2e8f0;
    border-radius: 6px;
    padding: 4px 0;
    margin-top: 4px;
    box-shadow: 0 4px 6px -1px rgba(0, 0, 0, 0.1), 0 2px 4px -1px rgba(0, 0, 0, 0.06);
}

::v-deep .vs__dropdown-option {
    padding: 8px 12px;
    font-size: 14px;
    color: #1e293b;
}

::v-deep .vs__dropdown-option--highlight {
    background: #e0f2fe;
    color: #0284c7;
}

::v-deep .vs__no-options {
    padding: 8px 12px;
    font-size: 14px;
    color: #64748b;
}

::v-deep .vs--single .vs__selected {
    height: 30px;
    display: flex;
    align-items: center;
}

/* Placeholder style */
::v-deep .vs__selected-options {
    padding: 0;
}

::v-deep .vs__selected-options input::placeholder {
    color: #94a3b8;
}

/* Focus state */
::v-deep .vs--focus .vs__dropdown-toggle {
    border-color: #3b82f6;
    box-shadow: 0 0 0 1px #bfdbfe;
}

/* Error state if needed */
.has-error ::v-deep .vs__dropdown-toggle {
    border-color: #ef4444;
}

/* Disabled state if needed */
.vs--disabled ::v-deep .vs__dropdown-toggle {
    background: #f1f5f9;
    cursor: not-allowed;
}

/* Hover state */
::v-deep .vs__dropdown-toggle:hover {
    border-color: #cbd5e1;
}

/* Consistent height for single vs multiple select */
::v-deep.v-select[multiple] .vs__selected {
    margin: 4px 4px 4px 0;
}

::v-deep.v-select[multiple] .vs__deselect {
    display: inline-flex;
    align-items: center;
    padding: 0 4px;
}

/* Fix v-select overflow issues */
.v-select {
  width: 100%;
  position: relative;
}

.v-select .vs__dropdown-toggle {
  border: 1px solid #e2e8f0;
  border-radius: 6px;
  height: 40px;
  padding: 0;
  background: white;
}

.v-select .vs__selected-options {
  padding: 0 8px;
  overflow: hidden;
  width: calc(100% - 40px);
  white-space: nowrap;
  text-overflow: ellipsis;
  min-height: 38px;
  display: flex;
  align-items: center;
}

.v-select .vs__actions {
  position: absolute;
  right: 0;
  top: 0;
  height: 100%;
  padding: 0 8px;
  display: flex;
  align-items: center;
}

.v-select .vs__search {
  margin: 0;
  padding: 0;
  border: none;
  font-size: 14px;
}

.v-select .vs__selected {
  margin: 0;
  padding: 0;
  font-size: 14px;
  white-space: nowrap;
  overflow: hidden;
  text-overflow: ellipsis;
}

.v-select .vs__dropdown-menu {
  top: 100%;
  width: 100%;
  border: 1px solid #e2e8f0;
  border-radius: 0 0 6px 6px;
  z-index: 1000;
}

.v-select .vs__dropdown-option {
  padding: 8px 12px;
  font-size: 14px;
}

.v-select .vs__dropdown-option--highlight {
  background: #e0f2fe;
  color: #0284c7;
}

.v-select .vs__clear {
  margin-right: 8px;
}

/* Fix for col-1-3 and col-1-4 with v-select */
.col-1-3 .v-select,
.col-1-4 .v-select {
  max-width: 100%;
}

.col-1-3 .v-select .vs__selected-options,
.col-1-4 .v-select .vs__selected-options {
  max-width: calc(100% - 40px);
}

.col-1-3 .v-select .vs__selected,
.col-1-4 .v-select .vs__selected {
  max-width: 100%;
}

/* Fix for job-info section */
.job-info .v-select {
  max-width: 100%;
}

/* Fix for datepicker */
.vdp-datepicker input {
  height: 40px;
  width: 100%;
  padding: 8px 12px;
  border: 1px solid #e2e8f0;
  border-radius: 6px;
  font-size: 14px;
}
</style>