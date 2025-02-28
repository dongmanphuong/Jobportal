<template>
  <div>
  <form>
    <!-- Input Card -->
    <div class="input-card input-card-sm">
      <div class="input-card-form">
        <label for="jobTitleForm" class="form-label visually-hidden">Vị trí, mức lương...</label>
        <div class="input-group input-group-merge">
          <span class="input-group-prepend input-group-text">
            <i class="bi-search"></i>
          </span>
          <input type="text" class="form-control" id="jobTitleForm" placeholder="Vị trí, mức lương..."
            aria-label="Job, title, skills, or company">
        </div>
      </div>

      <div class="input-card-form">
        <!-- Select -->
        <select class="form-select form-select-lg" aria-label=".form-select-lg example">
		<option value="">Tất cả các Tỉnh</option>
		<option value="1">Hà Nội</option>
		<option value="2">Hà Giang</option>
		<option value="3">Cao Bằng</option>
		<option value="4">Bắc Kạn</option>
		<option value="5">Tuyên Quang</option>
		<option value="6">Lào Cai</option>
		<option value="7">Điện Biên</option>
		<option value="8">Lai Châu</option>
		<option value="9">Sơn La</option>
		<option value="10">Yên Bái</option>
		<option value="11">Hòa Bình</option>
		<option value="12">Thái Nguyên</option>
		<option value="13">Lạng Sơn</option>
		<option value="14">Quảng Ninh</option>
		<option value="15">Bắc Giang</option>
		<option value="16">Phú Thọ</option>
		<option value="17">Vĩnh Phúc</option>
		<option value="18">Bắc Ninh</option>
		<option value="19">Hải Dương</option>
		<option value="20">Hải Phòng</option>
		<option value="21">Hưng Yên</option>
		<option value="22">Thái Bình</option>
		<option value="23">Hà Nam</option>
		<option value="24">Nam Định</option>
		<option value="25">Ninh Bình</option>
		<option value="26">Thanh Hoá</option>
		<option value="27">Nghệ An</option>
		<option value="28">Hà Tĩnh</option>
		<option value="29">Quảng Bình</option>
		<option value="30">Quảng Trị</option>
		<option value="31">Thừa Thiên Huế</option>
		<option value="32">Đà Nẵng</option>
		<option value="33">Quảng Nam</option>
		<option value="34">Quảng Ngãi</option>
		<option value="35">Bình Định</option>
		<option value="36">Phú Yên</option>
		<option value="37">Khánh Hoà</option>
		<option value="38">Ninh Thuận</option>
		<option value="39">Bình Thuận</option>
		<option value="40">Kon Tum</option>
		<option value="41">Gia Lai</option>
		<option value="42">Đắk Lắk</option>
		<option value="43">Đắk Nông</option>
		<option value="44">Lâm Đồng</option>
		<option value="45">Bình Phước</option>
		<option value="46">Tây Ninh</option>
		<option value="47">Bình Dương</option>
		<option value="48">Đồng Nai</option>
		<option value="49">Bà Rịa - Vũng Tàu</option>
		<option value="50">Hồ Chí Minh</option>
		<option value="51">Long An</option>
		<option value="52">Tiền Giang</option>
		<option value="53">Bến Tre</option>
		<option value="54">Trà Vinh</option>
		<option value="55">Vĩnh Long</option>
		<option value="56">Đồng Tháp</option>
		<option value="57">An Giang</option>
		<option value="58">Kiên Giang</option>
		<option value="59">Cần Thơ</option>
		<option value="60">Hậu Giang</option>
		<option value="61">Sóc Trăng</option>
		<option value="62">Bạc Liêu</option>
		<option value="63">Cà Mau</option>

        </select>
        <!-- End Select -->
      </div>
      <div class="input-card-form">
        <!-- Select -->
        <select class="form-select form-select-lg" aria-label=".form-select-lg example">
		<option value="">Tất cả Ngành nghề</option>
		<option value="34e26f3f-767f-40ac-8bd0-44f1b9c579a2">Bán hàng</option>
		<option value="f4ef2ff6-0ba5-44de-bf65-7a062b7b2826">Bán hàng kỹ thuật</option>
		<option value="bac01121-a5a3-4a52-aca7-b39900304ba4">Bán lẻ/Bán sỉ</option>
		<option value="7d2e4a9f-3aaa-4722-b875-a9ceff7127f5">Bảo hiểm</option>
		<option value="13811e39-d679-4494-9104-d1983333be5f">Bất động sản</option>
		<option value="45c1e832-629c-4f40-a186-fcfdc829f67a">Biên phiên dịch</option>
		<option value="535f8bb0-99a8-4171-94b3-3ca732ad2356">Chứng khoán</option>
		<option value="8515ca36-abe0-42b4-94bc-3b99dbde93cd">Cơ khí</option>
		<option value="b21ae987-55fb-4673-967a-f3373f037037">Công nghệ cao</option>
		<option value="9f230fa7-da30-422a-85c0-3caaf99ebd64">Dầu khí</option>
		<option value="dc127181-cb71-449b-a39c-055ac80a2589">Dệt may/Da giày</option>
		<option value="b8d066d9-74c0-4c63-a7cf-41554cbdfc78">Dịch vụ khách hàng</option>
		<option value="f399a85b-58f1-46da-b412-ffe8ca1c5918">Dược phẩm/Công nghệ sinh học</option>
		<option value="77c2fa46-e97e-4586-bb87-5bef31f71131">Giáo dục/Đào tạo</option>
		<option value="4a0d00cd-bb06-4da2-8a00-7c5b010c76b8">Hàng cao cấp</option>
		<option value="d8ac4827-14ed-4532-b3f8-754f09cb388f">Hàng không/Du lịch/Khách sạn</option>
		<option value="391aae62-6b62-49d0-a15c-65572fd021b6">Hành chính/Thư ký</option>
		<option value="8e3f1833-2375-405d-b34c-b595f4d55acf">Hóa học/Hóa sinh</option>
		<option value="dc9f53ac-4e38-48ae-8546-e3f7b21dc200">Hoạch định/Dự án</option>
		<option value="00716f70-692c-4b16-a19e-0898b19b3044">Internet/Media online</option>
		<option value="b7365919-edab-4893-a6c9-ed122a97613e">IT- Phần mềm</option>
		<option value="89d3c8c4-3eda-412c-9fd6-92e151d93954">IT- Phần cứng/Mạng</option>
		<option value="a6d7af5e-e5ce-4e82-b51e-16169826292f">Kế toán</option>
		<option value="bf1534eb-191d-427f-a311-d4fed654edcf">Kho vận</option>
		<option value="385a89be-dd21-4925-823b-a555747e358b">Kiểm toán</option>
		<option value="bad6cd44-9b21-4d29-b6e9-e3c8c84479fc">Kiến trúc/Thiết kế nội thất</option>
		<option value="e608cf51-dd1b-4c64-b252-4162addfc6fd">Marketing</option>
		<option value="46733c5f-b777-47b5-bc2a-e79a2aacbed1">Môi trường/Xử lý chất thải</option>
		<option value="72627010-63ee-43ba-9331-8beebc16edf4">Mỹ thuật/Thiết kế</option>
		<option value="bda53690-579c-47b5-b64f-e7cab804cde1">Ngân hàng</option>
		<option value="b732ad81-5401-42a8-b74e-e1811f8d8668">Nhân sự</option>
		<option value="261c5833-1ea2-4795-904e-193969f40750">Nông nghiệp/Lâm nghiệp</option>
		<option value="830dd0c2-88e6-4808-a131-ab7cfbca582d">Ô tô</option>
		<option value="1a39845d-e2d4-44c5-960f-5250c86a8c4b">Oversea job</option>
		<option value="c7131927-baf1-4dbf-9cb3-66453ec6489c">Pháp lý</option>
		<option value="93c19b1c-5718-4e29-b508-54f9a38f4696">Phi chính phủ/Phi lợi nhuận</option>
		<option value="3b76feb4-97b7-41ec-9f5e-6daf3095e72c">QC/QA</option>
		<option value="6173dcbd-d959-4d68-a3cd-a79285e5883b">Quảng cáo/Khuyến mại</option>
		<option value="9fe882b0-5ede-4895-8fb4-eb22e59297d8">Sản phẩm công nghiệp</option>
		<option value="9d871ca5-cf7e-4792-9345-e7819392a51c">Sản xuất</option>
		<option value="cde51f18-49f8-4984-bf0b-fab0fd0e2153">Tài chính/Đầu tư</option>
		<option value="e180d716-cd7f-4f42-aaca-0d77b254f055">Thời trang</option>
		<option value="2a9f6d05-f083-46c0-bf66-8ca8dc051c78">Thời vụ/Hợp đồng ngắn hạn</option>
		<option value="308443f3-405d-4d2d-a1c9-eb041a9ba5c7">Thực phẩm &amp;amp; Đồ uống</option>
		<option value="d78ded1e-72e5-4727-806d-21059eb88f0e">Truyền hình/Truyền thông/Báo trí</option>
		<option value="f2502282-7644-48b5-ade2-e40306b07648">Tư vấn</option>
		<option value="0334a91e-4f16-438b-9dba-559285e25ac7">Vận chuyển/Giao nhận</option>
		<option value="8b0926ba-1efb-4b9f-9ae3-5fb81649ce04">Vật tư/Cung vận</option>
		<option value="8d824619-808f-41bb-a501-cdafec2203e1">Viễn thông</option>
		<option value="65227ebc-40de-43bf-9c99-a8bcb94af2ee">Xây dựng</option>
		<option value="082ad503-a412-450f-8b27-3ad73e05323f">Xuất nhập khẩu</option>
		<option value="a85a787e-50d1-4611-9f1e-02d74200fcc1">Y tế/Chăm sóc sức khỏe</option>
		<option value="46924ef5-dd11-4806-89b5-3d705e95ae50">Điện/Điện tử</option>
		<option value="b232396b-52d8-4abb-bb96-e4121f293f61">Khác</option>

        </select>
      </div>
      <button type="button" class="btn btn-primary">Tìm</button>
    </div>
    <!-- End Input Card -->
  </form>

  <p class="form-text">Đã có 125,000 công việc đăng tuyển</p>
  </div>
</template>


