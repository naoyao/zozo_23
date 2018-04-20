class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session

  protected

  def devise_parameter_sanitizer
    if resource_class == Customer
      Customer::ParameterSanitizer.new(Customer, :customer, params)
    else
      super
    end
  end
end
