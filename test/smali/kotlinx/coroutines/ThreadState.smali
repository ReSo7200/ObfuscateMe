.class final Lkotlinx/coroutines/ThreadState;
.super Ljava/lang/Object;
.source "Interruptible.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Throwable;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0001\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008\u0002\u0018\u00002#\u0012\u0015\u0012\u0013\u0018\u00010\u0002\u00a2\u0006\u000c\u0008\u0003\u0012\u0008\u0008\u0004\u0012\u0004\u0008\u0008(\u0005\u0012\u0004\u0012\u00020\u00060\u0001j\u0002`\u0007B\r\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\u0006\u0010\u0012\u001a\u00020\u0006J\u0010\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0002J\u0013\u0010\u0017\u001a\u00020\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0002H\u0096\u0002J\u0006\u0010\u0018\u001a\u00020\u0006R\t\u0010\u000b\u001a\u00020\u000cX\u0082\u0004R\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000f\u001a\n \u0011*\u0004\u0018\u00010\u00100\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lkotlinx/coroutines/ThreadState;",
        "Lkotlin/Function1;",
        "",
        "Lkotlin/ParameterName;",
        "name",
        "cause",
        "",
        "Lkotlinx/coroutines/CompletionHandler;",
        "job",
        "Lkotlinx/coroutines/Job;",
        "(Lkotlinx/coroutines/Job;)V",
        "_state",
        "Lkotlinx/atomicfu/AtomicInt;",
        "cancelHandle",
        "Lkotlinx/coroutines/DisposableHandle;",
        "targetThread",
        "Ljava/lang/Thread;",
        "kotlin.jvm.PlatformType",
        "clearInterrupt",
        "invalidState",
        "",
        "state",
        "",
        "invoke",
        "setup",
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
.field private static final _state$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field private volatile _state:I
    .annotation runtime Lkotlin/jvm/Volatile;
    .end annotation
.end field

.field private cancelHandle:Lkotlinx/coroutines/DisposableHandle;

.field private final job:Lkotlinx/coroutines/Job;

.field private final targetThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lkotlinx/coroutines/ThreadState;

    const-string v1, "_state"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/ThreadState;->_state$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/Job;)V
    .locals 1
    .param p1, "job"    # Lkotlinx/coroutines/Job;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/ThreadState;->job:Lkotlinx/coroutines/Job;

    .line 97
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lkotlinx/coroutines/ThreadState;->targetThread:Ljava/lang/Thread;

    .line 66
    return-void
.end method

