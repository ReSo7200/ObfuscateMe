.class final Lkotlinx/coroutines/scheduling/LimitingDispatcher;
.super Lkotlinx/coroutines/ExecutorCoroutineDispatcher;
.source "Deprecated.kt"

# interfaces
.implements Lkotlinx/coroutines/scheduling/TaskContext;
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0008\u0002\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B\'\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t\u0012\u0006\u0010\n\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u000bJ\u0008\u0010\u0017\u001a\u00020\u0018H\u0016J\u0008\u0010\u0019\u001a\u00020\u0018H\u0016J\u001c\u0010\u001a\u001a\u00020\u00182\u0006\u0010\u001b\u001a\u00020\u001c2\n\u0010\u001d\u001a\u00060\u0013j\u0002`\u0014H\u0016J\u001c\u0010\u001a\u001a\u00020\u00182\n\u0010\u001d\u001a\u00060\u0013j\u0002`\u00142\u0006\u0010\u001e\u001a\u00020\u001fH\u0002J\u001c\u0010 \u001a\u00020\u00182\u0006\u0010\u001b\u001a\u00020\u001c2\n\u0010\u001d\u001a\u00060\u0013j\u0002`\u0014H\u0016J\u0014\u0010!\u001a\u00020\u00182\n\u0010\"\u001a\u00060\u0013j\u0002`\u0014H\u0016J\u0008\u0010#\u001a\u00020\tH\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000c\u001a\u00020\u00038VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000eR\t\u0010\u000f\u001a\u00020\u0010X\u0082\u0004R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0011\u001a\u000c\u0012\u0008\u0012\u00060\u0013j\u0002`\u00140\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u00020\u0007X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\u00a8\u0006$"
    }
    d2 = {
        "Lkotlinx/coroutines/scheduling/LimitingDispatcher;",
        "Lkotlinx/coroutines/ExecutorCoroutineDispatcher;",
        "Lkotlinx/coroutines/scheduling/TaskContext;",
        "Ljava/util/concurrent/Executor;",
        "dispatcher",
        "Lkotlinx/coroutines/scheduling/ExperimentalCoroutineDispatcher;",
        "parallelism",
        "",
        "name",
        "",
        "taskMode",
        "(Lkotlinx/coroutines/scheduling/ExperimentalCoroutineDispatcher;ILjava/lang/String;I)V",
        "executor",
        "getExecutor",
        "()Ljava/util/concurrent/Executor;",
        "inFlightTasks",
        "Lkotlinx/atomicfu/AtomicInt;",
        "queue",
        "Ljava/util/concurrent/ConcurrentLinkedQueue;",
        "Ljava/lang/Runnable;",
        "Lkotlinx/coroutines/Runnable;",
        "getTaskMode",
        "()I",
        "afterTask",
        "",
        "close",
        "dispatch",
        "context",
        "Lkotlin/coroutines/CoroutineContext;",
        "block",
        "tailDispatch",
        "",
        "dispatchYield",
        "execute",
        "command",
        "toString",
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
.field private static final inFlightTasks$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field private final dispatcher:Lkotlinx/coroutines/scheduling/ExperimentalCoroutineDispatcher;

.field private volatile inFlightTasks:I
    .annotation runtime Lkotlin/jvm/Volatile;
    .end annotation
.end field

.field private final name:Ljava/lang/String;

.field private final parallelism:I

.field private final queue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final taskMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lkotlinx/coroutines/scheduling/LimitingDispatcher;

    const-string v1, "inFlightTasks"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/scheduling/LimitingDispatcher;->inFlightTasks$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/scheduling/ExperimentalCoroutineDispatcher;ILjava/lang/String;I)V
    .locals 1
    .param p1, "dispatcher"    # Lkotlinx/coroutines/scheduling/ExperimentalCoroutineDispatcher;
    .param p2, "parallelism"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "taskMode"    # I

    .line 116
    invoke-direct {p0}, Lkotlinx/coroutines/ExecutorCoroutineDispatcher;-><init>()V

    .line 112
    iput-object p1, p0, Lkotlinx/coroutines/scheduling/LimitingDispatcher;->dispatcher:Lkotlinx/coroutines/scheduling/ExperimentalCoroutineDispatcher;

    .line 113
    iput p2, p0, Lkotlinx/coroutines/scheduling/LimitingDispatcher;->parallelism:I

    .line 114
    iput-object p3, p0, Lkotlinx/coroutines/scheduling/LimitingDispatcher;->name:Ljava/lang/String;

    .line 115
    iput p4, p0, Lkotlinx/coroutines/scheduling/LimitingDispatcher;->taskMode:I

    .line 118
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lkotlinx/coroutines/scheduling/LimitingDispatcher;->queue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 111
    return-void
.end method

