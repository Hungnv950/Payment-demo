class PaymentsController < ApplicationController
  def index
  end

  def create
    url = VNPayPaymentService.new(1000000, "description").generate_url
    redirect_to url
  end

  def callbacks
    amount = params[:vnp_Amount]
    bank_code = params[:vnp_BankCode]
    bank_tran_no = params[:vnp_BankTranNo]
    card_type = params[:vnp_CardType]
    order_info = params[:vnp_OrderInfo]
    pay_date = params[:vnp_PayDate]

    render json: {
      "amount": amount,
      "bank_code": bank_code,
      "bank_tran_no": bank_tran_no,
      "card_type": card_type,
      "order_info": order_info,
      "pay_date": pay_date,
    }
  end
end
