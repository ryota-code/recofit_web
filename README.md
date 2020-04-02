## RecoFit

## Overview  
フィットネス記録アプリです。  
フィットネスの記録を詳細に取れることにこだわりました。  
## 使用技術  
### 技術のこだわりポイント  
1. インフラにAWSを使用（完全独学）
- 理由: インターン先で使っていて、自分一人で一通り構築してみたかった。
2. DevOps周りの効率化（完全独学）（効率化が大好きです）
- 理由: 就活中にいつでも見せられるよう、未完成の段階でデプロイして開発→CI/CDを実現する必要があったから。
- CircleCI
3. 最適な設計
- インフラ
- 開発環境のコンテナ
- Railsのコントローラ
- テーブル設計
### 言語・フレームワーク・インフラ  
  
#### インフラ  
AWSの各種サービス  
構成は以下  
Elastic Container Service(ECS) + RDS + ElastiCache + ALB + Route53 + CloudWatch + VPC  
本番環境でもコンテナ基盤を使用

##### インフラ構成図  
  
![recofitインフラ構成図](https://user-images.githubusercontent.com/58697518/76403251-fb101b80-63c7-11ea-88ee-c3f80e581844.png)  

  
#### バックエンド  
Ruby2.6.3    
Ruby on Rails 5  
  
#### フロントエンド   
JavaScript  
Vue.js
#### 開発環境  
Docker

#### コンテナ構成
1. Rails (App)
2. Nginx (Web)
3. MySQL (DB)
4. Redis (Cache Store)
5. Webpack (webpacker)  
  
大量アクセスや機能性を考慮し、Nginxとpumaをsocket通信させて、Nginxがブラウザからのリクエストをpumaに投げる方式を採用。

### その他  
**CircleCIでCI/CDパイプラインの構築**  
→GitHubへのプッシュで、自動テスト&自動デプロイ
  
**GitHubでIssueとブランチを連携してプルリクベースの開発**  
→OSSや実際の開発で採用されているフローをシミュレーションして開発。
