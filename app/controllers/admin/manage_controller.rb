class Admin::ManageController < ApplicationController
  def top
    render :layout => 'admin/manage_top'
  end

  def manage_users
  end

  def manage_clients
  end

  def manage_accounts
    # 全取得
    @accounts = Account.all
    
    # 1件取得
    @testAccount = Account.find_by_account("test1")
    
  end
end
