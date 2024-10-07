.class final Landroidx/test/core/view/SuspendToFutureAdapter$DeferredFuture;
.super Ljava/lang/Object;
.source "SuspendToFutureAdapter.kt"

# interfaces
.implements Lcom/google/common/util/concurrent/ListenableFuture;
.implements Lkotlin/coroutines/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/core/view/SuspendToFutureAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DeferredFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/ListenableFuture<",
        "TT;>;",
        "Lkotlin/coroutines/Continuation<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0002\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u00022\u0008\u0012\u0004\u0012\u0002H\u00010\u0003B\u0013\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0005\u00a2\u0006\u0002\u0010\u0006J\u0018\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0016J\u0010\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0015H\u0016J\r\u0010\u0017\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010\u0018J\u001e\u0010\u0017\u001a\u00028\u00002\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001cH\u0096\u0002\u00a2\u0006\u0002\u0010\u001dJ\u0008\u0010\u001e\u001a\u00020\u0015H\u0016J\u0008\u0010\u001f\u001a\u00020\u0015H\u0016J\u001e\u0010 \u001a\u00020\u000f2\u000c\u0010!\u001a\u0008\u0012\u0004\u0012\u00028\u00000\"H\u0016\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010#R\u0014\u0010\u0007\u001a\u00020\u00088VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\nR2\u0010\u000b\u001a&\u0012\u000c\u0012\n \r*\u0004\u0018\u00018\u00008\u0000 \r*\u0012\u0012\u000c\u0012\n \r*\u0004\u0018\u00018\u00008\u0000\u0018\u00010\u000c0\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006$"
    }
    d2 = {
        "Landroidx/test/core/view/SuspendToFutureAdapter$DeferredFuture;",
        "T",
        "Lcom/google/common/util/concurrent/ListenableFuture;",
        "Lkotlin/coroutines/Continuation;",
        "resultDeferred",
        "Lkotlinx/coroutines/Deferred;",
        "(Lkotlinx/coroutines/Deferred;)V",
        "context",
        "Lkotlin/coroutines/CoroutineContext;",
        "getContext",
        "()Lkotlin/coroutines/CoroutineContext;",
        "delegateFuture",
        "Landroidx/concurrent/futures/ResolvableFuture;",
        "kotlin.jvm.PlatformType",
        "addListener",
        "",
        "listener",
        "Ljava/lang/Runnable;",
        "executor",
        "Ljava/util/concurrent/Executor;",
        "cancel",
        "",
        "shouldInterrupt",
        "get",
        "()Ljava/lang/Object;",
        "timeout",
        "",
        "unit",
        "Ljava/util/concurrent/TimeUnit;",
        "(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;",
        "isCancelled",
        "isDone",
        "resumeWith",
        "result",
        "Lkotlin/Result;",
        "(Ljava/lang/Object;)V",
        "core_java_androidx_test_core-core_internal_kt"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final delegateFuture:Landroidx/concurrent/futures/ResolvableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/concurrent/futures/ResolvableFuture<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final resultDeferred:Lkotlinx/coroutines/Deferred;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/Deferred<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/Deferred;)V
    .locals 1
    .param p1, "resultDeferred"    # Lkotlinx/coroutines/Deferred;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/Deferred<",
            "+TT;>;)V"
        }
    .end annotation

    const-string v0, "resultDeferred"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-object p1, p0, Landroidx/test/core/view/SuspendToFutureAdapter$DeferredFuture;->resultDeferred:Lkotlinx/coroutines/Deferred;

    .line 114
    invoke-static {}, Landroidx/concurrent/futures/ResolvableFuture;->create()Landroidx/concurrent/futures/ResolvableFuture;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/core/view/SuspendToFutureAdapter$DeferredFuture;->delegateFuture:Landroidx/concurrent/futures/ResolvableFuture;

    .line 110
    return-void
.end method


