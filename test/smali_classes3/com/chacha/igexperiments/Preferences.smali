.class public Lcom/chacha/igexperiments/Preferences;
.super Ljava/lang/Object;
.source "Preferences.java"


# static fields
.field private static editor:Landroid/content/SharedPreferences$Editor;

.field private static pref:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEditor()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .line 43
    sget-object v0, Lcom/chacha/igexperiments/Preferences;->editor:Landroid/content/SharedPreferences$Editor;

    return-object v0
.end method

.method public static getPrefs()Landroid/content/SharedPreferences;
    .locals 1

    .line 35
    sget-object v0, Lcom/chacha/igexperiments/Preferences;->pref:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public static loadPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 21
    const-string v0, "IGExperiments"

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    sput-object v1, Lcom/chacha/igexperiments/Preferences;->pref:Landroid/content/SharedPreferences;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    goto :goto_0

    .line 22
    :catch_0
    move-exception v1

    .line 23
    .local v1, "ignored":Ljava/lang/SecurityException;
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    sput-object v2, Lcom/chacha/igexperiments/Preferences;->pref:Landroid/content/SharedPreferences;

    .line 25
    .end local v1    # "ignored":Ljava/lang/SecurityException;
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/coniy/fileprefs/FileSharedPreferences;->makeWorldReadable(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    sget-object v0, Lcom/chacha/igexperiments/Preferences;->pref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sput-object v0, Lcom/chacha/igexperiments/Preferences;->editor:Landroid/content/SharedPreferences$Editor;

    .line 27
    sget-object v0, Lcom/chacha/igexperiments/Preferences;->pref:Landroid/content/SharedPreferences;

    return-object v0
.end method
