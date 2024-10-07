.class Landroidx/test/core/app/ListFuture;
.super Ljava/lang/Object;
.source "ListFuture.java"

# interfaces
.implements Lcom/google/common/util/concurrent/ListenableFuture;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/ListenableFuture<",
        "Ljava/util/List<",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field private final mAllMustSucceed:Z

.field mFutures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "+TV;>;>;"
        }
    .end annotation
.end field

.field private final mRemaining:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mResult:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/util/List<",
            "TV;>;>;"
        }
    .end annotation
.end field

.field mResultNotifier:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer<",
            "Ljava/util/List<",
            "TV;>;>;"
        }
    .end annotation
.end field

.field mValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;ZLjava/util/concurrent/Executor;)V
    .locals 2
    .param p2, "allMustSucceed"    # Z
    .param p3, "listenerExecutor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "futures",
            "allMustSucceed",
            "listenerExecutor"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "+TV;>;>;Z",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .line 67
    .local p0, "this":Landroidx/test/core/app/ListFuture;, "Landroidx/test/core/app/ListFuture<TV;>;"
    .local p1, "futures":Ljava/util/List;, "Ljava/util/List<+Lcom/google/common/util/concurrent/ListenableFuture<+TV;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    invoke-static {p1}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Landroidx/test/core/app/ListFuture;->mFutures:Ljava/util/List;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroidx/test/core/app/ListFuture;->mValues:Ljava/util/List;

    .line 70
    iput-boolean p2, p0, Landroidx/test/core/app/ListFuture;->mAllMustSucceed:Z

    .line 71
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Landroidx/test/core/app/ListFuture;->mRemaining:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 72
    new-instance v0, Landroidx/test/core/app/ListFuture$1;

    invoke-direct {v0, p0}, Landroidx/test/core/app/ListFuture$1;-><init>(Landroidx/test/core/app/ListFuture;)V

    .line 73
    invoke-static {v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter;->getFuture(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/core/app/ListFuture;->mResult:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 84
    invoke-direct {p0, p3}, Landroidx/test/core/app/ListFuture;->init(Ljava/util/concurrent/Executor;)V

    .line 85
    return-void
.end method

.method private callAllGets()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 238
    .local p0, "this":Landroidx/test/core/app/ListFuture;, "Landroidx/test/core/app/ListFuture<TV;>;"
    iget-object v0, p0, Landroidx/test/core/app/ListFuture;->mFutures:Ljava/util/List;

    .line 239
    .local v0, "oldFutures":Ljava/util/List;, "Ljava/util/List<+Lcom/google/common/util/concurrent/ListenableFuture<+TV;>;>;"
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/test/core/app/ListFuture;->isDone()Z

    move-result v1

    if-nez v1, :cond_2

    .line 240
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/util/concurrent/ListenableFuture;

    .line 244
    .local v2, "future":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<+TV;>;"
    :goto_1
    invoke-interface {v2}, Lcom/google/common/util/concurrent/ListenableFuture;->isDone()Z

    move-result v3

    if-nez v3, :cond_1

    .line 246
    :try_start_0
    invoke-interface {v2}, Lcom/google/common/util/concurrent/ListenableFuture;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
    goto :goto_1

    .line 251
    :catchall_0
    move-exception v3

    .line 253
    .local v3, "e":Ljava/lang/Throwable;
    iget-boolean v4, p0, Landroidx/test/core/app/ListFuture;->mAllMustSucceed:Z

    if-eqz v4, :cond_0

    .line 254
    return-void

    .line 256
    :cond_0
    goto :goto_1

    .line 249
    .end local v3    # "e":Ljava/lang/Throwable;
    :catch_0
    move-exception v1

    .line 250
    .local v1, "e":Ljava/lang/InterruptedException;
    throw v1

    .line 247
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v1

    .line 248
    .local v1, "e":Ljava/lang/Error;
    throw v1

    .line 260
    .end local v1    # "e":Ljava/lang/Error;
    .end local v2    # "future":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<+TV;>;"
    :cond_1
    goto :goto_0

    .line 262
    :cond_2
    return-void
.end method

.method private static directExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .line 139
    sget-object v0, Landroidx/test/platform/concurrent/DirectExecutor;->INSTANCE:Landroidx/test/platform/concurrent/DirectExecutor;

    return-object v0
.end method

.method private static getUninterruptibly(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "future"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "TV;>;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 272
    .local p0, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TV;>;"
    const/4 v0, 0x0

    .line 276
    .local v0, "interrupted":Z
    :goto_0
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 282
    if-eqz v0, :cond_0

    .line 283
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 276
    :cond_0
    return-object v1

    .line 282
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    .line 283
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 285
    :cond_1
    throw v1

    .line 277
    :catch_0
    move-exception v1

    .line 278
    .local v1, "e":Ljava/lang/InterruptedException;
    const/4 v0, 0x1

    .line 279
    .end local v1    # "e":Ljava/lang/InterruptedException;
    goto :goto_0
.end method

.method private init(Ljava/util/concurrent/Executor;)V
    .locals 5
    .param p1, "listenerExecutor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listenerExecutor"
        }
    .end annotation

    .line 89
    .local p0, "this":Landroidx/test/core/app/ListFuture;, "Landroidx/test/core/app/ListFuture<TV;>;"
    new-instance v0, Landroidx/test/core/app/ListFuture$2;

    invoke-direct {v0, p0}, Landroidx/test/core/app/ListFuture$2;-><init>(Landroidx/test/core/app/ListFuture;)V

    .line 101
    invoke-static {}, Landroidx/test/core/app/ListFuture;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    .line 89
    invoke-virtual {p0, v0, v1}, Landroidx/test/core/app/ListFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 106
    iget-object v0, p0, Landroidx/test/core/app/ListFuture;->mFutures:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Landroidx/test/core/app/ListFuture;->mResultNotifier:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/test/core/app/ListFuture;->mValues:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->set(Ljava/lang/Object;)Z

    .line 108
    return-void

    .line 112
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroidx/test/core/app/ListFuture;->mFutures:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 113
    iget-object v1, p0, Landroidx/test/core/app/ListFuture;->mValues:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 123
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Landroidx/test/core/app/ListFuture;->mFutures:Ljava/util/List;

    .line 124
    .local v0, "localFutures":Ljava/util/List;, "Ljava/util/List<+Lcom/google/common/util/concurrent/ListenableFuture<+TV;>;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 125
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/util/concurrent/ListenableFuture;

    .line 126
    .local v2, "listenable":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<+TV;>;"
    move v3, v1

    .line 127
    .local v3, "index":I
    new-instance v4, Landroidx/test/core/app/ListFuture$3;

    invoke-direct {v4, p0, v3, v2}, Landroidx/test/core/app/ListFuture$3;-><init>(Landroidx/test/core/app/ListFuture;ILcom/google/common/util/concurrent/ListenableFuture;)V

    invoke-interface {v2, v4, p1}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 124
    .end local v2    # "listenable":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<+TV;>;"
    .end local v3    # "index":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 136
    .end local v1    # "i":I
    :cond_2
    return-void
.end method


# virtual methods
.method public addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p1, "listener"    # Ljava/lang/Runnable;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "listener",
            "executor"
        }
    .end annotation

    .line 193
    .local p0, "this":Landroidx/test/core/app/ListFuture;, "Landroidx/test/core/app/ListFuture<TV;>;"
    iget-object v0, p0, Landroidx/test/core/app/ListFuture;->mResult:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-interface {v0, p1, p2}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 194
    return-void
.end method

.method public cancel(Z)Z
    .locals 2
    .param p1, "mayInterruptIfRunning"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mayInterruptIfRunning"
        }
    .end annotation

    .line 198
    .local p0, "this":Landroidx/test/core/app/ListFuture;, "Landroidx/test/core/app/ListFuture<TV;>;"
    iget-object v0, p0, Landroidx/test/core/app/ListFuture;->mFutures:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Landroidx/test/core/app/ListFuture;->mFutures:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/util/concurrent/ListenableFuture;

    .line 200
    .local v1, "f":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<+TV;>;"
    invoke-interface {v1, p1}, Lcom/google/common/util/concurrent/ListenableFuture;->cancel(Z)Z

    .line 201
    .end local v1    # "f":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<+TV;>;"
    goto :goto_0

    .line 204
    :cond_0
    iget-object v0, p0, Landroidx/test/core/app/ListFuture;->mResult:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-interface {v0, p1}, Lcom/google/common/util/concurrent/ListenableFuture;->cancel(Z)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 49
    .local p0, "this":Landroidx/test/core/app/ListFuture;, "Landroidx/test/core/app/ListFuture<TV;>;"
    invoke-virtual {p0}, Landroidx/test/core/app/ListFuture;->get()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "timeout",
            "unit"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 49
    .local p0, "this":Landroidx/test/core/app/ListFuture;, "Landroidx/test/core/app/ListFuture<TV;>;"
    invoke-virtual {p0, p1, p2, p3}, Landroidx/test/core/app/ListFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public get()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 220
    .local p0, "this":Landroidx/test/core/app/ListFuture;, "Landroidx/test/core/app/ListFuture<TV;>;"
    invoke-direct {p0}, Landroidx/test/core/app/ListFuture;->callAllGets()V

    .line 224
    iget-object v0, p0, Landroidx/test/core/app/ListFuture;->mResult:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-interface {v0}, Lcom/google/common/util/concurrent/ListenableFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/util/List;
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "timeout",
            "unit"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 230
    .local p0, "this":Landroidx/test/core/app/ListFuture;, "Landroidx/test/core/app/ListFuture<TV;>;"
    iget-object v0, p0, Landroidx/test/core/app/ListFuture;->mResult:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/common/util/concurrent/ListenableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public isCancelled()Z
    .locals 1

    .line 209
    .local p0, "this":Landroidx/test/core/app/ListFuture;, "Landroidx/test/core/app/ListFuture<TV;>;"
    iget-object v0, p0, Landroidx/test/core/app/ListFuture;->mResult:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-interface {v0}, Lcom/google/common/util/concurrent/ListenableFuture;->isCancelled()Z

    move-result v0

    return v0
