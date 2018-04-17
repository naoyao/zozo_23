class CustomersController < ApplicationController

  def show
  end

  def edit_default
  end

  def edit_email
  end

  def confirm_default
    current_customer.assign_attributes(default_params)
  end


  def update_default
    if current_customer.update(default_params)
      render :show
    else
      render :edit_default
    end
  end

  def update_email
  end

  private
  def default_params
    params.require(:customer).permit(:last_name, :first_name, :last_name_kana, :first_name_kana,:sexuality, :birthday, :postal_code, :prefecture, :address_1, :address_2, :phone_num_1, :phone_num_2, :phone_num_3)
  end

  def email_params
    params.require(:customer).permit(:email)
  end
end
