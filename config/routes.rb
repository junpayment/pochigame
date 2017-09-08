Rails.application.routes.draw do
  # api
  namespace :api do
    # クエスト
    resources :quests, only: [:index] do
      member do
        post :exec
      end
    end

    # ガチャ
    resources :gachas, only: [:index] do
      collection do
        post :exec
      end
    end

    # ユーザ情報
    resources :users, only: [:index, :show] do
      member do
        post :session
        post :recover
      end

      # デッキ
      resource :deck, only: [:show, :create, :update, :destroy]

      # キャラ
      resource :character, only: [:show] do
        collection do
          post :sell
          post :combine
        end
      end
    end
  end

  # admin
  namespace :admin do
  end
end
