class ContactsController < InheritedResources::Base

  before_action :redirect, only: [:destroy, :edit, :show, :update]
  def redirect
    redirect_to slugs_home_path 
  end

  private
 
    def contact_params
      params.require(:contact).permit(:Name, :Email, :Comments)
    end
end
