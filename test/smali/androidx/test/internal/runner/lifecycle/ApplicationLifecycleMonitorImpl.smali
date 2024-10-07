.class public Landroidx/test/internal/runner/lifecycle/ApplicationLifecycleMonitorImpl;
.super Ljava/lang/Object;
.source "ApplicationLifecycleMonitorImpl.java"

# interfaces
.implements Landroidx/test/runner/lifecycle/ApplicationLifecycleMonitor;


# static fields
.field private static final TAG:Ljava/lang/String; = "ApplicationLifecycleMonitorImpl"


# instance fields
.field private final callbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/test/runner/lifecycle/ApplicationLifecycleCallback;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/test/internal/runner/lifecycle/ApplicationLifecycleMonitorImpl;->callbacks:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addLifecycleCallback(Landroidx/test/runner/lifecycle/ApplicationLifecycleCallback;)V
    .locals 5
    .param p1, "callback"    # Landroidx/test/runner/lifecycle/ApplicationLifecycleCallback;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .line 49
    invoke-static {p1}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    iget-object v0, p0, Landroidx/test/internal/runner/lifecycle/ApplicationLifecycleMonitorImpl;->callbacks:Ljava/util/List;

    monitor-enter v0

    .line 52
    const/4 v1, 0x1

    .line 53
    .local v1, "needsAdd":Z
    :try_start_0
    iget-object v2, p0, Landroidx/test/internal/runner/lifecycle/ApplicationLifecycleMonitorImpl;->callbacks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 54
    .local v2, "refIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Landroidx/test/runner/lifecycle/ApplicationLifecycleCallback;>;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 55
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/test/runner/lifecycle/ApplicationLifecycleCallback;

    .line 56
    .local v3, "storedCallback":Landroidx/test/runner/lifecycle/ApplicationLifecycleCallback;
    if-nez v3, :cond_0

    .line 57
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 58
    :cond_0
    if-ne v3, p1, :cond_1

    .line 59
    const/4 v1, 0x0

    .line 61
    .end local v3    # "storedCallback":Landroidx/test/runner/lifecycle/ApplicationLifecycleCallback;
    :cond_1
    :goto_1
    goto :goto_0

    .line 62
    :cond_2
    if-eqz v1, :cond_3

    .line 63
    iget-object v3, p0, Landroidx/test/internal/runner/lifecycle/ApplicationLifecycleMonitorImpl;->callbacks:Ljava/util/List;

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    .end local v1    # "needsAdd":Z
    .end local v2    # "refIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Landroidx/test/runner/lifecycle/ApplicationLifecycleCallback;>;>;"
    :cond_3
    monitor-exit v0

    .line 66
    return-void

    .line 65
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeLifecycleCallback(Landroidx/test/runner/lifecycle/ApplicationLifecycleCallback;)V
    .locals 3
    .param p1, "callback"    # Landroidx/test/runner/lifecycle/ApplicationLifecycleCallback;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .line 70
    invoke-static {p1}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object v0, p0, Landroidx/test/internal/runner/lifecycle/ApplicationLifecycleMonitorImpl;->callbacks:Ljava/util/List;

    monitor-enter v0

    .line 73
    :try_start_0
    iget-object v1, p0, Landroidx/test/internal/runner/lifecycle/ApplicationLifecycleMonitorImpl;->callbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 74
    .local v1, "refIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Landroidx/test/runner/lifecycle/ApplicationLifecycleCallback;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 75
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/test/runner/lifecycle/ApplicationLifecycleCallback;

    .line 76
    .local v2, "storedCallback":Landroidx/test/runner/lifecycle/ApplicationLifecycleCallback;
    if-nez v2, :cond_0

    .line 77
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 78
    :cond_0
    if-ne v2, p1, :cond_1

    .line 79
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 81
    .end local v2    # "storedCallback":Landroidx/test/runner/lifecycle/ApplicationLifecycleCallback;
    :cond_1
    :goto_1
    goto :goto_0

    .line 82
    .end local v1    # "refIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Landroidx/test/runner/lifecycle/ApplicationLifecycleCallback;>;>;"
    :cond_2
    monitor-exit v0

    .line 83
    return-void

    .line 82
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public signalLifecycleChange(Landroid/app/Application;Landroidx/test/runner/lifecycle/ApplicationStage;)V
    .locals 7
    .param p1, "app"    # Landroid/app/Application;
    .param p2, "stage"    # Landroidx/test/runner/lifecycle/ApplicationStage;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "app",
            "stage"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Landroidx/test/internal/runner/lifecycle/ApplicationLifecycleMonitorImpl;->callbacks:Ljava/util/List;

    monitor-enter v0

    .line 87
    :try_start_0
    iget-object v1, p0, Landroidx/test/internal/runner/lifecycle/ApplicationLifecycleMonitorImpl;->callbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 88
    .local v1, "refIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Landroidx/test/runner/lifecycle/ApplicationLifecycleCallback;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 89
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/test/runner/lifecycle/ApplicationLifecycleCallback;

    .line 90
    .local v2, "callback":Landroidx/test/runner/lifecycle/ApplicationLifecycleCallback;
    if-nez v2, :cond_0

    .line 91
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 94
    :cond_0
    :try_start_1
    invoke-interface {v2, p1, p2}, Landroidx/test/runner/lifecycle/ApplicationLifecycleCallback;->onApplicationLifecycleChanged(Landroid/app/Application;Landroidx/test/runner/lifecycle/ApplicationStage;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    goto :goto_1

    .line 95
    :catch_0
    move-exception v3

    .line 96
    .local v3, "re":Ljava/lang/RuntimeException;
    :try_start_2
    const-string v4, "ApplicationLifecycleMonitorImpl"

    const-string v5, "Callback threw exception! (callback: %s stage: %s)"

    filled-new-array {v2, p2}, [Ljava/lang/Object;

    move-result-object v6

    .line 98
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 96
    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 103
    .end local v2    # "callback":Landroidx/test/runner/lifecycle/ApplicationLifecycleCallback;
    .end local v3    # "re":Ljava/lang/RuntimeException;
    :goto_1
    goto :goto_0

    .line 104
    .end local v1    # "refIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Landroidx/test/runner/lifecycle/ApplicationLifecycleCallback;>;>;"
    :cond_1
    monitor-exit v0

    .line 105
    return-void

    .line 104
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
