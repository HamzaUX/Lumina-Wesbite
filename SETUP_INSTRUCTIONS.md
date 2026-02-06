# Setup Instructions for Lumina Festival

## Issue
Your system has a Node.js compatibility issue. The Homebrew-installed Node.js (v24.7.0) was built for macOS 13.5, but your system libraries are older.

## Solution Options

### Option 1: Use nvm (Recommended)
1. Open a terminal and navigate to the project:
   ```bash
   cd /Users/imrane/Downloads/lumina-festival
   ```

2. Install Node.js v20 using nvm:
   ```bash
   source ~/.nvm/nvm.sh
   nvm install 20
   nvm use 20
   ```

3. Verify Node.js is working:
   ```bash
   node --version
   npm --version
   ```

4. Install project dependencies:
   ```bash
   npm install
   ```

5. Set up your Gemini API key:
   - Edit `.env.local` and replace `PLACEHOLDER_API_KEY` with your actual Gemini API key
   - Get your API key from: https://aistudio.google.com/app/apikey

6. Run the development server:
   ```bash
   npm run dev
   ```

### Option 2: Use the Setup Script
Run the provided setup script:
```bash
cd /Users/imrane/Downloads/lumina-festival
bash setup.sh
```

Then set your API key in `.env.local` and run `npm run dev`.

### Option 3: Update macOS (if possible)
If you can update your macOS to version 13.5 or later, the current Node.js installation should work.

## Troubleshooting

If nvm installation is slow or fails:
- Check your internet connection
- Try installing a specific version: `nvm install 20.20.0`
- Make sure you have sufficient disk space

If you encounter permission errors:
- Make sure nvm is properly installed: `nvm --version`
- Check that `~/.nvm` directory exists and is accessible

## Project Information

- **Framework**: React 19 + TypeScript
- **Build Tool**: Vite 6
- **Port**: 3000 (configured in vite.config.ts)
- **API**: Google Gemini AI

Once the server is running, visit: http://localhost:3000
