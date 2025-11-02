# 🚀 EXACT COMMANDS FOR YOUR ACCOUNT

## Your GitHub Details:
- **Username**: luciansans
- **Repository will be**: https://github.com/luciansans/project5

---

## ⚠️ IMPORTANT SECURITY NOTE

**DO NOT use your GitHub password directly!** GitHub requires a Personal Access Token for command-line operations.

---

## STEP 1: Create Personal Access Token (Required!)

1. Go to: **https://github.com/settings/tokens**
2. Click **"Generate new token (classic)"**
3. Give it a name: `Project Upload Token`
4. Set expiration: `90 days` (or your preference)
5. Check the box: **`repo`** (Full control of private repositories)
6. Scroll down and click **"Generate token"**
7. **COPY THE TOKEN** - You'll use this instead of your password!
   - It looks like: `ghp_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx`
   - ⚠️ Save it somewhere safe - you won't see it again!

---

## STEP 2: Create Repository on GitHub

1. Go to: **https://github.com/new**
2. Fill in:
   - **Repository name**: `project5`
   - **Description**: `Doctor Appointment & Office Management System - IT Project Phase 5`
   - Choose **Public** or **Private**
   - ⚠️ **DO NOT** check "Add a README file"
3. Click **"Create repository"**

---

## STEP 3: Run These EXACT Commands

Copy and paste these commands one by one into PowerShell:

```powershell
# 1. Make sure you're in the right directory
cd "C:\Users\CP360791\OneDrive - Capitec Bank Ltd\Desktop\project 5"

# 2. Add the GitHub repository
git remote add origin https://github.com/luciansans/project5.git

# 3. Push your code
git push -u origin master
```

---

## STEP 4: When Prompted for Credentials

**Username**: `luciansans`
**Password**: Paste your Personal Access Token (NOT your GitHub password!)

---

## ✅ Alternative: Use GitHub Desktop (Easier!)

If you want to avoid the command line:

1. Download: **https://desktop.github.com**
2. Install and sign in with:
   - Username: `luciansans`
   - Password: Your actual GitHub password (Ls#5237089)
3. Click **"Add"** → **"Add existing repository"**
4. Browse to: `C:\Users\CP360791\OneDrive - Capitec Bank Ltd\Desktop\project 5`
5. Click **"Publish repository"**
6. Choose name: `project5`
7. Click **"Publish repository"**
8. Done! ✅

---

## 🔧 If You Get Errors

### Error: "remote origin already exists"
```powershell
git remote remove origin
git remote add origin https://github.com/luciansans/project5.git
git push -u origin master
```

### Error: "Authentication failed"
You're using your password instead of the Personal Access Token. Go back to Step 1 and create a token!

---

## ✅ Success!

After pushing, go to: **https://github.com/luciansans/project5**

You should see all your files! 🎉

---

## 📊 What Will Be Uploaded:

- 44 files
- 5,887+ lines of code
- Complete Phase 5 implementation
- All documentation
- Working backend and frontend

---

## 🆘 Still Having Issues?

Run this and send me the output:
```powershell
git remote -v
git branch
git status