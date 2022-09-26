#!/bin/bash

[ ! -e "/Applications/Burp Suite Professional.app" ] && echo "未找到/Applications/Burp Suite Professional.app" && exit;
echo "请输入密码"
sudo xattr -r -d com.apple.quarantine "/Applications/Burp Suite Professional.app"
curl "https://raw.githubusercontent.com/mrliminghao/automolun/main/res/vmoptions.txt" > "/Applications/Burp Suite Professional.app/Contents/vmoptions.txt"
wget "https://raw.githubusercontent.com/mrliminghao/automolun/main/res/j.zip"
unzip -o "j.zip" -d "/Applications/Burp Suite Professional.app/Contents/Resources/app/"
rm -f "j.zip"
echo "破解完成 启动注册机中!请不要使用注册机启动burp 仅用于首次使用激活";
echo "请手动启动burp"
"/Applications/Burp Suite Professional.app/Contents/Resources/jre.bundle/Contents/Home/bin/java"  -jar "/Applications/Burp Suite Professional.app/Contents/Resources/app/ja-netfilter.jar" -r
rm -f crack.sh
