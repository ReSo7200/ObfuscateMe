.class public interface abstract Landroidx/test/platform/ui/UiController;
.super Ljava/lang/Object;
.source "UiController.java"


# virtual methods
.method public abstract injectKeyEvent(Landroid/view/KeyEvent;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/test/platform/ui/InjectEventSecurityException;
        }
    .end annotation
.end method

.method public abstract injectMotionEvent(Landroid/view/MotionEvent;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/test/platform/ui/InjectEventSecurityException;
        }
    .end annotation
.end method

.method public abstract injectString(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/test/platform/ui/InjectEventSecurityException;
        }
    .end annotation
.end method

.method public abstract loopMainThreadForAtLeast(J)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "millisDelay"
        }
    .end annotation
.end method

.method public abstract loopMainThreadUntilIdle()V
.end method
