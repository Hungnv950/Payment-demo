require 'digest'
require 'uri'

class VNPayPaymentService
  WEBSITE_CODE = "9OH6LVTN"
  CHECKSUM_CODE = "BFKVAFYJLCFFWQNEQDADQWEXRUZWRDHU"
  RETURN_URL = "http://localhost:3000/payments/callbacks"
  PAYMENT_URL = "http://sandbox.vnpayment.vn/paymentv2/vpcpay.html"

  def initialize amount, description
    @amount = amount
    @description = description
  end

  def generate_url
    inputData = {
      "vnp_Amount": @amount,
      "vnp_Command": "pay",
      "vnp_CreateDate": Time.now.strftime("%Y%m%d%H%M%S"),
      "vnp_CurrCode": "VND",
      "vnp_IpAddr": Time.now.to_i,
      "vnp_Locale": "vn",
      "vnp_OrderInfo": @description,
      "vnp_OrderType": "topup",
      "vnp_ReturnUrl": RETURN_URL,
      "vnp_TmnCode": WEBSITE_CODE,
      "vnp_TxnRef": (Time.now + 10.minutes).strftime("%Y%m%d%H%M%S"),
      "vnp_Version": "2.0.0",
    }

    query=""
    inputData.each do |key, value|
      query << URI.encode(key.to_s) + "=" +  URI.encode(value.to_s) + '&';
    end
    query = query.strip[0...-1]

    "#{PAYMENT_URL}?#{query}&vnp_SecureHashType=SHA256&vnp_SecureHash=#{vnp_SecureHash(query)}"
  end

  private

  def vnp_SecureHash data
    Digest::SHA256.hexdigest CHECKSUM_CODE + data
  end
end
