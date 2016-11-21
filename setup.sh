#!/bin/bash

# railsイメージ作成
docker-compose build

# bundle installでrailsインストール
docker-compose run --rm web bundle install

# rails アプリケーション作成
docker-compose run --rm web bundle exec rails new . --force --skip-bundle

# therubyracer有効化
echo "gem 'therubyracer', platforms: :ruby" >> Gemfile

# 新しいGemfileを元に再度、gemインストール
docker-compose run --rm web bundle install

# 起動
docker-compose up -d
