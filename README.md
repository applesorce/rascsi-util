# rascsi-util
これは何？

raSCSIというソフトウェアをRaspberry Piにダウンロードからセットアップ、自動起動を自動で行う補助ツールになっています。
インストール方法(以下Raspberry Piでの操作) 
 
$wget https://github.com/applesorce/rascsi-util/blob/master/rascsi-util.tar.gz?raw=true  
$tar zxvf rascsi-util.tar.gz  
$cd rascsi-util  
$./rascsisetup.sh  
コマンド途中にsystemdに登録するかどうかを訪ねてきます。  
ｈ・・・HDDモードで登録  
e・・・bridgeモードで登録  
a・・・すべてのモードで登録  
なお起動されるHDDファイルやscsiID等は/usr/local/binの以下のファイルに書いているので直接編集してください。  
rascsihdd.sh  
rascsibrid.sh  
rascsiall.sh  
標準で/home/pi/hddにHDDにイメージを置くようになっています。 
 
おまけてx68000の電源をリモートで操作するためのスクリプトも入っています。  
sudo ./x68power.sh on(電源on)  
sudo ./x68power.sh off(電源off)  
これはセットアップで/usr/local/binには収めませんので実験的に使ってください。  
gipoの9番とGNDを3vで動作するリレーを使い、リレーでx68000のリモート端子をショートさせ、遠隔起動、停止が行えます。  

なお動作に関しては2017/4/23時点での各環境での確認のみしています。
動作チェックはraspi3およびzeroにて行っています。 
