.class public final Landroidx/test/core/view/SuspendToFutureAdapter;
.super Ljava/lang/Object;
.source "SuspendToFutureAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/test/core/view/SuspendToFutureAdapter$DeferredFuture;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000A\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0006\u0008\u00c0\u0002\u0018\u00002\u00020\u0001:\u0001\u0015B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002JW\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u0002H\n0\t\"\u0004\u0008\u0000\u0010\n2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000e2\'\u0010\u000f\u001a#\u0008\u0001\u0012\u0004\u0012\u00020\u0011\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\n0\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0010\u00a2\u0006\u0002\u0008\u0013\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0014R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0007\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0016"
    }
    d2 = {
        "Landroidx/test/core/view/SuspendToFutureAdapter;",
        "",
        "()V",
        "GlobalListenableFutureAwaitContext",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "GlobalListenableFutureScope",
        "androidx/test/core/view/SuspendToFutureAdapter$GlobalListenableFutureScope$1",
        "Landroidx/test/core/view/SuspendToFutureAdapter$GlobalListenableFutureScope$1;",
        "launchFuture",
        "Lcom/google/common/util/concurrent/ListenableFuture;",
        "T",
        "context",
        "Lkotlin/coroutines/CoroutineContext;",
        "launchUndispatched",
        "",
        "block",
        "Lkotlin/Function2;",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation;",
        "Lkotlin/ExtensionFunctionType;",
        "(Lkotlin/coroutines/CoroutineContext;ZLkotlin/jvm/functions/Function2;)Lcom/google/common/util/concurrent/ListenableFuture;",
        "DeferredFuture",
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


# static fields
.field private static final GlobalListenableFutureAwaitContext:Lkotlinx/coroutines/CoroutineDispatcher;

.field private static final GlobalListenableFutureScope:Landroidx/test/core/view/SuspendToFutureAdapter$GlobalListenableFutureScope$1;

.field public static final INSTANCE:Landroidx/test/core/view/SuspendToFutureAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/test/core/view/SuspendToFutureAdapter;

    invoke-direct {v0}, Landroidx/test/core/view/SuspendToFutureAdapter;-><init>()V

    sput-object v0, Landroidx/test/core/view/SuspendToFutureAdapter;->INSTANCE:Landroidx/test/core/view/SuspendToFutureAdapter;

    .line 49
    new-instance v0, Landroidx/test/core/view/SuspendToFutureAdapter$GlobalListenableFutureScope$1;

    invoke-direct {v0}, Landroidx/test/core/view/SuspendToFutureAdapter$GlobalListenableFutureScope$1;-><init>()V

    sput-object v0, Landroidx/test/core/view/SuspendToFutureAdapter;->GlobalListenableFutureScope:Landroidx/test/core/view/SuspendToFutureAdapter$GlobalListenableFutureScope$1;

    .line 52
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getUnconfined()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    sput-object v0, Landroidx/test/core/view/SuspendToFutureAdapter;->GlobalListenableFutureAwaitContext:Lkotlinx/coroutines/CoroutineDispatcher;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getGlobalListenableFutureAwaitContext$p()Lkotlinx/coroutines/CoroutineDispatcher;
    .locals 1

    .line 42
    sget-object v0, Landroidx/test/core/view/SuspendToFutureAdapter;->GlobalListenableFutureAwaitContext:Lkotlinx/coroutines/CoroutineDispatcher;

    return-object v0
.end method

.method public static synthetic launchFuture$default(Landroidx/test/core/view/SuspendToFutureAdapter;Lkotlin/coroutines/CoroutineContext;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0

    .line 92
    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    .line 93
    sget-object p1, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    .line 92
    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    .line 94
    const/4 p2, 0x1

    .line 92
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Landroidx/test/core/view/SuspendToFutureAdapter;->launchFuture(Lkotlin/coroutines/CoroutineContext;ZLkotlin/jvm/functions/Function2;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final launchFuture(Lkotlin/coroutines/CoroutineContext;ZLkotlin/jvm/functions/Function2;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 6
    .param p1, "context"    # Lkotlin/coroutines/CoroutineContext;
    .param p2, "launchUndispatched"    # Z
    .param p3, "block"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/coroutines/CoroutineContext;",
            "Z",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lkotlinx/coroutines/CoroutineScope;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    sget-object v0, Landroidx/test/core/view/SuspendToFutureAdapter;->GlobalListenableFutureScope:Landroidx/test/core/view/SuspendToFutureAdapter$GlobalListenableFutureScope$1;

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    .line 98
    nop

    .line 99
    if-eqz p2, :cond_0

    sget-object v1, Lkotlinx/coroutines/CoroutineStart;->UNDISPATCHED:Lkotlinx/coroutines/CoroutineStart;

    goto :goto_0

    :cond_0
    sget-object v1, Lkotlinx/coroutines/CoroutineStart;->DEFAULT:Lkotlinx/coroutines/CoroutineStart;

    .line 100
    :goto_0
    nop

    .line 97
    invoke-static {v0, p1, v1, p3}, Lkotlinx/coroutines/BuildersKt;->async(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Deferred;

    move-result-object v0

    .line 102
    .local v0, "resultDeferred":Lkotlinx/coroutines/Deferred;
    new-instance v1, Landroidx/test/core/view/SuspendToFutureAdapter$DeferredFuture;

    invoke-direct {v1, v0}, Landroidx/test/core/view/SuspendToFutureAdapter$DeferredFuture;-><init>(Lkotlinx/coroutines/Deferred;)V

    move-object v2, v1

    .local v2, "future":Landroidx/test/core/view/SuspendToFutureAdapter$DeferredFuture;
    const/4 v3, 0x0

    .line 106
    .local v3, "$i$a$-also-SuspendToFutureAdapter$launchFuture$1":I
    new-instance v4, Landroidx/test/core/view/SuspendToFutureAdapter$launchFuture$1$1;

    invoke-direct {v4, v0}, Landroidx/test/core/view/SuspendToFutureAdapter$launchFuture$1$1;-><init>(Ljava/lang/Object;)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    move-object v5, v2

    check-cast v5, Lkotlin/coroutines/Continuation;

    invoke-static {v4, v5}, Lkotlin/coroutines/ContinuationKt;->createCoroutine(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v4

    sget-object v5, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v5}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 107
    nop

    .line 102
    .end local v2    # "future":Landroidx/test/core/view/SuspendToFutureAdapter$DeferredFuture;
    .end local v3    # "$i$a$-also-SuspendToFutureAdapter$launchFuture$1":I
    check-cast v1, Lcom/google/common/util/concurrent/ListenableFuture;

    return-object v1
.end method
