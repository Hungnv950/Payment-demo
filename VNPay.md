# README

This project provide sample code to implement payment use Ruby on Rails. Hope can help you when develop

### 1.VNPAY
Tutorial: https://sandbox.vnpayment.vn/apis/docs/huong-dan-tich-hop/
Register test account: https://sandbox.vnpayment.vn/devreg

After register, we will recive an email had content to test likely:
```
Mã website:9OH6LVTN
Chuỗi bí mật tạo checksum: BFKVAFYJLCFFWQNEQDADQWEXRUZWRDHU

Thông tin truy cập Merchant Admin để quản lý giao dịch và cài đặt hệ thống (Test):
Địa chỉ: https://sandbox.vnpayment.vn/merchantv2/

Tên đăng nhập: unglong5@gmail.com

Cấu hình hệ thống (Test): https://sandbox.vnpayment.vn/merchantv2/Account/TerminalEdit.htm

Tài liệu:
Tài liệu hướng dẫn tích hợp: https://sandbox.vnpayment.vn/apis/docs/gioi-thieu/

Kịch bản test (SIT):  https://sandbox.vnpayment.vn/apis/downloads/#tài-liệu-đặc-tả-kỹ-thuật

Code demo tích hợp: https://sandbox.vnpayment.vn/apis/vnpay-demo/code-demo-tích-hợp

Thẻ test:
Ngân hàng	NCB
Số thẻ	9704198526191432198
Tên chủ thẻ	NGUYEN VAN A
Ngày phát hành	07/15
Mật khẩu OTP	123456

```

In this email, we need focus to 2 following config, this will use for coding latter.
```
Mã website:9OH6LVTN
Chuỗi bí mật tạo checksum: BFKVAFYJLCFFWQNEQDADQWEXRUZWRDHU
```

[Model flow](https://github.com/Hungnv950/Payment-demo/blob/master/public/images/mo_hinh_kn.png?raw=true "Model flow")
