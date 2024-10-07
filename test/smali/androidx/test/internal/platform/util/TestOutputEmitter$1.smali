.class Landroidx/test/internal/platform/util/TestOutputEmitter$1;
.super Ljava/lang/Object;
.source "TestOutputEmitter.java"

# interfaces
.implements Landroidx/test/internal/platform/util/TestOutputHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/test/internal/platform/util/TestOutputEmitter;->lambda$static$0()Landroidx/test/internal/platform/util/TestOutputHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addOutputProperties(Ljava/util/Map;)Z
    .locals 1
    .param p1, "properties"    # Ljava/util/Map;
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

    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public captureWindowHierarchy(Ljava/lang/String;)Z
    .locals 1
    .param p1, "outputName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "outputName"
        }
    .end annotation

    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method public dumpThreadStates(Ljava/lang/String;)V
    .locals 0
    .param p1, "outputName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "outputName"
        }
    .end annotation

    .line 38
    return-void
.end method

.method public takeScreenshot(Ljava/lang/String;)Z
    .locals 1
    .param p1, "outputName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "outputName"
        }
    .end annotation

    .line 42
    const/4 v0, 0x0

    return v0
.end method
