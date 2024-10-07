.class public final Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl;
.super Ljava/lang/Object;
.source "ActivityLifecycleMonitorImpl.java"

# interfaces
.implements Landroidx/test/runner/lifecycle/ActivityLifecycleMonitor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl$ActivityStatus;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LifecycleMonitor"


# instance fields
.field private activityStatuses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl$ActivityStatus;",
            ">;"
        }
    .end annotation
.end field

.field private final callbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/test/runner/lifecycle/ActivityLifecycleCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private final declawThreadCheck:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl;-><init>(Z)V

    .line 46
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "declawThreadCheck"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "declawThreadCheck"
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl;->callbacks:Ljava/util/List;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl;->activityStatuses:Ljava/util/List;

    .line 50
    iput-boolean p1, p0, Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl;->declawThreadCheck:Z

    .line 51
    return-void
.end method

.method private checkMainThread()V
    .locals 2

    .line 185
    iget-boolean v0, p0, Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl;->declawThreadCheck:Z

    if-eqz v0, :cond_0

    .line 186
    return-void

    .line 189
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 192
    return-void

    .line 190
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Querying activity state off main thread is not allowed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addLifecycleCallback(Landroidx/test/runner/lifecycle/ActivityLifecycleCallback;)V
    .locals 5
    .param p1, "callback"    # Landroidx/test/runner/lifecycle/ActivityLifecycleCallback;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .line 63
    invoke-static {p1}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object v0, p0, Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl;->callbacks:Ljava/util/List;

    monitor-enter v0

    .line 66
    const/4 v1, 0x1

    .line 67
    .local v1, "needsAdd":Z
    :try_start_0
    iget-object v2, p0, Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl;->callbacks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 68
    .local v2, "refIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Landroidx/test/runner/lifecycle/ActivityLifecycleCallback;>;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 69
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/test/runner/lifecycle/ActivityLifecycleCallback;

    .line 70
    .local v3, "storedCallback":Landroidx/test/runner/lifecycle/ActivityLifecycleCallback;
    if-nez v3, :cond_0

    .line 71
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 72
    :cond_0
    if-ne v3, p1, :cond_1

    .line 73
    const/4 v1, 0x0

    .line 75
    .end local v3    # "storedCallback":Landroidx/test/runner/lifecycle/ActivityLifecycleCallback;
    :cond_1
    :goto_1
    goto :goto_0

    .line 76
    :cond_2
    if-eqz v1, :cond_3

    .line 77
    iget-object v3, p0, Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl;->callbacks:Ljava/util/List;

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    .end local v1    # "needsAdd":Z
    .end local v2    # "refIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Landroidx/test/runner/lifecycle/ActivityLifecycleCallback;>;>;"
    :cond_3
    monitor-exit v0

    .line 80
    return-void

    .line 79
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getActivitiesInStage(Landroidx/test/runner/lifecycle/Stage;)Ljava/util/Collection;
    .locals 5
    .param p1, "stage"    # Landroidx/test/runner/lifecycle/Stage;
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

    .line 118
    invoke-direct {p0}, Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl;->checkMainThread()V

    .line 119
    invoke-static {p1}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 122
    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/app/Activity;>;"
    iget-object v1, p0, Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl;->activityStatuses:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 123
    .local v1, "statusIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl$ActivityStatus;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 124
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl$ActivityStatus;

    .line 125
    .local v2, "status":Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl$ActivityStatus;
    invoke-static {v2}, Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl$ActivityStatus;->access$000(Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl$ActivityStatus;)Ljava/lang/ref/WeakReference;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    .line 126
    .local v3, "statusActivity":Landroid/app/Activity;
    if-nez v3, :cond_0

    .line 127
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 128
    :cond_0
    invoke-static {v2}, Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl$ActivityStatus;->access$100(Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl$ActivityStatus;)Landroidx/test/runner/lifecycle/Stage;

    move-result-object v4

    if-ne p1, v4, :cond_1

    .line 129
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    .end local v2    # "status":Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl$ActivityStatus;
    .end local v3    # "statusActivity":Landroid/app/Activity;
    :cond_1
    :goto_1
    goto :goto_0

    .line 133
    :cond_2
    return-object v0
.end method

