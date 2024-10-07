.class public Landroidx/test/internal/platform/util/TestOutputEmitter;
.super Ljava/lang/Object;
.source "TestOutputEmitter.java"


# static fields
.field private static final debugHandler:Landroidx/test/internal/platform/util/TestOutputHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 32
    const-class v0, Landroidx/test/internal/platform/util/TestOutputHandler;

    new-instance v1, Landroidx/test/internal/platform/util/TestOutputEmitter$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroidx/test/internal/platform/util/TestOutputEmitter$$ExternalSyntheticLambda0;-><init>()V

    .line 33
    invoke-static {v0, v1}, Landroidx/test/internal/platform/ServiceLoaderWrapper;->loadSingleService(Ljava/lang/Class;Landroidx/test/internal/platform/ServiceLoaderWrapper$Factory;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/test/internal/platform/util/TestOutputHandler;

    sput-object v0, Landroidx/test/internal/platform/util/TestOutputEmitter;->debugHandler:Landroidx/test/internal/platform/util/TestOutputHandler;

    .line 32
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addOutputProperties(Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "properties"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/io/Serializable;",
            ">;)Z"
        }
    .end annotation

    .line 75
    .local p0, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/io/Serializable;>;"
    sget-object v0, Landroidx/test/internal/platform/util/TestOutputEmitter;->debugHandler:Landroidx/test/internal/platform/util/TestOutputHandler;

    invoke-interface {v0, p0}, Landroidx/test/internal/platform/util/TestOutputHandler;->addOutputProperties(Ljava/util/Map;)Z

    move-result v0

    return v0
.end method

.method public static captureWindowHierarchy(Ljava/lang/String;)Z
    .locals 1
    .param p0, "outputName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "outputName"
        }
    .end annotation

    .line 70
    sget-object v0, Landroidx/test/internal/platform/util/TestOutputEmitter;->debugHandler:Landroidx/test/internal/platform/util/TestOutputHandler;

    invoke-interface {v0, p0}, Landroidx/test/internal/platform/util/TestOutputHandler;->captureWindowHierarchy(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static dumpThreadStates(Ljava/lang/String;)V
    .locals 1
    .param p0, "outputName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "outputName"
        }
    .end annotation

    .line 60
    sget-object v0, Landroidx/test/internal/platform/util/TestOutputEmitter;->debugHandler:Landroidx/test/internal/platform/util/TestOutputHandler;

    invoke-interface {v0, p0}, Landroidx/test/internal/platform/util/TestOutputHandler;->dumpThreadStates(Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method static synthetic lambda$static$0()Landroidx/test/internal/platform/util/TestOutputHandler;
    .locals 1

    .line 36
    new-instance v0, Landroidx/test/internal/platform/util/TestOutputEmitter$1;

    invoke-direct {v0}, Landroidx/test/internal/platform/util/TestOutputEmitter$1;-><init>()V

    return-object v0
.end method

.method public static takeScreenshot(Ljava/lang/String;)Z
    .locals 1
    .param p0, "outputName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "outputName"
        }
    .end annotation

    .line 65
    sget-object v0, Landroidx/test/internal/platform/util/TestOutputEmitter;->debugHandler:Landroidx/test/internal/platform/util/TestOutputHandler;

    invoke-interface {v0, p0}, Landroidx/test/internal/platform/util/TestOutputHandler;->takeScreenshot(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
