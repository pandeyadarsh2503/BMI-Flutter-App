# 📱 BMI Calculator Flutter App

A professional, user-friendly mobile application built with Flutter that calculates Body Mass Index (BMI). The app provides personalized feedback based on user input with dynamic UI color changes reflecting health status.

## 📖 Table of Contents

- [Introduction](#introduction)
- [Features](#features)
- [Screenshots](#screenshots)
- [Tech Stack](#tech-stack)
- [Getting Started](#getting-started)
- [Usage](#usage)
- [Project Structure](#project-structure)
- [How It Works](#how-it-works)
- [Dependencies](#dependencies)
- [Configuration](#configuration)
- [Troubleshooting](#troubleshooting)
- [Contributing](#contributing)
- [License](#license)

## Introduction

The BMI Calculator is a cross-platform mobile application designed to provide users with a quick and interactive way to calculate their Body Mass Index. The app enhances user experience through:

- **Personalization**: Enter your name for a customized experience
- **Smooth UI Transitions**: Professional animations and transitions
- **Visual Health Indicators**: Color-coded feedback for health status
- **Input Validation**: Robust error handling and field validation

## ✨ Features

### 🚀 Splash Screen
- Clean 5-second entry animation to welcome users
- Professional branding and welcome message

### 👤 User Personalization
- Enter your name for a personalized experience
- Name is displayed throughout the app

### ⚖️ BMI Calculation
- Calculates BMI using:
  - Weight (in kilograms)
  - Height (in feet & inches)
- Supports both metric and imperial units

### 🎨 Dynamic UI Feedback
- **🟢 Green**: Healthy weight (BMI 18.5 - 24.9)
- **🟠 Orange**: Overweight (BMI 25.0 - 29.9)
- **🔴 Red**: Underweight (BMI < 18.5) or Obese (BMI ≥ 30.0)

### ✅ Input Validation
- Validates all required fields before calculation
- Prevents invalid inputs
- User-friendly error messages

## 📸 Screenshots

| Splash Screen | Intro Page | Calculation Page | Result |
|:---:|:---:|:---:|:---:|
| ![Splash](https://via.placeholder.com/300x600?text=Splash+Screen) | ![Intro](https://via.placeholder.com/300x600?text=Intro+Page) | ![Main](https://via.placeholder.com/300x600?text=Calculation+Page) | ![Result](https://via.placeholder.com/300x600?text=Result) |

*Note: Replace placeholders with actual app screenshots*

## 🛠 Tech Stack

| Component | Technology |
|-----------|-----------|
| **Framework** | Flutter |
| **Language** | Dart |
| **State Management** | StatefulWidget (setState) |
| **Platform** | iOS, Android |
| **Minimum SDK** | Android 21+, iOS 11.0+ |

## 🚀 Getting Started

### Prerequisites

Ensure you have the following installed on your system:

- **Flutter SDK** (v3.0 or higher)
- **Dart SDK** (v3.0 or higher)
- **Android Studio** or **VS Code** with Flutter extension
- **Emulator** or **physical device** for testing
- **Git** for version control

### Installation

1. **Clone the repository:**
```bash
git clone https://github.com/pandeyadarsh2503/BMI-Flutter-App.git
cd BMI-Flutter-App
```

2. **Install dependencies:**
```bash
flutter pub get
```

3. **Run the app:**
```bash
flutter run
```

4. **Build for release (optional):**
```bash
# For Android
flutter build apk --release

# For iOS
flutter build ios --release
```

## ▶️ Usage

1. **Launch the App**: Open the BMI Calculator app on your device or emulator
2. **Enter Your Name**: On the intro screen, enter your name for personalization
3. **Input Your Measurements**:
   - Enter your weight in kilograms (kg)
   - Enter your height in feet and inches
4. **Calculate**: Tap the "Calculate BMI" button
5. **View Results**: Your BMI will be displayed with color-coded health feedback
6. **Calculate Again**: Use the reset button to perform another calculation

## 📂 Project Structure

```
lib/
├── main.dart          # Entry point & Intro Page
├── splash.dart        # Splash screen logic & animations
├── bmi.dart           # BMI calculation & result UI
└── utils/
    └── constants.dart # App constants & theme colors

assets/
├── images/           # App images and icons
└── fonts/            # Custom fonts (if any)

test/
└── bmi_test.dart     # Unit tests for BMI calculations
```

## 🧮 How It Works

### BMI Formula

The app uses the standard BMI formula:

```
BMI = weight (kg) / (height (m))²
```

### Calculation Steps

1. **Convert Height**: Convert height from feet & inches to centimeters
   - Formula: (feet × 12 + inches) × 2.54 = cm

2. **Convert to Meters**: Convert centimeters to meters
   - Formula: cm ÷ 100 = m

3. **Apply BMI Formula**: Calculate BMI using weight and height in meters
   - Formula: weight ÷ (height²) = BMI

4. **Display Result**: Show result with corresponding UI color based on health category

### BMI Categories

| Category | BMI Range | Color | Status |
|----------|-----------|-------|--------|
| Underweight | < 18.5 | 🔴 Red | Below healthy weight |
| Normal Weight | 18.5 - 24.9 | 🟢 Green | Healthy weight |
| Overweight | 25.0 - 29.9 | 🟠 Orange | Above healthy weight |
| Obese | ≥ 30.0 | 🔴 Red | At health risk |

## 📦 Dependencies

Currently uses Flutter's default libraries:
- `flutter/material.dart` - Material Design UI components
- `dart:async` - Asynchronous programming

*Future external packages can be added to `pubspec.yaml` as needed*

## ⚙️ Configuration

### Platform-Specific Configuration

**Android** (`android/app/build.gradle`):
- Minimum SDK: 21
- Target SDK: Latest stable

**iOS** (`ios/Podfile`):
- Platform: 11.0 or higher
- Swift version: 5.0+

### App Configuration

No special configuration is required. Ensure:
- Flutter environment is properly set up
- All dependencies are installed via `flutter pub get`
- Emulator/device is properly configured

## 🐞 Troubleshooting

### Common Issues & Solutions

**Q: Flutter command not recognized?**
```bash
flutter doctor
```
Ensure Flutter is added to your system PATH.

**Q: Dependencies not installing?**
```bash
flutter clean
flutter pub get
```

**Q: App not running on emulator?**
- Ensure the emulator is started before running `flutter run`
- Check: `flutter emulators`
- Start emulator: `flutter emulators --launch <emulator_id>`

**Q: Build errors on Android?**
```bash
flutter clean
cd android
./gradlew clean
cd ..
flutter pub get
flutter run
```

**Q: iOS build fails?**
```bash
cd ios
pod repo update
cd ..
flutter clean
flutter pub get
flutter run
```

## 🔄 Build & Release

### Debug Build
```bash
flutter run
```

### Release Build

**Android APK:**
```bash
flutter build apk --release
# Output: build/app/outputs/flutter-apk/app-release.apk
```

**Android App Bundle:**
```bash
flutter build appbundle --release
# Output: build/app/outputs/bundle/release/app-release.aab
```

**iOS IPA:**
```bash
flutter build ios --release
# Follow Xcode archiving process
```

## 🤝 Contributing

Contributions are welcome! Here's how to contribute:

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## 📄 License

This project is licensed under the MIT License - see the LICENSE file for details.

## 👨‍💻 Author

**Adarsh Pandey**
- GitHub: [@pandeyadarsh2503](https://github.com/pandeyadarsh2503)

## 📞 Support

If you have any questions or issues, please:
1. Check the Troubleshooting section
2. Open an issue on GitHub
3. Contact the author

---

**Made with ❤️ using Flutter**