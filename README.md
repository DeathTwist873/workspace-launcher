# workspace-launcher
Windows Batch (CLI) Command Line Interface script for automating multi-browser workspace setups, local document templates, and system utilities.
 
A lightweight Windows Batch (CLI) automation script designed to bootstrap daily development and operational workspaces. It orchestrates asynchronous browser session initialization, multi-instance web application launching, dynamic local document staging, and desktop utility execution from a single terminal execution block.

---

## Technical Overview

* **Non-Blocking Process Spawning:** Leverages `start ""` command-line directives to launch applications and background processes asynchronously, preventing console lock-ups and process blocking.
* **Dual-Browser Engine Routing:** Routes web applications to distinct browser engines based on operational compatibility and session isolation (Google Chrome for web services and logistics; Microsoft Edge for cloud DMS platforms).
* **Multi-Instance Bootstrapping:** Launches dual isolated instances of enterprise portals to simultaneously maintain operational dashboards and active task/order windows.
* **Environment Variable Portability:** Built using `%USERPROFILE%` Windows environment variables to ensure pathing portability across local user accounts without hardcoded system dependencies.

---

## System Architecture & Workflow

```text
                                  ┌── Google Chrome ──> Enterprise Portals (Email, SimplePart, PayPal, ShipStation, NNANet)
                                  │
[ start_day.bat ] ──> Windows CLI ┼── Microsoft Edge ──> DMS Instances (Home Dashboard, Sales Orders)
                                  │
                                  └── Windows OS ──────> Desktop Utilities & Local Templates (Sticky Notes, WordPad)
```
Script Breakdown
## 1. Web Portal & Service Initialization (Chrome)

Spawns background Chrome instances for core daily communications, inventory portals, payment processing, shipping dashboards, and enterprise SSO authentication:
```
start "" "C:\Program Files\Google\Chrome\Application\chrome.exe" "[https://outlook.office365.com/](https://outlook.office365.com/)"
start "" "C:\Program Files\Google\Chrome\Application\chrome.exe" "[https://example.com/inventory-management](https://example.com/inventory-management)"
start "" "C:\Program Files\Google\Chrome\Application\chrome.exe" "[https://www.paypal.com/signin](https://www.paypal.com/signin)"
start "" "C:\Program Files\Google\Chrome\Application\chrome.exe" "[https://ship3.shipstation.com/home](https://ship3.shipstation.com/home)"
start "" "C:\Program Files\Google\Chrome\Application\chrome.exe" "[https://example.com/sso-login](https://example.com/sso-login)"
```
## 2. Dual DMS Instance Routing (Edge)

Launches secondary browser instances optimized for cloud Dealer Management Systems (Tekion), splitting operations into main navigation and sales order modules:

```
start "" "C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe" "[https://app.dms-cloud.com/home](https://app.dms-cloud.com/home)"
start "" "C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe" "[https://app.dms-cloud.com/parts/sales-order](https://app.dms-cloud.com/parts/sales-order)"
```
## 3. Local Utility & Asset Staging

Resolves local user paths dynamically via %USERPROFILE% to launch desktop utilities and open required document templates:
```
start "" "%USERPROFILE%\Documents\templates\Sticky Notes"
start "" "%USERPROFILE%\Documents\templates\NOTES_TEMPLATE.docx"
start "" "%USERPROFILE%\Documents\templates\BACKORDER.docx"
```
## How To Use

1. **Configure Environment:** Open `workspace-launcher.bat` in any plain text editor (e.g., VS Code or Notepad) to customize your target URLs, application file paths, and document templates.
2. **Execute Launcher:** Double-click `workspace-launcher.bat` to automatically launch all browser portals, system desktop tools, and local document templates.

---
