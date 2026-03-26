# 微信分享卡片设置指南

## 📱 微信分享关键设置

### 1. 微信分享卡片元素

在HTML头部已设置以下微信分享卡片信息：

```html
<!-- 微信分享卡片 -->
<meta property="og:title" content="潘洋 ❤️ 王子微 婚礼请柬" />
<meta property="og:description" content="2026年5月4日，我们结婚啦！诚挚邀请您见证我们的幸福。" />
<meta property="og:image" content="cover.png" />
<meta property="og:type" content="website" />
<meta property="og:url" content="" />
```

### 2. 分享卡片显示效果

微信分享卡片包含三个核心元素：
- **标题**：潘洋 ❤️ 王子微 婚礼请柬
- **描述**：2026年5月4日，我们结婚啦！诚挚邀请您见证我们的幸福。
- **封面图片**：cover.png（建议尺寸：300×300像素）

### 3. 部署后必须完成的步骤

#### 步骤1：获取HTTPS链接
微信要求所有分享链接必须使用HTTPS协议：
```bash
推荐方案：
1. GitHub Pages：自动提供HTTPS
2. Vercel：自动提供HTTPS  
3. 腾讯云/阿里云：需手动配置SSL证书
```

#### 步骤2：更新og:image为绝对URL
```html
<!-- 修改为： -->
<meta property="og:image" content="https://yourdomain.com/cover.png" />
```

#### 步骤3：更新og:url为实际链接
```html
<!-- 修改为： -->
<meta property="og:url" content="https://yourdomain.com/wedding_invitation_final.html" />
```

### 4. 微信分享测试流程

#### 测试准备：
1. **部署完成**：确保文件已上传到服务器
2. **HTTPS就绪**：链接必须是https://开头
3. **图片可访问**：封面图片必须可公开访问

#### 测试步骤：
```markdown
1. 在微信中打开请柬链接
2. 点击右上角"···"菜单
3. 选择"发送给朋友"或"分享到朋友圈"
4. 观察分享卡片效果：
   - 标题是否正确显示
   - 描述是否完整
   - 封面图片是否清晰
```

### 5. 常见问题解决

#### Q1: 分享不显示图片？
**解决方案**：
1. 确保`og:image`使用绝对URL
2. 图片尺寸建议：300×300像素以上
3. 图片格式：JPEG或PNG
4. 图片大小：不超过300KB

#### Q2: 微信分享缓存问题？
**解决方案**：
1. 首次分享后，微信会缓存卡片信息
2. 修改内容后，需要等待微信缓存更新（最长24小时）
3. 可以尝试使用不同的分享链接绕过缓存

#### Q3: 手机显示异常？
**解决方案**：
1. 使用手机浏览器访问测试
2. 检查响应式布局是否正常
3. 测试触摸交互功能

### 6. 分享文案建议

#### 朋友圈分享文案：
```
💒 诚挚邀请 💒

新郎：潘洋
新娘：王子微
婚礼日期：2026年5月4日

我们即将步入婚姻殿堂
诚邀您见证这一幸福时刻

👉 点击查看电子请柬
```

#### 私聊分享文案：
```
[婚礼邀请]

您好！我是潘洋/王子微
我们将在2026年5月4日举行婚礼
诚挚邀请您来参加

请点击链接查看请柬详情：
https://yourdomain.com/wedding_invitation_final.html

期待您的光临！❤️
```

### 7. 部署方案对比

| 方案 | HTTPS | 国内访问 | 费用 | 推荐度 |
|------|-------|----------|------|--------|
| GitHub Pages | ✅ 自动 | ⚠️ 较慢 | 免费 | ★★★★★ |
| Vercel | ✅ 自动 | ⚠️ 较慢 | 免费 | ★★★★☆ |
| 腾讯云 | ⚠️ 需配置 | ✅ 快速 | 付费 | ★★★☆☆ |
| 阿里云 | ⚠️ 需配置 | ✅ 快速 | 付费 | ★★★☆☆ |

### 8. 微信JS-SDK高级功能（可选）

如需更好的分享体验，可以集成微信JS-SDK：
```javascript
// 需要微信公众号或小程序支持
wx.config({
  appId: 'YOUR_APP_ID',
  timestamp: TIMESTAMP,
  nonceStr: 'RANDOM_STRING',
  signature: 'SIGNATURE',
  jsApiList: ['updateAppMessageShareData', 'updateTimelineShareData']
});

wx.ready(function() {
  // 自定义分享到朋友圈
  wx.updateTimelineShareData({
    title: '潘洋 ❤️ 王子微 婚礼请柬',
    link: 'YOUR_SHARE_LINK',
    imgUrl: 'COVER_IMAGE_URL'
  });
});
```

### 9. 注意事项

#### 必须检查的项目：
- [ ] HTTPS链接有效
- [ ] 图片URL可公开访问
- [ ] 分享卡片显示完整
- [ ] 手机端浏览正常
- [ ] 音乐播放功能正常

#### 分享时间建议：
- **提前2-3周**：正式邀请
- **提前1周**：温馨提醒
- **婚礼当天**：最后确认

### 10. 快速测试清单

完成部署后，请依次检查：
1. ✅ 链接可访问（https://开头）
2. ✅ 封面图片显示正常
3. ✅ 新人信息正确
4. ✅ 婚礼日期准确
5. ✅ 联系方式有效
6. ✅ 音乐自动播放
7. ✅ 微信分享卡片完整

---

**祝您婚礼圆满成功！** 🎉