Rails.application.routes.draw do

  # スタミナ回復
  resource :recover, only: [:index] do
    collection do
      post :exec
    end
  end

  # クエスト
  resources :quests, only: [:index] do
    member do
      post :exec
    end
  end

  # ガチャ
  resources :gachas, only: [:index] do
    member do
      post :exec
    end
  end

  # ガチャ
  resources :gachas, only: [:index] do
    member do
      post :exec
    end
  end

  # デッキ
  resource :deck, only: [:index, :create, :update, :destroy]

  # キャラ
  resource :character, only: [:index, :show] do
    member do
      post :sell
      post :combine
    end
  end

  # ユーザ情報
  resource :user, only: [:index]
end