.method private final dispatch(Ljava/lang/Runnable;Z)V
    .locals 4
    .param p1, "block"    # Ljava/lang/Runnable;
    .param p2, "tailDispatch"    # Z

    .line 131
    move-object v0, p1

    .line 132
    .local v0, "taskToSchedule":Ljava/lang/Runnable;
    :goto_0
    sget-object v1, Lkotlinx/coroutines/scheduling/LimitingDispatcher;->inFlightTasks$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 134
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->incrementAndGet(Ljava/lang/Object;)I

    move-result v1

    .line 137
    .local v1, "inFlight":I
    iget v2, p0, Lkotlinx/coroutines/scheduling/LimitingDispatcher;->parallelism:I

    if-gt v1, v2, :cond_0

    .line 138
    iget-object v2, p0, Lkotlinx/coroutines/scheduling/LimitingDispatcher;->dispatcher:Lkotlinx/coroutines/scheduling/ExperimentalCoroutineDispatcher;

    move-object v3, p0

    check-cast v3, Lkotlinx/coroutines/scheduling/TaskContext;

    invoke-virtual {v2, v0, v3, p2}, Lkotlinx/coroutines/scheduling/ExperimentalCoroutineDispatcher;->dispatchWithContext$kotlinx_coroutines_core(Ljava/lang/Runnable;Lkotlinx/coroutines/scheduling/TaskContext;Z)V

    .line 139
    return-void

    .line 143
    :cond_0
    iget-object v2, p0, Lkotlinx/coroutines/scheduling/LimitingDispatcher;->queue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 160
    sget-object v2, Lkotlinx/coroutines/scheduling/LimitingDispatcher;->inFlightTasks$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->decrementAndGet(Ljava/lang/Object;)I

    move-result v2

    iget v3, p0, Lkotlinx/coroutines/scheduling/LimitingDispatcher;->parallelism:I

    if-lt v2, v3, :cond_1

    .line 161
    return-void

    .line 164
    :cond_1
    iget-object v2, p0, Lkotlinx/coroutines/scheduling/LimitingDispatcher;->queue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    if-nez v2, :cond_2

    return-void

    :cond_2
    move-object v0, v2

    .end local v1    # "inFlight":I
    goto :goto_0
.end method


# virtual methods
.method public afterTask()V
    .locals 4

    .line 190
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/LimitingDispatcher;->queue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 192
    .local v0, "next":Ljava/lang/Runnable;
    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 193
    iget-object v2, p0, Lkotlinx/coroutines/scheduling/LimitingDispatcher;->dispatcher:Lkotlinx/coroutines/scheduling/ExperimentalCoroutineDispatcher;

    move-object v3, p0

    check-cast v3, Lkotlinx/coroutines/scheduling/TaskContext;

    invoke-virtual {v2, v0, v3, v1}, Lkotlinx/coroutines/scheduling/ExperimentalCoroutineDispatcher;->dispatchWithContext$kotlinx_coroutines_core(Ljava/lang/Runnable;Lkotlinx/coroutines/scheduling/TaskContext;Z)V

    .line 194
    return-void

    :cond_0
    sget-object v2, Lkotlinx/coroutines/scheduling/LimitingDispatcher;->inFlightTasks$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 196
    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->decrementAndGet(Ljava/lang/Object;)I

    .line 209
    iget-object v2, p0, Lkotlinx/coroutines/scheduling/LimitingDispatcher;->queue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    if-nez v2, :cond_1

    return-void

    :cond_1
    move-object v0, v2

    .line 210
    invoke-direct {p0, v0, v1}, Lkotlinx/coroutines/scheduling/LimitingDispatcher;->dispatch(Ljava/lang/Runnable;Z)V

    .line 211
    return-void
.end method

.method public close()V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    .line 126
    const-string v1, "Close cannot be invoked on LimitingBlockingDispatcher"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public dispatch(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "context"    # Lkotlin/coroutines/CoroutineContext;
    .param p2, "block"    # Ljava/lang/Runnable;

    .line 128
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lkotlinx/coroutines/scheduling/LimitingDispatcher;->dispatch(Ljava/lang/Runnable;Z)V

    return-void
.end method

.method public dispatchYield(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "context"    # Lkotlin/coroutines/CoroutineContext;
    .param p2, "block"    # Ljava/lang/Runnable;

    .line 169
    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Lkotlinx/coroutines/scheduling/LimitingDispatcher;->dispatch(Ljava/lang/Runnable;Z)V

    .line 170
    return-void
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "command"    # Ljava/lang/Runnable;

    .line 124
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lkotlinx/coroutines/scheduling/LimitingDispatcher;->dispatch(Ljava/lang/Runnable;Z)V

    return-void
.end method

.method public getExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .line 122
    move-object v0, p0

    check-cast v0, Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public getTaskMode()I
    .locals 1

    .line 115
    iget v0, p0, Lkotlinx/coroutines/scheduling/LimitingDispatcher;->taskMode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 173
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/LimitingDispatcher;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lkotlinx/coroutines/ExecutorCoroutineDispatcher;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[dispatcher = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lkotlinx/coroutines/scheduling/LimitingDispatcher;->dispatcher:Lkotlinx/coroutines/scheduling/ExperimentalCoroutineDispatcher;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method
