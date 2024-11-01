Supermarket App 
A full-featured supermarket app built using Flutter, designed for easy online grocery shopping. This app allows users to explore categories, view recommended products, add items to the cart, and make payments. It integrates with Firebase for authentication and uses Firestore as a backend for storing and retrieving data.

Features
User Authentication: Firebase-based login, with Firestore used for user data storage.
Product Management: Allows users to browse products by category, view product details, and add items to the cart.
Cart Management: Users can add, remove, and manage items in their shopping cart, with a real-time display of the total amount.
Payment Calculation: The total cart amount is calculated, and a payment button is provided to show the total cost.
Product Image Selection: Users can select an image from the gallery or capture one via the camera.
Pagination: Efficient data loading with pagination for large data sets.
Offline Support: Save form data locally and update it when connected to the internet.
📂 Folder Structure
bash
Copy code
supermarket_app/
├── Core/
│   ├── enums/              # Enums for managing different screen statuses
│   ├── utils/              # Utility files, colors, and styles
│   └── widgets/            # Common widgets used across the app
├── Features/
│   ├── Auth/               # Authentication features and BLoC management
│   ├── Home/
│   │   ├── Data/           # Data models and repositories
│   │   ├── Presentation/   # Home screen UI components and BLoC
│   │   └── Widgets/        # Widgets for home screen components
└── README.md
🚀 Getting Started
Prerequisites
Flutter SDK
Firebase Project
Dart >=2.12.0
Installation
Clone the repository:

bash
Copy code
git clone https://github.com/your-username/supermarket-app.git
cd supermarket-app
Install dependencies:

bash
Copy code
flutter pub get
Configure Firebase:

Set up Firebase for both iOS and Android in the Firebase Console.
Download google-services.json (for Android) and GoogleService-Info.plist (for iOS) and place them in the appropriate directories.
Run the app:

bash
Copy code
flutter run
🧩 Core Features and Code Details
Authentication
Firebase Authentication is used for user login.
The AuthBloc manages login state and handles logout functionality, which is implemented with a button in the home screen's top bar.
On logout, the app navigates to the sign-in screen.
Cart Management
Add to Cart: Users can add products to the cart using a button in the product view.
Delete from Cart: Each cart item includes a delete button to remove it from the cart. This calls the DeleteFromCart event in HomeBloc to handle the deletion.
Payment Calculation: A button below the cart list shows the total cost of items in the cart.
