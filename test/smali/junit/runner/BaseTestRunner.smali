.class public abstract Ljunit/runner/BaseTestRunner;
.super Ljava/lang/Object;
.source "BaseTestRunner.java"

# interfaces
.implements Ljunit/framework/TestListener;


# static fields
.field public static final SUITE_METHODNAME:Ljava/lang/String; = "suite"

.field private static fPreferences:Ljava/util/Properties;

.field static fgFilterStack:Z

.field static fgMaxMessageLength:I


# instance fields
.field fLoading:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 33
    const/16 v0, 0x1f4

    sput v0, Ljunit/runner/BaseTestRunner;->fgMaxMessageLength:I

    .line 34
    const/4 v0, 0x1

    sput-boolean v0, Ljunit/runner/BaseTestRunner;->fgFilterStack:Z

    .line 323
    const-string v0, "maxmessage"

    sget v1, Ljunit/runner/BaseTestRunner;->fgMaxMessageLength:I

    invoke-static {v0, v1}, Ljunit/runner/BaseTestRunner;->getPreference(Ljava/lang/String;I)I

    move-result v0

    sput v0, Ljunit/runner/BaseTestRunner;->fgMaxMessageLength:I

    .line 324
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljunit/runner/BaseTestRunner;->fLoading:Z

    return-void
.end method

.method static filterLine(Ljava/lang/String;)Z
    .locals 5
    .param p0, "line"    # Ljava/lang/String;

    .line 304
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "junit.framework.TestCase"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "junit.framework.TestResult"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v4, "junit.framework.TestSuite"

    aput-object v4, v0, v1

    const/4 v1, 0x3

    const-string v4, "junit.framework.Assert."

    aput-object v4, v0, v1

    const/4 v1, 0x4

    const-string v4, "junit.swingui.TestRunner"

    aput-object v4, v0, v1

    const/4 v1, 0x5

    const-string v4, "junit.awtui.TestRunner"

    aput-object v4, v0, v1

    const/4 v1, 0x6

    const-string v4, "junit.textui.TestRunner"

    aput-object v4, v0, v1

    const/4 v1, 0x7

    const-string v4, "java.lang.reflect.Method.invoke("

    aput-object v4, v0, v1

    .line 314
    .local v0, "patterns":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v0

    if-ge v1, v4, :cond_1

    .line 315
    aget-object v4, v0, v1

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_0

    .line 316
    return v3

    .line 314
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 319
    .end local v1    # "i":I
    :cond_1
    return v2
.end method

