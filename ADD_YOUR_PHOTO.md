# 📸 Add Your Photo to Portfolio

Your portfolio already has a professional photo section with a fallback avatar. Here's how to add your own photo!

---

## 🎯 QUICK STEPS (2 MINUTES)

### **Step 1: Get Your Photo**
- Professional headshot or casual professional photo
- Format: JPG or PNG
- Size: At least 500x500 pixels
- Square aspect ratio works best

### **Step 2: Rename Your Photo**
```bash
# Must be named exactly:
profile-photo.jpg
# or
profile-photo.png
```

### **Step 3: Add to Portfolio Folder**
```bash
# Copy your photo to Portfolio folder
cp /path/to/your-photo.jpg /Users/shohrabrustam/Portfolio/profile-photo.jpg
```

**Or manually:**
1. Find your photo in Finder
2. Rename it to `profile-photo.jpg`
3. Drag it into `/Users/shohrabrustam/Portfolio/` folder
4. Done!

### **Step 4: Commit to Git**
```bash
cd /Users/shohrabrustam/Portfolio
git add profile-photo.jpg
git commit -m "Add profile photo"
git push  # If already pushed to GitHub
```

---

## 💡 NO PHOTO? NO PROBLEM!

Your portfolio already has a professional **fallback avatar**:
- Shows your initials (SR)
- Blue background matching your theme
- Looks modern and professional
- **No action needed!**

---

## 🎨 WHAT YOUR PHOTO LOOKS LIKE

**Location:** About Me section (left side)
**Size:** 300x300 pixels
**Style:** Rounded corners with gradient border
**Effect:** Professional blue gradient border with shadow
**Mobile:** Automatically resizes to 250px

---

## 📋 PHOTO TIPS

### ✅ DO:
- Use recent photo (last 1-2 years)
- Dress business casual or professional
- Good lighting (natural light near window)
- Clean, simple background
- Smile naturally
- Look at camera
- Show shoulders (headshot style)

### ❌ DON'T:
- Use group photos
- Wear sunglasses
- Use party/vacation photos
- Use blurry/low-quality images
- Use heavily filtered photos
- Use photos that are too old

---

## 📱 TAKE A QUICK PHOTO

**Use your phone camera:**

1. **Setup:**
   - Find good natural lighting (near window)
   - Plain wall or clean background
   - Use timer or ask friend to help

2. **Pose:**
   - Business casual attire
   - Shoulders visible
   - Look at camera
   - Natural smile
   - Relaxed posture

3. **Take Photo:**
   - Take 5-10 shots
   - Choose the best one
   - Crop to square using phone's editor
   - Save and transfer to computer

4. **Add to Portfolio:**
   ```bash
   # Transfer photo to computer, then:
   cp ~/Downloads/your-photo.jpg /Users/shohrabrustam/Portfolio/profile-photo.jpg
   ```

---

## 🖼️ PHOTO SPECIFICATIONS

| Aspect | Requirement | Recommended |
|--------|-------------|-------------|
| **Format** | JPG, PNG | JPG (smaller file) |
| **Size** | 300x300px minimum | 500x500px - 1000x1000px |
| **File Size** | Max 2MB | 200-500KB |
| **Aspect Ratio** | Any (will crop) | Square (1:1) |
| **Background** | Any | Plain/Professional |

---

## 🔧 COMPRESS YOUR PHOTO (OPTIONAL)

To make your portfolio load faster:

1. Go to: **https://tinypng.com/**
2. Upload your photo
3. Download compressed version
4. Use as `profile-photo.jpg`

**Benefits:**
- Faster website loading
- Smaller file size (200-500KB ideal)
- No visible quality loss
- Better user experience

---

## 🌐 EXAMPLE COMMANDS

### **If photo is on Desktop:**
```bash
cp ~/Desktop/my-photo.jpg /Users/shohrabrustam/Portfolio/profile-photo.jpg
```

### **If photo is in Downloads:**
```bash
cp ~/Downloads/my-photo.jpg /Users/shohrabrustam/Portfolio/profile-photo.jpg
```

### **If photo is on iPhone (AirDrop first):**
```bash
# After AirDropping to Mac:
cp ~/Downloads/IMG_1234.jpg /Users/shohrabrustam/Portfolio/profile-photo.jpg
```

