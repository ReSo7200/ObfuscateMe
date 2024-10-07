.class final Lkotlinx/coroutines/stream/StreamFlow;
.super Ljava/lang/Object;
.source "Stream.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/Flow;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/Flow<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0002\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u0002B\u0013\u0012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0004\u00a2\u0006\u0002\u0010\u0005J\u001f\u0010\u0008\u001a\u00020\t2\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u000bH\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000cR\t\u0010\u0006\u001a\u00020\u0007X\u0082\u0004R\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\r"
    }
    d2 = {
        "Lkotlinx/coroutines/stream/StreamFlow;",
        "T",
        "Lkotlinx/coroutines/flow/Flow;",
        "stream",
        "Ljava/util/stream/Stream;",
        "(Ljava/util/stream/Stream;)V",
        "consumed",
        "Lkotlinx/atomicfu/AtomicBoolean;",
        "collect",
        "",
        "collector",
        "Lkotlinx/coroutines/flow/FlowCollector;",
        "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "kotlinx-coroutines-core"
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
.field private static final consumed$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field private volatile consumed:I
    .annotation runtime Lkotlin/jvm/Volatile;
    .end annotation
.end field

.field private final stream:Ljava/util/stream/Stream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lkotlinx/coroutines/stream/StreamFlow;

    const-string v1, "consumed"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/stream/StreamFlow;->consumed$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(Ljava/util/stream/Stream;)V
    .locals 1
    .param p1, "stream"    # Ljava/util/stream/Stream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/Stream<",
            "TT;>;)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/stream/StreamFlow;->stream:Ljava/util/stream/Stream;

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lkotlinx/coroutines/stream/StreamFlow;->consumed:I

    .line 19
    return-void
.end method


# virtual methods
.method public collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/FlowCollector<",
            "-TT;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lkotlinx/coroutines/stream/StreamFlow$collect$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/stream/StreamFlow$collect$1;

    iget v1, v0, Lkotlinx/coroutines/stream/StreamFlow$collect$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lkotlinx/coroutines/stream/StreamFlow$collect$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lkotlinx/coroutines/stream/StreamFlow$collect$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/stream/StreamFlow$collect$1;

    invoke-direct {v0, p0, p2}, Lkotlinx/coroutines/stream/StreamFlow$collect$1;-><init>(Lkotlinx/coroutines/stream/StreamFlow;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p2, v0

    .local p2, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p2, Lkotlinx/coroutines/stream/StreamFlow$collect$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 22
    iget v2, p2, Lkotlinx/coroutines/stream/StreamFlow$collect$1;->label:I

    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_0

    .end local v0    # "$result":Ljava/lang/Object;
    .end local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    iget-object p1, p2, Lkotlinx/coroutines/stream/StreamFlow$collect$1;->L$2:Ljava/lang/Object;

    check-cast p1, Ljava/util/Iterator;

    iget-object v2, p2, Lkotlinx/coroutines/stream/StreamFlow$collect$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/flow/FlowCollector;

    .local v2, "collector":Lkotlinx/coroutines/flow/FlowCollector;
    iget-object v4, p2, Lkotlinx/coroutines/stream/StreamFlow$collect$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/stream/StreamFlow;

    .local v4, "this":Lkotlinx/coroutines/stream/StreamFlow;
    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .end local v2    # "collector":Lkotlinx/coroutines/flow/FlowCollector;
    .end local v4    # "this":Lkotlinx/coroutines/stream/StreamFlow;
    :pswitch_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v4, p0

    .line 23
    .restart local v4    # "this":Lkotlinx/coroutines/stream/StreamFlow;
    .local p1, "collector":Lkotlinx/coroutines/flow/FlowCollector;
    sget-object v2, Lkotlinx/coroutines/stream/StreamFlow;->consumed$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 24
    nop

    .line 25
    :try_start_1
    iget-object v2, v4, Lkotlinx/coroutines/stream/StreamFlow;->stream:Ljava/util/stream/Stream;

    invoke-interface {v2}, Ljava/util/stream/Stream;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v7, v2

    move-object v2, p1

    move-object p1, v7

    .end local p1    # "collector":Lkotlinx/coroutines/flow/FlowCollector;
    .restart local v2    # "collector":Lkotlinx/coroutines/flow/FlowCollector;
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 26
    .local v5, "value":Ljava/lang/Object;
    iput-object v4, p2, Lkotlinx/coroutines/stream/StreamFlow$collect$1;->L$0:Ljava/lang/Object;

    iput-object v2, p2, Lkotlinx/coroutines/stream/StreamFlow$collect$1;->L$1:Ljava/lang/Object;

    iput-object p1, p2, Lkotlinx/coroutines/stream/StreamFlow$collect$1;->L$2:Ljava/lang/Object;

    iput v3, p2, Lkotlinx/coroutines/stream/StreamFlow$collect$1;->label:I

    invoke-interface {v2, v5, p2}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v5    # "value":Ljava/lang/Object;
    if-ne v6, v1, :cond_1

    .line 22
    return-object v1

    .line 26
    :cond_1
    :goto_2
    goto :goto_1

    .line 29
    .end local v2    # "collector":Lkotlinx/coroutines/flow/FlowCollector;
    :cond_2
    iget-object p1, v4, Lkotlinx/coroutines/stream/StreamFlow;->stream:Ljava/util/stream/Stream;

    invoke-interface {p1}, Ljava/util/stream/Stream;->close()V

    .line 30
    .end local v4    # "this":Lkotlinx/coroutines/stream/StreamFlow;
    move-object p1, v4

    .line 31
    .local p1, "this":Lkotlinx/coroutines/stream/StreamFlow;
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    .line 29
    .end local p1    # "this":Lkotlinx/coroutines/stream/StreamFlow;
    .restart local v4    # "this":Lkotlinx/coroutines/stream/StreamFlow;
    :catchall_0
    move-exception p1

    iget-object v1, v4, Lkotlinx/coroutines/stream/StreamFlow;->stream:Ljava/util/stream/Stream;

    invoke-interface {v1}, Ljava/util/stream/Stream;->close()V

    throw p1

    .line 23
    .end local v4    # "this":Lkotlinx/coroutines/stream/StreamFlow;
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "Stream.consumeAsFlow can be collected only once"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
