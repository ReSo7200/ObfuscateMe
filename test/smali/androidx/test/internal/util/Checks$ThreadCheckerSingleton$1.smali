.class Landroidx/test/internal/util/Checks$ThreadCheckerSingleton$1;
.super Ljava/lang/Object;
.source "Checks.java"

# interfaces
.implements Landroidx/test/internal/platform/ThreadChecker;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/test/internal/util/Checks$ThreadCheckerSingleton;->lambda$static$0()Landroidx/test/internal/platform/ThreadChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkMainThread()V
    .locals 3

    .line 154
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 156
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 153
    const-string v2, "Method cannot be called off the main application thread (on: %s)"

    invoke-static {v0, v2, v1}, Landroidx/test/internal/util/Checks;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 157
    return-void
.end method

.method public checkNotMainThread()V
    .locals 3

    .line 162
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 164
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 161
    const-string v2, "Method cannot be called on the main application thread (on: %s)"

    invoke-static {v0, v2, v1}, Landroidx/test/internal/util/Checks;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 165
    return-void
.end method
