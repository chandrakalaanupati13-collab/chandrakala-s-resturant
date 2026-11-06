# Chandrakala's Restaurant — Restaurant Management System

Responsive restaurant website and management dashboard built with HTML, CSS, JavaScript, Node.js, Express.js and MySQL.

## Project structure
```text
Chandrakalas_Restaurant/
├── public/
│   ├── index.html
│   ├── style.css
│   └── app.js
├── database.sql
├── server.js
├── package.json
├── .env.example
├── .gitignore
└── README.md
```

## Features
- Home, About, Menu, Gallery, Reservations and Contact sections.
- Restaurant menu with search and category filter.
- Menu items: Create, Read, Update, Delete.
- Reservations: Create from booking form, Read in dashboard, Update status, Delete.
- Contact messages: Create, Read, Update, Delete.
- MySQL connection health check at `/api/health`.
- Responsive desktop and mobile layout; food photography from Unsplash.

## Requirements
Windows 10/11, Node.js LTS, MySQL Server, MySQL Workbench, VS Code and a modern browser.

## Run step by step (Windows / VS Code)
1. Extract `Chandrakalas_Restaurant.zip`.
2. Open VS Code → File → Open Folder → choose `Chandrakalas_Restaurant`.
3. Start your MySQL Server and open MySQL Workbench. Connect to your local MySQL instance.
4. Open `database.sql` in Workbench and click the lightning-bolt Execute button. Refresh Schemas; `chandrakalas_restaurant` should appear.
5. In VS Code, copy `.env.example` and rename the copy to `.env`.
6. Open `.env` and replace `your_mysql_password` with your actual MySQL password. Update DB_USER if you use another MySQL account. Keep `.env` private.
7. VS Code → Terminal → New Terminal. Run:
   ```powershell
   npm.cmd install
   ```
8. Start the app:
   ```powershell
   npm.cmd start
   ```
9. Open `http://localhost:3000` in Chrome or Edge. Do not double-click `index.html`; use the localhost URL so API and CRUD requests work (this also avoids file-not-found / file protocol issues).
10. Test the database connection at `http://localhost:3000/api/health`. Success returns JSON with `"ok": true` and `"MySQL connection successful"`.

## Test CRUD
- Menu: Manage → Menu items → Add menu item. Edit and Delete buttons are in the table. Menu cards display the saved items.
- Reservations: submit Book a table; Manage → Reservations to read records, change the status dropdown to update, or delete.
- Messages: submit Contact; Manage → Messages to read, edit or delete.
- In Workbench, run:
  ```sql
  USE chandrakalas_restaurant;
  SELECT * FROM menu_items;
  SELECT * FROM reservations;
  SELECT * FROM messages;
  ```

## Notes
The project files and JavaScript syntax can be checked in this environment, but your local MySQL server and password are only accessible on your computer. Therefore complete the SQL import and `.env` setup, then use `/api/health` and the CRUD steps above to test your actual database connection. The admin area is for a local student demo and has no login yet; add authentication before publishing publicly. Phone/email shown are sample contact details—replace them with real project demo details. Images and Google Fonts are remote, so internet is needed for them to load.
