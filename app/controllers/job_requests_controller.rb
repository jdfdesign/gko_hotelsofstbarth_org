class JobRequestsController < BaseController
  before_filter :set_inquiry, :only => :new
  respond_to :html, :js

  def create
    create! do |format|
      if resource.errors.empty? #&& resource.ham? && resource.human?
        JobRequestMailer.notification(resource).deliver
        JobRequestMailer.confirmation(resource).deliver
        format.html do
          if params[:return_to].present?
            #TODO better way to set message that should correspond to flash message
            flash[:success] = t('flash.inquiries.create.notice')
            redirect_to params[:return_to]
          else
            redirect_to thank_you_inquiries_url
          end
        end
        format.js do
          flash[:success] = t(:'.inquiry_sent')
          render :layout => false
        end
      else
        if site.preferred_contact_email.present?
          flash[:error] = t('flash.inquiries.create.alert_with_email', :email => site.preferred_contact_email)
        else
          flash[:error] = t('flash.inquiries.create.alert')
        end
        format.html do
          if params[:return_to].present?
            redirect_to params[:return_to]
          else
            render :action => 'new'
          end
        end
        format.js do
          render :layout => false
        end
      end
    end
  end
  
  protected

  def set_inquiry
    @job_request ||= JobRequest.new(:site => site)
    @job_request.set_default_values if Rails.env.development?
  end

end
