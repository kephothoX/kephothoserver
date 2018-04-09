ActiveAdmin.register Slug do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
 permit_params :Company, :Logo, :Duration, :Category, :Image, :Title, :Details, :Starts, :Expires, :Website, :Views, :Rating


 form title: 'OFFERFLOWS' do |f|
    inputs 'Details' do
      input :Company
      input :Logo, :as => :file
      input :Duration, :as => :select, collection: ["daily", "weekly", "monthly", "quartely"]
      input :Category, :as => :select, collection: ["restaurant", "beauty", "hardware", "accomodation", "entertainment", "travel", "clothing", "electronics"]
      input :Image, :as => :file
      input :Title
      input :Details
      input :Starts, :as => :datetime_picker
      input :Expires, :as => :datetime_picker
      input :Website 
      input :Views
      input :Rating

      submit
      
    end
    
  end
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

end
