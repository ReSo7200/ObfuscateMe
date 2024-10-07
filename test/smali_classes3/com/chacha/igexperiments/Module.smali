.class public Lcom/chacha/igexperiments/Module;
.super Ljava/lang/Object;
.source "Module.java"

# interfaces
.implements Lde/robv/android/xposed/IXposedHookLoadPackage;
.implements Lde/robv/android/xposed/IXposedHookZygoteInit;


# static fields
.field private static final IG_PACKAGE_NAME:Ljava/lang/String; = "com.instagram.android"

.field private static final MODE_AUTO:Ljava/lang/String; = "Auto"

.field private static final MODE_HECKER:Ljava/lang/String; = "Hecker"

.field private static final MODE_NORMAL:Ljava/lang/String; = "Normal"

.field private static final MY_PACKAGE_NAME:Ljava/lang/String; = "com.chacha.igexperiments"

.field private static final PACKAGE_PARSER_CLASS:Ljava/lang/String; = "android.content.pm.PackageParser"

.field private static versions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/chacha/igexperiments/InfoIGVersion;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private className:Ljava/lang/String;

.field private methodName:Ljava/lang/String;

.field private secondClassName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private attemptClassHook(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "lpparam"    # Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;
    .param p2, "classToHook"    # Ljava/lang/String;
    .param p3, "methodToHook"    # Ljava/lang/String;
    .param p4, "secondClassToHook"    # Ljava/lang/String;

    .line 193
    :try_start_0
    iget-object v0, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    invoke-static {p2, v0}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 194
    .local v0, "targetClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v1, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    invoke-static {p4, v1}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .line 196
    .local v1, "secondTargetClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, v0}, Lcom/chacha/igexperiments/Module;->hasBooleanReturningMethod(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 197
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/chacha/igexperiments/Module;->hookMethod(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    const/4 v2, 0x1

    return v2

    .line 202
    .end local v0    # "targetClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "secondTargetClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    goto :goto_0

    .line 200
    :catch_0
    move-exception v0

    .line 201
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error attempting to hook class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    .line 203
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private getAppVersionName(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)Ljava/lang/String;
    .locals 5
    .param p1, "lpparam"    # Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 149
    const-string v0, "android.content.pm.PackageParser"

    iget-object v1, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    invoke-static {v0, v1}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 150
    .local v0, "parserClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    .line 151
    .local v1, "parser":Ljava/lang/Object;
    new-instance v2, Ljava/io/File;

    iget-object v3, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 152
    .local v2, "apkPath":Ljava/io/File;
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "parsePackage"

    invoke-static {v1, v4, v3}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 153
    .local v3, "pkg":Ljava/lang/Object;
    const-string v4, "mVersionName"

    invoke-static {v3, v4}, Lde/robv/android/xposed/XposedHelpers;->getObjectField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    return-object v4
.end method

.method private static getJSONContent()Ljava/lang/String;
    .locals 6

    .line 241
    const-string v0, "IGexperiments"

    :try_start_0
    const-string v1, "Reading raw content from github file"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    new-instance v1, Ljava/net/URL;

    const-string v2, "https://raw.githubusercontent.com/ReSo7200/IGexperiments/master/classes_to_hook.json"

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 243
    .local v1, "url":Ljava/net/URL;
    new-instance v2, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v2}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {v2}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v2

    .line 244
    .local v2, "policy":Landroid/os/StrictMode$ThreadPolicy;
    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 245
    new-instance v3, Ljava/util/Scanner;

    invoke-virtual {v1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    .line 246
    .local v3, "s":Ljava/util/Scanner;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 247
    .local v4, "content":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v3}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 248
    invoke-virtual {v3}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 250
    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 251
    .end local v1    # "url":Ljava/net/URL;
    .end local v2    # "policy":Landroid/os/StrictMode$ThreadPolicy;
    .end local v3    # "s":Ljava/util/Scanner;
    .end local v4    # "content":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v1

    .line 252
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Error fetching JSON content"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 254
    .end local v1    # "e":Ljava/lang/Exception;
    const-string v0, ""

    return-object v0
.end method

.method private handleAutoMode(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)Z
    .locals 3
    .param p1, "lpparam"    # Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;

    .line 136
    :try_start_0
    invoke-direct {p0, p1}, Lcom/chacha/igexperiments/Module;->getAppVersionName(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, "versionName":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/chacha/igexperiments/Module;->isVersionCompatibleForAutoMode(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 138
    invoke-direct {p0, p1}, Lcom/chacha/igexperiments/Module;->tryDynamicClassSearch(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)Z

    move-result v1

    return v1

    .line 140
    :cond_0
    const-string v1, "Versions older than 334.x aren\'t compatible with auto mode!"

    invoke-direct {p0, v1}, Lcom/chacha/igexperiments/Module;->showToast(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    .end local v0    # "versionName":Ljava/lang/String;
    goto :goto_0

    .line 142
    :catch_0
    move-exception v0

    .line 143
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in auto mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    .line 145
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private handleHeckerMode(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)Z
    .locals 3
    .param p1, "lpparam"    # Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;

    .line 125
    :try_start_0
    iget-object v0, p0, Lcom/chacha/igexperiments/Module;->className:Ljava/lang/String;

    iget-object v1, p0, Lcom/chacha/igexperiments/Module;->methodName:Ljava/lang/String;

    iget-object v2, p0, Lcom/chacha/igexperiments/Module;->secondClassName:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/chacha/igexperiments/Module;->logHookingDetails(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/chacha/igexperiments/Module;->className:Ljava/lang/String;

    iget-object v1, p0, Lcom/chacha/igexperiments/Module;->methodName:Ljava/lang/String;

    iget-object v2, p0, Lcom/chacha/igexperiments/Module;->secondClassName:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/chacha/igexperiments/Module;->hookMethod(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    const/4 v0, 0x1

    return v0

    .line 128
    :catch_0
    move-exception v0

    .line 129
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in Hecker mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    .line 131
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return v0
.end method

.method private handleNormalMode(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)Z
    .locals 3
    .param p1, "lpparam"    # Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;

    .line 109
    :try_start_0
    invoke-direct {p0, p1}, Lcom/chacha/igexperiments/Module;->getAppVersionName(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, "versionName":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/chacha/igexperiments/Module;->getInfoByVersion(Ljava/lang/String;)Lcom/chacha/igexperiments/InfoIGVersion;

    move-result-object v1

    .line 112
    .local v1, "infoForTargetVersion":Lcom/chacha/igexperiments/InfoIGVersion;
    if-eqz v1, :cond_0

    .line 113
    invoke-direct {p0, v1}, Lcom/chacha/igexperiments/Module;->logHookingDetails(Lcom/chacha/igexperiments/InfoIGVersion;)V

    .line 114
    invoke-direct {p0, p1, v1}, Lcom/chacha/igexperiments/Module;->hookMethod(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;Lcom/chacha/igexperiments/InfoIGVersion;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    const/4 v2, 0x1

    return v2

    .line 119
    .end local v0    # "versionName":Ljava/lang/String;
    .end local v1    # "infoForTargetVersion":Lcom/chacha/igexperiments/InfoIGVersion;
    :cond_0
    goto :goto_0

    .line 117
    :catch_0
    move-exception v0

    .line 118
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in normal mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    .line 120
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private hasBooleanReturningMethod(Ljava/lang/Class;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 207
    .local p1, "targetClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 208
    .local v4, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v5

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v5, v6, :cond_0

    .line 209
    const/4 v0, 0x1

    return v0

    .line 207
    .end local v4    # "method":Ljava/lang/reflect/Method;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 212
    :cond_1
    return v2
.end method

.method private hookMethod(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;Lcom/chacha/igexperiments/InfoIGVersion;)V
    .locals 3
    .param p1, "lpparam"    # Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;
    .param p2, "info"    # Lcom/chacha/igexperiments/InfoIGVersion;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 157
    invoke-virtual {p2}, Lcom/chacha/igexperiments/InfoIGVersion;->getClassToHook()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/chacha/igexperiments/InfoIGVersion;->getMethodToHook()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/chacha/igexperiments/InfoIGVersion;->getSecondClassToHook()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/chacha/igexperiments/Module;->hookMethod(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    return-void
.end method

.method private hookMethod(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "lpparam"    # Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;
    .param p2, "classToHook"    # Ljava/lang/String;
    .param p3, "methodToHook"    # Ljava/lang/String;
    .param p4, "secondClassToHook"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 161
    iget-object v0, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    invoke-static {p2, v0}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 162
    .local v0, "targetClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v1, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    invoke-static {p4, v1}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .line 164
    .local v1, "secondTargetClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v2, Lcom/chacha/igexperiments/Module$1;

    invoke-direct {v2, p0, p3}, Lcom/chacha/igexperiments/Module$1;-><init>(Lcom/chacha/igexperiments/Module;Ljava/lang/String;)V

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, p3, v2}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 171
    return-void
.end method

.method private initElementsToHook()V
    .locals 3

    .line 102
    invoke-static {}, Lcom/chacha/igexperiments/XposedPreferences;->getPrefs()Lde/robv/android/xposed/XSharedPreferences;

    move-result-object v0

    const-string v1, "className"

    const-string v2, "X.1XX"

    invoke-virtual {v0, v1, v2}, Lde/robv/android/xposed/XSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/chacha/igexperiments/Module;->className:Ljava/lang/String;

    .line 103
    invoke-static {}, Lcom/chacha/igexperiments/XposedPreferences;->getPrefs()Lde/robv/android/xposed/XSharedPreferences;

    move-result-object v0

    const-string v1, "methodName"

    const-string v2, "A00"

    invoke-virtual {v0, v1, v2}, Lde/robv/android/xposed/XSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/chacha/igexperiments/Module;->methodName:Ljava/lang/String;

    .line 104
    invoke-static {}, Lcom/chacha/igexperiments/XposedPreferences;->getPrefs()Lde/robv/android/xposed/XSharedPreferences;

    move-result-object v0

    const-string v1, "secondClassName"

    const-string v2, "com.instagram.common.session.UserSession"

    invoke-virtual {v0, v1, v2}, Lde/robv/android/xposed/XSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/chacha/igexperiments/Module;->secondClassName:Ljava/lang/String;

    .line 105
    return-void
.end method

.method private initPreferences()Ljava/lang/String;
    .locals 3

    .line 96
    invoke-static {}, Lcom/chacha/igexperiments/XposedPreferences;->loadPreferences()Lde/robv/android/xposed/XSharedPreferences;

    .line 97
    invoke-static {}, Lcom/chacha/igexperiments/XposedPreferences;->reloadPrefs()V

    .line 98
    invoke-static {}, Lcom/chacha/igexperiments/XposedPreferences;->getPrefs()Lde/robv/android/xposed/XSharedPreferences;

    move-result-object v0

    const-string v1, "Mode"

    const-string v2, "Normal"

    invoke-virtual {v0, v1, v2}, Lde/robv/android/xposed/XSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isVersionCompatibleForAutoMode(Ljava/lang/String;)Z
    .locals 3
    .param p1, "versionName"    # Ljava/lang/String;

    .line 216
    const-string v0, "\\."

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 217
    .local v0, "majorVersion":I
    const/16 v2, 0x14e

    if-lt v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method static synthetic lambda$showToast$0(Ljava/lang/String;)V
    .locals 2
    .param p0, "text"    # Ljava/lang/String;

    .line 231
    invoke-static {}, Landroid/app/AndroidAppHelper;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static loadIGVersions()V
    .locals 11

    .line 260
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/chacha/igexperiments/Module;->versions:Ljava/util/ArrayList;

    .line 262
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-static {}, Lcom/chacha/igexperiments/Module;->getJSONContent()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 263
    .local v0, "jsonObject":Lorg/json/JSONObject;
    const-string v1, "ig_versions"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 264
    .local v1, "jsonArray":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 265
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 266
    .local v3, "infoVersions":Lorg/json/JSONObject;
    new-instance v10, Lcom/chacha/igexperiments/InfoIGVersion;

    const-string v4, "version"

    .line 267
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v4, "class_to_hook"

    .line 268
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v4, "method_to_hook"

    .line 269
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v4, "second_class_to_hook"

    .line 270
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v4, "download"

    .line 271
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Lcom/chacha/igexperiments/InfoIGVersion;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v10

    .line 273
    .local v4, "versionInfo":Lcom/chacha/igexperiments/InfoIGVersion;
    sget-object v5, Lcom/chacha/igexperiments/Module;->versions:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    nop

    .end local v3    # "infoVersions":Lorg/json/JSONObject;
    .end local v4    # "versionInfo":Lcom/chacha/igexperiments/InfoIGVersion;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 277
    .end local v0    # "jsonObject":Lorg/json/JSONObject;
    .end local v1    # "jsonArray":Lorg/json/JSONArray;
    .end local v2    # "i":I
    :cond_0
    goto :goto_1

    .line 275
    :catch_0
    move-exception v0

    .line 276
    .local v0, "e":Lorg/json/JSONException;
    const-string v1, "IGEXPERIMENTS"

    const-string v2, "Error while parsing JSON"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 278
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_1
    return-void
.end method

.method private logHookingDetails(Lcom/chacha/igexperiments/InfoIGVersion;)V
    .locals 3
    .param p1, "info"    # Lcom/chacha/igexperiments/InfoIGVersion;

    .line 221
    invoke-virtual {p1}, Lcom/chacha/igexperiments/InfoIGVersion;->getClassToHook()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/chacha/igexperiments/InfoIGVersion;->getMethodToHook()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/chacha/igexperiments/InfoIGVersion;->getSecondClassToHook()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/chacha/igexperiments/Module;->logHookingDetails(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    return-void
.end method

.method private logHookingDetails(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "classToHook"    # Ljava/lang/String;
    .param p2, "methodToHook"    # Ljava/lang/String;
    .param p3, "secondClassToHook"    # Ljava/lang/String;

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/chacha/igexperiments/Module;->getTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Hooking class: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/chacha/igexperiments/Module;->getTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Hooking method: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/chacha/igexperiments/Module;->getTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Hooking second class: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    .line 228
    return-void
.end method

.method private processIGPackage(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V
    .locals 4
    .param p1, "lpparam"    # Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;

    .line 66
    const/4 v0, 0x0

    .line 69
    .local v0, "success":Z
    :try_start_0
    invoke-direct {p0}, Lcom/chacha/igexperiments/Module;->initPreferences()Ljava/lang/String;

    move-result-object v1

    .line 70
    .local v1, "mode":Ljava/lang/String;
    invoke-direct {p0}, Lcom/chacha/igexperiments/Module;->initElementsToHook()V

    .line 72
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v2, "Auto"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    goto :goto_1

    :sswitch_1
    const-string v2, "Normal"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    :sswitch_2
    const-string v2, "Hecker"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :goto_0
    const/4 v2, -0x1

    :goto_1
    packed-switch v2, :pswitch_data_0

    .line 83
    const-string v2, "Unsupported mode."

    goto :goto_2

    .line 80
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/chacha/igexperiments/Module;->handleAutoMode(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)Z

    move-result v2

    move v0, v2

    .line 81
    goto :goto_3

    .line 77
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/chacha/igexperiments/Module;->handleHeckerMode(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)Z

    move-result v2

    move v0, v2

    .line 78
    goto :goto_3

    .line 74
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/chacha/igexperiments/Module;->handleNormalMode(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)Z

    move-result v2

    move v0, v2

    .line 75
    goto :goto_3

    .line 83
    :goto_2
    invoke-static {v2}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    .line 87
    :goto_3
    if-nez v0, :cond_1

    .line 88
    const-string v2, "Selected method didn\'t work!"

    invoke-static {v2}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    .end local v1    # "mode":Ljava/lang/String;
    :cond_1
    goto :goto_4

    .line 90
    :catch_0
    move-exception v1

    .line 91
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unhandled exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    .line 93
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_4
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7f652e4e -> :sswitch_2
        -0x749456f9 -> :sswitch_1
        0x1f51cf -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private showToast(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .line 231
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/chacha/igexperiments/Module$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/chacha/igexperiments/Module$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 232
    return-void
.end method

.method private tryDynamicClassSearch(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)Z
    .locals 19
    .param p1, "lpparam"    # Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;

    .line 174
    const-string v0, "A00"

    .line 175
    .local v0, "methodToHook":Ljava/lang/String;
    const-string v1, "com.instagram.common.session.UserSession"

    .line 176
    .local v1, "secondClassToHook":Ljava/lang/String;
    const-string v2, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ"

    .line 178
    .local v2, "characters":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    array-length v4, v3

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_3

    aget-char v7, v3, v6

    .line 179
    .local v7, "first":C
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v8

    array-length v9, v8

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v9, :cond_2

    aget-char v11, v8, v10

    .line 180
    .local v11, "second":C
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v12

    array-length v13, v12

    const/4 v14, 0x0

    :goto_2
    if-ge v14, v13, :cond_1

    aget-char v15, v12, v14

    .line 181
    .local v15, "third":C
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v2

    .end local v2    # "characters":Ljava/lang/String;
    .local v16, "characters":Ljava/lang/String;
    const-string v2, "X."

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 182
    .local v2, "classToHook":Ljava/lang/String;
    move-object/from16 v5, p0

    move-object/from16 v17, v3

    move-object/from16 v3, p1

    invoke-direct {v5, v3, v2, v0, v1}, Lcom/chacha/igexperiments/Module;->attemptClassHook(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 183
    const/4 v4, 0x1

    return v4

    .line 180
    .end local v2    # "classToHook":Ljava/lang/String;
    .end local v15    # "third":C
    :cond_0
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    goto :goto_2

    .end local v16    # "characters":Ljava/lang/String;
    .local v2, "characters":Ljava/lang/String;
    :cond_1
    move-object/from16 v5, p0

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object/from16 v3, p1

    .line 179
    .end local v2    # "characters":Ljava/lang/String;
    .end local v11    # "second":C
    .restart local v16    # "characters":Ljava/lang/String;
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v3, v17

    goto :goto_1

    .end local v16    # "characters":Ljava/lang/String;
    .restart local v2    # "characters":Ljava/lang/String;
    :cond_2
    move-object/from16 v5, p0

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object/from16 v3, p1

    .line 178
    .end local v2    # "characters":Ljava/lang/String;
    .end local v7    # "first":C
    .restart local v16    # "characters":Ljava/lang/String;
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v3, v17

    goto :goto_0

    .line 188
    .end local v16    # "characters":Ljava/lang/String;
    .restart local v2    # "characters":Ljava/lang/String;
    :cond_3
    move-object/from16 v16, v2

    .end local v2    # "characters":Ljava/lang/String;
    .restart local v16    # "characters":Ljava/lang/String;
    const/4 v2, 0x0

    return v2
.end method


# virtual methods
.method public getInfoByVersion(Ljava/lang/String;)Lcom/chacha/igexperiments/InfoIGVersion;
    .locals 3
    .param p1, "version"    # Ljava/lang/String;

    .line 281
    invoke-static {}, Lcom/chacha/igexperiments/Module;->loadIGVersions()V

    .line 282
    sget-object v0, Lcom/chacha/igexperiments/Module;->versions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chacha/igexperiments/InfoIGVersion;

    .line 283
    .local v1, "info":Lcom/chacha/igexperiments/InfoIGVersion;
    invoke-virtual {v1}, Lcom/chacha/igexperiments/InfoIGVersion;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 284
    return-object v1

    .line 286
    .end local v1    # "info":Lcom/chacha/igexperiments/InfoIGVersion;
    :cond_0
    goto :goto_0

    .line 287
    :cond_1
    const-string v0, "Version not supported, Use Hecker mode or try a supported version!"

    invoke-direct {p0, v0}, Lcom/chacha/igexperiments/Module;->showToast(Ljava/lang/String;)V

    .line 288
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 3

    .line 235
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 236
    .local v0, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public handleLoadPackage(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V
    .locals 4
    .param p1, "lpparam"    # Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;

    .line 55
    iget-object v0, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->packageName:Ljava/lang/String;

    const-string v1, "com.chacha.igexperiments"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    .line 57
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lde/robv/android/xposed/XC_MethodReplacement;->returnConstant(Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodReplacement;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 56
    const-string v2, "com.chacha.igexperiments.MainActivity"

    const-string v3, "isModuleActive"

    invoke-static {v2, v0, v3, v1}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 60
    :cond_0
    iget-object v0, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->packageName:Ljava/lang/String;

    const-string v1, "com.instagram.android"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    invoke-direct {p0, p1}, Lcom/chacha/igexperiments/Module;->processIGPackage(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V

    .line 63
    :cond_1
    return-void
.end method

.method public initZygote(Lde/robv/android/xposed/IXposedHookZygoteInit$StartupParam;)V
    .locals 0
    .param p1, "startupParam"    # Lde/robv/android/xposed/IXposedHookZygoteInit$StartupParam;

    .line 48
    invoke-static {}, Lcom/chacha/igexperiments/XposedPreferences;->loadPreferences()Lde/robv/android/xposed/XSharedPreferences;

    .line 49
    return-void
.end method
