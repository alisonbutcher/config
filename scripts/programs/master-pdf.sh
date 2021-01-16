#!/bin/bash
echo "Installing MasterPDF"
wget -O ~/masterpdf.deb "https://code-industry.net/public/master-pdf-editor-5.6.80-qt5.x86_64.deb"
sudo apt install ~/masterpdf.deb -y
rm ~/masterpdf.deb

