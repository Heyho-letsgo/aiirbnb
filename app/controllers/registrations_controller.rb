class  RegistrationsController < Devise::RegistrationController
    
    
    Protected
    def update_resource(resource, params)
        resouce.update_without_password(params)
    
    end
    
    
    
end