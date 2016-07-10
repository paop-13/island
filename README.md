# island
awsテスト用ブランチ

## AWSCLI設定方法
### CLIをMacにいれる
- sudo brew install python
- sudo easy_install pip
- sudo pip install awscli

### AWSCLIの初期設定
- aws configureを叩くと下記がでてくる。

AWS Access Key ID [None]: xxxxxxxxx  
AWS Secret Access Key [None]: xxxxxxxxxx  
Default region name [None]: ap-northeast-1  
Default output format [None]: json  

※Access Key と Secret Access Key はIAMを作成するタイミングで情報をダンウンロードしているはずなのでそれを見て入力する  
※Default region nameはデフォルト設定しておきたいリージョンを入れる  
※Default output formatは出力結果の形式の選択になる。text table jsonの中から好きなものを選ぶ
