.class public final Lkotlinx/coroutines/scheduling/WorkQueue;
.super Ljava/lang/Object;
.source "WorkQueue.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWorkQueue.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WorkQueue.kt\nkotlinx/coroutines/scheduling/WorkQueue\n+ 2 Tasks.kt\nkotlinx/coroutines/scheduling/TasksKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 WorkQueue.kt\nkotlinx/coroutines/scheduling/WorkQueueKt\n*L\n1#1,255:1\n90#2:256\n90#2:257\n90#2:258\n90#2:261\n90#2:262\n1#3:259\n25#4:260\n*S KotlinDebug\n*F\n+ 1 WorkQueue.kt\nkotlinx/coroutines/scheduling/WorkQueue\n*L\n95#1:256\n162#1:257\n185#1:258\n205#1:261\n249#1:262\n205#1:260\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u001a\u0010\u0012\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0013\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u0015J\u0012\u0010\u0016\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0013\u001a\u00020\u0007H\u0002J\u000e\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001aJ\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u0007J\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u0007J\n\u0010\u001d\u001a\u0004\u0018\u00010\u0007H\u0002J\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u0007J\u0010\u0010\u001f\u001a\u00020\u00152\u0006\u0010 \u001a\u00020\u001aH\u0002J\u0012\u0010!\u001a\u0004\u0018\u00010\u00072\u0006\u0010\"\u001a\u00020\u0015H\u0002J\u0016\u0010#\u001a\u0004\u0018\u00010\u00072\n\u0010$\u001a\u00060\tj\u0002`%H\u0002J\u001a\u0010&\u001a\u0004\u0018\u00010\u00072\u0006\u0010\'\u001a\u00020\t2\u0006\u0010\"\u001a\u00020\u0015H\u0002J\"\u0010(\u001a\u00020)2\n\u0010$\u001a\u00060\tj\u0002`%2\u000e\u0010*\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070+J$\u0010,\u001a\u00020)2\n\u0010$\u001a\u00060\tj\u0002`%2\u000e\u0010*\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070+H\u0002J\u000e\u0010-\u001a\u00020\u0018*\u0004\u0018\u00010\u0007H\u0002R\t\u0010\u0003\u001a\u00020\u0004X\u0082\u0004R\u0016\u0010\u0005\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u00020\t8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000bR\t\u0010\u000c\u001a\u00020\u0004X\u0082\u0004R\u0011\u0010\r\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u000eX\u0082\u0004R\t\u0010\u000f\u001a\u00020\u0004X\u0082\u0004R\u0014\u0010\u0010\u001a\u00020\t8@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u000b\u00a8\u0006."
    }
    d2 = {
        "Lkotlinx/coroutines/scheduling/WorkQueue;",
        "",
        "()V",
        "blockingTasksInBuffer",
        "Lkotlinx/atomicfu/AtomicInt;",
        "buffer",
        "Ljava/util/concurrent/atomic/AtomicReferenceArray;",
        "Lkotlinx/coroutines/scheduling/Task;",
        "bufferSize",
        "",
        "getBufferSize",
        "()I",
        "consumerIndex",
        "lastScheduledTask",
        "Lkotlinx/atomicfu/AtomicRef;",
        "producerIndex",
        "size",
        "getSize$kotlinx_coroutines_core",
        "add",
        "task",
        "fair",
        "",
        "addLast",
        "offloadAllWorkTo",
        "",
        "globalQueue",
        "Lkotlinx/coroutines/scheduling/GlobalQueue;",
        "poll",
        "pollBlocking",
        "pollBuffer",
        "pollCpu",
        "pollTo",
        "queue",
        "pollWithExclusiveMode",
        "onlyBlocking",
        "stealWithExclusiveMode",
        "stealingMode",
        "Lkotlinx/coroutines/scheduling/StealingMode;",
        "tryExtractFromTheMiddle",
        "index",
        "trySteal",
        "",
        "stolenTaskRef",
        "Lkotlin/jvm/internal/Ref$ObjectRef;",
        "tryStealLastScheduled",
        "decrementIfBlocking",
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
.field private static final blockingTasksInBuffer$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

.field private static final consumerIndex$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

.field private static final lastScheduledTask$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field private static final producerIndex$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field private volatile blockingTasksInBuffer:I
    .annotation runtime Lkotlin/jvm/Volatile;
    .end annotation
.end field

.field private final buffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "Lkotlinx/coroutines/scheduling/Task;",
            ">;"
        }
    .end annotation
