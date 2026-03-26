# 🚀 婚礼请柬部署指南

## 📦 部署文件清单

您需要上传以下7个文件到服务器：

| 文件 | 用途 | 必须上传 |
|------|------|----------|
| `wedding_invitation_final.html` | 主请柬页面 | ✅ 必须 |
| `11.mp3` | 背景音乐 | ✅ 必须 |
| `新郎.png` | 新郎照片 | ✅ 必须 |
| `新娘.png` | 新娘照片 | ✅ 必须 |
| `cover.png` | 封面图片 | ✅ 必须 |
| `README.md` | 使用说明 | ⚠️ 可选 |
| `README_WECHAT_SHARE.md` | 微信分享指南 | ⚠️ 可选 |

## 🎯 推荐部署方案：GitHub Pages

### 为什么选择GitHub Pages？
- ✅ **完全免费**：无需支付任何费用
- ✅ **自动HTTPS**：微信分享必须使用HTTPS
- ✅ **操作简单**：无需服务器知识
- ✅ **全球访问**：亲友在任何地方都能访问

### 部署步骤详解

#### 步骤1：创建GitHub账号
访问：https://github.com
- 点击"Sign up"注册新账号
- 填写邮箱、密码等信息
- 完成邮箱验证

#### 步骤2：创建新仓库
1. 登录GitHub后，点击右上角"+" → "New repository"
2. 填写仓库信息：
   - **Repository name**: `wedding-invitation`（建议）
   - **Description**: 潘洋 & 王子微 婚礼请柬
   - **Public** ✅（必须公开）
   - **Initialize this repository with README**: ❌ 不勾选
3. 点击"Create repository"

#### 步骤3：上传文件
**方法A：网页上传（推荐）**
1. 进入刚创建的仓库页面
2. 点击"Add file" → "Upload files"
3. 拖拽所有7个文件到上传区域
4. 在"Commit changes"填写：`上传婚礼请柬文件`
5. 点击"Commit changes"

**方法B：使用Git客户端（可选）**
```bash
# 1. 安装Git
# 2. 克隆仓库
git clone https://github.com/您的用户名/wedding-invitation.git

# 3. 复制所有文件到仓库目录
# 4. 提交更改
git add .
git commit -m "上传婚礼请柬文件"
git push origin main
```

#### 步骤4：开启GitHub Pages
1. 进入仓库 → Settings（设置）
2. 左侧菜单选择"Pages"
3. 在"Source"部分：
   - 选择"Deploy from a branch"
   - Branch选择"main"
   - Folder选择"/ (root)"
4. 点击"Save"
5. 等待1-2分钟，页面刷新

#### 步骤5：获取访问链接
部署完成后，您将看到：
```
Your site is live at https://您的用户名.github.io/wedding-invitation/
```

**请柬完整链接**：
```
https://您的用户名.github.io/wedding-invitation/wedding_invitation_final.html
```

## 🔗 其他部署方案

### 方案B：Vercel（一键部署）
1. 访问：https://vercel.com
2. 使用GitHub账号登录
3. 点击"New Project"
4. 导入您的GitHub仓库
5. 点击"Deploy"（自动完成）

### 方案C：腾讯云静态网站托管
1. 注册腾讯云账号
2. 进入"对象存储COS"或"静态网站托管"
3. 创建存储桶，上传所有文件
4. 配置自定义域名和HTTPS

## ⚙️ 部署后配置

### 1. 更新微信分享链接
部署后，打开`wedding_invitation_final.html`，修改以下两行：

```html
<!-- 第13行：封面图片URL -->
<meta property="og:image" content="https://您的用户名.github.io/wedding-invitation/cover.png" />

<!-- 第14行：请柬页面URL -->
<meta property="og:url" content="https://您的用户名.github.io/wedding-invitation/wedding_invitation_final.html" />
```

### 2. 测试访问
1. **电脑测试**：用浏览器打开完整链接
2. **手机测试**：用手机浏览器打开链接
3. **微信测试**：在微信中打开链接并分享

### 3. 检查清单
- [ ] 链接可正常访问
- [ ] 所有图片显示正常
- [ ] 背景音乐可播放
- [ ] 手机端触摸交互正常
- [ ] 微信分享卡片显示完整

## 📱 微信分享准备

### 分享文案建议

**朋友圈分享**：
```
💒 诚挚邀请 💒

新郎：潘洋
新娘：王子微  
婚礼日期：2026年5月4日

我们即将步入婚姻殿堂
诚邀您见证这一幸福时刻

👉 点击查看电子请柬
```

**私聊分享**：
```
[婚礼邀请]

您好！我是潘洋/王子微
我们将在2026年5月4日举行婚礼
诚挚邀请您来参加

请柬链接：https://您的用户名.github.io/wedding-invitation/wedding_invitation_final.html

期待您的光临！❤️
```

### 微信分享关键点
1. **必须使用HTTPS链接**：GitHub Pages已自动提供
2. **首次分享有缓存**：微信会缓存卡片信息24小时
3. **图片显示**：确保cover.png清晰可见
4. **测试分享**：先用小范围测试分享效果

## 🐛 常见问题解决

### Q1: 页面显示404错误？
**原因**：文件路径错误或未成功上传
**解决**：
1. 检查文件是否全部上传
2. 确认文件名正确（区分大小写）
3. 等待GitHub Pages部署完成（约1-2分钟）

### Q2: 音乐无法播放？
**原因**：浏览器安全限制或文件格式问题
**解决**：
1. 点击页面任意位置激活音频
2. 检查11.mp3文件是否完整上传
3. 在微信中需点击"在浏览器中打开"

### Q3: 微信分享不显示图片？
**原因**：og:image URL未更新或图片不可访问
**解决**：
1. 更新HTML中的og:image为完整HTTPS URL
2. 确保cover.png可公开访问
3. 等待微信缓存更新

### Q4: 手机显示异常？
**原因**：响应式布局问题
**解决**：
1. 在不同手机浏览器测试
2. 检查CSS媒体查询是否正常
3. 确保viewport设置正确

## 🎉 部署成功标志

当以下所有项目都正常时，表示部署成功：

1. ✅ **链接可访问**：https://您的用户名.github.io/wedding-invitation/wedding_invitation_final.html
2. ✅ **HTTPS有效**：浏览器显示安全锁图标
3. ✅ **页面加载正常**：所有内容显示完整
4. ✅ **音乐可播放**：背景音乐正常播放
5. ✅ **手机适配**：手机端显示正常
6. ✅ **微信分享**：分享卡片显示完整

## 📞 技术支持

如果遇到问题：
1. **检查错误信息**：浏览器控制台（F12）
2. **验证文件**：确保所有文件已上传
3. **测试链接**：在不同设备测试
4. **查看日志**：GitHub Pages部署日志

---

## 🎊 最后步骤

1. **部署完成**：获取HTTPS链接
2. **更新配置**：修改微信分享URL
3. **全面测试**：电脑、手机、微信测试
4. **开始分享**：将链接分享给亲友
5. **收集反馈**：通过表单收集宾客信息

**祝您部署顺利，婚礼圆满成功！** 💖