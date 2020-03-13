# Add project specific ProGuard rules here.
# You can control the set of applied configuration files using the
# proguardFiles setting in build.gradle.
#
# For more details, see
#   http://developer.android.com/guide/developing/tools/proguard.html

# If your project uses WebView with JS, uncomment the following
# and specify the fully qualified class name to the JavaScript interface
# class:
#-keepclassmembers class fqcn.of.javascript.interface.for.webview {
#   public *;
#}

# Uncomment this to preserve the line number information for
# debugging stack traces.
#-keepattributes SourceFile,LineNumberTable

# If you keep the line number information, uncomment this to
# hide the original source file name.
#-renamesourcefileattribute SourceFile



#region SDK rules
-verbose

-dontwarn android.support.**
-dontwarn com.badlogic.gdx.backends.android.AndroidFragmentApplication
-dontwarn com.badlogic.gdx.utils.GdxBuild
-dontwarn com.badlogic.gdx.physics.box2d.utils.Box2DBuild
-dontwarn com.badlogic.gdx.jnigen.BuildTarget*
-dontwarn com.badlogic.gdx.graphics.g2d.freetype.FreetypeBuild

-keep class com.badlogic.gdx.controllers.android.AndroidControllers
-keep class com.badlogic.gdx.backends.android.AndroidApplication
-keep class com.badlogic.gdx.backends.android.AndroidApplicationConfiguration
-keep class com.pocket52.application.P52Poker
-keep class com.pocket52.helper.NumberFormatter
-keep class com.pocket52.hld.table.IGameLifecycleListener


-keepclassmembers class com.pocket52.application.P52Poker {
   void    init(com.pocket52.application.Config);
   com.pocket52.application.P52Poker    get();
   void    disposeToken();
   void    openPokerRooms();
   void    closePokerRooms();
}

-keep class com.pocket52.application.Config {
*;
}
-keep class com.pocket52.application.IPokerListener {
*;
}
-keep class com.pocket52.application.ERROR {
*;
}
-keep class com.pocket52.application.MODE {
*;
}

-keepnames class com.badlogic.gdx.backends.android.AndroidInput*
-keepclassmembers class com.badlogic.gdx.backends.android.AndroidInput* {
   <init>(com.badlogic.gdx.Application, android.content.Context, java.lang.Object, com.badlogic.gdx.backends.android.AndroidApplicationConfiguration);
}

-keepclassmembers class com.badlogic.gdx.physics.box2d.World {
   boolean contactFilter(long, long);
   void    beginContact(long);
   void    endContact(long);
   void    preSolve(long, long);
   void    postSolve(long, long);
   boolean reportFixture(long);
   float   reportRayFixture(long, float, float, float, float, float);
}
#endregion

#region okHttp rules (used by picasso)
# JSR 305 annotations are for embedding nullability information.
-dontwarn javax.annotation.**

# A resource is loaded with a relative path so the package of this class must be preserved.
-keepnames class okhttp3.internal.publicsuffix.PublicSuffixDatabase

# Animal Sniffer compileOnly dependency to ensure APIs are compatible with older versions of Java.
-dontwarn org.codehaus.mojo.animal_sniffer.*

# OkHttp platform used only on JVM and when Conscrypt dependency is available.
-dontwarn okhttp3.internal.platform.ConscryptPlatform
#endregion

#region LoganSquare
-keep class com.bluelinelabs.logansquare.** { *; }
-keep @com.bluelinelabs.logansquare.annotation.JsonObject class *
-keep class **$$JsonObjectMapper { *; }
#endregion

#region Branch
-dontwarn com.android.installreferrer.api.**
-dontwarn com.crashlytics.android.answers.shim.**
-dontwarn com.google.firebase.appindexing.**
#endregion
