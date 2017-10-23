class Users::RegistrationsController < Devise::RegistrationsController
    
    def createToken
        super do |resource|
            if params[:plan]
                resource.plan_id = params[:plan]
                if resource.plan_id == 2
                    resourc.save_with_payment
                else
                    resource.save
                end
            end
        end
    end
    
end