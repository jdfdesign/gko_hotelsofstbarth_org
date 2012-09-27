GkoHotelsofstbarthOrg::Application.routes.draw do
  
  get 'hotel_lists/:hotel_list_id/categories/:category_id',
      :to => 'hotels#index',
      :as => :hotel_list_category
  get 'hotel_lists/:hotel_list_id/tags/:sticker_id',
      :to => 'hotels#index',
      :as => :hotel_list_sticker
  get 'hotel_lists/:hotel_list_id', 
    :to => 'hotels#index', 
    :as => :hotel_list
  match 'hotel_lists/:hotel_list_id/:permalink', 
    :to => "hotels#show", 
    :as => :hotel_list_hotel

  get 'realty_agency_lists/:realty_agency_list_id/categories/:category_id',
      :to => 'realty_agencies#index',
      :as => :realty_agency_category
  get 'realty_agency_lists/:realty_agency_list_id/tags/:sticker_id',
      :to => 'realty_agencies#index',
      :as => :realty_agency_sticker
  get 'realty_agency_lists/:realty_agency_list_id', 
    :to => 'realty_agencies#index', 
    :as => :realty_agency_list
  match 'realty_agency_lists/:realty_agency_list_id/:permalink', 
    :to => "realty_agencies#show", 
    :as => :realty_agency_list_realty_agency
        
  namespace :admin do
    resources :sites do
      resources :areas
      resources :pictos
      resources :hotel_lists do
        resources :hotels do
          collection do
            get :selected
          end
        end
      end
      resources :realty_agency_lists do
        resources :realty_agencies do
          collection do
            get :selected
          end
        end
      end
    end
  end
end
