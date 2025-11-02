# Git Upload Instructions

## Current Status
✅ All files are committed locally
✅ Your branch is: **master**
✅ 42 files ready to upload

## Step-by-Step Upload to GitHub

### Option 1: Create New Repository on GitHub

1. **Go to GitHub** (https://github.com)
2. **Click "New Repository"** (green button)
3. **Fill in details:**
   - Repository name: `doctor-appointment-system` (or your choice)
   - Description: "Doctor Appointment & Office Management System - IT Project Phase 5"
   - **IMPORTANT:** Do NOT check "Initialize with README" (we already have files)
   - Choose Public or Private
4. **Click "Create repository"**

5. **Copy the repository URL** (will look like: `https://github.com/YOUR_USERNAME/doctor-appointment-system.git`)

6. **Run these commands in PowerShell:**

```powershell
# Add the remote repository (replace YOUR_URL with the URL you copied)
git remote add origin YOUR_URL

# Push to GitHub
git push -u origin master
```

### Option 2: If You Already Have a Repository

If you already created a repository called "it-project":

```powershell
# Add the remote (replace YOUR_USERNAME)
git remote add origin https://github.com/YOUR_USERNAME/it-project.git

# Push to master branch
git push -u origin master
```

### Option 3: Push to Existing Remote with Different Branch Name

If your GitHub repo expects a branch called "it-project" or "main":

```powershell
# Rename your branch to match GitHub
git branch -M main

# Add remote (if not already added)
git remote add origin YOUR_GITHUB_URL

# Push
git push -u origin main
```

## Common Issues and Solutions

### Issue: "remote origin already exists"
```powershell
# Remove old remote
git remote remove origin

# Add new remote
git remote add origin YOUR_NEW_URL
```

### Issue: "src refspec it-project does not match any"
This means you're trying to push a branch that doesn't exist. Your branch is "master", not "it-project".

**Solution:**
```powershell
# Check your current branch
git branch

# Push the correct branch (master)
git push -u origin master
```

### Issue: "failed to push some refs"
This usually means the remote has files you don't have locally.

**Solution:**
```powershell
# Pull first (if remote has files)
git pull origin master --allow-unrelated-histories

# Then push
git push -u origin master
```

## Verify Upload

After pushing, check:
1. Go to your GitHub repository URL
2. Refresh the page
3. You should see all 42 files

## Quick Reference Commands

```powershell
# Check current branch
git branch

# Check remote URL
git remote -v

# Check status
git status

# View commit history
git log --oneline

# Push to GitHub
git push -u origin master
```

## Need Help?

If you're still having issues, please provide:
1. Your GitHub repository URL
2. The exact error message
3. Output of: `git branch` and `git remote -v`