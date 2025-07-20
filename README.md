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

![Login](assets/screenshots/login.png)

### 🏠 Home Page

![Home](assets/screenshots/home.png)

### 🛒 Cart Page

![Cart](assets/screenshots/cart.png)

### ❤️ Favourites Page

![Favourites](assets/screenshots/favourites.png)

---

## 🚀 Getting Started

### 1. Clone the repository

```bash
git clone https://github.com/your-username/smart_shop.git
cd smart_shop
