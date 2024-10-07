.class public final Landroidx/test/internal/runner/intent/IntentMonitorImpl;
.super Ljava/lang/Object;
.source "IntentMonitorImpl.java"

# interfaces
.implements Landroidx/test/runner/intent/IntentMonitor;


# static fields
.field private static final TAG:Ljava/lang/String; = "IntentMonitorImpl"


# instance fields
.field private final callbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/test/runner/intent/IntentCallback;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/test/internal/runner/intent/IntentMonitorImpl;->callbacks:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addIntentCallback(Landroidx/test/runner/intent/IntentCallback;)V
    .locals 5
    .param p1, "callback"    # Landroidx/test/runner/intent/IntentCallback;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .line 55
    if-eqz p1, :cond_4

    .line 58
    const/4 v0, 0x1

    .line 59
    .local v0, "needsAdd":Z
    iget-object v1, p0, Landroidx/test/internal/runner/intent/IntentMonitorImpl;->callbacks:Ljava/util/List;

    monitor-enter v1

    .line 60
    :try_start_0
    iget-object v2, p0, Landroidx/test/internal/runner/intent/IntentMonitorImpl;->callbacks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 61
    .local v2, "refIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Landroidx/test/runner/intent/IntentCallback;>;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 62
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/test/runner/intent/IntentCallback;

    .line 63
    .local v3, "storedCallback":Landroidx/test/runner/intent/IntentCallback;
    if-nez v3, :cond_0

    .line 64
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 65
    :cond_0
    if-ne v3, p1, :cond_1

    .line 66
    const/4 v0, 0x0

    .line 68
    .end local v3    # "storedCallback":Landroidx/test/runner/intent/IntentCallback;
    :cond_1
    :goto_1
    goto :goto_0

    .line 69
    :cond_2
    if-eqz v0, :cond_3

    .line 70
    iget-object v3, p0, Landroidx/test/internal/runner/intent/IntentMonitorImpl;->callbacks:Ljava/util/List;

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    .end local v2    # "refIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Landroidx/test/runner/intent/IntentCallback;>;>;"
    :cond_3
    monitor-exit v1

    .line 73
    return-void

    .line 72
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 56
    .end local v0    # "needsAdd":Z
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "callback cannot be null!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeIntentCallback(Landroidx/test/runner/intent/IntentCallback;)V
    .locals 3
    .param p1, "callback"    # Landroidx/test/runner/intent/IntentCallback;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .line 78
    if-eqz p1, :cond_3

    .line 81
    iget-object v0, p0, Landroidx/test/internal/runner/intent/IntentMonitorImpl;->callbacks:Ljava/util/List;

    monitor-enter v0

    .line 82
    :try_start_0
    iget-object v1, p0, Landroidx/test/internal/runner/intent/IntentMonitorImpl;->callbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 83
    .local v1, "refIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Landroidx/test/runner/intent/IntentCallback;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 84
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/test/runner/intent/IntentCallback;

    .line 85
    .local v2, "storedCallback":Landroidx/test/runner/intent/IntentCallback;
    if-nez v2, :cond_0

    .line 86
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 87
    :cond_0
    if-ne v2, p1, :cond_1

    .line 88
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 90
    .end local v2    # "storedCallback":Landroidx/test/runner/intent/IntentCallback;
    :cond_1
    :goto_1
    goto :goto_0

    .line 91
    .end local v1    # "refIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Landroidx/test/runner/intent/IntentCallback;>;>;"
    :cond_2
    monitor-exit v0

    .line 92
    return-void

    .line 91
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 79
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "callback cannot be null!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public signalIntent(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    .line 102
    iget-object v0, p0, Landroidx/test/internal/runner/intent/IntentMonitorImpl;->callbacks:Ljava/util/List;

    monitor-enter v0

    .line 103
    :try_start_0
    iget-object v1, p0, Landroidx/test/internal/runner/intent/IntentMonitorImpl;->callbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 104
    .local v1, "refIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Landroidx/test/runner/intent/IntentCallback;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 105
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/test/runner/intent/IntentCallback;

    .line 106
    .local v2, "callback":Landroidx/test/runner/intent/IntentCallback;
    if-nez v2, :cond_0

    .line 107
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 111
    :cond_0
    :try_start_1
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-interface {v2, v3}, Landroidx/test/runner/intent/IntentCallback;->onIntentSent(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    goto :goto_1

    .line 112
    :catch_0
    move-exception v3

    .line 113
    .local v3, "e":Ljava/lang/RuntimeException;
    :try_start_2
    const-string v4, "IntentMonitorImpl"

    const-string v5, "Callback threw exception! (callback: %s intent: %s)"

    filled-new-array {v2, p1}, [Ljava/lang/Object;

    move-result-object v6

    .line 115
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 113
    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 120
    .end local v2    # "callback":Landroidx/test/runner/intent/IntentCallback;
    .end local v3    # "e":Ljava/lang/RuntimeException;
    :goto_1
    goto :goto_0

    .line 121
    .end local v1    # "refIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Landroidx/test/runner/intent/IntentCallback;>;>;"
    :cond_1
    monitor-exit v0

    .line 122
    return-void

    .line 121
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
