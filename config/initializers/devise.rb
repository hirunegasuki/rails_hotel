Devise.setup do |config|

  # ==> Controller configuration
  # Deviseのコントローラーのクラス名
  # config.parent_controller = 'DeviseController'


  # ==> Mailer Configuration
  # メール認証を行う際のメールアドレスなどを設定する場所
  config.mailer_sender = 'please-change-me-at-config-initializers-devise@example.com'
  
  # メーラーのクラス名
  # config.mailer = 'Devise::Mailer'
  
  # メールを送信する親クラス名
  # config.parent_mailer = 'ActionMailer::Base'


  # ==> ORM configuration
  # 使用したいORMを設定
  require 'devise/orm/active_record'


  # ==> Configuration for any authentication mechanism
  # ユーザー認証時に使用するキーの設定
  # config.authentication_keys = [:email]

  # 認証に使用するリクエストオブジェクト
  # config.request_keys = []

  # 大文字と小文字を区別しないキーを設定
  config.case_insensitive_keys = [:email]

  # 空白を除外するキーを設定
  config.strip_whitespace_keys = [:email]

  # パラメーターリクエストでの認証を許可
  # config.params_authenticatable = true

  # HTTP認証(Basic認証)を有効化させるかどうか
  # config.http_authenticatable = false

  # 401ステータス時にAjaxリクエストを返すかどうか
  # config.http_authenticatable_on_xhr = true

  # Basic認証を使用する範囲
  # config.http_authentication_realm = 'Application'

  # パスワード変更を要求された際の動作を、入力されたemailの正誤に関わらず同じように振る舞うかどうか
  # config.paranoid = true

  # セッション処理をスキップする場所を設定する
  config.skip_session_storage = [:http_auth]

  # 新しいトークン発行を許可するか
  # config.clean_up_csrf_token_on_authentication = true

  # リロードするかどうか
  # config.reload_routes = true


  # ==> Configuration for :database_authenticatable
  # パスワードハッシュをtestで発行する回数
  config.stretches = Rails.env.test? ? 1 : 12

  # pepperをセットアップする時の生成ハッシュパスワードを設定
  # config.pepper = '25c3d082194796860ba9fe5b915ea1317185b867bd1bf5b622030170e700b79aeb526aee8fa333df4fdb59927cdb8307ca73cdbe73146cec2106d9e4162d6db3'

  # ユーザーのemailが変更された時に元のメールへ通知メールを送るかどうか
  # config.send_email_changed_notification = false

  # ユーザーのパスワードが変更された時にメールへ告知のメールを送るかどうか
  # config.send_password_change_notification = false


  # ==> Configuration for :confirmable
  # ユーザーがメール認証できなくてもWebサイトを閲覧できる期限
  # config.allow_unconfirmed_access_for = 2.days

  # メール認証トークンを無効にするまでの期間
  # config.confirm_within = 3.days

  # メール変更時に変更することをメール認証にて確認するかどうか
  config.reconfirmable = true

  # アカウント確認を行う時に使用するキーを指定
  # config.confirmation_keys = [:email]


  # ==> Configuration for :rememberable
  # ログイン情報を保存する期間の設定
  # config.remember_for = 2.weeks

  # サインアウトした時にログイントークンを無効にするか
  config.expire_all_remember_me_on_sign_out = true

  # Cookieを使用する場合にログイン可能期間を伸ばすか
  # config.extend_remember_period = false

  # Cookieを使用する際の値を設定可能
  # config.rememberable_options = {}


  # ==> Configuration for :validatable
  # パスワードの最小最大値の設定
  config.password_length = 6..128

  # email登録時の正規表現パターン
  config.email_regexp = /\A[^@\s]+@[^@\s]+\z/


  # ==> Configuration for :timeoutable
  # セッション接続が切れる時間。接続が切れると再びログイン認証を求められる
  # config.timeout_in = 30.minutes


  # ==> Configuration for :lockable
  # アカウントロックに使用するストラテジー(:failed_attempts = 一定の試行回数を超えるとロック,:none = アカウントをロックしない)
  # config.lock_strategy = :failed_attempts

  # ロック、アンロックするキー指定
  # config.unlock_keys = [:email]

  # アカウントロックを解除する方法(:email = email認証で解除,:time = 時間経過で解除,:both  = 上記の両方の方法で解除,:none = 解除方法無し)
  # config.unlock_strategy = :both

  # アカウントロックするまでの試行回数指定
  # config.maximum_attempts = 20

  # アカウントロック解除までの時間指定
  # config.unlock_in = 1.hour

  # ログイン失敗時、アカウントロックする直前に警告するか
  # config.last_attempt_warning = true


  # ==> Configuration for :recoverable
  # パスワードを復旧する際に使用するキーを設定
  # config.reset_password_keys = [:email]

  # パスワードリセットしてから再設定可能な有効期限
  config.reset_password_within = 6.hours

  # パスワードリセット完了後に自動でログイン状態にさせるか
  # config.sign_in_after_reset_password = true


  # ==> Configuration for :encryptable
  # 使用する暗号化アルゴリズムを指定
  # config.encryptor = :sha512


  # ==> Scopes configuration
  # カスタマイズビューを許可するか
  # config.scoped_views = false

  # アカウントロックされてないユーザーを管理するモデル名を指定する
  # config.default_scope = :user

  # 全てのRoutingでサインアウトを許可するかどうか
  # config.sign_out_all_scopes = true


  # ==> Navigation configuration
  # ナビゲーションのフォーマット形式をリストで指定
  # config.navigational_formats = ['*/*', :html, :turbo_stream]

  # サインアウトで使用するルーティング
  config.sign_out_via = :delete


  # ==> OmniAuth
  # 新しく提供されたOmniAuthの追加を行える
  # config.omniauth :github, 'APP_ID', 'APP_SECRET', scope: 'user,public_repo'


  # ==> Warden configuration
  # 不具合のあるアプリを変更する場合などは、condig.wardenのブロックを使用して設定できる
  #
  # config.warden do |manager|
  #   manager.intercept_401 = false
  #   manager.default_strategies(scope: :user).unshift :some_external_strategy
  # end


  # ==> Mountable engine configurations
  # 搭載するエンジン名が下記の場合、
  #
  #     mount MyEngine, at: '/my_engine'
  #
  # 上記の例でconfig/routes.rbで「devise_for」を呼び出した時は以下の名前となる
  # config.router_name = :my_engine

  # OmuniAuthのpathを設定する場合に使用
  # config.omniauth_path_prefix = '/my_engine/users/auth'


  # ==> Hotwire/Turbo configuration
  # When using Devise with Hotwire/Turbo, the http status for error responses
  # and some redirects must match the following. The default in Devise for existing
  # apps is `200 OK` and `302 Found` respectively, but new apps are generated with
  # these new defaults that match Hotwire/Turbo behavior.
  # Note: These might become the new default in future versions of Devise.
  config.responder.error_status = :unprocessable_entity
  config.responder.redirect_status = :see_other


  # ==> Configuration for :registerable
  # パスワード変更後に自動的にサインインさせるかどうか
  # config.sign_in_after_change_password = true

  # ユーザーモデルにnameカラムを追加してDBに保存できるようにするため追加
  config.scoped_views = true
end
