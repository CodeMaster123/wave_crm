# RailsAdmin config file. Generated on June 01, 2013 13:44
# See github.com/sferik/rails_admin for more informations

RailsAdmin.config do |config|


  ################  Global configuration  ################

  # Set the admin name here (optional second array element will appear in red). For example:
  config.main_app_name = ['Wave Crm', 'Admin']
  # or for a more dynamic name:
  # config.main_app_name = Proc.new { |controller| [Rails.application.engine_name.titleize, controller.params['action'].titleize] }

  # RailsAdmin may need a way to know who the current user is]
  config.current_user_method { current_user } # auto-generated

  # If you want to track changes on your models:
  # config.audit_with :history, 'User'

  # Or with a PaperTrail: (you need to install it first)
  # config.audit_with :paper_trail, 'User'

  # Display empty fields in show views:
  # config.compact_show_view = false

  # Number of default rows per-page:
  # config.default_items_per_page = 20

  # Exclude specific models (keep the others):
  # config.excluded_models = ['Account', 'CallLog', 'Company', 'Contact', 'Employee', 'Event', 'Inventory', 'InventoryAddition', 'Lead', 'LeadsProduct', 'Notification', 'NotificationSetting', 'Product', 'ProductTransaction', 'SalesExecutive', 'SpecialOccasion', 'Tag', 'Tagging', 'Target', 'TeamLeader', 'Transaction', 'TransactionField', 'TransactionFieldValue', 'User']

  # Include specific models (exclude the others):
  # config.included_models = ['Account', 'CallLog', 'Company', 'Contact', 'Employee', 'Event', 'Inventory', 'InventoryAddition', 'Lead', 'LeadsProduct', 'Notification', 'NotificationSetting', 'Product', 'ProductTransaction', 'SalesExecutive', 'SpecialOccasion', 'Tag', 'Tagging', 'Target', 'TeamLeader', 'Transaction', 'TransactionField', 'TransactionFieldValue', 'User']

  # Label methods for model instances:
  # config.label_methods << :description # Default is [:name, :title]



  config.model 'TeamLeader' do
      def object_label_method
          :team_leader_details
      end
  end

  config.model 'User' do
      def object_label_method
          :user_details
      end
  end
  config.model 'Company' do
      def object_label_method
          :company_details
      end
  end
  config.model 'Account' do
      def object_label_method
          :account_details
      end
  end

  #config.model 'Transaction' do
  #    def object_label_method
  #        :transaction_details
  #    end
  #end

  config.model 'Lead' do
      def object_label_method
          :lead_details
      end
  end

  config.model 'Product' do
      def object_label_method
          :product_details
      end
  end

  #config.model '' do
  #    def object_label_method
  #        :team_leader_details
  #    end
  #end

  def user_details
    "#{self.company.company_name} - #{self.first_name} #{self.last_name}"
  end

  def company_details
      "#{self.company_name}"
  end

  def crm_customer_details
      "#{self.company.company_name} - #{self.first_name} #{self.last_name} - #{self.customer_type}"
  end

  def account_details
      "#{self.account_name}"
  end

  #def transaction_details
  #    if self.account_id.nil?
  #        @contact = Contact.where(:id => self.contact_id).first
  #        "B2C #{@contact.company.company_name} - #{@contact.first_name} #{@contact.last_name}"
  #    elsif self.contact_id.nil?
  #        "B2B - #{Account.where(:id => self.account_id).first.account_name}"
  #    end
  #end

  def lead_details
      "#{self.company.company_name} - #{self.title}"
  end

  def team_leader_details
      @team_leader_user = self.user
      "#{self.company.company_name} - #{@team_leader_user.first_name} #{@team_leader_user.last_name}"
  end

  def product_details
      "#{self.company.company_name} - #{self.name}"
  end

  #def _details
  #end
end
