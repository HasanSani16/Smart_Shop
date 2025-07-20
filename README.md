# 🛍️ Smart Shop - Mini E-commerce App

Smart Shop is a simple Flutter-based mini e-commerce app built using **Provider**, **SharedPreferences**, **theme switching**, and RESTful API integration with [FakeStore API](https://fakestoreapi.com/).  
This project is built for educational purposes and demonstrates core Flutter architecture, state management, and API handling.

---

## 📱 Features

- ✅ **Login/Register Screen** (with dummy credentials)
  - Uses `TextFormField` with validation
  - Stores login state using `SharedPreferences`
- 🏠 **Home Page**
  - Fetches and displays products from FakeStore API
  - Add/remove items to cart
  - Mark products as favorite using heart icon
  - Sort by price/rating
  - Pull to refresh product list
- 🛒 **Cart Page**
  - Displays added items with total price
  - Cart badge updates with item count
- ❤️ **Favourites Page**
  - Lists all favorite items saved using Provider and SharedPreferences
- 🎨 **Theme Switch**
  - Toggle between dark/light mode and persist the theme
- 📂 **Drawer Navigation**
  - Navigate to Home, Cart, Profile, Favourites, and Logout
- 🔐 **Logout**
  - Clears login state and returns to login screen

---

## 🧪 Dummy Login Credentials






---

## 📷 Screenshots

> Add your screenshots here inside the `assets/screenshots/` folder, and embed them below like this:

### 🔑 Login Screen

<img width="408" height="793" alt="Screenshot 2025-07-20 104454" src="https://github.com/user-attachments/assets/20fdef59-fbf0-42df-8ff8-53d35f2484dd" />


### 🏠 Home Page
<img width="406" height="776" alt="Screenshot 2025-07-20 104303" src="https://github.com/user-attachments/assets/ed263f29-01cd-4f5c-9680-cb3c7e53d51c" />


### 🛒 Cart Page

<img width="590" height="1020" alt="Screenshot 2025-07-20 105416" src="https://github.com/user-attachments/assets/bfa60e49-cb08-4b54-a2bf-192c47139543" />


### ❤️ Favourites Page

<img width="585" height="1015" alt="Screenshot 2025-07-20 105433" src="https://github.com/user-attachments/assets/ea697a03-3510-4cce-b640-d930091807d0" />


---

## 🚀 Getting Started

### 1. Clone the repository

```bash
git clone https://github.com/your-username/smart_shop.git
cd smart_shop