.method public static getFilteredTrace(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "stack"    # Ljava/lang/String;

    .line 277
    invoke-static {}, Ljunit/runner/BaseTestRunner;->showStackRaw()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    return-object p0

    .line 281
    :cond_0
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 282
    .local v0, "sw":Ljava/io/StringWriter;
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 283
    .local v1, "pw":Ljava/io/PrintWriter;
    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 284
    .local v2, "sr":Ljava/io/StringReader;
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .local v3, "br":Ljava/io/BufferedReader;
    const/4 v4, 0x0

    .line 288
    :goto_0
    :try_start_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-object v5, v4

    .local v5, "line":Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 289
    :try_start_1
    invoke-static {v5}, Ljunit/runner/BaseTestRunner;->filterLine(Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v4, :cond_1

    .line 290
    :try_start_2
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 293
    :catch_0
    move-exception v4

    goto :goto_2

    .line 288
    .end local v5    # "line":Ljava/lang/String;
    :cond_1
    :goto_1
    move-object v4, v5

    goto :goto_0

    .line 293
    :catch_1
    move-exception v4

    goto :goto_2

    .line 295
    :cond_2
    nop

    .line 296
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 293
    :catch_2
    move-exception v5

    move-object v6, v5

    move-object v5, v4

    move-object v4, v6

    .line 294
    .local v4, "IOException":Ljava/lang/Exception;
    .restart local v5    # "line":Ljava/lang/String;
    :goto_2
    return-object p0
.end method

.method public static getFilteredTrace(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 1
    .param p0, "e"    # Ljava/lang/Throwable;

    .line 270
    invoke-static {p0}, Lorg/junit/internal/Throwables;->getStacktrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljunit/runner/BaseTestRunner;->getFilteredTrace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPreference(Ljava/lang/String;I)I
    .locals 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "dflt"    # I

    .line 254
    invoke-static {p0}, Ljunit/runner/BaseTestRunner;->getPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 255
    .local v0, "value":Ljava/lang/String;
    move v1, p1

    .line 256
    .local v1, "intValue":I
    if-nez v0, :cond_0

    .line 257
    return v1

    .line 260
    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    .line 262
    goto :goto_0

    .line 261
    :catch_0
    move-exception v2

    .line 263
    :goto_0
    return v1
.end method

.method public static getPreference(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .line 250
    invoke-static {}, Ljunit/runner/BaseTestRunner;->getPreferences()Ljava/util/Properties;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static getPreferences()Ljava/util/Properties;
    .locals 3

    .line 49
    sget-object v0, Ljunit/runner/BaseTestRunner;->fPreferences:Ljava/util/Properties;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    sput-object v0, Ljunit/runner/BaseTestRunner;->fPreferences:Ljava/util/Properties;

    .line 51
    sget-object v0, Ljunit/runner/BaseTestRunner;->fPreferences:Ljava/util/Properties;

    const-string v1, "loading"

    const-string/jumbo v2, "true"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Ljunit/runner/BaseTestRunner;->fPreferences:Ljava/util/Properties;

    const-string v1, "filterstack"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    invoke-static {}, Ljunit/runner/BaseTestRunner;->readPreferences()V

    .line 55
    :cond_0
    sget-object v0, Ljunit/runner/BaseTestRunner;->fPreferences:Ljava/util/Properties;

    return-object v0
.end method

.method private static getPreferencesFile()Ljava/io/File;
    .locals 3

    .line 227
    const-string/jumbo v0, "user.home"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 228
    .local v0, "home":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    const-string v2, "junit.properties"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method private static readPreferences()V
    .locals 3

    .line 232
    const/4 v0, 0x0

    .line 234
    .local v0, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-static {}, Ljunit/runner/BaseTestRunner;->getPreferencesFile()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v0, v1

    .line 235
    new-instance v1, Ljava/util/Properties;

    invoke-static {}, Ljunit/runner/BaseTestRunner;->getPreferences()Ljava/util/Properties;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/Properties;-><init>(Ljava/util/Properties;)V

    invoke-static {v1}, Ljunit/runner/BaseTestRunner;->setPreferences(Ljava/util/Properties;)V

    .line 236
    invoke-static {}, Ljunit/runner/BaseTestRunner;->getPreferences()Ljava/util/Properties;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    nop

    .line 242
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 245
    :cond_0
    :goto_0
    goto :goto_3

    .line 244
    :catch_0
    move-exception v1

    .line 246
    goto :goto_3

    .line 240
    :catchall_0
    move-exception v1

    .line 241
    if-eqz v0, :cond_1

    .line 242
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 244
    :catch_1
    move-exception v2

    goto :goto_2

    .line 245
    :cond_1
    :goto_1
    nop

    :goto_2
    throw v1

    .line 238
    :catch_2
    move-exception v1

    .line 241
    if-eqz v0, :cond_0

    .line 242
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_0

    .line 237
    :catch_3
    move-exception v1

    .line 241
    if-eqz v0, :cond_0

    .line 242
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 247
    :goto_3
    return-void
.end method

.method public static savePreferences()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-static {}, Ljunit/runner/BaseTestRunner;->getPreferencesFile()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 61
    .local v0, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-static {}, Ljunit/runner/BaseTestRunner;->getPreferences()Ljava/util/Properties;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 64
    nop

    .line 65
    return-void

    .line 63
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    throw v1
.end method

.method public static setPreference(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .line 68
    invoke-static {}, Ljunit/runner/BaseTestRunner;->getPreferences()Ljava/util/Properties;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    return-void
.end method

.method protected static setPreferences(Ljava/util/Properties;)V
    .locals 0
    .param p0, "preferences"    # Ljava/util/Properties;

    .line 45
    sput-object p0, Ljunit/runner/BaseTestRunner;->fPreferences:Ljava/util/Properties;

    .line 46
    return-void
.end method

.method protected static showStackRaw()Z
    .locals 2

    .line 300
    const-string v0, "filterstack"

    invoke-static {v0}, Ljunit/runner/BaseTestRunner;->getPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Ljunit/runner/BaseTestRunner;->fgFilterStack:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static truncate(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .line 197
    sget v0, Ljunit/runner/BaseTestRunner;->fgMaxMessageLength:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sget v1, Ljunit/runner/BaseTestRunner;->fgMaxMessageLength:I

    if-le v0, v1, :cond_0

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    sget v2, Ljunit/runner/BaseTestRunner;->fgMaxMessageLength:I

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 200
    :cond_0
    return-object p0
.end method


# virtual methods
.method public declared-synchronized addError(Ljunit/framework/Test;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "test"    # Ljunit/framework/Test;
    .param p2, "e"    # Ljava/lang/Throwable;

    monitor-enter p0

    .line 76
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0, p1, p2}, Ljunit/runner/BaseTestRunner;->testFailed(ILjunit/framework/Test;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    monitor-exit p0

    return-void

    .line 75
    .end local p0    # "this":Ljunit/runner/BaseTestRunner;
    .end local p1    # "test":Ljunit/framework/Test;
    .end local p2    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized addFailure(Ljunit/framework/Test;Ljunit/framework/AssertionFailedError;)V
    .locals 1
    .param p1, "test"    # Ljunit/framework/Test;
    .param p2, "e"    # Ljunit/framework/AssertionFailedError;

    monitor-enter p0

    .line 80
    const/4 v0, 0x2

    :try_start_0
    invoke-virtual {p0, v0, p1, p2}, Ljunit/runner/BaseTestRunner;->testFailed(ILjunit/framework/Test;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    monitor-exit p0

    return-void

    .line 79
    .end local p0    # "this":Ljunit/runner/BaseTestRunner;
    .end local p1    # "test":Ljunit/framework/Test;
    .end local p2    # "e":Ljunit/framework/AssertionFailedError;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method protected clearStatus()V
    .locals 0

    .line 220
    return-void
.end method

.method public elapsedTimeAsString(J)Ljava/lang/String;
    .locals 5
    .param p1, "runTime"    # J

    .line 148
    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v0

    long-to-double v1, p1

    const-wide v3, 0x408f400000000000L    # 1000.0

    div-double/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized endTest(Ljunit/framework/Test;)V
    .locals 1
    .param p1, "test"    # Ljunit/framework/Test;

    monitor-enter p0

    .line 72
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljunit/runner/BaseTestRunner;->testEnded(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    monitor-exit p0

    return-void

    .line 71
    .end local p0    # "this":Ljunit/runner/BaseTestRunner;
    .end local p1    # "test":Ljunit/framework/Test;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public extractClassName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "className"    # Ljava/lang/String;

    .line 187
    const-string v0, "Default package for"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 190
    :cond_0
    return-object p1
.end method

.method public getTest(Ljava/lang/String;)Ljunit/framework/Test;
    .locals 7
    .param p1, "suiteClassName"    # Ljava/lang/String;

    .line 96
    const-string v0, "Failed to invoke suite():"

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    if-gtz v1, :cond_0

    .line 97
    invoke-virtual {p0}, Ljunit/runner/BaseTestRunner;->clearStatus()V

    .line 98
    return-object v2

    .line 100
    :cond_0
    const/4 v1, 0x0

    .line 102
    .local v1, "testClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {p0, p1}, Ljunit/runner/BaseTestRunner;->loadSuiteClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-object v1, v3

    .line 113
    nop

    .line 114
    const/4 v3, 0x0

    .line 116
    .local v3, "suiteMethod":Ljava/lang/reflect/Method;
    :try_start_1
    const-string/jumbo v4, "suite"

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Class;

    invoke-virtual {v1, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-object v3, v4

    .line 121
    nop

    .line 122
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 123
    const-string v0, "Suite() method must be static"

    invoke-virtual {p0, v0}, Ljunit/runner/BaseTestRunner;->runFailed(Ljava/lang/String;)V

    .line 124
    return-object v2

    .line 126
    :cond_1
    const/4 v4, 0x0

    .line 128
    .local v4, "test":Ljunit/framework/Test;
    :try_start_2
    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljunit/framework/Test;
    :try_end_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v0, v5

    .line 129
    .end local v4    # "test":Ljunit/framework/Test;
    .local v0, "test":Ljunit/framework/Test;
    if-nez v0, :cond_2

    .line 130
    return-object v0

    .line 138
    :cond_2
    nop

    .line 140
    invoke-virtual {p0}, Ljunit/runner/BaseTestRunner;->clearStatus()V

    .line 141
    return-object v0

    .line 135
    .end local v0    # "test":Ljunit/framework/Test;
    .restart local v4    # "test":Ljunit/framework/Test;
    :catch_0
    move-exception v5

    .line 136
    .local v5, "e":Ljava/lang/IllegalAccessException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljunit/runner/BaseTestRunner;->runFailed(Ljava/lang/String;)V

    .line 137
    return-object v2

    .line 132
    .end local v5    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v5

    .line 133
    .local v5, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljunit/runner/BaseTestRunner;->runFailed(Ljava/lang/String;)V

    .line 134
    return-object v2

    .line 117
    .end local v4    # "test":Ljunit/framework/Test;
    .end local v5    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v0

    .line 119
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Ljunit/runner/BaseTestRunner;->clearStatus()V

    .line 120
    new-instance v2, Ljunit/framework/TestSuite;

    invoke-direct {v2, v1}, Ljunit/framework/TestSuite;-><init>(Ljava/lang/Class;)V

    return-object v2

    .line 110
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "suiteMethod":Ljava/lang/reflect/Method;
    :catch_3
    move-exception v0

    .line 111
    .restart local v0    # "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljunit/runner/BaseTestRunner;->runFailed(Ljava/lang/String;)V

    .line 112
    return-object v2

    .line 103
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v0

    .line 104
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 105
    .local v3, "clazz":Ljava/lang/String;
    if-nez v3, :cond_3

    .line 106
    move-object v3, p1

    .line 108
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Class not found \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljunit/runner/BaseTestRunner;->runFailed(Ljava/lang/String;)V

    .line 109
    return-object v2
.end method

.method protected loadSuiteClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .param p1, "suiteClassName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 213
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method protected processArguments([Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "args"    # [Ljava/lang/String;

    .line 156
    const/4 v0, 0x0

    .line 157
    .local v0, "suiteName":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_4

    .line 158
    aget-object v2, p1, v1

    const-string v3, "-noloading"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 159
    invoke-virtual {p0, v3}, Ljunit/runner/BaseTestRunner;->setLoading(Z)V

    goto :goto_2

    .line 160
    :cond_0
    aget-object v2, p1, v1

    const-string v4, "-nofilterstack"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 161
    sput-boolean v3, Ljunit/runner/BaseTestRunner;->fgFilterStack:Z

    goto :goto_2

    .line 162
    :cond_1
    aget-object v2, p1, v1

    const-string v3, "-c"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 163
    array-length v2, p1

    add-int/lit8 v3, v1, 0x1

    if-le v2, v3, :cond_2

    .line 164
    add-int/lit8 v2, v1, 0x1

    aget-object v2, p1, v2

    invoke-virtual {p0, v2}, Ljunit/runner/BaseTestRunner;->extractClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 166
    :cond_2
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Missing Test class name"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 168
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 170
    :cond_3
    aget-object v0, p1, v1

    .line 157
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 173
    .end local v1    # "i":I
    :cond_4
    return-object v0
.end method

.method protected abstract runFailed(Ljava/lang/String;)V
.end method

.method public setLoading(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 180
    iput-boolean p1, p0, Ljunit/runner/BaseTestRunner;->fLoading:Z

    .line 181
    return-void
.end method

.method public declared-synchronized startTest(Ljunit/framework/Test;)V
    .locals 1
    .param p1, "test"    # Ljunit/framework/Test;

    monitor-enter p0

    .line 41
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljunit/runner/BaseTestRunner;->testStarted(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    monitor-exit p0

    return-void

    .line 40
    .end local p0    # "this":Ljunit/runner/BaseTestRunner;
    .end local p1    # "test":Ljunit/framework/Test;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public abstract testEnded(Ljava/lang/String;)V
.end method

.method public abstract testFailed(ILjunit/framework/Test;Ljava/lang/Throwable;)V
.end method

.method public abstract testStarted(Ljava/lang/String;)V
.end method

.method protected useReloadingTestSuiteLoader()Z
    .locals 2

    .line 223
    const-string v0, "loading"

    invoke-static {v0}, Ljunit/runner/BaseTestRunner;->getPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Ljunit/runner/BaseTestRunner;->fLoading:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