---

## ✅ TEST YOUR PHOTO

After adding photo:

1. **Open portfolio locally:**
   ```bash
   open /Users/shohrabrustam/Portfolio/index.html
   ```

2. **Check:**
   - Photo loads correctly ✅
   - Centered and clear ✅
   - No pixelation ✅
   - Gradient border looks good ✅
   - Works on mobile (resize browser) ✅

3. **If good, commit and push:**
   ```bash
   cd /Users/shohrabrustam/Portfolio
   git add profile-photo.jpg
   git commit -m "Add profile photo"
   git push
   ```

---

## 🔄 UPDATE YOUR PHOTO LATER

To change your photo:

1. Replace `profile-photo.jpg` with new photo (same name)
2. Commit changes:
   ```bash
   cd /Users/shohrabrustam/Portfolio
   git add profile-photo.jpg
   git commit -m "Update profile photo"
   git push
   ```
3. Wait 1-2 minutes for GitHub Pages to update

---

## 🎨 CUSTOMIZE PHOTO STYLE

### **Want Round Photo Instead of Rounded Square?**

Edit `style.css` around line 283:
```css
.profile-image {
    border-radius: 50%;  /* Change from 20px to 50% */
}

.profile-image img {
    border-radius: 50%;  /* Change from 14px to 50% */
}
```

### **Want Different Border Color?**

Edit `style.css` around line 286:
```css
.profile-image {
    background: linear-gradient(135deg, #10b981, #3b82f6);  /* Change colors */
}
```

---

## 🆘 TROUBLESHOOTING

### **"Photo not showing"**
→ Check filename is exactly `profile-photo.jpg` (case-sensitive)
→ Check file is in Portfolio folder root (not in subfolder)
→ Clear browser cache (Cmd+Shift+R)
→ Try `profile-photo.png` if using PNG format

### **"Photo looks stretched"**
→ Use square photo (1:1 aspect ratio)
→ Or crop to square before adding

### **"Photo file too large"**
→ Compress at https://tinypng.com/
→ Resize to 1000x1000px max
→ Convert PNG to JPG

### **"Photo not updating on live site"**
→ Push changes to GitHub
→ Wait 2-5 minutes for GitHub Pages
→ Hard refresh browser (Cmd+Shift+R)

---

## 📝 COMPLETE WORKFLOW

```bash
# 1. Add your photo
cp ~/path/to/photo.jpg /Users/shohrabrustam/Portfolio/profile-photo.jpg

# 2. Test locally
open /Users/shohrabrustam/Portfolio/index.html

# 3. If good, commit
cd /Users/shohrabrustam/Portfolio
git add profile-photo.jpg
git commit -m "Add profile photo"

# 4. Push to GitHub (if already deployed)
git push

# 5. Wait 1-2 minutes and check live site
```

---

## 🌟 CURRENT FALLBACK AVATAR

If you don't add a photo, your portfolio shows:
- Professional avatar with initials (SR)
- Blue background matching theme
- Clean, modern look
- Perfectly acceptable for job applications

**URL:** `https://ui-avatars.com/api/?name=Shohrab+Rustam&size=300&background=2563eb&color=fff`

---

## 💼 PROFESSIONAL PHOTO SERVICES

### **Free Options:**
- Ask a friend with good phone camera
- Use phone self-timer
- University/company photographer

### **Paid Options (~₹500-2000):**
- Professional photographers in Bangalore
- LinkedIn photo services
- Studio photography

---

## ✅ CHECKLIST

Before deploying with photo:
- [ ] Photo is professional and recent
- [ ] Named exactly `profile-photo.jpg` or `.png`
- [ ] In Portfolio folder root
- [ ] Tested locally and looks good
- [ ] File size under 1MB
- [ ] Committed to git
- [ ] Pushed to GitHub (if deployed)

---

## 🎉 YOU'RE DONE!

**With photo:** Looks personal and professional ⭐⭐⭐⭐⭐  
**Without photo (avatar):** Looks clean and professional ⭐⭐⭐⭐

**Both options are excellent!**

---

**Questions? Your portfolio already supports photos - just add `profile-photo.jpg` and you're done!**