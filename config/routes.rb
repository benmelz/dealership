# frozen_string_literal: true

Rails.application.routes.draw do
  root 'sessions#show'

  resources :makes, only: %i[index new edit create update destroy]
end
