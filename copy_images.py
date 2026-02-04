
import shutil
import os
import sys

# Artifact paths
src_logo = r"C:\Users\ah266\.gemini\antigravity\brain\c37bdd88-a573-4975-b8cb-26fd3e4e2776\harmogrow_logo_1770187828676.png"
src_banner = r"C:\Users\ah266\.gemini\antigravity\brain\c37bdd88-a573-4975-b8cb-26fd3e4e2776\harmogrow_banner_1770187843577.png"

# Destination paths (Current directory)
cwd = os.getcwd()
print(f"Current working directory: {cwd}")

dst_logo = os.path.join(cwd, "logo.png")
dst_banner = os.path.join(cwd, "banner.png")

def copy_file(src, dst):
    try:
        if not os.path.exists(src):
            print(f"Source file not found: {src}")
            return
        
        print(f"Copying {src} to {dst}")
        shutil.copy2(src, dst)
        
        if os.path.exists(dst):
            print(f"Success: {dst} created. Size: {os.path.getsize(dst)}")
        else:
            print(f"Error: Copy command finished but {dst} not found.")
            
    except Exception as e:
        print(f"Exception copying to {dst}: {e}")

copy_file(src_logo, dst_logo)
copy_file(src_banner, dst_banner)
