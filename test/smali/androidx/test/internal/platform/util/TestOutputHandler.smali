.class public interface abstract Landroidx/test/internal/platform/util/TestOutputHandler;
.super Ljava/lang/Object;
.source "TestOutputHandler.java"


# virtual methods
.method public abstract addOutputProperties(Ljava/util/Map;)Z
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
.end method

.method public abstract captureWindowHierarchy(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "outputName"
        }
    .end annotation
.end method

.method public abstract dumpThreadStates(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "outputName"
        }
    .end annotation
.end method

.method public abstract takeScreenshot(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "outputName"
        }
    .end annotation
.end method
