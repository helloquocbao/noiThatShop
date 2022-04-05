<div class="span9">
    <ul class="breadcrumb">
        <li><a href="<c:url value="/trang-chu"/>">Trang chủ</a> <span
            class="divider">/</span></li>
        <li><a href="<c:url value="/quan-tri"/>">Quản trị</a> <span
            class="divider">/</span></li>
        <li><a href="<c:url value="/quan-ly-san-pham"/>">Quản lý
                sản phẩm</a> <span class="divider">/</span></li>
        <li class="active">Sửa sản phẩm</li>
    </ul>
    <div class="well">
        <h2 style="text-align: center;">Sửa Sản Phẩm</h2>
        <h6 style="text-align: center; color: red;">
            Những ô có dấu (<sup>*</sup>) không được để trống!!!
        </h6>

        <br>
        <form:form class="form-horizontal" method="POST"
            modelAttribute="products">
            <div class="control-group">
                <label class="control-label">Loại sản phẩm <sup>*</sup></label>
                <div class="controls">
                    <form:select path="maLoai">
                        <form:option value="1">Bánh</form:option>
                        <form:option value="2">Kẹo</form:option>
                        <form:option value="3">Mứt</form:option>
                        <form:option value="4">Đồ ăn nhanh</form:option>
                        <form:option value="5">Nước giải khát</form:option>
                        <form:option value="6">Thịt khô</form:option>
                        <form:option value="7">Chè</form:option>
                        <form:option value="100000">Khác...</form:option>
                    </form:select>
                </div>