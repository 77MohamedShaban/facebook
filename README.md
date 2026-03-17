# Facebook Clone - Flutter

A comprehensive Facebook clone built with Flutter, showcasing a modern UI/UX with features like authentication, home feed, stories, and more.

<p align="center">
  <img src="https://github.com/user-attachments/assets/13c6fbd7-2dee-454c-b004-33e834588f09" height="300"/>
  <img src="https://github.com/user-attachments/assets/d8584247-6a79-4977-a356-503f6891b326" height="300" style="margin: 0 15px;"/>
  <img src="https://github.com/user-attachments/assets/fb32919b-cb5a-4b67-a721-5eb71a065f9e" height="300"/>
</p>

## 🚀 Features

- **Authentication:** Clean login screen with validation.
- **Home Feed:** Dynamic feed with posts, images, and interactions.
- **Stories:** Interactive story section at the top of the feed.
- **Custom Widgets:** Reusable components like `CustomTextFormField`, `PostWidget`, and `StoryWidget`.
- **Splash Screen:** Native splash screen integration (`flutter_native_splash`).
- **Responsive Design:** Works across different screen sizes.

## 🛠️ Project Structure

The project follows a clean architecture pattern organized by features:

```text
lib/
├── core/             # Core utilities, widgets, and theme
│   ├── utils/        # Helper classes (Validators, etc.)
│   └── widgets/      # Common reusable widgets
├── screens/          # Application screens
│   ├── login/        # Login feature
│   └── home/         # Home feed & Tab view
│       └── widgets/  # Specific widgets for home (Posts, Stories)
└── main.dart         # Entry point
```

## 📦 Tech Stack

- **Framework:** [Flutter](https://flutter.dev/)
- **Language:** [Dart](https://dart.dev/)
- **Assets:** Custom icons and images.

## ⚙️ Getting Started

### Prerequisites

- Flutter SDK (v3.10.4 or higher)
- Android Studio / VS Code
- Git

### Installation

1. **Clone the repository:**
   ```bash
   git clone <your-repo-url>
   ```

2. **Navigate to the project folder:**
   ```bash
   cd facebook
   ```

3. **Install dependencies:**
   ```bash
   flutter pub get
   ```

4. **Run the app:**
   ```bash
   flutter run
   ```

---
Made with ❤️ by [Mohamed Shaban]