# virtual methods
.method public addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p1, "listener"    # Ljava/lang/Runnable;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "executor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Landroidx/test/core/view/SuspendToFutureAdapter$DeferredFuture;->delegateFuture:Landroidx/concurrent/futures/ResolvableFuture;

    invoke-virtual {v0, p1, p2}, Landroidx/concurrent/futures/ResolvableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public cancel(Z)Z
    .locals 6
    .param p1, "shouldInterrupt"    # Z

    .line 120
    iget-object v0, p0, Landroidx/test/core/view/SuspendToFutureAdapter$DeferredFuture;->delegateFuture:Landroidx/concurrent/futures/ResolvableFuture;

    invoke-virtual {v0, p1}, Landroidx/concurrent/futures/ResolvableFuture;->cancel(Z)Z

    move-result v0

    move v1, v0

    .local v1, "didCancel":Z
    const/4 v2, 0x0

    .line 121
    .local v2, "$i$a$-also-SuspendToFutureAdapter$DeferredFuture$cancel$1":I
    if-eqz v1, :cond_0

    .line 122
    iget-object v3, p0, Landroidx/test/core/view/SuspendToFutureAdapter$DeferredFuture;->resultDeferred:Lkotlinx/coroutines/Deferred;

    check-cast v3, Lkotlinx/coroutines/Job;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v3, v5, v4, v5}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 124
    :cond_0
    nop

    .line 120
    .end local v1    # "didCancel":Z
    .end local v2    # "$i$a$-also-SuspendToFutureAdapter$DeferredFuture$cancel$1":I
    nop

    .line 124
    return v0
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 130
    iget-object v0, p0, Landroidx/test/core/view/SuspendToFutureAdapter$DeferredFuture;->delegateFuture:Landroidx/concurrent/futures/ResolvableFuture;

    invoke-virtual {v0}, Landroidx/concurrent/futures/ResolvableFuture;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    const-string/jumbo v0, "unit"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Landroidx/test/core/view/SuspendToFutureAdapter$DeferredFuture;->delegateFuture:Landroidx/concurrent/futures/ResolvableFuture;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/concurrent/futures/ResolvableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Lkotlin/coroutines/CoroutineContext;
    .locals 1

    .line 138
    invoke-static {}, Landroidx/test/core/view/SuspendToFutureAdapter;->access$getGlobalListenableFutureAwaitContext$p()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    return-object v0
.end method

.method public isCancelled()Z
    .locals 1

    .line 126
    iget-object v0, p0, Landroidx/test/core/view/SuspendToFutureAdapter$DeferredFuture;->delegateFuture:Landroidx/concurrent/futures/ResolvableFuture;

    invoke-virtual {v0}, Landroidx/concurrent/futures/ResolvableFuture;->isCancelled()Z

    move-result v0

    return v0
.end method

.method public isDone()Z
    .locals 1

    .line 128
    iget-object v0, p0, Landroidx/test/core/view/SuspendToFutureAdapter$DeferredFuture;->delegateFuture:Landroidx/concurrent/futures/ResolvableFuture;

    invoke-virtual {v0}, Landroidx/concurrent/futures/ResolvableFuture;->isDone()Z

    move-result v0

    return v0
.end method

.method public resumeWith(Ljava/lang/Object;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Object;

    .line 145
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, p1

    .local v0, "it":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 147
    .local v1, "$i$a$-fold-SuspendToFutureAdapter$DeferredFuture$resumeWith$unused$1":I
    iget-object v2, p0, Landroidx/test/core/view/SuspendToFutureAdapter$DeferredFuture;->delegateFuture:Landroidx/concurrent/futures/ResolvableFuture;

    invoke-virtual {v2, v0}, Landroidx/concurrent/futures/ResolvableFuture;->set(Ljava/lang/Object;)Z

    move-result v0

    .line 145
    .end local v0    # "it":Ljava/lang/Object;
    .end local v1    # "$i$a$-fold-SuspendToFutureAdapter$DeferredFuture$resumeWith$unused$1":I
    goto :goto_1

    .local v0, "it":Ljava/lang/Throwable;
    :cond_0
    const/4 v1, 0x0

    .line 150
    .local v1, "$i$a$-fold-SuspendToFutureAdapter$DeferredFuture$resumeWith$unused$2":I
    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-eqz v2, :cond_1

    .line 151
    iget-object v2, p0, Landroidx/test/core/view/SuspendToFutureAdapter$DeferredFuture;->delegateFuture:Landroidx/concurrent/futures/ResolvableFuture;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/concurrent/futures/ResolvableFuture;->cancel(Z)Z

    move-result v2

    goto :goto_0

    .line 153
    :cond_1
    iget-object v2, p0, Landroidx/test/core/view/SuspendToFutureAdapter$DeferredFuture;->delegateFuture:Landroidx/concurrent/futures/ResolvableFuture;

    invoke-virtual {v2, v0}, Landroidx/concurrent/futures/ResolvableFuture;->setException(Ljava/lang/Throwable;)Z

    move-result v2

    .line 150
    :goto_0
    nop

    .line 145
    .end local v0    # "it":Ljava/lang/Throwable;
    .end local v1    # "$i$a$-fold-SuspendToFutureAdapter$DeferredFuture$resumeWith$unused$2":I
    move v0, v2

    .line 157
    .local v0, "unused":Z
    :goto_1
    return-void
.end method
