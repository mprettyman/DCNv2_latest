#!/usr/bin/env bash

# Production installation script for DCNv2
set -e

echo "🚀 Installing DCNv2 (production mode)..."

# Clean previous builds
echo "🧹 Cleaning previous builds..."
rm -rf build/
rm -rf dist/
rm -rf *.egg-info/
find . -name "*.so" -delete
find . -name "*.o" -delete
find . -name "__pycache__" -type d -exec rm -rf {} + 2>/dev/null || true

# Install the package
echo "📦 Installing DCNv2..."
pip install . --no-build-isolation

echo "✅ Installation complete!"
echo ""
echo "To test the installation:"
echo "  python -c 'from dcn_v2 import DCN; print(\"DCNv2 installed successfully!\")'"