.method private final invalidState(I)Ljava/lang/Void;
    .locals 3
    .param p1, "state"    # I

    new-instance v0, Ljava/lang/IllegalStateException;

    .line 161
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final loop$atomicfu(Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, p3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public final clearInterrupt()V
    .locals 7

    sget-object v0, Lkotlinx/coroutines/ThreadState;->_state$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .local v0, "atomicfu$handler$iv":Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    move-object v1, p0

    .local v1, "this_$iv":Lkotlinx/coroutines/ThreadState;
    const/4 v2, 0x0

    .local v2, "$i$f$loop$atomicfu":I
    :goto_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v3

    .local v3, "state":I
    const/4 v4, 0x0

    .line 121
    .local v4, "$i$a$-loop$atomicfu-ThreadState$clearInterrupt$1":I
    packed-switch v3, :pswitch_data_0

    .line 137
    :pswitch_0
    invoke-direct {p0, v3}, Lkotlinx/coroutines/ThreadState;->invalidState(I)Ljava/lang/Void;

    new-instance v5, Lkotlin/KotlinNothingValueException;

    invoke-direct {v5}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v5

    .line 134
    :pswitch_1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 135
    return-void

    .line 124
    :pswitch_2
    goto :goto_1

    .line 122
    :pswitch_3
    sget-object v5, Lkotlinx/coroutines/ThreadState;->_state$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v6, 0x1

    invoke-virtual {v5, p0, v3, v6}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 123
    iget-object v5, p0, Lkotlinx/coroutines/ThreadState;->cancelHandle:Lkotlinx/coroutines/DisposableHandle;

    if-eqz v5, :cond_0

    invoke-interface {v5}, Lkotlinx/coroutines/DisposableHandle;->dispose()V

    .line 124
    :cond_0
    return-void

    .line 139
    :cond_1
    :goto_1
    nop

    .end local v3    # "state":I
    .end local v4    # "$i$a$-loop$atomicfu-ThreadState$clearInterrupt$1":I
    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 66
    move-object v0, p1

    check-cast v0, Ljava/lang/Throwable;

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/ThreadState;->invoke(Ljava/lang/Throwable;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public invoke(Ljava/lang/Throwable;)V
    .locals 7
    .param p1, "cause"    # Ljava/lang/Throwable;

    sget-object v0, Lkotlinx/coroutines/ThreadState;->_state$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .local v0, "atomicfu$handler$iv":Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    move-object v1, p0

    .local v1, "this_$iv":Lkotlinx/coroutines/ThreadState;
    const/4 v2, 0x0

    .local v2, "$i$f$loop$atomicfu":I
    :goto_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v3

    .local v3, "state":I
    const/4 v4, 0x0

    .line 145
    .local v4, "$i$a$-loop$atomicfu-ThreadState$invoke$1":I
    packed-switch v3, :pswitch_data_0

    .line 156
    invoke-direct {p0, v3}, Lkotlinx/coroutines/ThreadState;->invalidState(I)Ljava/lang/Void;

    new-instance v5, Lkotlin/KotlinNothingValueException;

    invoke-direct {v5}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v5

    .line 155
    :pswitch_0
    return-void

    .line 148
    :pswitch_1
    sget-object v5, Lkotlinx/coroutines/ThreadState;->_state$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v6, 0x2

    invoke-virtual {v5, p0, v3, v6}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 149
    iget-object v5, p0, Lkotlinx/coroutines/ThreadState;->targetThread:Ljava/lang/Thread;

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V

    sget-object v5, Lkotlinx/coroutines/ThreadState;->_state$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 150
    const/4 v6, 0x3

    invoke-virtual {v5, p0, v6}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->set(Ljava/lang/Object;I)V

    .line 151
    return-void

    .line 158
    :cond_0
    nop

    .end local v3    # "state":I
    .end local v4    # "$i$a$-loop$atomicfu-ThreadState$invoke$1":I
    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final setup()V
    .locals 7

    .line 103
    iget-object v0, p0, Lkotlinx/coroutines/ThreadState;->job:Lkotlinx/coroutines/Job;

    const/4 v1, 0x1

    move-object v2, p0

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, v1, v1, v2}, Lkotlinx/coroutines/Job;->invokeOnCompletion(ZZLkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    move-result-object v0

    iput-object v0, p0, Lkotlinx/coroutines/ThreadState;->cancelHandle:Lkotlinx/coroutines/DisposableHandle;

    sget-object v0, Lkotlinx/coroutines/ThreadState;->_state$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .local v0, "atomicfu$handler$iv":Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    move-object v1, p0

    .local v1, "this_$iv":Lkotlinx/coroutines/ThreadState;
    const/4 v2, 0x0

    .local v2, "$i$f$loop$atomicfu":I
    :goto_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v3

    .local v3, "state":I
    const/4 v4, 0x0

    .line 106
    .local v4, "$i$a$-loop$atomicfu-ThreadState$setup$1":I
    packed-switch v3, :pswitch_data_0

    .line 111
    :pswitch_0
    invoke-direct {p0, v3}, Lkotlinx/coroutines/ThreadState;->invalidState(I)Ljava/lang/Void;

    new-instance v5, Lkotlin/KotlinNothingValueException;

    invoke-direct {v5}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v5

    .line 110
    :pswitch_1
    return-void

    .line 108
    :pswitch_2
    sget-object v5, Lkotlinx/coroutines/ThreadState;->_state$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v6, 0x0

    invoke-virtual {v5, p0, v3, v6}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_0

    return-void

    .line 113
    :cond_0
    nop

    .end local v3    # "state":I
    .end local v4    # "$i$a$-loop$atomicfu-ThreadState$setup$1":I
    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
