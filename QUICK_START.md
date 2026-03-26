# ⚡ 快速部署指南（10分钟完成）

## 🎯 最简单方案：GitHub Pages

### 第一步：注册GitHub账号（3分钟）
1. 访问：https://github.com
2. 点击"Sign up"注册
3. 填写：邮箱、密码、用户名
4. 完成邮箱验证

### 第二步：创建仓库（2分钟）
1. 登录GitHub
2. 点击右上角"+" → "New repository"
3. 填写：
   - **Repository name**: `wedding-invitation`
   - **Public** ✅（必须公开）
   - **不勾选** Initialize this repository with README
4. 点击"Create repository"

### 第三步：上传文件（3分钟）
1. 进入刚创建的仓库页面
2. 点击"Add file" → "Upload files"
3. 拖拽**7个文件**到上传区域：
   ```
   wedding_invitation_final.html
   11.mp3
   新郎.png
   新娘.png
   cover.png
   README.md
   README_WECHAT_SHARE.md
   ```
4. 点击"Commit changes"

### 第四步：开启GitHub Pages（2分钟）
1. 仓库页面 → Settings → Pages
2. 在"Source"选择：
   - Deploy from a branch
   - Branch: main
   - Folder: / (root)
3. 点击"Save"
4. 等待1分钟，页面显示您的链接

## 🔗 您的婚礼请柬链接

部署完成后，您将获得：
```
https://您的用户名.github.io/wedding-invitation/wedding_invitation_final.html
```

**示例**（如果用户名为zhangsan）：
```
https://zhangsan.github.io/wedding-invitation/wedding_invitation_final.html
```

## 📱 立即测试

1. **电脑测试**：在浏览器打开上面的链接
2. **手机测试**：用手机浏览器打开链接
3. **微信测试**：在微信中打开链接

## ⚡ 一键备用方案：Vercel

如果GitHub操作复杂，可以使用Vercel：

1. 访问：https://vercel.com
2. 使用GitHub账号登录
3. 点击"New Project"
4. 导入您的`wedding-invitation`仓库
5. 点击"Deploy"（自动完成）

**Vercel链接**：`https://wedding-invitation.vercel.app`

## 🎊 开始分享！

### 分享文案模板：

**朋友圈**：
```
💒 婚礼邀请 💒

新郎：潘洋
新娘：王子微
婚礼：2026年5月4日

诚挚邀请您见证我们的幸福时刻
👇 点击查看电子请柬
```

**私聊**：
```
您好！诚邀您参加我们的婚礼
2026年5月4日，期待您的光临
请柬链接：[您的链接]
```

## 🆘 遇到问题？

### 快速解决：
1. **404错误**：等待2分钟，刷新页面
2. **图片不显示**：检查文件是否全部上传
3. **音乐不播放**：点击页面任意位置
4. **微信分享异常**：确保使用HTTPS链接

### 紧急联系：
- 检查所有7个文件是否上传
- 确认仓库设置为Public
- 等待GitHub Pages部署完成

---

## ✅ 成功标志

看到以下效果即表示成功：
1. 浏览器显示安全锁🔒图标
2. 页面加载完整，显示新人信息
3. 音乐可正常播放
4. 手机端显示正常
5. 微信分享显示卡片

**现在就开始部署吧！10分钟后即可分享给亲友！** 🚀