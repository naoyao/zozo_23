class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  
  # 生成されるファイルを設定
    config.generators do |g|
    g.stylesheets false
    g.javascripts false
    g.helper false
    g.template_engine false
    g.test_framework :rspec, view_specs: false, helper_specs: false, fixture: true
    g.fixture_replacement :factory_girl, dir: "spec/support/factories"
  end
end
