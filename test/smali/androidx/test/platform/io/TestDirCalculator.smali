.class public final Landroidx/test/platform/io/TestDirCalculator;
.super Ljava/lang/Object;
.source "TestDirCalculator.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0008\u0007\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u000c\u001a\u00020\u0004H\u0002J\u0008\u0010\r\u001a\u00020\u0004H\u0002J\u0008\u0010\u000e\u001a\u00020\u0004H\u0002R\u001b\u0010\u0003\u001a\u00020\u00048FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\u0005\u0010\u0006R\u001b\u0010\t\u001a\u00020\u00048FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u0008\u001a\u0004\u0008\n\u0010\u0006\u00a8\u0006\u000f"
    }
    d2 = {
        "Landroidx/test/platform/io/TestDirCalculator;",
        "",
        "()V",
        "inputDir",
        "Ljava/io/File;",
        "getInputDir",
        "()Ljava/io/File;",
        "inputDir$delegate",
        "Lkotlin/Lazy;",
        "outputDir",
        "getOutputDir",
        "outputDir$delegate",
        "calculateDefaultRootDir",
        "calculateInputDir",
        "calculateOutputDir",
        "runner_monitor_java_androidx_test-monitor_kt"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final inputDir$delegate:Lkotlin/Lazy;

.field private final outputDir$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Landroidx/test/platform/io/TestDirCalculator$outputDir$2;

    invoke-direct {v0, p0}, Landroidx/test/platform/io/TestDirCalculator$outputDir$2;-><init>(Landroidx/test/platform/io/TestDirCalculator;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/platform/io/TestDirCalculator;->outputDir$delegate:Lkotlin/Lazy;

    .line 31
    new-instance v0, Landroidx/test/platform/io/TestDirCalculator$inputDir$2;

    invoke-direct {v0, p0}, Landroidx/test/platform/io/TestDirCalculator$inputDir$2;-><init>(Landroidx/test/platform/io/TestDirCalculator;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/platform/io/TestDirCalculator;->inputDir$delegate:Lkotlin/Lazy;

    .line 29
    return-void
.end method

.method public static final synthetic access$calculateInputDir(Landroidx/test/platform/io/TestDirCalculator;)Ljava/io/File;
    .locals 1
    .param p0, "$this"    # Landroidx/test/platform/io/TestDirCalculator;

    .line 28
    invoke-direct {p0}, Landroidx/test/platform/io/TestDirCalculator;->calculateInputDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$calculateOutputDir(Landroidx/test/platform/io/TestDirCalculator;)Ljava/io/File;
    .locals 1
    .param p0, "$this"    # Landroidx/test/platform/io/TestDirCalculator;

    .line 28
    invoke-direct {p0}, Landroidx/test/platform/io/TestDirCalculator;->calculateOutputDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private final calculateDefaultRootDir()Ljava/io/File;
    .locals 7

    .line 55
    invoke-static {}, Landroidx/test/platform/app/InstrumentationRegistry;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Instrumentation;->getTargetContext()Landroid/content/Context;

    move-result-object v0

    .line 56
    .local v0, "context":Landroid/content/Context;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_1

    .line 61
    invoke-virtual {v0}, Landroid/content/Context;->getExternalMediaDirs()[Ljava/io/File;

    move-result-object v1

    const-string v2, "context.externalMediaDirs"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 62
    .local v4, "mediaDir":Ljava/io/File;
    invoke-static {v4}, Landroid/os/Environment;->getExternalStorageState(Ljava/io/File;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "mounted"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 63
    const-string v1, "mediaDir"

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v4

    .line 61
    .end local v4    # "mediaDir":Ljava/io/File;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 67
    :cond_1
    invoke-virtual {v0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 68
    invoke-virtual {v0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v1

    .line 71
    :cond_2
    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "context.cacheDir"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method

.method private final calculateInputDir()Ljava/io/File;
    .locals 4

    .line 46
    invoke-static {}, Landroidx/test/platform/app/InstrumentationRegistry;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "testInputDir"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, "testInputDir":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 48
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 51
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {p0}, Landroidx/test/platform/io/TestDirCalculator;->calculateDefaultRootDir()Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v2
.end method

.method private final calculateOutputDir()Ljava/io/File;
    .locals 4

    .line 35
    invoke-static {}, Landroidx/test/platform/app/InstrumentationRegistry;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "additionalTestOutputDir"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 34
    nop

    .line 36
    .local v0, "additionalOutputTestDir":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 37
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 40
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {p0}, Landroidx/test/platform/io/TestDirCalculator;->calculateDefaultRootDir()Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v1, v2

    .line 42
    .local v1, "rootdir":Ljava/io/File;
    return-object v1
.end method


# virtual methods
.method public final getInputDir()Ljava/io/File;
    .locals 1

    .line 31
    iget-object v0, p0, Landroidx/test/platform/io/TestDirCalculator;->inputDir$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    return-object v0
.end method

.method public final getOutputDir()Ljava/io/File;
    .locals 1

    .line 30
    iget-object v0, p0, Landroidx/test/platform/io/TestDirCalculator;->outputDir$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    return-object v0
.end method
