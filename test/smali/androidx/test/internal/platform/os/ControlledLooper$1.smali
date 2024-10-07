.class Landroidx/test/internal/platform/os/ControlledLooper$1;
.super Ljava/lang/Object;
.source "ControlledLooper.java"

# interfaces
.implements Landroidx/test/internal/platform/os/ControlledLooper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/internal/platform/os/ControlledLooper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public areDrawCallbacksSupported()Z
    .locals 1

    .line 57
    const/4 v0, 0x1

    return v0
.end method

.method public drainMainThreadUntilIdle()V
    .locals 0

    .line 50
    return-void
.end method

.method public simulateWindowFocus(Landroid/view/View;)V
    .locals 0
    .param p1, "decorView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "decorView"
        }
    .end annotation

    .line 53
    return-void
.end method
