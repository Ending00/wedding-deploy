@echo off
echo ============================================
echo  潘洋 ❤️ 王子微 婚礼请柬部署脚本
echo ============================================
echo.

echo 步骤1: 初始化Git仓库
git init
echo.

echo 步骤2: 添加所有文件
git add .
echo.

echo 步骤3: 提交更改
git commit -m "初始化婚礼请柬项目 - 潘洋 ❤️ 王子微"
echo.

echo ============================================
echo  请按以下步骤完成部署：
echo.
echo  1. 访问 https://github.com/new
echo  2. 创建仓库：wedding-invitation-panyang-wangziwei
echo  3. 复制以下命令并执行：
echo.
echo  git remote add origin https://github.com/您的用户名/wedding-invitation-panyang-wangziwei.git
echo  git branch -M main
echo  git push -u origin main
echo.
echo  4. 访问仓库设置开启GitHub Pages
echo  5. 等待部署完成，获取HTTPS链接
echo ============================================
echo.

pause
