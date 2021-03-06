# 本番環境(Amazon ECS)のタスクスタート時に以下を実行

# Production環境でアセットをコンパイル
rails assets:precompile RAILS_ENV=production

# Production環境へのDBマイグレーション
rails db:migrate RAILS_ENV=production

# Productionモードでサーバー起動
rails server -e production
