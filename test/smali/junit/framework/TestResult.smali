.class public Ljunit/framework/TestResult;
.super Ljava/lang/Object;
.source "TestResult.java"


# instance fields
.field protected fErrors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljunit/framework/TestFailure;",
            ">;"
        }
    .end annotation
.end field

.field protected fFailures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljunit/framework/TestFailure;",
            ">;"
        }
    .end annotation
.end field

.field protected fListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljunit/framework/TestListener;",
            ">;"
        }
    .end annotation
.end field

.field protected fRunTests:I

.field private fStop:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljunit/framework/TestResult;->fFailures:Ljava/util/List;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljunit/framework/TestResult;->fErrors:Ljava/util/List;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljunit/framework/TestResult;->fListeners:Ljava/util/List;

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Ljunit/framework/TestResult;->fRunTests:I

    .line 29
    iput-boolean v0, p0, Ljunit/framework/TestResult;->fStop:Z

    .line 30
    return-void
.end method

.method private declared-synchronized cloneListeners()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljunit/framework/TestListener;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 72
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 73
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljunit/framework/TestListener;>;"
    iget-object v1, p0, Ljunit/framework/TestResult;->fListeners:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    monitor-exit p0

    return-object v0

    .line 71
    .end local v0    # "result":Ljava/util/List;, "Ljava/util/List<Ljunit/framework/TestListener;>;"
    .end local p0    # "this":Ljunit/framework/TestResult;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public declared-synchronized addError(Ljunit/framework/Test;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "test"    # Ljunit/framework/Test;
    .param p2, "e"    # Ljava/lang/Throwable;

    monitor-enter p0

    .line 37
    :try_start_0
    iget-object v0, p0, Ljunit/framework/TestResult;->fErrors:Ljava/util/List;

    new-instance v1, Ljunit/framework/TestFailure;

    invoke-direct {v1, p1, p2}, Ljunit/framework/TestFailure;-><init>(Ljunit/framework/Test;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    invoke-direct {p0}, Ljunit/framework/TestResult;->cloneListeners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljunit/framework/TestListener;

    .line 39
    .local v1, "each":Ljunit/framework/TestListener;
    invoke-interface {v1, p1, p2}, Ljunit/framework/TestListener;->addError(Ljunit/framework/Test;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1    # "each":Ljunit/framework/TestListener;
    goto :goto_0

    .line 41
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local p0    # "this":Ljunit/framework/TestResult;
    :cond_0
    monitor-exit p0

    return-void

    .line 36
    .end local p1    # "test":Ljunit/framework/Test;
    .end local p2    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized addFailure(Ljunit/framework/Test;Ljunit/framework/AssertionFailedError;)V
    .locals 2
    .param p1, "test"    # Ljunit/framework/Test;
    .param p2, "e"    # Ljunit/framework/AssertionFailedError;

    monitor-enter p0

    .line 48
    :try_start_0
    iget-object v0, p0, Ljunit/framework/TestResult;->fFailures:Ljava/util/List;

    new-instance v1, Ljunit/framework/TestFailure;

    invoke-direct {v1, p1, p2}, Ljunit/framework/TestFailure;-><init>(Ljunit/framework/Test;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    invoke-direct {p0}, Ljunit/framework/TestResult;->cloneListeners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljunit/framework/TestListener;

    .line 50
    .local v1, "each":Ljunit/framework/TestListener;
    invoke-interface {v1, p1, p2}, Ljunit/framework/TestListener;->addFailure(Ljunit/framework/Test;Ljunit/framework/AssertionFailedError;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1    # "each":Ljunit/framework/TestListener;
    goto :goto_0

    .line 52
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local p0    # "this":Ljunit/framework/TestResult;
    :cond_0
    monitor-exit p0

    return-void

    .line 47
    .end local p1    # "test":Ljunit/framework/Test;
    .end local p2    # "e":Ljunit/framework/AssertionFailedError;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized addListener(Ljunit/framework/TestListener;)V
    .locals 1
    .param p1, "listener"    # Ljunit/framework/TestListener;

    monitor-enter p0

    .line 58
    :try_start_0
    iget-object v0, p0, Ljunit/framework/TestResult;->fListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    monitor-exit p0

    return-void

    .line 57
    .end local p0    # "this":Ljunit/framework/TestResult;
    .end local p1    # "listener":Ljunit/framework/TestListener;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public endTest(Ljunit/framework/Test;)V
    .locals 2
    .param p1, "test"    # Ljunit/framework/Test;

    .line 81
    invoke-direct {p0}, Ljunit/framework/TestResult;->cloneListeners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljunit/framework/TestListener;

    .line 82
    .local v1, "each":Ljunit/framework/TestListener;
    invoke-interface {v1, p1}, Ljunit/framework/TestListener;->endTest(Ljunit/framework/Test;)V

    .end local v1    # "each":Ljunit/framework/TestListener;
    goto :goto_0

    .line 84
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method public declared-synchronized errorCount()I
    .locals 1

    monitor-enter p0

    .line 90
    :try_start_0
    iget-object v0, p0, Ljunit/framework/TestResult;->fErrors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 90
    .end local p0    # "this":Ljunit/framework/TestResult;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized errors()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Ljunit/framework/TestFailure;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 97
    :try_start_0
    iget-object v0, p0, Ljunit/framework/TestResult;->fErrors:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 97
    .end local p0    # "this":Ljunit/framework/TestResult;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized failureCount()I
    .locals 1

    monitor-enter p0

    .line 105
    :try_start_0
    iget-object v0, p0, Ljunit/framework/TestResult;->fFailures:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 105
    .end local p0    # "this":Ljunit/framework/TestResult;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized failures()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Ljunit/framework/TestFailure;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 112
    :try_start_0
    iget-object v0, p0, Ljunit/framework/TestResult;->fFailures:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 112
    .end local p0    # "this":Ljunit/framework/TestResult;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized removeListener(Ljunit/framework/TestListener;)V
    .locals 1
    .param p1, "listener"    # Ljunit/framework/TestListener;

    monitor-enter p0

    .line 65
    :try_start_0
    iget-object v0, p0, Ljunit/framework/TestResult;->fListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    monitor-exit p0

    return-void

    .line 64
    .end local p0    # "this":Ljunit/framework/TestResult;
    .end local p1    # "listener":Ljunit/framework/TestListener;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method protected run(Ljunit/framework/TestCase;)V
    .locals 1
    .param p1, "test"    # Ljunit/framework/TestCase;

    .line 119
    invoke-virtual {p0, p1}, Ljunit/framework/TestResult;->startTest(Ljunit/framework/Test;)V

    .line 120
    new-instance v0, Ljunit/framework/TestResult$1;

    invoke-direct {v0, p0, p1}, Ljunit/framework/TestResult$1;-><init>(Ljunit/framework/TestResult;Ljunit/framework/TestCase;)V

    .line 125
    .local v0, "p":Ljunit/framework/Protectable;
    invoke-virtual {p0, p1, v0}, Ljunit/framework/TestResult;->runProtected(Ljunit/framework/Test;Ljunit/framework/Protectable;)V

    .line 127
    invoke-virtual {p0, p1}, Ljunit/framework/TestResult;->endTest(Ljunit/framework/Test;)V

    .line 128
    return-void
.end method

.method public declared-synchronized runCount()I
    .locals 1

    monitor-enter p0

    .line 134
    :try_start_0
    iget v0, p0, Ljunit/framework/TestResult;->fRunTests:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 134
    .end local p0    # "this":Ljunit/framework/TestResult;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public runProtected(Ljunit/framework/Test;Ljunit/framework/Protectable;)V
    .locals 1
    .param p1, "test"    # Ljunit/framework/Test;
    .param p2, "p"    # Ljunit/framework/Protectable;

    .line 142
    :try_start_0
    invoke-interface {p2}, Ljunit/framework/Protectable;->protect()V
    :try_end_0
    .catch Ljunit/framework/AssertionFailedError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    :goto_0
    goto :goto_1

    .line 147
    :catchall_0
    move-exception v0

    .line 148
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {p0, p1, v0}, Ljunit/framework/TestResult;->addError(Ljunit/framework/Test;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 145
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_0
    move-exception v0

    .line 146
    .local v0, "e":Ljava/lang/ThreadDeath;
    throw v0

    .line 143
    .end local v0    # "e":Ljava/lang/ThreadDeath;
    :catch_1
    move-exception v0

    .line 144
    .local v0, "e":Ljunit/framework/AssertionFailedError;
    invoke-virtual {p0, p1, v0}, Ljunit/framework/TestResult;->addFailure(Ljunit/framework/Test;Ljunit/framework/AssertionFailedError;)V

    .end local v0    # "e":Ljunit/framework/AssertionFailedError;
    goto :goto_0

    .line 150
    :goto_1
    return-void
.end method

.method public declared-synchronized shouldStop()Z
    .locals 1

    monitor-enter p0

    .line 156
    :try_start_0
    iget-boolean v0, p0, Ljunit/framework/TestResult;->fStop:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 156
    .end local p0    # "this":Ljunit/framework/TestResult;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public startTest(Ljunit/framework/Test;)V
    .locals 3
    .param p1, "test"    # Ljunit/framework/Test;

    .line 163
    invoke-interface {p1}, Ljunit/framework/Test;->countTestCases()I

    move-result v0

    .line 164
    .local v0, "count":I
    monitor-enter p0

    .line 165
    :try_start_0
    iget v1, p0, Ljunit/framework/TestResult;->fRunTests:I

    add-int/2addr v1, v0

    iput v1, p0, Ljunit/framework/TestResult;->fRunTests:I

    .line 166
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    invoke-direct {p0}, Ljunit/framework/TestResult;->cloneListeners()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljunit/framework/TestListener;

    .line 168
    .local v2, "each":Ljunit/framework/TestListener;
    invoke-interface {v2, p1}, Ljunit/framework/TestListener;->startTest(Ljunit/framework/Test;)V

    .end local v2    # "each":Ljunit/framework/TestListener;
    goto :goto_0

    .line 170
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    return-void

    .line 166
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public declared-synchronized stop()V
    .locals 1

    monitor-enter p0

    .line 176
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Ljunit/framework/TestResult;->fStop:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    monitor-exit p0

    return-void

    .line 175
    .end local p0    # "this":Ljunit/framework/TestResult;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized wasSuccessful()Z
    .locals 1

    monitor-enter p0

    .line 183
    :try_start_0
    invoke-virtual {p0}, Ljunit/framework/TestResult;->failureCount()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljunit/framework/TestResult;->errorCount()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .end local p0    # "this":Ljunit/framework/TestResult;
    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    .line 183
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
