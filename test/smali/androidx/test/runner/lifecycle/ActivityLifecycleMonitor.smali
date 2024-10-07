.class public interface abstract Landroidx/test/runner/lifecycle/ActivityLifecycleMonitor;
.super Ljava/lang/Object;
.source "ActivityLifecycleMonitor.java"


# virtual methods
.method public abstract addLifecycleCallback(Landroidx/test/runner/lifecycle/ActivityLifecycleCallback;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation
.end method

.method public abstract getActivitiesInStage(Landroidx/test/runner/lifecycle/Stage;)Ljava/util/Collection;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stage"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/test/runner/lifecycle/Stage;",
            ")",
            "Ljava/util/Collection<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLifecycleStageOf(Landroid/app/Activity;)Landroidx/test/runner/lifecycle/Stage;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation
.end method

.method public abstract removeLifecycleCallback(Landroidx/test/runner/lifecycle/ActivityLifecycleCallback;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation
.end method