.end method

.method public isDone()Z
    .locals 1

    .line 214
    .local p0, "this":Landroidx/test/core/app/ListFuture;, "Landroidx/test/core/app/ListFuture<TV;>;"
    iget-object v0, p0, Landroidx/test/core/app/ListFuture;->mResult:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-interface {v0}, Lcom/google/common/util/concurrent/ListenableFuture;->isDone()Z

    move-result v0

    return v0
.end method

.method setOneValue(ILjava/util/concurrent/Future;)V
    .locals 7
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "future"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/concurrent/Future<",
            "+TV;>;)V"
        }
    .end annotation

    .line 144
    .local p0, "this":Landroidx/test/core/app/ListFuture;, "Landroidx/test/core/app/ListFuture<TV;>;"
    .local p2, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<+TV;>;"
    const-string v0, "Less than 0 remaining futures"

    iget-object v1, p0, Landroidx/test/core/app/ListFuture;->mValues:Ljava/util/List;

    .line 145
    .local v1, "localValues":Ljava/util/List;, "Ljava/util/List<TV;>;"
    invoke-virtual {p0}, Landroidx/test/core/app/ListFuture;->isDone()Z

    move-result v2

    if-nez v2, :cond_e

    if-nez v1, :cond_0

    goto/16 :goto_a

    .line 154
    :cond_0
    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    invoke-interface {p2}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v4

    const-string v5, "Tried to set value from future which is not done"

    invoke-static {v4, v5}, Landroidx/test/internal/util/Checks;->checkState(ZLjava/lang/Object;)V

    .line 155
    invoke-static {p2}, Landroidx/test/core/app/ListFuture;->getUninterruptibly(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, p1, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    iget-object v4, p0, Landroidx/test/core/app/ListFuture;->mRemaining:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v4

    .line 179
    .local v4, "newRemaining":I
    if-ltz v4, :cond_1

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    invoke-static {v2, v0}, Landroidx/test/internal/util/Checks;->checkState(ZLjava/lang/Object;)V

    .line 180
    if-nez v4, :cond_a

    .line 181
    iget-object v1, p0, Landroidx/test/core/app/ListFuture;->mValues:Ljava/util/List;

    .line 182
    if-eqz v1, :cond_9

    .line 183
    iget-object v0, p0, Landroidx/test/core/app/ListFuture;->mResultNotifier:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto/16 :goto_5

    .line 178
    .end local v4    # "newRemaining":I
    :catchall_0
    move-exception v4

    goto/16 :goto_7

    .line 174
    :catch_0
    move-exception v4

    .line 176
    .local v4, "e":Ljava/lang/Error;
    :try_start_1
    iget-object v5, p0, Landroidx/test/core/app/ListFuture;->mResultNotifier:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    invoke-virtual {v5, v4}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->setException(Ljava/lang/Throwable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 178
    nop

    .end local v4    # "e":Ljava/lang/Error;
    iget-object v4, p0, Landroidx/test/core/app/ListFuture;->mRemaining:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v4

    .line 179
    .local v4, "newRemaining":I
    if-ltz v4, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    invoke-static {v2, v0}, Landroidx/test/internal/util/Checks;->checkState(ZLjava/lang/Object;)V

    .line 180
    if-nez v4, :cond_a

    .line 181
    iget-object v1, p0, Landroidx/test/core/app/ListFuture;->mValues:Ljava/util/List;

    .line 182
    if-eqz v1, :cond_9

    .line 183
    iget-object v0, p0, Landroidx/test/core/app/ListFuture;->mResultNotifier:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto/16 :goto_5

    .line 170
    .end local v4    # "newRemaining":I
    :catch_1
    move-exception v4

    .line 171
    .local v4, "e":Ljava/lang/RuntimeException;
    :try_start_2
    iget-boolean v5, p0, Landroidx/test/core/app/ListFuture;->mAllMustSucceed:Z

    if-eqz v5, :cond_3

    .line 172
    iget-object v5, p0, Landroidx/test/core/app/ListFuture;->mResultNotifier:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    invoke-virtual {v5, v4}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->setException(Ljava/lang/Throwable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 178
    .end local v4    # "e":Ljava/lang/RuntimeException;
    :cond_3
    iget-object v4, p0, Landroidx/test/core/app/ListFuture;->mRemaining:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v4

    .line 179
    .local v4, "newRemaining":I
    if-ltz v4, :cond_4

    goto :goto_2

    :cond_4
    move v2, v3

    :goto_2
    invoke-static {v2, v0}, Landroidx/test/internal/util/Checks;->checkState(ZLjava/lang/Object;)V

    .line 180
    if-nez v4, :cond_a

    .line 181
    iget-object v1, p0, Landroidx/test/core/app/ListFuture;->mValues:Ljava/util/List;

    .line 182
    if-eqz v1, :cond_9

    .line 183
    iget-object v0, p0, Landroidx/test/core/app/ListFuture;->mResultNotifier:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_5

    .line 164
    .end local v4    # "newRemaining":I
    :catch_2
    move-exception v4

    .line 165
    .local v4, "e":Ljava/util/concurrent/ExecutionException;
    :try_start_3
    iget-boolean v5, p0, Landroidx/test/core/app/ListFuture;->mAllMustSucceed:Z

    if-eqz v5, :cond_5

    .line 168
    iget-object v5, p0, Landroidx/test/core/app/ListFuture;->mResultNotifier:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    invoke-virtual {v4}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->setException(Ljava/lang/Throwable;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 178
    .end local v4    # "e":Ljava/util/concurrent/ExecutionException;
    :cond_5
    iget-object v4, p0, Landroidx/test/core/app/ListFuture;->mRemaining:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v4

    .line 179
    .local v4, "newRemaining":I
    if-ltz v4, :cond_6

    goto :goto_3

    :cond_6
    move v2, v3

    :goto_3
    invoke-static {v2, v0}, Landroidx/test/internal/util/Checks;->checkState(ZLjava/lang/Object;)V

    .line 180
    if-nez v4, :cond_a

    .line 181
    iget-object v1, p0, Landroidx/test/core/app/ListFuture;->mValues:Ljava/util/List;

    .line 182
    if-eqz v1, :cond_9

    .line 183
    iget-object v0, p0, Landroidx/test/core/app/ListFuture;->mResultNotifier:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_5

    .line 156
    .end local v4    # "newRemaining":I
    :catch_3
    move-exception v4

    .line 157
    .local v4, "e":Ljava/util/concurrent/CancellationException;
    :try_start_4
    iget-boolean v5, p0, Landroidx/test/core/app/ListFuture;->mAllMustSucceed:Z

    if-eqz v5, :cond_7

    .line 162
    invoke-virtual {p0, v3}, Landroidx/test/core/app/ListFuture;->cancel(Z)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 178
    .end local v4    # "e":Ljava/util/concurrent/CancellationException;
    :cond_7
    iget-object v4, p0, Landroidx/test/core/app/ListFuture;->mRemaining:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v4

    .line 179
    .local v4, "newRemaining":I
    if-ltz v4, :cond_8

    goto :goto_4

    :cond_8
    move v2, v3

    :goto_4
    invoke-static {v2, v0}, Landroidx/test/internal/util/Checks;->checkState(ZLjava/lang/Object;)V

    .line 180
    if-nez v4, :cond_a

    .line 181
    iget-object v1, p0, Landroidx/test/core/app/ListFuture;->mValues:Ljava/util/List;

    .line 182
    if-eqz v1, :cond_9

    .line 183
    iget-object v0, p0, Landroidx/test/core/app/ListFuture;->mResultNotifier:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_5
    invoke-virtual {v0, v2}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->set(Ljava/lang/Object;)Z

    goto :goto_6

    .line 185
    :cond_9
    invoke-virtual {p0}, Landroidx/test/core/app/ListFuture;->isDone()Z

    move-result v0

    invoke-static {v0}, Landroidx/test/internal/util/Checks;->checkState(Z)V

    .line 188
    .end local v4    # "newRemaining":I
    :cond_a
    :goto_6
    nop

    .line 189
    return-void

    .line 178
    :goto_7
    iget-object v5, p0, Landroidx/test/core/app/ListFuture;->mRemaining:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v5

    .line 179
    .local v5, "newRemaining":I
    if-ltz v5, :cond_b

    goto :goto_8

    :cond_b
    move v2, v3

    :goto_8
    invoke-static {v2, v0}, Landroidx/test/internal/util/Checks;->checkState(ZLjava/lang/Object;)V

    .line 180
    if-nez v5, :cond_d

    .line 181
    iget-object v1, p0, Landroidx/test/core/app/ListFuture;->mValues:Ljava/util/List;

    .line 182
    if-eqz v1, :cond_c

    .line 183
    iget-object v0, p0, Landroidx/test/core/app/ListFuture;->mResultNotifier:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v2}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->set(Ljava/lang/Object;)Z

    goto :goto_9

    .line 185
    :cond_c
    invoke-virtual {p0}, Landroidx/test/core/app/ListFuture;->isDone()Z

    move-result v0

    invoke-static {v0}, Landroidx/test/internal/util/Checks;->checkState(Z)V

    .line 188
    .end local v5    # "newRemaining":I
    :cond_d
    :goto_9
    throw v4

    .line 149
    :cond_e
    :goto_a
    iget-boolean v0, p0, Landroidx/test/core/app/ListFuture;->mAllMustSucceed:Z

    const-string v2, "Future was done before all dependencies completed"

    invoke-static {v0, v2}, Landroidx/test/internal/util/Checks;->checkState(ZLjava/lang/Object;)V

    .line 150
    return-void
.end method
