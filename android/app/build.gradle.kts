plugins {
    id("com.android.application")
    id("kotlin-android")   
    id("dev.flutter.flutter-gradle-plugin")
    id("com.google.gms.google-services") version "4.4.0"
}

android {
    namespace = "com.example.ecommerce"
    compileSdk = flutter.compileSdkVersion
    ndkVersion = "27.0.12077973"
    

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_11
        targetCompatibility = JavaVersion.VERSION_11
    }

    kotlinOptions {
        jvmTarget = JavaVersion.VERSION_11.toString()
    }

    defaultConfig {
        // TODO: Specify your own unique Application ID (https://developer.android.com/studio/build/application-id.html).
        applicationId = "com.example.ecommerce"
        // You can update the following values to match your application needs.
        // For more information, see: https://flutter.dev/to/review-gradle-config.
        minSdk = 23
        targetSdk = flutter.targetSdkVersion
        versionCode = flutter.versionCode
        versionName = flutter.versionName
    }

    buildTypes {
        release {
            // TODO: Add your own signing config for the release build.
            // Signing with the debug keys for now, so `flutter run --release` works.
            signingConfig = signingConfigs.getByName("debug")
        }
    }
}

flutter {
    source = "../.."
}

dependencies {
    // Firebase BoM (version management)
    implementation(platform("com.google.firebase:firebase-bom:33.15.0"))

    // Firebase SDKs (add others if needed)
    implementation("com.google.firebase:firebase-analytics")
    // implementation("com.google.firebase:firebase-auth") // Optional
    // implementation("com.google.firebase:firebase-firestore") // Optional
}