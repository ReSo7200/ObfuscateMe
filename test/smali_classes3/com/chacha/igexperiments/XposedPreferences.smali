.class public Lcom/chacha/igexperiments/XposedPreferences;
.super Lcom/chacha/igexperiments/Preferences;
.source "XposedPreferences.java"


# static fields
.field private static pref:Lde/robv/android/xposed/XSharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/chacha/igexperiments/Preferences;-><init>()V

    return-void
.end method

.method private static getLegacyPrefs()Lde/robv/android/xposed/XSharedPreferences;
    .locals 3

    .line 17
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "data/com.chacha.igexperiments/shared_prefs/IGExperiments.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 18
    .local v0, "f":Ljava/io/File;
    new-instance v1, Lde/robv/android/xposed/XSharedPreferences;

    invoke-direct {v1, v0}, Lde/robv/android/xposed/XSharedPreferences;-><init>(Ljava/io/File;)V

    return-object v1
.end method

.method private static getPref()Lde/robv/android/xposed/XSharedPreferences;
    .locals 3

    .line 12
    new-instance v0, Lde/robv/android/xposed/XSharedPreferences;

    const-string v1, "com.chacha.igexperiments"

    const-string v2, "IGExperiments"

    invoke-direct {v0, v1, v2}, Lde/robv/android/xposed/XSharedPreferences;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .local v0, "pref":Lde/robv/android/xposed/XSharedPreferences;
    invoke-virtual {v0}, Lde/robv/android/xposed/XSharedPreferences;->getFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public static getPrefs()Lde/robv/android/xposed/XSharedPreferences;
    .locals 1

    .line 46
    sget-object v0, Lcom/chacha/igexperiments/XposedPreferences;->pref:Lde/robv/android/xposed/XSharedPreferences;

    return-object v0
.end method

.method public static hasPrefsChanged()Z
    .locals 1

    .line 38
    sget-object v0, Lcom/chacha/igexperiments/XposedPreferences;->pref:Lde/robv/android/xposed/XSharedPreferences;

    invoke-virtual {v0}, Lde/robv/android/xposed/XSharedPreferences;->hasFileChanged()Z

    move-result v0

    return v0
.end method

.method public static loadPreferences()Lde/robv/android/xposed/XSharedPreferences;
    .locals 2

    .line 22
    invoke-static {}, Lde/robv/android/xposed/XposedBridge;->getXposedVersion()I

    move-result v0

    const/16 v1, 0x5d

    if-ge v0, v1, :cond_0

    .line 23
    invoke-static {}, Lcom/chacha/igexperiments/XposedPreferences;->getLegacyPrefs()Lde/robv/android/xposed/XSharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/chacha/igexperiments/XposedPreferences;->pref:Lde/robv/android/xposed/XSharedPreferences;

    goto :goto_0

    .line 25
    :cond_0
    invoke-static {}, Lcom/chacha/igexperiments/XposedPreferences;->getPref()Lde/robv/android/xposed/XSharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/chacha/igexperiments/XposedPreferences;->pref:Lde/robv/android/xposed/XSharedPreferences;

    .line 28
    :goto_0
    sget-object v0, Lcom/chacha/igexperiments/XposedPreferences;->pref:Lde/robv/android/xposed/XSharedPreferences;

    if-eqz v0, :cond_1

    .line 29
    sget-object v0, Lcom/chacha/igexperiments/XposedPreferences;->pref:Lde/robv/android/xposed/XSharedPreferences;

    invoke-virtual {v0}, Lde/robv/android/xposed/XSharedPreferences;->reload()V

    goto :goto_1

    .line 31
    :cond_1
    const-string v0, "Can\'t load preference in the module"

    invoke-static {v0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    .line 34
    :goto_1
    sget-object v0, Lcom/chacha/igexperiments/XposedPreferences;->pref:Lde/robv/android/xposed/XSharedPreferences;

    return-object v0
.end method

.method public static reloadPrefs()V
    .locals 1

    .line 42
    sget-object v0, Lcom/chacha/igexperiments/XposedPreferences;->pref:Lde/robv/android/xposed/XSharedPreferences;

    invoke-virtual {v0}, Lde/robv/android/xposed/XSharedPreferences;->reload()V

    .line 43
    return-void
.end method
