GkoHotelsofstbarthOrg::Application.routes.draw do

  resources :job_requests, :only => [:new, :create, :index]
  
  get 'member_lists/:member_list_id/categories/:category_id',
      :to => 'members#index',
      :as => :member_list_category
  get 'member_lists/:member_list_id/tags/:sticker_id',
      :to => 'members#index',
      :as => :member_list_sticker
  get 'member_lists/:member_list_id', 
    :to => 'members#index', 
    :as => :member_list
  match 'member_lists/:member_list_id/:permalink', 
    :to => "members#show", 
    :as => :member_list_member


  get 'job_offer_lists/:job_offer_list_id/categories/:category_id',
      :to => 'job_offers#index',
      :as => :job_offer_list_category
  get 'job_offer_lists/:job_offer_list_id', 
    :to => 'job_offers#index', 
    :as => :job_offer_list
  match 'job_offer_lists/:job_offer_list_id/:permalink', 
    :to => "job_offers#show", 
    :as => :job_offer_list_member
         
  namespace :admin do
    resources :sites do
      resources :areas
      resources :pictos
      resources :member_lists do
        resources :members do
          collection do
            get :selected
          end
        end
      end
      resources :job_offer_lists do
        resources :job_offers
      end
    end
  end
end
