#!/bin/bash

# Simple script to add photo to Portfolio

echo "═══════════════════════════════════════════════════════════"
echo "  📸 Add Photo to Portfolio"
echo "═══════════════════════════════════════════════════════════"
echo ""

# Check if in Portfolio directory
if [ ! -f "index.html" ]; then
    echo "❌ Error: Please run from Portfolio directory"
    echo "   cd /Users/shohrabrustam/Portfolio"
    exit 1
fi

echo "✅ Portfolio directory confirmed!"
echo ""

# Ask for photo path
read -p "Enter the full path to your photo: " photo_path

# Check if file exists
if [ ! -f "$photo_path" ]; then
    echo "❌ Error: File not found: $photo_path"
    exit 1
fi

# Get file extension
extension="${photo_path##*.}"
extension_lower=$(echo "$extension" | tr '[:upper:]' '[:lower:]')

# Check if valid image format
if [ "$extension_lower" != "jpg" ] && [ "$extension_lower" != "jpeg" ] && [ "$extension_lower" != "png" ]; then
    echo "❌ Error: Photo must be JPG or PNG format"
    echo "   Your file: .$extension"
    exit 1
fi

# Determine target filename
if [ "$extension_lower" = "png" ]; then
    target="profile-photo.png"
else
    target="profile-photo.jpg"
fi

# Copy file
echo "📋 Copying photo..."
cp "$photo_path" "$target"

if [ $? -eq 0 ]; then
    echo "✅ Photo copied successfully: $target"
    echo ""
    
    # Show file size
    size=$(du -h "$target" | cut -f1)
    echo "📊 File size: $size"
    echo ""
    
    # Suggest compression if large
    size_bytes=$(stat -f%z "$target" 2>/dev/null || stat -c%s "$target" 2>/dev/null)
    if [ "$size_bytes" -gt 1000000 ]; then
        echo "💡 Tip: Your photo is quite large ($size)"
        echo "   Consider compressing at: https://tinypng.com/"
        echo ""
    fi
    
    # Test locally
    read -p "Open portfolio to test photo? (yes/no): " test
    if [ "$test" = "yes" ]; then
        open index.html
        echo "✅ Portfolio opened in browser"
        echo ""
    fi
    
    # Commit to git
    read -p "Commit photo to git? (yes/no): " commit
    if [ "$commit" = "yes" ]; then
        git add "$target"
        git commit -m "Add profile photo"
        echo "✅ Photo committed to git"
        echo ""
        
        # Push to GitHub
        if git remote get-url origin > /dev/null 2>&1; then
            read -p "Push to GitHub? (yes/no): " push
            if [ "$push" = "yes" ]; then
                git push
                echo "✅ Pushed to GitHub"
                echo ""
                echo "🌐 Your live site will update in 1-2 minutes"
            fi
        fi
    fi
    
    echo "═══════════════════════════════════════════════════════════"
    echo "  ✅ SUCCESS! Photo added to portfolio!"
    echo "═══════════════════════════════════════════════════════════"
    echo ""
    echo "📸 Your photo: $target"
    echo "📁 Location: /Users/shohrabrustam/Portfolio/$target"
    echo ""
    
    if [ "$size_bytes" -lt 1000000 ]; then
        echo "✅ File size is good!"
    fi
    
    echo ""
    echo "Next steps:"
    echo "1. Test locally: open index.html"
    echo "2. If good, git push (if already deployed)"
    echo "3. Wait 1-2 minutes for live site update"
    echo ""
else
    echo "❌ Error: Failed to copy photo"
fi
echo ""