.method public getLifecycleStageOf(Landroid/app/Activity;)Landroidx/test/runner/lifecycle/Stage;
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 101
    invoke-direct {p0}, Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl;->checkMainThread()V

    .line 102
    invoke-static {p1}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    iget-object v0, p0, Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl;->activityStatuses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 104
    .local v0, "statusIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl$ActivityStatus;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 105
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl$ActivityStatus;

    .line 106
    .local v1, "status":Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl$ActivityStatus;
    invoke-static {v1}, Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl$ActivityStatus;->access$000(Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl$ActivityStatus;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    .line 107
    .local v2, "statusActivity":Landroid/app/Activity;
    if-nez v2, :cond_0

    .line 108
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 109
    :cond_0
    if-ne p1, v2, :cond_1

    .line 110
    invoke-static {v1}, Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl$ActivityStatus;->access$100(Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl$ActivityStatus;)Landroidx/test/runner/lifecycle/Stage;

    move-result-object v3

    return-object v3

    .line 112
    .end local v1    # "status":Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl$ActivityStatus;
    .end local v2    # "statusActivity":Landroid/app/Activity;
    :cond_1
    :goto_1
    goto :goto_0

    .line 113
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown activity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public removeLifecycleCallback(Landroidx/test/runner/lifecycle/ActivityLifecycleCallback;)V
    .locals 3
    .param p1, "callback"    # Landroidx/test/runner/lifecycle/ActivityLifecycleCallback;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .line 84
    invoke-static {p1}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iget-object v0, p0, Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl;->callbacks:Ljava/util/List;

    monitor-enter v0

    .line 87
    :try_start_0
    iget-object v1, p0, Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl;->callbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 88
    .local v1, "refIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Landroidx/test/runner/lifecycle/ActivityLifecycleCallback;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 89
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/test/runner/lifecycle/ActivityLifecycleCallback;

    .line 90
    .local v2, "storedCallback":Landroidx/test/runner/lifecycle/ActivityLifecycleCallback;
    if-nez v2, :cond_0

    .line 91
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 92
    :cond_0
    if-ne v2, p1, :cond_1

    .line 93
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 95
    .end local v2    # "storedCallback":Landroidx/test/runner/lifecycle/ActivityLifecycleCallback;
    :cond_1
    :goto_1
    goto :goto_0

    .line 96
    .end local v1    # "refIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Landroidx/test/runner/lifecycle/ActivityLifecycleCallback;>;>;"
    :cond_2
    monitor-exit v0

    .line 97
    return-void

    .line 96
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public signalLifecycleChange(Landroidx/test/runner/lifecycle/Stage;Landroid/app/Activity;)V
    .locals 9
    .param p1, "stage"    # Landroidx/test/runner/lifecycle/Stage;
    .param p2, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "stage",
            "activity"
        }
    .end annotation

    .line 143
    const-string v0, "LifecycleMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Lifecycle status change: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    const/4 v0, 0x1

    .line 146
    .local v0, "needsAdd":Z
    iget-object v1, p0, Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl;->activityStatuses:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 147
    .local v1, "statusIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl$ActivityStatus;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 148
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl$ActivityStatus;

    .line 149
    .local v2, "status":Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl$ActivityStatus;
    invoke-static {v2}, Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl$ActivityStatus;->access$000(Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl$ActivityStatus;)Ljava/lang/ref/WeakReference;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    .line 150
    .local v3, "statusActivity":Landroid/app/Activity;
    if-nez v3, :cond_0

    .line 151
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 152
    :cond_0
    if-ne p2, v3, :cond_1

    .line 153
    const/4 v0, 0x0

    .line 154
    invoke-static {v2, p1}, Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl$ActivityStatus;->access$102(Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl$ActivityStatus;Landroidx/test/runner/lifecycle/Stage;)Landroidx/test/runner/lifecycle/Stage;

    .line 156
    .end local v2    # "status":Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl$ActivityStatus;
    .end local v3    # "statusActivity":Landroid/app/Activity;
    :cond_1
    :goto_1
    goto :goto_0

    .line 158
    :cond_2
    if-eqz v0, :cond_3

    .line 159
    iget-object v2, p0, Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl;->activityStatuses:Ljava/util/List;

    new-instance v3, Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl$ActivityStatus;

    invoke-direct {v3, p2, p1}, Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl$ActivityStatus;-><init>(Landroid/app/Activity;Landroidx/test/runner/lifecycle/Stage;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    :cond_3
    iget-object v2, p0, Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl;->callbacks:Ljava/util/List;

    monitor-enter v2

    .line 163
    :try_start_0
    iget-object v3, p0, Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl;->callbacks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 164
    .local v3, "refIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Landroidx/test/runner/lifecycle/ActivityLifecycleCallback;>;>;"
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 165
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/test/runner/lifecycle/ActivityLifecycleCallback;

    .line 166
    .local v4, "callback":Landroidx/test/runner/lifecycle/ActivityLifecycleCallback;
    if-nez v4, :cond_4

    .line 167
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 170
    :cond_4
    :try_start_1
    invoke-interface {v4, p2, p1}, Landroidx/test/runner/lifecycle/ActivityLifecycleCallback;->onActivityLifecycleChanged(Landroid/app/Activity;Landroidx/test/runner/lifecycle/Stage;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 178
    goto :goto_3

    .line 171
    :catch_0
    move-exception v5

    .line 172
    .local v5, "re":Ljava/lang/RuntimeException;
    :try_start_2
    const-string v6, "LifecycleMonitor"

    const-string v7, "Callback threw exception! (callback: %s activity: %s stage: %s)"

    filled-new-array {v4, p2, p1}, [Ljava/lang/Object;

    move-result-object v8

    .line 174
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 172
    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 180
    .end local v4    # "callback":Landroidx/test/runner/lifecycle/ActivityLifecycleCallback;
    .end local v5    # "re":Ljava/lang/RuntimeException;
    :goto_3
    goto :goto_2

    .line 181
    .end local v3    # "refIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Landroidx/test/runner/lifecycle/ActivityLifecycleCallback;>;>;"
    :cond_5
    monitor-exit v2

    .line 182
    return-void

    .line 181
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method