.end field

.field private volatile consumerIndex:I
    .annotation runtime Lkotlin/jvm/Volatile;
    .end annotation
.end field

.field private volatile lastScheduledTask:Ljava/lang/Object;
    .annotation runtime Lkotlin/jvm/Volatile;
    .end annotation
.end field

.field private volatile producerIndex:I
    .annotation runtime Lkotlin/jvm/Volatile;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Ljava/lang/Object;

    const-string v1, "lastScheduledTask"

    const-class v2, Lkotlinx/coroutines/scheduling/WorkQueue;

    invoke-static {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/scheduling/WorkQueue;->lastScheduledTask$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v0, "producerIndex"

    invoke-static {v2, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/scheduling/WorkQueue;->producerIndex$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const-string v0, "consumerIndex"

    invoke-static {v2, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/scheduling/WorkQueue;->consumerIndex$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const-string v0, "blockingTasksInBuffer"

    invoke-static {v2, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/scheduling/WorkQueue;->blockingTasksInBuffer$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    iput-object v0, p0, Lkotlinx/coroutines/scheduling/WorkQueue;->buffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 46
    return-void
.end method

.method public static synthetic add$default(Lkotlinx/coroutines/scheduling/WorkQueue;Lkotlinx/coroutines/scheduling/Task;ZILjava/lang/Object;)Lkotlinx/coroutines/scheduling/Task;
    .locals 0

    .line 83
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/scheduling/WorkQueue;->add(Lkotlinx/coroutines/scheduling/Task;Z)Lkotlinx/coroutines/scheduling/Task;

    move-result-object p0

    return-object p0
.end method

.method private final addLast(Lkotlinx/coroutines/scheduling/Task;)Lkotlinx/coroutines/scheduling/Task;
    .locals 5
    .param p1, "task"    # Lkotlinx/coroutines/scheduling/Task;

    .line 94
    invoke-direct {p0}, Lkotlinx/coroutines/scheduling/WorkQueue;->getBufferSize()I

    move-result v0

    const/16 v1, 0x7f

    if-ne v0, v1, :cond_0

    return-object p1

    .line 95
    :cond_0
    move-object v0, p1

    .local v0, "$this$isBlocking$iv":Lkotlinx/coroutines/scheduling/Task;
    const/4 v2, 0x0

    .line 256
    .local v2, "$i$f$isBlocking":I
    iget-object v3, v0, Lkotlinx/coroutines/scheduling/Task;->taskContext:Lkotlinx/coroutines/scheduling/TaskContext;

    invoke-interface {v3}, Lkotlinx/coroutines/scheduling/TaskContext;->getTaskMode()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 95
    .end local v0    # "$this$isBlocking$iv":Lkotlinx/coroutines/scheduling/Task;
    .end local v2    # "$i$f$isBlocking":I
    :goto_0
    if-eqz v4, :cond_2

    sget-object v0, Lkotlinx/coroutines/scheduling/WorkQueue;->blockingTasksInBuffer$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->incrementAndGet(Ljava/lang/Object;)I

    :cond_2
    sget-object v0, Lkotlinx/coroutines/scheduling/WorkQueue;->producerIndex$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 96
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v0

    and-int/2addr v0, v1

    .line 105
    .local v0, "nextIndex":I
    :goto_1
    iget-object v1, p0, Lkotlinx/coroutines/scheduling/WorkQueue;->buffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 106
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_1

    .line 108
    :cond_3
    iget-object v1, p0, Lkotlinx/coroutines/scheduling/WorkQueue;->buffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v1, v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->lazySet(ILjava/lang/Object;)V

    sget-object v1, Lkotlinx/coroutines/scheduling/WorkQueue;->producerIndex$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 109
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->incrementAndGet(Ljava/lang/Object;)I

    .line 110
    const/4 v1, 0x0

    return-object v1
.end method

.method private final decrementIfBlocking(Lkotlinx/coroutines/scheduling/Task;)V
    .locals 5
    .param p1, "$this$decrementIfBlocking"    # Lkotlinx/coroutines/scheduling/Task;

    .line 249
    if-eqz p1, :cond_3

    move-object v0, p1

    .local v0, "$this$isBlocking$iv":Lkotlinx/coroutines/scheduling/Task;
    const/4 v1, 0x0

    .line 262
    .local v1, "$i$f$isBlocking":I
    iget-object v2, v0, Lkotlinx/coroutines/scheduling/Task;->taskContext:Lkotlinx/coroutines/scheduling/TaskContext;

    invoke-interface {v2}, Lkotlinx/coroutines/scheduling/TaskContext;->getTaskMode()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    move v0, v4

    goto :goto_0

    :cond_0
    move v0, v3

    .line 249
    .end local v0    # "$this$isBlocking$iv":Lkotlinx/coroutines/scheduling/Task;
    .end local v1    # "$i$f$isBlocking":I
    :goto_0
    if-eqz v0, :cond_3

    sget-object v0, Lkotlinx/coroutines/scheduling/WorkQueue;->blockingTasksInBuffer$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 250
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->decrementAndGet(Ljava/lang/Object;)I

    move-result v0

    .line 251
    .local v0, "value":I
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 259
    const/4 v1, 0x0

    .line 251
    .local v1, "$i$a$-assert-WorkQueue$decrementIfBlocking$1":I
    if-ltz v0, :cond_1

    move v3, v4

    .end local v1    # "$i$a$-assert-WorkQueue$decrementIfBlocking$1":I
    :cond_1
    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 253
    .end local v0    # "value":I
    :cond_3
    :goto_1
    return-void
.end method

.method private final getBufferSize()I
    .locals 2

    sget-object v0, Lkotlinx/coroutines/scheduling/WorkQueue;->producerIndex$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 63
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v0

    sget-object v1, Lkotlinx/coroutines/scheduling/WorkQueue;->consumerIndex$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private final pollBuffer()Lkotlinx/coroutines/scheduling/Task;
    .locals 5

    .line 235
    nop

    :cond_0
    :goto_0
    sget-object v0, Lkotlinx/coroutines/scheduling/WorkQueue;->consumerIndex$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 236
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v0

    .line 237
    .local v0, "tailLocal":I
    sget-object v1, Lkotlinx/coroutines/scheduling/WorkQueue;->producerIndex$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v1

    sub-int v1, v0, v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return-object v2

    .line 238
    :cond_1
    and-int/lit8 v1, v0, 0x7f

    .line 239
    .local v1, "index":I
    sget-object v3, Lkotlinx/coroutines/scheduling/WorkQueue;->consumerIndex$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, p0, v0, v4}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 241
    iget-object v3, p0, Lkotlinx/coroutines/scheduling/WorkQueue;->buffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->getAndSet(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlinx/coroutines/scheduling/Task;

    if-nez v2, :cond_2

    goto :goto_0

    .line 242
    .local v2, "value":Lkotlinx/coroutines/scheduling/Task;
    :cond_2
    invoke-direct {p0, v2}, Lkotlinx/coroutines/scheduling/WorkQueue;->decrementIfBlocking(Lkotlinx/coroutines/scheduling/Task;)V

    .line 243
    return-object v2
.end method

.method private final pollTo(Lkotlinx/coroutines/scheduling/GlobalQueue;)Z
    .locals 2
    .param p1, "queue"    # Lkotlinx/coroutines/scheduling/GlobalQueue;

    .line 229
    invoke-direct {p0}, Lkotlinx/coroutines/scheduling/WorkQueue;->pollBuffer()Lkotlinx/coroutines/scheduling/Task;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 230
    .local v0, "task":Lkotlinx/coroutines/scheduling/Task;
    :cond_0
    invoke-virtual {p1, v0}, Lkotlinx/coroutines/scheduling/GlobalQueue;->addLast(Ljava/lang/Object;)Z

    .line 231
    const/4 v1, 0x1

    return v1
.end method

.method private final pollWithExclusiveMode(Z)Lkotlinx/coroutines/scheduling/Task;
    .locals 6
    .param p1, "onlyBlocking"    # Z

    .line 160
    nop

    :cond_0
    nop

    .line 161
    sget-object v0, Lkotlinx/coroutines/scheduling/WorkQueue;->lastScheduledTask$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/scheduling/Task;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    goto :goto_1

    .line 162
    .local v0, "lastScheduled":Lkotlinx/coroutines/scheduling/Task;
    :cond_1
    move-object v2, v0

    .local v2, "$this$isBlocking$iv":Lkotlinx/coroutines/scheduling/Task;
    const/4 v3, 0x0

    .line 257
    .local v3, "$i$f$isBlocking":I
    iget-object v4, v2, Lkotlinx/coroutines/scheduling/Task;->taskContext:Lkotlinx/coroutines/scheduling/TaskContext;

    invoke-interface {v4}, Lkotlinx/coroutines/scheduling/TaskContext;->getTaskMode()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    .line 162
    .end local v2    # "$this$isBlocking$iv":Lkotlinx/coroutines/scheduling/Task;
    .end local v3    # "$i$f$isBlocking":I
    :goto_0
    if-ne v5, p1, :cond_3

    .line 163
    sget-object v2, Lkotlinx/coroutines/scheduling/WorkQueue;->lastScheduledTask$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v2, p0, v0, v1}, Landroidx/concurrent/futures/AbstractResolvableFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 164
    return-object v0

    .end local v0    # "lastScheduled":Lkotlinx/coroutines/scheduling/Task;
    :cond_3
    :goto_1
    sget-object v0, Lkotlinx/coroutines/scheduling/WorkQueue;->consumerIndex$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 169
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v0

    .local v0, "start":I
    sget-object v2, Lkotlinx/coroutines/scheduling/WorkQueue;->producerIndex$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 170
    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v2

    .line 172
    .local v2, "end":I
    :cond_4
    if-eq v0, v2, :cond_6

    .line 173
    if-eqz p1, :cond_5

    sget-object v3, Lkotlinx/coroutines/scheduling/WorkQueue;->blockingTasksInBuffer$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v3

    if-nez v3, :cond_5

    return-object v1

    .line 174
    :cond_5
    add-int/lit8 v2, v2, -0x1

    invoke-direct {p0, v2, p1}, Lkotlinx/coroutines/scheduling/WorkQueue;->tryExtractFromTheMiddle(IZ)Lkotlinx/coroutines/scheduling/Task;

    move-result-object v3

    .line 175
    .local v3, "task":Lkotlinx/coroutines/scheduling/Task;
    if-eqz v3, :cond_4

    .line 176
    return-object v3

    .line 179
    .end local v3    # "task":Lkotlinx/coroutines/scheduling/Task;
    :cond_6
    return-object v1
.end method

.method private final stealWithExclusiveMode(I)Lkotlinx/coroutines/scheduling/Task;
    .locals 5
    .param p1, "stealingMode"    # I

    sget-object v0, Lkotlinx/coroutines/scheduling/WorkQueue;->consumerIndex$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 139
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v0

    .local v0, "start":I
    sget-object v1, Lkotlinx/coroutines/scheduling/WorkQueue;->producerIndex$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 140
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v1

    .line 141
    .local v1, "end":I
    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 143
    .local v2, "onlyBlocking":Z
    :goto_0
    const/4 v3, 0x0

    if-eq v0, v1, :cond_3

    .line 144
    if-eqz v2, :cond_1

    sget-object v4, Lkotlinx/coroutines/scheduling/WorkQueue;->blockingTasksInBuffer$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v4, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v4

    if-nez v4, :cond_1

    return-object v3

    .line 145
    :cond_1
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "start":I
    .local v3, "start":I
    invoke-direct {p0, v0, v2}, Lkotlinx/coroutines/scheduling/WorkQueue;->tryExtractFromTheMiddle(IZ)Lkotlinx/coroutines/scheduling/Task;

    move-result-object v0

    if-nez v0, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    return-object v0

    .line 148
    .end local v3    # "start":I
    .restart local v0    # "start":I
    :cond_3
    return-object v3
.end method

.method private final tryExtractFromTheMiddle(IZ)Lkotlinx/coroutines/scheduling/Task;
    .locals 7
    .param p1, "index"    # I
    .param p2, "onlyBlocking"    # Z

    .line 183
    and-int/lit8 v0, p1, 0x7f

    .line 184
    .local v0, "arrayIndex":I
    iget-object v1, p0, Lkotlinx/coroutines/scheduling/WorkQueue;->buffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/scheduling/Task;

    .line 185
    .local v1, "value":Lkotlinx/coroutines/scheduling/Task;
    const/4 v2, 0x0

    if-eqz v1, :cond_2

    move-object v3, v1

    .local v3, "$this$isBlocking$iv":Lkotlinx/coroutines/scheduling/Task;
    const/4 v4, 0x0

    .line 258
    .local v4, "$i$f$isBlocking":I
    iget-object v5, v3, Lkotlinx/coroutines/scheduling/Task;->taskContext:Lkotlinx/coroutines/scheduling/TaskContext;

    invoke-interface {v5}, Lkotlinx/coroutines/scheduling/TaskContext;->getTaskMode()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    .line 185
    .end local v3    # "$this$isBlocking$iv":Lkotlinx/coroutines/scheduling/Task;
    .end local v4    # "$i$f$isBlocking":I
    :goto_0
    if-ne v6, p2, :cond_2

    iget-object v3, p0, Lkotlinx/coroutines/scheduling/WorkQueue;->buffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-static {v3, v0, v1, v2}, Lkotlinx/coroutines/channels/ChannelSegment$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 186
    if-eqz p2, :cond_1

    sget-object v2, Lkotlinx/coroutines/scheduling/WorkQueue;->blockingTasksInBuffer$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->decrementAndGet(Ljava/lang/Object;)I

    .line 187
    :cond_1
    return-object v1

    .line 189
    :cond_2
    return-object v2
.end method

.method private final tryStealLastScheduled(ILkotlin/jvm/internal/Ref$ObjectRef;)J
    .locals 9
    .param p1, "stealingMode"    # I
    .param p2, "stolenTaskRef"    # Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lkotlinx/coroutines/scheduling/Task;",
            ">;)J"
        }
    .end annotation

    .line 203
    nop

    :goto_0
    nop

    .line 204
    sget-object v0, Lkotlinx/coroutines/scheduling/WorkQueue;->lastScheduledTask$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/scheduling/Task;

    const-wide/16 v1, -0x2

    if-nez v0, :cond_0

    return-wide v1

    .line 205
    .local v0, "lastScheduled":Lkotlinx/coroutines/scheduling/Task;
    :cond_0
    move-object v3, v0

    .local v3, "$this$maskForStealingMode$iv":Lkotlinx/coroutines/scheduling/Task;
    const/4 v4, 0x0

    .line 260
    .local v4, "$i$f$getMaskForStealingMode":I
    move-object v5, v3

    .local v5, "$this$isBlocking$iv$iv":Lkotlinx/coroutines/scheduling/Task;
    const/4 v6, 0x0

    .line 261
    .local v6, "$i$f$isBlocking":I
    iget-object v7, v5, Lkotlinx/coroutines/scheduling/Task;->taskContext:Lkotlinx/coroutines/scheduling/TaskContext;

    invoke-interface {v7}, Lkotlinx/coroutines/scheduling/TaskContext;->getTaskMode()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    move v7, v8

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    .line 260
    .end local v5    # "$this$isBlocking$iv$iv":Lkotlinx/coroutines/scheduling/Task;
    .end local v6    # "$i$f$isBlocking":I
    :goto_1
    if-eqz v7, :cond_2

    goto :goto_2

    :cond_2
    const/4 v8, 0x2

    .line 205
    .end local v3    # "$this$maskForStealingMode$iv":Lkotlinx/coroutines/scheduling/Task;
    .end local v4    # "$i$f$getMaskForStealingMode":I
    :goto_2
    and-int v3, v8, p1

    if-nez v3, :cond_3

    .line 206
    return-wide v1

    .line 210
    :cond_3
    sget-object v1, Lkotlinx/coroutines/scheduling/TasksKt;->schedulerTimeSource:Lkotlinx/coroutines/scheduling/SchedulerTimeSource;

    invoke-virtual {v1}, Lkotlinx/coroutines/scheduling/SchedulerTimeSource;->nanoTime()J

    move-result-wide v1

    .line 211
    .local v1, "time":J
    iget-wide v3, v0, Lkotlinx/coroutines/scheduling/Task;->submissionTime:J

    sub-long v3, v1, v3

    .line 212
    .local v3, "staleness":J
    sget-wide v5, Lkotlinx/coroutines/scheduling/TasksKt;->WORK_STEALING_TIME_RESOLUTION_NS:J

    cmp-long v5, v3, v5

    if-gez v5, :cond_4

    .line 213
    sget-wide v5, Lkotlinx/coroutines/scheduling/TasksKt;->WORK_STEALING_TIME_RESOLUTION_NS:J

    sub-long/2addr v5, v3

    return-wide v5

    .line 220
    :cond_4
    sget-object v5, Lkotlinx/coroutines/scheduling/WorkQueue;->lastScheduledTask$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v6, 0x0

    invoke-static {v5, p0, v0, v6}, Landroidx/concurrent/futures/AbstractResolvableFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 221
    iput-object v0, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 222
    const-wide/16 v5, -0x1

    return-wide v5

    .line 224
    :cond_5
    goto :goto_0
.end method


# virtual methods
.method public final add(Lkotlinx/coroutines/scheduling/Task;Z)Lkotlinx/coroutines/scheduling/Task;
    .locals 2
    .param p1, "task"    # Lkotlinx/coroutines/scheduling/Task;
    .param p2, "fair"    # Z

    .line 84
    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Lkotlinx/coroutines/scheduling/WorkQueue;->addLast(Lkotlinx/coroutines/scheduling/Task;)Lkotlinx/coroutines/scheduling/Task;

    move-result-object v0

    return-object v0

    .line 85
    :cond_0
    sget-object v0, Lkotlinx/coroutines/scheduling/WorkQueue;->lastScheduledTask$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/scheduling/Task;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    .line 86
    .local v0, "previous":Lkotlinx/coroutines/scheduling/Task;
    :cond_1
    invoke-direct {p0, v0}, Lkotlinx/coroutines/scheduling/WorkQueue;->addLast(Lkotlinx/coroutines/scheduling/Task;)Lkotlinx/coroutines/scheduling/Task;

    move-result-object v1

    return-object v1
.end method

.method public final getSize$kotlinx_coroutines_core()I
    .locals 1

    .line 64
    sget-object v0, Lkotlinx/coroutines/scheduling/WorkQueue;->lastScheduledTask$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lkotlinx/coroutines/scheduling/WorkQueue;->getBufferSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lkotlinx/coroutines/scheduling/WorkQueue;->getBufferSize()I

    move-result v0

    :goto_0
    return v0
.end method

.method public final offloadAllWorkTo(Lkotlinx/coroutines/scheduling/GlobalQueue;)V
    .locals 2
    .param p1, "globalQueue"    # Lkotlinx/coroutines/scheduling/GlobalQueue;

    .line 193
    sget-object v0, Lkotlinx/coroutines/scheduling/WorkQueue;->lastScheduledTask$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/scheduling/Task;

    if-eqz v0, :cond_0

    .line 259
    .local v0, "it":Lkotlinx/coroutines/scheduling/Task;
    const/4 v1, 0x0

    .line 193
    .local v1, "$i$a$-let-WorkQueue$offloadAllWorkTo$1":I
    invoke-virtual {p1, v0}, Lkotlinx/coroutines/scheduling/GlobalQueue;->addLast(Ljava/lang/Object;)Z

    .line 194
    .end local v0    # "it":Lkotlinx/coroutines/scheduling/Task;
    .end local v1    # "$i$a$-let-WorkQueue$offloadAllWorkTo$1":I
    :cond_0
    invoke-direct {p0, p1}, Lkotlinx/coroutines/scheduling/WorkQueue;->pollTo(Lkotlinx/coroutines/scheduling/GlobalQueue;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 197
    return-void
.end method

.method public final poll()Lkotlinx/coroutines/scheduling/Task;
    .locals 2

    .line 77
    sget-object v0, Lkotlinx/coroutines/scheduling/WorkQueue;->lastScheduledTask$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/scheduling/Task;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lkotlinx/coroutines/scheduling/WorkQueue;->pollBuffer()Lkotlinx/coroutines/scheduling/Task;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final pollBlocking()Lkotlinx/coroutines/scheduling/Task;
    .locals 1

    .line 153
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlinx/coroutines/scheduling/WorkQueue;->pollWithExclusiveMode(Z)Lkotlinx/coroutines/scheduling/Task;

    move-result-object v0

    return-object v0
.end method

.method public final pollCpu()Lkotlinx/coroutines/scheduling/Task;
    .locals 1

    .line 157
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlinx/coroutines/scheduling/WorkQueue;->pollWithExclusiveMode(Z)Lkotlinx/coroutines/scheduling/Task;

    move-result-object v0

    return-object v0
.end method

.method public final trySteal(ILkotlin/jvm/internal/Ref$ObjectRef;)J
    .locals 3
    .param p1, "stealingMode"    # I
    .param p2, "stolenTaskRef"    # Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lkotlinx/coroutines/scheduling/Task;",
            ">;)J"
        }
    .end annotation

    .line 125
    nop

    .line 126
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lkotlinx/coroutines/scheduling/WorkQueue;->pollBuffer()Lkotlinx/coroutines/scheduling/Task;

    move-result-object v0

    goto :goto_0

    .line 127
    :cond_0
    invoke-direct {p0, p1}, Lkotlinx/coroutines/scheduling/WorkQueue;->stealWithExclusiveMode(I)Lkotlinx/coroutines/scheduling/Task;

    move-result-object v0

    .line 125
    :goto_0
    nop

    .line 130
    .local v0, "task":Lkotlinx/coroutines/scheduling/Task;
    if-eqz v0, :cond_1

    .line 131
    iput-object v0, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 132
    const-wide/16 v1, -0x1

    return-wide v1

    .line 134
    :cond_1
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/scheduling/WorkQueue;->tryStealLastScheduled(ILkotlin/jvm/internal/Ref$ObjectRef;)J

    move-result-wide v1

    return-wide v1
.end method
