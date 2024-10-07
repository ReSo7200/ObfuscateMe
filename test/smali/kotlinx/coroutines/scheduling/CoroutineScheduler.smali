.class public final Lkotlinx/coroutines/scheduling/CoroutineScheduler;
.super Ljava/lang/Object;
.source "CoroutineScheduler.kt"

# interfaces
.implements Ljava/util/concurrent/Executor;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/scheduling/CoroutineScheduler$Companion;,
        Lkotlinx/coroutines/scheduling/CoroutineScheduler$WhenMappings;,
        Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;,
        Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCoroutineScheduler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoroutineScheduler.kt\nkotlinx/coroutines/scheduling/CoroutineScheduler\n+ 2 Tasks.kt\nkotlinx/coroutines/scheduling/TasksKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Synchronized.common.kt\nkotlinx/coroutines/internal/Synchronized_commonKt\n+ 5 Synchronized.kt\nkotlinx/coroutines/internal/SynchronizedKt\n+ 6 Tasks.kt\nkotlinx/coroutines/scheduling/Task\n+ 7 CoroutineScheduler.kt\nkotlinx/coroutines/scheduling/CoroutineScheduler$Worker\n*L\n1#1,1033:1\n285#1:1036\n283#1:1037\n283#1:1038\n285#1:1039\n280#1:1045\n281#1,5:1046\n291#1:1052\n283#1:1053\n284#1:1054\n283#1:1060\n284#1:1061\n280#1:1062\n288#1:1063\n283#1:1064\n283#1:1067\n284#1:1068\n285#1:1069\n90#2:1034\n90#2:1051\n1#3:1035\n28#4,4:1040\n28#4,4:1055\n20#5:1044\n20#5:1059\n87#6:1065\n610#7:1066\n*S KotlinDebug\n*F\n+ 1 CoroutineScheduler.kt\nkotlinx/coroutines/scheduling/CoroutineScheduler\n*L\n281#1:1036\n288#1:1037\n289#1:1038\n298#1:1039\n347#1:1045\n375#1:1046,5\n398#1:1052\n445#1:1053\n446#1:1054\n482#1:1060\n483#1:1061\n489#1:1062\n498#1:1063\n498#1:1064\n576#1:1067\n577#1:1068\n578#1:1069\n119#1:1034\n395#1:1051\n347#1:1040,4\n478#1:1055,4\n347#1:1044\n478#1:1059\n515#1:1065\n522#1:1066\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008!\u0008\u0000\u0018\u0000 I2\u00020\u00012\u00020\u0002:\u0003IJKB)\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\u0010\u0010\u001e\u001a\u00020\u00182\u0006\u0010\u001f\u001a\u00020 H\u0002J\u0011\u0010\r\u001a\u00020\u00042\u0006\u0010!\u001a\u00020\u0007H\u0086\u0008J\u0011\u0010\"\u001a\u00020\u00042\u0006\u0010!\u001a\u00020\u0007H\u0082\u0008J\u0008\u0010#\u001a\u00020$H\u0016J\u0008\u0010%\u001a\u00020\u0004H\u0002J\u001a\u0010&\u001a\u00020 2\n\u0010\'\u001a\u00060(j\u0002`)2\u0006\u0010*\u001a\u00020+J\u0011\u0010\u0012\u001a\u00020\u00042\u0006\u0010!\u001a\u00020\u0007H\u0082\u0008J\u000e\u0010,\u001a\u0008\u0018\u00010\u001dR\u00020\u0000H\u0002J\t\u0010-\u001a\u00020$H\u0082\u0008J\t\u0010.\u001a\u00020\u0004H\u0082\u0008J&\u0010/\u001a\u00020$2\n\u0010\'\u001a\u00060(j\u0002`)2\u0008\u0008\u0002\u0010*\u001a\u00020+2\u0008\u0008\u0002\u00100\u001a\u00020\u0018J\u0014\u00101\u001a\u00020$2\n\u00102\u001a\u00060(j\u0002`)H\u0016J\t\u00103\u001a\u00020\u0007H\u0082\u0008J\t\u00104\u001a\u00020\u0004H\u0082\u0008J\u0014\u00105\u001a\u00020\u00042\n\u00106\u001a\u00060\u001dR\u00020\u0000H\u0002J\u000e\u00107\u001a\u0008\u0018\u00010\u001dR\u00020\u0000H\u0002J\u0012\u00108\u001a\u00020\u00182\n\u00106\u001a\u00060\u001dR\u00020\u0000J\"\u00109\u001a\u00020$2\n\u00106\u001a\u00060\u001dR\u00020\u00002\u0006\u0010:\u001a\u00020\u00042\u0006\u0010;\u001a\u00020\u0004J\t\u0010<\u001a\u00020\u0007H\u0082\u0008J\u000e\u0010=\u001a\u00020$2\u0006\u0010\u001f\u001a\u00020 J\u000e\u0010>\u001a\u00020$2\u0006\u0010?\u001a\u00020\u0007J\u0018\u0010@\u001a\u00020$2\u0006\u0010A\u001a\u00020\u00072\u0006\u0010B\u001a\u00020\u0018H\u0002J\u0006\u0010C\u001a\u00020$J\u0008\u0010D\u001a\u00020\tH\u0016J\t\u0010E\u001a\u00020\u0018H\u0082\u0008J\u0012\u0010F\u001a\u00020\u00182\u0008\u0008\u0002\u0010!\u001a\u00020\u0007H\u0002J\u0008\u0010G\u001a\u00020\u0018H\u0002J$\u0010H\u001a\u0004\u0018\u00010 *\u0008\u0018\u00010\u001dR\u00020\u00002\u0006\u0010\u001f\u001a\u00020 2\u0006\u00100\u001a\u00020\u0018H\u0002R\t\u0010\u000b\u001a\u00020\u000cX\u0082\u0004R\u0015\u0010\r\u001a\u00020\u00048\u00c2\u0002X\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000fR\t\u0010\u0010\u001a\u00020\u0011X\u0082\u0004R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0015\u0010\u0012\u001a\u00020\u00048\u00c2\u0002X\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u000fR\u0010\u0010\u0014\u001a\u00020\u00158\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0016\u001a\u00020\u00158\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0017\u001a\u00020\u00188F\u00a2\u0006\u0006\u001a\u0004\u0008\u0017\u0010\u0019R\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\t\u0010\u001a\u001a\u00020\u0011X\u0082\u0004R\u0010\u0010\u0008\u001a\u00020\t8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u001b\u001a\u000c\u0012\u0008\u0012\u00060\u001dR\u00020\u00000\u001c8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006L"
    }
    d2 = {
        "Lkotlinx/coroutines/scheduling/CoroutineScheduler;",
        "Ljava/util/concurrent/Executor;",
        "Ljava/io/Closeable;",
        "corePoolSize",
        "",
        "maxPoolSize",
        "idleWorkerKeepAliveNs",
        "",
        "schedulerName",
        "",
        "(IIJLjava/lang/String;)V",
        "_isTerminated",
        "Lkotlinx/atomicfu/AtomicBoolean;",
        "availableCpuPermits",
        "getAvailableCpuPermits",
        "()I",
        "controlState",
        "Lkotlinx/atomicfu/AtomicLong;",
        "createdWorkers",
        "getCreatedWorkers",
        "globalBlockingQueue",
        "Lkotlinx/coroutines/scheduling/GlobalQueue;",
        "globalCpuQueue",
        "isTerminated",
        "",
        "()Z",
        "parkedWorkersStack",
        "workers",
        "Lkotlinx/coroutines/internal/ResizableAtomicArray;",
        "Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;",
        "addToGlobalQueue",
        "task",
        "Lkotlinx/coroutines/scheduling/Task;",
        "state",
        "blockingTasks",
        "close",
        "",
        "createNewWorker",
        "createTask",
        "block",
        "Ljava/lang/Runnable;",
        "Lkotlinx/coroutines/Runnable;",
        "taskContext",
        "Lkotlinx/coroutines/scheduling/TaskContext;",
        "currentWorker",
        "decrementBlockingTasks",
        "decrementCreatedWorkers",
        "dispatch",
        "tailDispatch",
        "execute",
        "command",
        "incrementBlockingTasks",
        "incrementCreatedWorkers",
        "parkedWorkersStackNextIndex",
        "worker",
        "parkedWorkersStackPop",
        "parkedWorkersStackPush",
        "parkedWorkersStackTopUpdate",
        "oldIndex",
        "newIndex",
        "releaseCpuPermit",
        "runSafely",
        "shutdown",
        "timeout",
        "signalBlockingWork",
        "stateSnapshot",
        "skipUnpark",
        "signalCpuWork",
        "toString",
        "tryAcquireCpuPermit",
        "tryCreateWorker",
        "tryUnpark",
        "submitToLocalQueue",
        "Companion",
        "Worker",
        "WorkerState",
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
.field private static final BLOCKING_MASK:J = 0x3ffffe00000L

.field private static final BLOCKING_SHIFT:I = 0x15

.field private static final CLAIMED:I = 0x0

.field private static final CPU_PERMITS_MASK:J = 0x7ffffc0000000000L

.field private static final CPU_PERMITS_SHIFT:I = 0x2a

.field private static final CREATED_MASK:J = 0x1fffffL

.field public static final Companion:Lkotlinx/coroutines/scheduling/CoroutineScheduler$Companion;

.field public static final MAX_SUPPORTED_POOL_SIZE:I = 0x1ffffe

.field public static final MIN_SUPPORTED_POOL_SIZE:I = 0x1

.field public static final NOT_IN_STACK:Lkotlinx/coroutines/internal/Symbol;

.field private static final PARKED:I = -0x1

.field private static final PARKED_INDEX_MASK:J = 0x1fffffL

.field private static final PARKED_VERSION_INC:J = 0x200000L

.field private static final PARKED_VERSION_MASK:J = -0x200000L

.field private static final TERMINATED:I = 0x1

.field private static final _isTerminated$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

.field private static final controlState$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

.field private static final parkedWorkersStack$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;


# instance fields
.field private volatile _isTerminated:I
    .annotation runtime Lkotlin/jvm/Volatile;
    .end annotation
.end field

.field private volatile controlState:J
    .annotation runtime Lkotlin/jvm/Volatile;
    .end annotation
.end field

.field public final corePoolSize:I

.field public final globalBlockingQueue:Lkotlinx/coroutines/scheduling/GlobalQueue;

.field public final globalCpuQueue:Lkotlinx/coroutines/scheduling/GlobalQueue;

.field public final idleWorkerKeepAliveNs:J

.field public final maxPoolSize:I

.field private volatile parkedWorkersStack:J
    .annotation runtime Lkotlin/jvm/Volatile;
    .end annotation
.end field

.field public final schedulerName:Ljava/lang/String;

.field public final workers:Lkotlinx/coroutines/internal/ResizableAtomicArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/internal/ResizableAtomicArray<",
            "Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->Companion:Lkotlinx/coroutines/scheduling/CoroutineScheduler$Companion;

    const-string v0, "parkedWorkersStack"

    const-class v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->parkedWorkersStack$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-string v0, "controlState"

    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->controlState$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-string v0, "_isTerminated"

    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->_isTerminated$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 313
    new-instance v0, Lkotlinx/coroutines/internal/Symbol;

    const-string v1, "NOT_IN_STACK"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/Symbol;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->NOT_IN_STACK:Lkotlinx/coroutines/internal/Symbol;

    return-void
.end method

.method public constructor <init>(IIJLjava/lang/String;)V
    .locals 7
    .param p1, "corePoolSize"    # I
    .param p2, "maxPoolSize"    # I
    .param p3, "idleWorkerKeepAliveNs"    # J
    .param p5, "schedulerName"    # Ljava/lang/String;

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->corePoolSize:I

    .line 94
    iput p2, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->maxPoolSize:I

    .line 95
    iput-wide p3, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->idleWorkerKeepAliveNs:J

    .line 96
    iput-object p5, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->schedulerName:Ljava/lang/String;

    .line 98
    nop

    .line 99
    iget v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->corePoolSize:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lt v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_7

    .line 102
    iget v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->maxPoolSize:I

    iget v3, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->corePoolSize:I

    if-lt v0, v3, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    const-string v3, "Max pool size "

    if-eqz v0, :cond_6

    .line 105
    iget v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->maxPoolSize:I

    const v4, 0x1ffffe

    if-gt v0, v4, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    if-eqz v0, :cond_5

    .line 108
    iget-wide v3, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->idleWorkerKeepAliveNs:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-lez v0, :cond_3

    move v0, v2

    goto :goto_3

    :cond_3
    move v0, v1

    :goto_3
    if-eqz v0, :cond_4

    .line 111
    nop

    .line 114
    new-instance v0, Lkotlinx/coroutines/scheduling/GlobalQueue;

    invoke-direct {v0}, Lkotlinx/coroutines/scheduling/GlobalQueue;-><init>()V

    iput-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->globalCpuQueue:Lkotlinx/coroutines/scheduling/GlobalQueue;

    .line 116
    new-instance v0, Lkotlinx/coroutines/scheduling/GlobalQueue;

    invoke-direct {v0}, Lkotlinx/coroutines/scheduling/GlobalQueue;-><init>()V

    iput-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->globalBlockingQueue:Lkotlinx/coroutines/scheduling/GlobalQueue;

    .line 269
    new-instance v0, Lkotlinx/coroutines/internal/ResizableAtomicArray;

    iget v3, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->corePoolSize:I

    add-int/2addr v3, v2

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v0, v3}, Lkotlinx/coroutines/internal/ResizableAtomicArray;-><init>(I)V

    iput-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->workers:Lkotlinx/coroutines/internal/ResizableAtomicArray;

    .line 278
    iget v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->corePoolSize:I

    int-to-long v2, v0

    const/16 v0, 0x2a

    shl-long/2addr v2, v0

    iput-wide v2, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->controlState:J

    .line 307
    iput v1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->_isTerminated:I

    .line 92
    return-void

    .line 108
    :cond_4
    const/4 v0, 0x0

    .line 109
    .local v0, "$i$a$-require-CoroutineScheduler$4":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Idle worker keep alive time "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->idleWorkerKeepAliveNs:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must be positive"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 108
    .end local v0    # "$i$a$-require-CoroutineScheduler$4":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 105
    :cond_5
    const/4 v0, 0x0

    .line 106
    .local v0, "$i$a$-require-CoroutineScheduler$3":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->maxPoolSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " should not exceed maximal supported number of threads 2097150"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 105
    .end local v0    # "$i$a$-require-CoroutineScheduler$3":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 102
    :cond_6
    const/4 v0, 0x0

    .line 103
    .local v0, "$i$a$-require-CoroutineScheduler$2":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->maxPoolSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " should be greater than or equals to core pool size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->corePoolSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 102
    .end local v0    # "$i$a$-require-CoroutineScheduler$2":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 99
    :cond_7
    const/4 v0, 0x0

    .line 100
    .local v0, "$i$a$-require-CoroutineScheduler$1":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Core pool size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->corePoolSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " should be at least 1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 99
    .end local v0    # "$i$a$-require-CoroutineScheduler$1":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public synthetic constructor <init>(IIJLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    .line 92
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_0

    .line 95
    sget-wide p3, Lkotlinx/coroutines/scheduling/TasksKt;->IDLE_WORKER_KEEP_ALIVE_NS:J

    move-wide v3, p3

    goto :goto_0

    .line 92
    :cond_0
    move-wide v3, p3

    :goto_0
    and-int/lit8 p3, p6, 0x8

    if-eqz p3, :cond_1

    .line 96
    sget-object p5, Lkotlinx/coroutines/scheduling/TasksKt;->DEFAULT_SCHEDULER_NAME:Ljava/lang/String;

    move-object v5, p5

    goto :goto_1

    .line 92
    :cond_1
    move-object v5, p5

    :goto_1
    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;-><init>(IIJLjava/lang/String;)V

    .line 1017
    return-void
.end method

.method public static final synthetic access$getControlState$FU$p()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .locals 1

    .line 91
    sget-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->controlState$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    return-object v0
.end method

.method private final addToGlobalQueue(Lkotlinx/coroutines/scheduling/Task;)Z
    .locals 4
    .param p1, "task"    # Lkotlinx/coroutines/scheduling/Task;

    .line 119
    move-object v0, p1

    .local v0, "$this$isBlocking$iv":Lkotlinx/coroutines/scheduling/Task;
    const/4 v1, 0x0

    .line 1034
    .local v1, "$i$f$isBlocking":I
    iget-object v2, v0, Lkotlinx/coroutines/scheduling/Task;->taskContext:Lkotlinx/coroutines/scheduling/TaskContext;

    invoke-interface {v2}, Lkotlinx/coroutines/scheduling/TaskContext;->getTaskMode()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 119
    .end local v0    # "$this$isBlocking$iv":Lkotlinx/coroutines/scheduling/Task;
    .end local v1    # "$i$f$isBlocking":I
    :goto_0
    if-eqz v3, :cond_1

    .line 120
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->globalBlockingQueue:Lkotlinx/coroutines/scheduling/GlobalQueue;

    invoke-virtual {v0, p1}, Lkotlinx/coroutines/scheduling/GlobalQueue;->addLast(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1

    .line 122
    :cond_1
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->globalCpuQueue:Lkotlinx/coroutines/scheduling/GlobalQueue;

    invoke-virtual {v0, p1}, Lkotlinx/coroutines/scheduling/GlobalQueue;->addLast(Ljava/lang/Object;)Z

    move-result v0

    .line 119
    :goto_1
    return v0
.end method

.method private final blockingTasks(J)I
    .locals 4
    .param p1, "state"    # J

    const/4 v0, 0x0

    .line 284
    .local v0, "$i$f$blockingTasks":I
    const-wide v1, 0x3ffffe00000L

    and-long/2addr v1, p1

    const/16 v3, 0x15

    shr-long/2addr v1, v3

    long-to-int v1, v1

    return v1
.end method

.method private final createNewWorker()I
    .locals 22

    .line 477
    move-object/from16 v1, p0

    const/4 v2, 0x0

    .line 478
    .local v2, "worker":Ljava/lang/Object;
    iget-object v3, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->workers:Lkotlinx/coroutines/internal/ResizableAtomicArray;

    .local v3, "lock$iv":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 1055
    .local v4, "$i$f$synchronized":I
    nop

    .line 1058
    const/4 v5, 0x0

    .line 1059
    .local v5, "$i$f$synchronizedImpl":I
    monitor-enter v3

    const/4 v0, 0x0

    .line 480
    .local v0, "$i$a$-synchronized-CoroutineScheduler$createNewWorker$1":I
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->isTerminated()Z

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v6, :cond_0

    .end local v0    # "$i$a$-synchronized-CoroutineScheduler$createNewWorker$1":I
    .end local v3    # "lock$iv":Ljava/lang/Object;
    .end local v4    # "$i$f$synchronized":I
    .end local v5    # "$i$f$synchronizedImpl":I
    monitor-exit v3

    const/4 v0, -0x1

    return v0

    .restart local v0    # "$i$a$-synchronized-CoroutineScheduler$createNewWorker$1":I
    .restart local v3    # "lock$iv":Ljava/lang/Object;
    .restart local v4    # "$i$f$synchronized":I
    .restart local v5    # "$i$f$synchronizedImpl":I
    :cond_0
    :try_start_1
    sget-object v6, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->controlState$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 481
    invoke-virtual {v6, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v6

    .line 482
    .local v6, "state":J
    move-object/from16 v8, p0

    .local v8, "this_$iv":Lkotlinx/coroutines/scheduling/CoroutineScheduler;
    const/4 v9, 0x0

    .line 1060
    .local v9, "$i$f$createdWorkers":I
    const-wide/32 v10, 0x1fffff

    and-long v12, v6, v10

    long-to-int v8, v12

    .line 482
    .end local v8    # "this_$iv":Lkotlinx/coroutines/scheduling/CoroutineScheduler;
    .end local v9    # "$i$f$createdWorkers":I
    nop

    .line 483
    .local v8, "created":I
    move-object/from16 v9, p0

    .local v9, "this_$iv":Lkotlinx/coroutines/scheduling/CoroutineScheduler;
    const/4 v12, 0x0

    .line 1061
    .local v12, "$i$f$blockingTasks":I
    const-wide v13, 0x3ffffe00000L

    and-long/2addr v13, v6

    const/16 v15, 0x15

    shr-long/2addr v13, v15

    long-to-int v9, v13

    .line 483
    .end local v9    # "this_$iv":Lkotlinx/coroutines/scheduling/CoroutineScheduler;
    .end local v12    # "$i$f$blockingTasks":I
    nop

    .line 484
    .local v9, "blocking":I
    sub-int v12, v8, v9

    const/4 v13, 0x0

    invoke-static {v12, v13}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v12

    .line 486
    .local v12, "cpuWorkers":I
    iget v14, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->corePoolSize:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-lt v12, v14, :cond_1

    .end local v0    # "$i$a$-synchronized-CoroutineScheduler$createNewWorker$1":I
    .end local v3    # "lock$iv":Ljava/lang/Object;
    .end local v4    # "$i$f$synchronized":I
    .end local v5    # "$i$f$synchronizedImpl":I
    .end local v6    # "state":J
    .end local v8    # "created":I
    .end local v9    # "blocking":I
    .end local v12    # "cpuWorkers":I
    monitor-exit v3

    return v13

    .line 487
    .restart local v0    # "$i$a$-synchronized-CoroutineScheduler$createNewWorker$1":I
    .restart local v3    # "lock$iv":Ljava/lang/Object;
    .restart local v4    # "$i$f$synchronized":I
    .restart local v5    # "$i$f$synchronizedImpl":I
    .restart local v6    # "state":J
    .restart local v8    # "created":I
    .restart local v9    # "blocking":I
    .restart local v12    # "cpuWorkers":I
    :cond_1
    :try_start_2
    iget v14, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->maxPoolSize:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-lt v8, v14, :cond_2

    .end local v0    # "$i$a$-synchronized-CoroutineScheduler$createNewWorker$1":I
    .end local v3    # "lock$iv":Ljava/lang/Object;
    .end local v4    # "$i$f$synchronized":I
    .end local v5    # "$i$f$synchronizedImpl":I
    .end local v6    # "state":J
    .end local v8    # "created":I
    .end local v9    # "blocking":I
    .end local v12    # "cpuWorkers":I
    monitor-exit v3

    return v13

    .line 489
    .restart local v0    # "$i$a$-synchronized-CoroutineScheduler$createNewWorker$1":I
    .restart local v3    # "lock$iv":Ljava/lang/Object;
    .restart local v4    # "$i$f$synchronized":I
    .restart local v5    # "$i$f$synchronizedImpl":I
    .restart local v6    # "state":J
    .restart local v8    # "created":I
    .restart local v9    # "blocking":I
    .restart local v12    # "cpuWorkers":I
    :cond_2
    move-object/from16 v14, p0

    .local v14, "this_$iv":Lkotlinx/coroutines/scheduling/CoroutineScheduler;
    const/4 v15, 0x0

    .local v15, "$i$f$getCreatedWorkers":I
    :try_start_3
    invoke-static {}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->access$getControlState$FU$p()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v13

    .line 1062
    invoke-virtual {v13, v14}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v17
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move v13, v4

    move/from16 v19, v5

    .end local v4    # "$i$f$synchronized":I
    .end local v5    # "$i$f$synchronizedImpl":I
    .local v13, "$i$f$synchronized":I
    .local v19, "$i$f$synchronizedImpl":I
    and-long v4, v17, v10

    long-to-int v4, v4

    .line 489
    .end local v14    # "this_$iv":Lkotlinx/coroutines/scheduling/CoroutineScheduler;
    .end local v15    # "$i$f$getCreatedWorkers":I
    const/4 v5, 0x1

    add-int/2addr v4, v5

    .line 490
    .local v4, "newIndex":I
    if-lez v4, :cond_3

    :try_start_4
    iget-object v14, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->workers:Lkotlinx/coroutines/internal/ResizableAtomicArray;

    invoke-virtual {v14, v4}, Lkotlinx/coroutines/internal/ResizableAtomicArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    if-nez v14, :cond_3

    move v14, v5

    goto :goto_0

    .line 1059
    .end local v0    # "$i$a$-synchronized-CoroutineScheduler$createNewWorker$1":I
    .end local v4    # "newIndex":I
    .end local v6    # "state":J
    .end local v8    # "created":I
    .end local v9    # "blocking":I
    .end local v12    # "cpuWorkers":I
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 490
    .restart local v0    # "$i$a$-synchronized-CoroutineScheduler$createNewWorker$1":I
    .restart local v4    # "newIndex":I
    .restart local v6    # "state":J
    .restart local v8    # "created":I
    .restart local v9    # "blocking":I
    .restart local v12    # "cpuWorkers":I
    :cond_3
    const/4 v14, 0x0

    :goto_0
    if-eqz v14, :cond_6

    .line 496
    new-instance v14, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;

    invoke-direct {v14, v1, v4}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;-><init>(Lkotlinx/coroutines/scheduling/CoroutineScheduler;I)V

    move-object v2, v14

    .line 497
    iget-object v14, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->workers:Lkotlinx/coroutines/internal/ResizableAtomicArray;

    invoke-virtual {v14, v4, v2}, Lkotlinx/coroutines/internal/ResizableAtomicArray;->setSynchronized(ILjava/lang/Object;)V

    .line 498
    move-object/from16 v14, p0

    .restart local v14    # "this_$iv":Lkotlinx/coroutines/scheduling/CoroutineScheduler;
    const/4 v15, 0x0

    .line 1063
    .local v15, "$i$f$incrementCreatedWorkers":I
    sget-object v5, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->controlState$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v5, v14}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->incrementAndGet(Ljava/lang/Object;)J

    move-result-wide v20
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .local v20, "state$iv$iv":J
    move-object v5, v14

    .local v5, "this_$iv$iv":Lkotlinx/coroutines/scheduling/CoroutineScheduler;
    const/16 v18, 0x0

    .line 1064
    .local v18, "$i$f$createdWorkers":I
    and-long v10, v20, v10

    long-to-int v5, v10

    .line 1063
    .end local v5    # "this_$iv$iv":Lkotlinx/coroutines/scheduling/CoroutineScheduler;
    .end local v18    # "$i$f$createdWorkers":I
    .end local v20    # "state$iv$iv":J
    nop

    .end local v14    # "this_$iv":Lkotlinx/coroutines/scheduling/CoroutineScheduler;
    .end local v15    # "$i$f$incrementCreatedWorkers":I
    if-ne v4, v5, :cond_4

    const/16 v16, 0x1

    goto :goto_1

    :cond_4
    const/16 v16, 0x0

    .line 498
    :goto_1
    if-eqz v16, :cond_5

    .line 499
    const/4 v5, 0x1

    add-int/2addr v12, v5

    .line 1059
    .end local v0    # "$i$a$-synchronized-CoroutineScheduler$createNewWorker$1":I
    .end local v4    # "newIndex":I
    .end local v6    # "state":J
    .end local v8    # "created":I
    .end local v9    # "blocking":I
    .end local v12    # "cpuWorkers":I
    monitor-exit v3

    .line 1058
    .end local v19    # "$i$f$synchronizedImpl":I
    nop

    .line 500
    .end local v3    # "lock$iv":Ljava/lang/Object;
    .end local v13    # "$i$f$synchronized":I
    move v0, v12

    .line 1035
    .local v0, "it":I
    const/4 v3, 0x0

    .line 500
    .local v3, "$i$a$-also-CoroutineScheduler$createNewWorker$2":I
    invoke-virtual {v2}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->start()V

    .line 478
    .end local v0    # "it":I
    .end local v3    # "$i$a$-also-CoroutineScheduler$createNewWorker$2":I
    return v12

    .line 498
    .local v0, "$i$a$-synchronized-CoroutineScheduler$createNewWorker$1":I
    .local v3, "lock$iv":Ljava/lang/Object;
    .restart local v4    # "newIndex":I
    .restart local v6    # "state":J
    .restart local v8    # "created":I
    .restart local v9    # "blocking":I
    .restart local v12    # "cpuWorkers":I
    .restart local v13    # "$i$f$synchronized":I
    .restart local v19    # "$i$f$synchronizedImpl":I
    :cond_5
    :try_start_5
    const-string v5, "Failed requirement."

    new-instance v10, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v10, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v2    # "worker":Ljava/lang/Object;
    .end local v3    # "lock$iv":Ljava/lang/Object;
    .end local v13    # "$i$f$synchronized":I
    .end local v19    # "$i$f$synchronizedImpl":I
    throw v10

    .line 490
    .restart local v2    # "worker":Ljava/lang/Object;
    .restart local v3    # "lock$iv":Ljava/lang/Object;
    .restart local v13    # "$i$f$synchronized":I
    .restart local v19    # "$i$f$synchronizedImpl":I
    :cond_6
    const-string v5, "Failed requirement."

    new-instance v10, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v10, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v2    # "worker":Ljava/lang/Object;
    .end local v3    # "lock$iv":Ljava/lang/Object;
    .end local v13    # "$i$f$synchronized":I
    .end local v19    # "$i$f$synchronizedImpl":I
    throw v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1059
    .end local v0    # "$i$a$-synchronized-CoroutineScheduler$createNewWorker$1":I
    .end local v6    # "state":J
    .end local v8    # "created":I
    .end local v9    # "blocking":I
    .end local v12    # "cpuWorkers":I
    .restart local v2    # "worker":Ljava/lang/Object;
    .restart local v3    # "lock$iv":Ljava/lang/Object;
    .local v4, "$i$f$synchronized":I
    .local v5, "$i$f$synchronizedImpl":I
    :catchall_1
    move-exception v0

    move v13, v4

    move/from16 v19, v5

    .end local v4    # "$i$f$synchronized":I
    .end local v5    # "$i$f$synchronizedImpl":I
    .restart local v13    # "$i$f$synchronized":I
    .restart local v19    # "$i$f$synchronizedImpl":I
    :goto_2
    monitor-exit v3

    throw v0
.end method

.method private final createdWorkers(J)I
    .locals 3
    .param p1, "state"    # J

    const/4 v0, 0x0

    .line 283
    .local v0, "$i$f$createdWorkers":I
    const-wide/32 v1, 0x1fffff

    and-long/2addr v1, p1

    long-to-int v1, v1

    return v1
.end method

.method private final currentWorker()Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;
    .locals 6

    .line 522
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    instance-of v1, v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_1

    move-object v1, v0

    .line 1035
    .local v1, "it":Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;
    const/4 v3, 0x0

    .line 522
    .local v3, "$i$a$-takeIf-CoroutineScheduler$currentWorker$1":I
    move-object v4, v1

    .local v4, "this_$iv":Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;
    const/4 v5, 0x0

    .line 1066
    .local v5, "$i$f$getScheduler":I
    invoke-static {v4}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->access$getThis$0$p(Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;)Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    move-result-object v4

    .line 522
    .end local v4    # "this_$iv":Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;
    .end local v5    # "$i$f$getScheduler":I
    invoke-static {v4, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .end local v1    # "it":Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;
    .end local v3    # "$i$a$-takeIf-CoroutineScheduler$currentWorker$1":I
    if-eqz v1, :cond_1

    move-object v2, v0

    :cond_1
    return-object v2
.end method

.method private final decrementBlockingTasks()V
    .locals 4

    const/4 v0, 0x0

    .local v0, "$i$f$decrementBlockingTasks":I
    invoke-static {}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->access$getControlState$FU$p()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v1

    .line 294
    const-wide/32 v2, -0x200000

    invoke-virtual {v1, p0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->addAndGet(Ljava/lang/Object;J)J

    .line 295
    return-void
.end method

.method private final decrementCreatedWorkers()I
    .locals 7

    const/4 v0, 0x0

    .line 289
    .local v0, "$i$f$decrementCreatedWorkers":I
    invoke-static {}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->access$getControlState$FU$p()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndDecrement(Ljava/lang/Object;)J

    move-result-wide v1

    .local v1, "state$iv":J
    move-object v3, p0

    .local v3, "this_$iv":Lkotlinx/coroutines/scheduling/CoroutineScheduler;
    const/4 v4, 0x0

    .line 1038
    .local v4, "$i$f$createdWorkers":I
    const-wide/32 v5, 0x1fffff

    and-long/2addr v5, v1

    long-to-int v1, v5

    .line 289
    .end local v1    # "state$iv":J
    .end local v3    # "this_$iv":Lkotlinx/coroutines/scheduling/CoroutineScheduler;
    .end local v4    # "$i$f$createdWorkers":I
    return v1
.end method

.method public static synthetic dispatch$default(Lkotlinx/coroutines/scheduling/CoroutineScheduler;Ljava/lang/Runnable;Lkotlinx/coroutines/scheduling/TaskContext;ZILjava/lang/Object;)V
    .locals 0

    .line 392
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    sget-object p2, Lkotlinx/coroutines/scheduling/TasksKt;->NonBlockingContext:Lkotlinx/coroutines/scheduling/TaskContext;

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->dispatch(Ljava/lang/Runnable;Lkotlinx/coroutines/scheduling/TaskContext;Z)V

    return-void
.end method

.method private final getAvailableCpuPermits()I
    .locals 8

    const/4 v0, 0x0

    .line 281
    .local v0, "$i$f$getAvailableCpuPermits":I
    sget-object v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->controlState$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v1

    .local v1, "state$iv":J
    move-object v3, p0

    .local v3, "this_$iv":Lkotlinx/coroutines/scheduling/CoroutineScheduler;
    const/4 v4, 0x0

    .line 1036
    .local v4, "$i$f$availableCpuPermits":I
    const-wide v5, 0x7ffffc0000000000L

    and-long/2addr v5, v1

    const/16 v7, 0x2a

    shr-long/2addr v5, v7

    long-to-int v1, v5

    .line 281
    .end local v1    # "state$iv":J
    .end local v3    # "this_$iv":Lkotlinx/coroutines/scheduling/CoroutineScheduler;
    .end local v4    # "$i$f$availableCpuPermits":I
    return v1
.end method

.method private final getCreatedWorkers()I
    .locals 5

    const/4 v0, 0x0

    .local v0, "$i$f$getCreatedWorkers":I
    invoke-static {}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->access$getControlState$FU$p()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v1

    .line 280
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v1

    const-wide/32 v3, 0x1fffff

    and-long/2addr v1, v3

    long-to-int v1, v1

    return v1
.end method

.method private final incrementBlockingTasks()J
    .locals 4

    const/4 v0, 0x0

    .local v0, "$i$f$incrementBlockingTasks":I
    sget-object v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->controlState$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 291
    const-wide/32 v2, 0x200000

    invoke-virtual {v1, p0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->addAndGet(Ljava/lang/Object;J)J

    move-result-wide v1

    return-wide v1
.end method

.method private final incrementCreatedWorkers()I
    .locals 7

    const/4 v0, 0x0

    .line 288
    .local v0, "$i$f$incrementCreatedWorkers":I
    sget-object v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->controlState$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->incrementAndGet(Ljava/lang/Object;)J

    move-result-wide v1

    .local v1, "state$iv":J
    move-object v3, p0

    .local v3, "this_$iv":Lkotlinx/coroutines/scheduling/CoroutineScheduler;
    const/4 v4, 0x0

    .line 1037
    .local v4, "$i$f$createdWorkers":I
    const-wide/32 v5, 0x1fffff

    and-long/2addr v5, v1

    long-to-int v1, v5

    .line 288
    .end local v1    # "state$iv":J
    .end local v3    # "this_$iv":Lkotlinx/coroutines/scheduling/CoroutineScheduler;
    .end local v4    # "$i$f$createdWorkers":I
    return v1
.end method

.method private final loop$atomicfu(Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Long;",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, p3}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p2, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private final parkedWorkersStackNextIndex(Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;)I
    .locals 3
    .param p1, "worker"    # Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;

    .line 237
    invoke-virtual {p1}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->getNextParkedWorker()Ljava/lang/Object;

    move-result-object v0

    .line 238
    .local v0, "next":Ljava/lang/Object;
    :goto_0
    nop

    .line 239
    nop

    .line 240
    sget-object v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->NOT_IN_STACK:Lkotlinx/coroutines/internal/Symbol;

    if-ne v0, v1, :cond_0

    const/4 v1, -0x1

    return v1

    .line 241
    :cond_0
    if-nez v0, :cond_1

    const/4 v1, 0x0

    return v1

    .line 243
    :cond_1
    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;

    .line 244
    .local v1, "nextWorker":Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;
    invoke-virtual {v1}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->getIndexInArray()I

    move-result v2

    .line 245
    .local v2, "updIndex":I
    if-eqz v2, :cond_2

    return v2

    .line 247
    :cond_2
    invoke-virtual {v1}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->getNextParkedWorker()Ljava/lang/Object;

    move-result-object v0

    .end local v1    # "nextWorker":Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;
    .end local v2    # "updIndex":I
    goto :goto_0
.end method

.method private final parkedWorkersStackPop()Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;
    .locals 20

    move-object/from16 v6, p0

    sget-object v7, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->parkedWorkersStack$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .local v7, "atomicfu$handler$iv":Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    move-object/from16 v8, p0

    .local v8, "this_$iv":Lkotlinx/coroutines/scheduling/CoroutineScheduler;
    const/4 v9, 0x0

    .local v9, "$i$f$loop$atomicfu":I
    :goto_0
    invoke-virtual {v7, v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v10

    .local v10, "top":J
    const/4 v12, 0x0

    .line 206
    .local v12, "$i$a$-loop$atomicfu-CoroutineScheduler$parkedWorkersStackPop$1":I
    const-wide/32 v0, 0x1fffff

    and-long/2addr v0, v10

    long-to-int v13, v0

    .line 207
    .local v13, "index":I
    iget-object v0, v6, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->workers:Lkotlinx/coroutines/internal/ResizableAtomicArray;

    invoke-virtual {v0, v13}, Lkotlinx/coroutines/internal/ResizableAtomicArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    move-object v14, v0

    .line 208
    .local v14, "worker":Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;
    const-wide/32 v0, 0x200000

    add-long/2addr v0, v10

    const-wide/32 v2, -0x200000

    and-long v15, v0, v2

    .line 209
    .local v15, "updVersion":J
    invoke-direct {v6, v14}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->parkedWorkersStackNextIndex(Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;)I

    move-result v4

    .line 210
    .local v4, "updIndex":I
    if-ltz v4, :cond_2

    .line 216
    sget-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->parkedWorkersStack$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    int-to-long v1, v4

    or-long v17, v15, v1

    move-object/from16 v1, p0

    move-wide v2, v10

    move/from16 v19, v4

    .end local v4    # "updIndex":I
    .local v19, "updIndex":I
    move-wide/from16 v4, v17

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 223
    sget-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->NOT_IN_STACK:Lkotlinx/coroutines/internal/Symbol;

    invoke-virtual {v14, v0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->setNextParkedWorker(Ljava/lang/Object;)V

    .line 224
    return-object v14

    .line 226
    :cond_1
    nop

    .end local v10    # "top":J
    .end local v12    # "$i$a$-loop$atomicfu-CoroutineScheduler$parkedWorkersStackPop$1":I
    .end local v13    # "index":I
    .end local v14    # "worker":Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;
    .end local v15    # "updVersion":J
    .end local v19    # "updIndex":I
    goto :goto_0

    .line 210
    .restart local v4    # "updIndex":I
    .restart local v10    # "top":J
    .restart local v12    # "$i$a$-loop$atomicfu-CoroutineScheduler$parkedWorkersStackPop$1":I
    .restart local v13    # "index":I
    .restart local v14    # "worker":Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;
    .restart local v15    # "updVersion":J
    :cond_2
    move/from16 v19, v4

    .end local v4    # "updIndex":I
    .restart local v19    # "updIndex":I
    goto :goto_0
.end method

.method private final releaseCpuPermit()J
    .locals 4

    const/4 v0, 0x0

    .local v0, "$i$f$releaseCpuPermit":I
    invoke-static {}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->access$getControlState$FU$p()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v1

    .line 304
    const-wide v2, 0x40000000000L

    invoke-virtual {v1, p0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->addAndGet(Ljava/lang/Object;J)J

    move-result-wide v1

    return-wide v1
.end method

.method private final signalBlockingWork(JZ)V
    .locals 1
    .param p1, "stateSnapshot"    # J
    .param p3, "skipUnpark"    # Z

    .line 431
    if-eqz p3, :cond_0

    return-void

    .line 432
    :cond_0
    invoke-direct {p0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->tryUnpark()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 434
    :cond_1
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->tryCreateWorker(J)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 435
    :cond_2
    invoke-direct {p0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->tryUnpark()Z

    .line 436
    return-void
.end method

.method private final submitToLocalQueue(Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;Lkotlinx/coroutines/scheduling/Task;Z)Lkotlinx/coroutines/scheduling/Task;
    .locals 3
    .param p1, "$this$submitToLocalQueue"    # Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;
    .param p2, "task"    # Lkotlinx/coroutines/scheduling/Task;
    .param p3, "tailDispatch"    # Z

    .line 508
    if-nez p1, :cond_0

    return-object p2

    .line 513
    :cond_0
    iget-object v0, p1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->state:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    sget-object v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->TERMINATED:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    if-ne v0, v1, :cond_1

    return-object p2

    .line 515
    :cond_1
    move-object v0, p2

    .local v0, "this_$iv":Lkotlinx/coroutines/scheduling/Task;
    const/4 v1, 0x0

    .line 1065
    .local v1, "$i$f$getMode":I
    iget-object v2, v0, Lkotlinx/coroutines/scheduling/Task;->taskContext:Lkotlinx/coroutines/scheduling/TaskContext;

    invoke-interface {v2}, Lkotlinx/coroutines/scheduling/TaskContext;->getTaskMode()I

    move-result v0

    .line 515
    .end local v0    # "this_$iv":Lkotlinx/coroutines/scheduling/Task;
    .end local v1    # "$i$f$getMode":I
    if-nez v0, :cond_2

    iget-object v0, p1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->state:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    sget-object v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->BLOCKING:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    if-ne v0, v1, :cond_2

    .line 516
    return-object p2

    .line 518
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->mayHaveLocalTasks:Z

    .line 519
    iget-object v0, p1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->localQueue:Lkotlinx/coroutines/scheduling/WorkQueue;

    invoke-virtual {v0, p2, p3}, Lkotlinx/coroutines/scheduling/WorkQueue;->add(Lkotlinx/coroutines/scheduling/Task;Z)Lkotlinx/coroutines/scheduling/Task;

    move-result-object v0

    return-object v0
.end method

.method private final tryAcquireCpuPermit()Z
    .locals 17

    const/4 v0, 0x0

    .local v0, "$i$f$tryAcquireCpuPermit":I
    invoke-static {}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->access$getControlState$FU$p()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v1

    .local v1, "atomicfu$handler$iv":Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    move-object/from16 v2, p0

    .local v2, "this_$iv":Lkotlinx/coroutines/scheduling/CoroutineScheduler;
    const/4 v3, 0x0

    move-object/from16 v10, p0

    .local v3, "$i$f$loop$atomicfu":I
    :goto_0
    invoke-virtual {v1, v10}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v11

    .local v11, "state":J
    const/4 v13, 0x0

    .line 298
    .local v13, "$i$a$-loop$atomicfu-CoroutineScheduler$tryAcquireCpuPermit$1":I
    move-object/from16 v4, p0

    .local v4, "this_$iv":Lkotlinx/coroutines/scheduling/CoroutineScheduler;
    const/4 v5, 0x0

    .line 1039
    .local v5, "$i$f$availableCpuPermits":I
    const-wide v6, 0x7ffffc0000000000L

    and-long/2addr v6, v11

    const/16 v8, 0x2a

    shr-long/2addr v6, v8

    long-to-int v4, v6

    .line 298
    .end local v4    # "this_$iv":Lkotlinx/coroutines/scheduling/CoroutineScheduler;
    .end local v5    # "$i$f$availableCpuPermits":I
    move v14, v4

    .line 299
    .local v14, "available":I
    if-nez v14, :cond_0

    const/4 v4, 0x0

    return v4

    .line 300
    :cond_0
    const-wide v4, 0x40000000000L

    sub-long v15, v11, v4

    .line 301
    .local v15, "update":J
    invoke-static {}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->access$getControlState$FU$p()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v4

    move-object/from16 v5, p0

    move-wide v6, v11

    move-wide v8, v15

    invoke-virtual/range {v4 .. v9}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    return v4

    .line 302
    :cond_1
    nop

    .end local v11    # "state":J
    .end local v13    # "$i$a$-loop$atomicfu-CoroutineScheduler$tryAcquireCpuPermit$1":I
    .end local v14    # "available":I
    .end local v15    # "update":J
    goto :goto_0
.end method

.method private final tryCreateWorker(J)Z
    .locals 7
    .param p1, "state"    # J

    .line 445
    move-object v0, p0

    .local v0, "this_$iv":Lkotlinx/coroutines/scheduling/CoroutineScheduler;
    const/4 v1, 0x0

    .line 1053
    .local v1, "$i$f$createdWorkers":I
    const-wide/32 v2, 0x1fffff

    and-long/2addr v2, p1

    long-to-int v0, v2

    .line 445
    .end local v0    # "this_$iv":Lkotlinx/coroutines/scheduling/CoroutineScheduler;
    .end local v1    # "$i$f$createdWorkers":I
    nop

    .line 446
    .local v0, "created":I
    move-object v1, p0

    .local v1, "this_$iv":Lkotlinx/coroutines/scheduling/CoroutineScheduler;
    const/4 v2, 0x0

    .line 1054
    .local v2, "$i$f$blockingTasks":I
    const-wide v3, 0x3ffffe00000L

    and-long/2addr v3, p1

    const/16 v5, 0x15

    shr-long/2addr v3, v5

    long-to-int v1, v3

    .line 446
    .end local v1    # "this_$iv":Lkotlinx/coroutines/scheduling/CoroutineScheduler;
    .end local v2    # "$i$f$blockingTasks":I
    nop

    .line 447
    .local v1, "blocking":I
    sub-int v2, v0, v1

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v2

    .line 452
    .local v2, "cpuWorkers":I
    iget v4, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->corePoolSize:I

    if-ge v2, v4, :cond_1

    .line 453
    invoke-direct {p0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->createNewWorker()I

    move-result v4

    .line 456
    .local v4, "newCpuWorkers":I
    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    iget v6, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->corePoolSize:I

    if-le v6, v5, :cond_0

    invoke-direct {p0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->createNewWorker()I

    .line 457
    :cond_0
    if-lez v4, :cond_1

    return v5

    .line 459
    .end local v4    # "newCpuWorkers":I
    :cond_1
    return v3
.end method

.method static synthetic tryCreateWorker$default(Lkotlinx/coroutines/scheduling/CoroutineScheduler;JILjava/lang/Object;)Z
    .locals 0

    .line 444
    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    sget-object p1, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->controlState$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide p1

    :cond_0
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->tryCreateWorker(J)Z

    move-result p0

    return p0
.end method

.method private final tryUnpark()Z
    .locals 4

    .line 463
    nop

    :cond_0
    nop

    .line 464
    invoke-direct {p0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->parkedWorkersStackPop()Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 465
    .local v0, "worker":Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;
    :cond_1
    invoke-static {}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->getWorkerCtl$FU()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, v0, v3, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 466
    move-object v1, v0

    check-cast v1, Ljava/lang/Thread;

    invoke-static {v1}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 467
    const/4 v1, 0x1

    return v1
.end method


# virtual methods
.method public final availableCpuPermits(J)I
    .locals 4
    .param p1, "state"    # J

    const/4 v0, 0x0

    .line 285
    .local v0, "$i$f$availableCpuPermits":I
    const-wide v1, 0x7ffffc0000000000L

    and-long/2addr v1, p1

    const/16 v3, 0x2a

    shr-long/2addr v1, v3

    long-to-int v1, v1

    return v1
.end method

.method public close()V
    .locals 2

    .line 338
    const-wide/16 v0, 0x2710

    invoke-virtual {p0, v0, v1}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->shutdown(J)V

    return-void
.end method

.method public final createTask(Ljava/lang/Runnable;Lkotlinx/coroutines/scheduling/TaskContext;)Lkotlinx/coroutines/scheduling/Task;
    .locals 3
    .param p1, "block"    # Ljava/lang/Runnable;
    .param p2, "taskContext"    # Lkotlinx/coroutines/scheduling/TaskContext;

    .line 420
    sget-object v0, Lkotlinx/coroutines/scheduling/TasksKt;->schedulerTimeSource:Lkotlinx/coroutines/scheduling/SchedulerTimeSource;

    invoke-virtual {v0}, Lkotlinx/coroutines/scheduling/SchedulerTimeSource;->nanoTime()J

    move-result-wide v0

    .line 421
    .local v0, "nanoTime":J
    instance-of v2, p1, Lkotlinx/coroutines/scheduling/Task;

    if-eqz v2, :cond_0

    .line 422
    move-object v2, p1

    check-cast v2, Lkotlinx/coroutines/scheduling/Task;

    iput-wide v0, v2, Lkotlinx/coroutines/scheduling/Task;->submissionTime:J

    .line 423
    move-object v2, p1

    check-cast v2, Lkotlinx/coroutines/scheduling/Task;

    iput-object p2, v2, Lkotlinx/coroutines/scheduling/Task;->taskContext:Lkotlinx/coroutines/scheduling/TaskContext;

    .line 424
    move-object v2, p1

    check-cast v2, Lkotlinx/coroutines/scheduling/Task;

    return-object v2

    .line 426
    :cond_0
    new-instance v2, Lkotlinx/coroutines/scheduling/TaskImpl;

    invoke-direct {v2, p1, v0, v1, p2}, Lkotlinx/coroutines/scheduling/TaskImpl;-><init>(Ljava/lang/Runnable;JLkotlinx/coroutines/scheduling/TaskContext;)V

    check-cast v2, Lkotlinx/coroutines/scheduling/Task;

    return-object v2
.end method

.method public final dispatch(Ljava/lang/Runnable;Lkotlinx/coroutines/scheduling/TaskContext;Z)V
    .locals 9
    .param p1, "block"    # Ljava/lang/Runnable;
    .param p2, "taskContext"    # Lkotlinx/coroutines/scheduling/TaskContext;
    .param p3, "tailDispatch"    # Z

    .line 393
    invoke-static {}, Lkotlinx/coroutines/AbstractTimeSourceKt;->getTimeSource()Lkotlinx/coroutines/AbstractTimeSource;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lkotlinx/coroutines/AbstractTimeSource;->trackTask()V

    .line 394
    :cond_0
    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->createTask(Ljava/lang/Runnable;Lkotlinx/coroutines/scheduling/TaskContext;)Lkotlinx/coroutines/scheduling/Task;

    move-result-object v0

    .line 395
    .local v0, "task":Lkotlinx/coroutines/scheduling/Task;
    move-object v1, v0

    .local v1, "$this$isBlocking$iv":Lkotlinx/coroutines/scheduling/Task;
    const/4 v2, 0x0

    .line 1051
    .local v2, "$i$f$isBlocking":I
    iget-object v3, v1, Lkotlinx/coroutines/scheduling/Task;->taskContext:Lkotlinx/coroutines/scheduling/TaskContext;

    invoke-interface {v3}, Lkotlinx/coroutines/scheduling/TaskContext;->getTaskMode()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v3, v5, :cond_1

    move v1, v5

    goto :goto_0

    :cond_1
    move v1, v4

    .line 395
    .end local v1    # "$this$isBlocking$iv":Lkotlinx/coroutines/scheduling/Task;
    .end local v2    # "$i$f$isBlocking":I
    :goto_0
    nop

    .line 398
    .local v1, "isBlockingTask":Z
    if-eqz v1, :cond_2

    move-object v2, p0

    .local v2, "this_$iv":Lkotlinx/coroutines/scheduling/CoroutineScheduler;
    const/4 v3, 0x0

    .local v3, "$i$f$incrementBlockingTasks":I
    sget-object v6, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->controlState$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 1052
    const-wide/32 v7, 0x200000

    invoke-virtual {v6, v2, v7, v8}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->addAndGet(Ljava/lang/Object;J)J

    move-result-wide v2

    .end local v2    # "this_$iv":Lkotlinx/coroutines/scheduling/CoroutineScheduler;
    .end local v3    # "$i$f$incrementBlockingTasks":I
    goto :goto_1

    .line 398
    :cond_2
    const-wide/16 v2, 0x0

    :goto_1
    nop

    .line 400
    .local v2, "stateSnapshot":J
    invoke-direct {p0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->currentWorker()Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;

    move-result-object v6

    .line 401
    .local v6, "currentWorker":Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;
    invoke-direct {p0, v6, v0, p3}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->submitToLocalQueue(Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;Lkotlinx/coroutines/scheduling/Task;Z)Lkotlinx/coroutines/scheduling/Task;

    move-result-object v7

    .line 402
    .local v7, "notAdded":Lkotlinx/coroutines/scheduling/Task;
    if-eqz v7, :cond_4

    .line 403
    invoke-direct {p0, v7}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->addToGlobalQueue(Lkotlinx/coroutines/scheduling/Task;)Z

    move-result v8

    if-eqz v8, :cond_3

    goto :goto_2

    .line 405
    :cond_3
    new-instance v4, Ljava/util/concurrent/RejectedExecutionException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->schedulerName:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " was terminated"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 408
    :cond_4
    :goto_2
    if-eqz p3, :cond_5

    if-eqz v6, :cond_5

    move v4, v5

    .line 410
    .local v4, "skipUnpark":Z
    :cond_5
    if-eqz v1, :cond_6

    .line 412
    invoke-direct {p0, v2, v3, v4}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->signalBlockingWork(JZ)V

    goto :goto_3

    .line 414
    :cond_6
    if-eqz v4, :cond_7

    return-void

    .line 415
    :cond_7
    invoke-virtual {p0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->signalCpuWork()V

    .line 417
    :goto_3
    return-void
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 6
    .param p1, "command"    # Ljava/lang/Runnable;

    .line 336
    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->dispatch$default(Lkotlinx/coroutines/scheduling/CoroutineScheduler;Ljava/lang/Runnable;Lkotlinx/coroutines/scheduling/TaskContext;ZILjava/lang/Object;)V

    return-void
.end method

.method public final isTerminated()Z
    .locals 1

    sget-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->_isTerminated$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 308
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final parkedWorkersStackPush(Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;)Z
    .locals 21
    .param p1, "worker"    # Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;

    .line 178
    move-object/from16 v6, p0

    invoke-virtual/range {p1 .. p1}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->getNextParkedWorker()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->NOT_IN_STACK:Lkotlinx/coroutines/internal/Symbol;

    const/4 v7, 0x0

    if-eq v0, v1, :cond_0

    return v7

    :cond_0
    sget-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->parkedWorkersStack$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .local v0, "atomicfu$handler$iv":Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    move-object/from16 v8, p0

    .local v8, "this_$iv":Lkotlinx/coroutines/scheduling/CoroutineScheduler;
    move-object v9, v0

    .end local v0    # "atomicfu$handler$iv":Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .local v9, "atomicfu$handler$iv":Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    const/4 v10, 0x0

    .local v10, "$i$f$loop$atomicfu":I
    :goto_0
    invoke-virtual {v9, v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v11

    .local v11, "top":J
    const/4 v13, 0x0

    .line 184
    .local v13, "$i$a$-loop$atomicfu-CoroutineScheduler$parkedWorkersStackPush$1":I
    const-wide/32 v0, 0x1fffff

    and-long/2addr v0, v11

    long-to-int v14, v0

    .line 185
    .local v14, "index":I
    const-wide/32 v0, 0x200000

    add-long/2addr v0, v11

    const-wide/32 v2, -0x200000

    and-long v15, v0, v2

    .line 186
    .local v15, "updVersion":J
    invoke-virtual/range {p1 .. p1}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->getIndexInArray()I

    move-result v4

    .line 187
    .local v4, "updIndex":I
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v0

    const/16 v17, 0x1

    if-eqz v0, :cond_3

    .line 1035
    const/4 v0, 0x0

    .line 187
    .local v0, "$i$a$-assert-CoroutineScheduler$parkedWorkersStackPush$1$1":I
    if-eqz v4, :cond_1

    move/from16 v0, v17

    goto :goto_1

    :cond_1
    move v0, v7

    .end local v0    # "$i$a$-assert-CoroutineScheduler$parkedWorkersStackPush$1$1":I
    :goto_1
    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 188
    :cond_3
    :goto_2
    iget-object v0, v6, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->workers:Lkotlinx/coroutines/internal/ResizableAtomicArray;

    invoke-virtual {v0, v14}, Lkotlinx/coroutines/internal/ResizableAtomicArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v5, p1

    invoke-virtual {v5, v0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->setNextParkedWorker(Ljava/lang/Object;)V

    .line 194
    sget-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->parkedWorkersStack$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    int-to-long v1, v4

    or-long v18, v15, v1

    move-object/from16 v1, p0

    move-wide v2, v11

    move/from16 v20, v4

    .end local v4    # "updIndex":I
    .local v20, "updIndex":I
    move-wide/from16 v4, v18

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_4

    return v17

    .line 195
    :cond_4
    nop

    .end local v11    # "top":J
    .end local v13    # "$i$a$-loop$atomicfu-CoroutineScheduler$parkedWorkersStackPush$1":I
    .end local v14    # "index":I
    .end local v15    # "updVersion":J
    .end local v20    # "updIndex":I
    goto :goto_0
.end method

.method public final parkedWorkersStackTopUpdate(Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;II)V
    .locals 19
    .param p1, "worker"    # Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;
    .param p2, "oldIndex"    # I
    .param p3, "newIndex"    # I

    sget-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->parkedWorkersStack$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .local v0, "atomicfu$handler$iv":Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    move-object/from16 v1, p0

    .local v1, "this_$iv":Lkotlinx/coroutines/scheduling/CoroutineScheduler;
    const/4 v2, 0x0

    move-object/from16 v9, p0

    .local v2, "$i$f$loop$atomicfu":I
    :goto_0
    invoke-virtual {v0, v9}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v10

    .local v10, "top":J
    const/4 v12, 0x0

    .line 151
    .local v12, "$i$a$-loop$atomicfu-CoroutineScheduler$parkedWorkersStackTopUpdate$1":I
    const-wide/32 v3, 0x1fffff

    and-long/2addr v3, v10

    long-to-int v13, v3

    .line 152
    .local v13, "index":I
    const-wide/32 v3, 0x200000

    add-long/2addr v3, v10

    const-wide/32 v5, -0x200000

    and-long v14, v3, v5

    .line 153
    .local v14, "updVersion":J
    move/from16 v7, p2

    if-ne v13, v7, :cond_1

    .line 154
    if-nez p3, :cond_0

    .line 155
    invoke-direct/range {p0 .. p1}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->parkedWorkersStackNextIndex(Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;)I

    move-result v3

    goto :goto_1

    .line 157
    :cond_0
    move/from16 v3, p3

    goto :goto_1

    .line 160
    :cond_1
    move v3, v13

    .line 153
    :goto_1
    move v8, v3

    .line 162
    .local v8, "updIndex":I
    if-ltz v8, :cond_3

    .line 163
    sget-object v3, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->parkedWorkersStack$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    int-to-long v4, v8

    or-long v16, v14, v4

    move-object/from16 v4, p0

    move-wide v5, v10

    move/from16 v18, v8

    .end local v8    # "updIndex":I
    .local v18, "updIndex":I
    move-wide/from16 v7, v16

    invoke-virtual/range {v3 .. v8}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v3

    if-eqz v3, :cond_2

    return-void

    .line 164
    :cond_2
    nop

    .end local v10    # "top":J
    .end local v12    # "$i$a$-loop$atomicfu-CoroutineScheduler$parkedWorkersStackTopUpdate$1":I
    .end local v13    # "index":I
    .end local v14    # "updVersion":J
    .end local v18    # "updIndex":I
    goto :goto_0

    .line 162
    .restart local v8    # "updIndex":I
    .restart local v10    # "top":J
    .restart local v12    # "$i$a$-loop$atomicfu-CoroutineScheduler$parkedWorkersStackTopUpdate$1":I
    .restart local v13    # "index":I
    .restart local v14    # "updVersion":J
    :cond_3
    move/from16 v18, v8

    .end local v8    # "updIndex":I
    .restart local v18    # "updIndex":I
    goto :goto_0
.end method

.method public final runSafely(Lkotlinx/coroutines/scheduling/Task;)V
    .locals 3
    .param p1, "task"    # Lkotlinx/coroutines/scheduling/Task;

    .line 583
    nop

    .line 584
    :try_start_0
    invoke-virtual {p1}, Lkotlinx/coroutines/scheduling/Task;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 589
    invoke-static {}, Lkotlinx/coroutines/AbstractTimeSourceKt;->getTimeSource()Lkotlinx/coroutines/AbstractTimeSource;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    invoke-virtual {v0}, Lkotlinx/coroutines/AbstractTimeSource;->unTrackTask()V

    .line 590
    :cond_0
    goto :goto_1

    .line 585
    :catchall_0
    move-exception v0

    .line 586
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 587
    .local v1, "thread":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 589
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v1    # "thread":Ljava/lang/Thread;
    invoke-static {}, Lkotlinx/coroutines/AbstractTimeSourceKt;->getTimeSource()Lkotlinx/coroutines/AbstractTimeSource;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 591
    :goto_1
    return-void

    .line 589
    :catchall_1
    move-exception v0

    invoke-static {}, Lkotlinx/coroutines/AbstractTimeSourceKt;->getTimeSource()Lkotlinx/coroutines/AbstractTimeSource;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lkotlinx/coroutines/AbstractTimeSource;->unTrackTask()V

    :cond_1
    throw v0
.end method

.method public final shutdown(J)V
    .locals 17
    .param p1, "timeout"    # J

    .line 343
    move-object/from16 v1, p0

    sget-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->_isTerminated$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 345
    :cond_0
    invoke-direct/range {p0 .. p0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->currentWorker()Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;

    move-result-object v4

    .line 347
    .local v4, "currentWorker":Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;
    iget-object v5, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->workers:Lkotlinx/coroutines/internal/ResizableAtomicArray;

    .local v5, "lock$iv":Ljava/lang/Object;
    const/4 v6, 0x0

    .line 1040
    .local v6, "$i$f$synchronized":I
    nop

    .line 1043
    const/4 v7, 0x0

    .line 1044
    .local v7, "$i$f$synchronizedImpl":I
    monitor-enter v5

    const/4 v0, 0x0

    .line 347
    .local v0, "$i$a$-synchronized-CoroutineScheduler$shutdown$created$1":I
    move-object/from16 v8, p0

    .local v8, "this_$iv":Lkotlinx/coroutines/scheduling/CoroutineScheduler;
    const/4 v9, 0x0

    .local v9, "$i$f$getCreatedWorkers":I
    :try_start_0
    invoke-static {}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->access$getControlState$FU$p()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v10

    .line 1045
    invoke-virtual {v10, v8}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/32 v12, 0x1fffff

    and-long/2addr v10, v12

    long-to-int v8, v10

    .line 347
    .end local v8    # "this_$iv":Lkotlinx/coroutines/scheduling/CoroutineScheduler;
    .end local v9    # "$i$f$getCreatedWorkers":I
    nop

    .line 1044
    .end local v0    # "$i$a$-synchronized-CoroutineScheduler$shutdown$created$1":I
    monitor-exit v5

    .line 1043
    .end local v7    # "$i$f$synchronizedImpl":I
    nop

    .line 347
    .end local v5    # "lock$iv":Ljava/lang/Object;
    .end local v6    # "$i$f$synchronized":I
    move v0, v8

    .line 349
    .local v0, "created":I
    const/4 v5, 0x1

    .local v5, "i":I
    if-gt v5, v0, :cond_6

    .line 350
    :goto_0
    iget-object v6, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->workers:Lkotlinx/coroutines/internal/ResizableAtomicArray;

    invoke-virtual {v6, v5}, Lkotlinx/coroutines/internal/ResizableAtomicArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v6, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;

    .line 351
    .local v6, "worker":Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;
    if-eq v6, v4, :cond_5

    .line 352
    :goto_1
    invoke-virtual {v6}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->isAlive()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 353
    move-object v7, v6

    check-cast v7, Ljava/lang/Thread;

    invoke-static {v7}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 354
    move-wide/from16 v8, p1

    invoke-virtual {v6, v8, v9}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->join(J)V

    goto :goto_1

    .line 356
    :cond_1
    move-wide/from16 v8, p1

    iget-object v7, v6, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->state:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 357
    .local v7, "state":Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1035
    const/4 v10, 0x0

    .line 357
    .local v10, "$i$a$-assert-CoroutineScheduler$shutdown$1":I
    sget-object v11, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->TERMINATED:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    if-ne v7, v11, :cond_2

    move v10, v3

    goto :goto_2

    :cond_2
    move v10, v2

    .end local v10    # "$i$a$-assert-CoroutineScheduler$shutdown$1":I
    :goto_2
    if-eqz v10, :cond_3

    goto :goto_3

    :cond_3
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 358
    :cond_4
    :goto_3
    iget-object v10, v6, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->localQueue:Lkotlinx/coroutines/scheduling/WorkQueue;

    iget-object v11, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->globalBlockingQueue:Lkotlinx/coroutines/scheduling/GlobalQueue;

    invoke-virtual {v10, v11}, Lkotlinx/coroutines/scheduling/WorkQueue;->offloadAllWorkTo(Lkotlinx/coroutines/scheduling/GlobalQueue;)V

    goto :goto_4

    .line 351
    .end local v7    # "state":Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;
    :cond_5
    move-wide/from16 v8, p1

    .line 349
    .end local v6    # "worker":Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;
    :goto_4
    if-eq v5, v0, :cond_7

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_6
    move-wide/from16 v8, p1

    .line 362
    .end local v5    # "i":I
    :cond_7
    iget-object v5, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->globalBlockingQueue:Lkotlinx/coroutines/scheduling/GlobalQueue;

    invoke-virtual {v5}, Lkotlinx/coroutines/scheduling/GlobalQueue;->close()V

    .line 363
    iget-object v5, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->globalCpuQueue:Lkotlinx/coroutines/scheduling/GlobalQueue;

    invoke-virtual {v5}, Lkotlinx/coroutines/scheduling/GlobalQueue;->close()V

    .line 365
    :goto_5
    nop

    .line 366
    if-eqz v4, :cond_8

    invoke-virtual {v4, v3}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->findTask(Z)Lkotlinx/coroutines/scheduling/Task;

    move-result-object v5

    if-nez v5, :cond_d

    .line 367
    :cond_8
    iget-object v5, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->globalCpuQueue:Lkotlinx/coroutines/scheduling/GlobalQueue;

    invoke-virtual {v5}, Lkotlinx/coroutines/scheduling/GlobalQueue;->removeFirstOrNull()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlinx/coroutines/scheduling/Task;

    .line 366
    if-nez v5, :cond_d

    .line 368
    iget-object v5, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->globalBlockingQueue:Lkotlinx/coroutines/scheduling/GlobalQueue;

    invoke-virtual {v5}, Lkotlinx/coroutines/scheduling/GlobalQueue;->removeFirstOrNull()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlinx/coroutines/scheduling/Task;

    .line 366
    if-nez v5, :cond_d

    .line 369
    nop

    .line 373
    if-eqz v4, :cond_9

    sget-object v5, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->TERMINATED:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    invoke-virtual {v4, v5}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->tryReleaseCpu(Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;)Z

    .line 375
    :cond_9
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 1035
    const/4 v5, 0x0

    .line 375
    .local v5, "$i$a$-assert-CoroutineScheduler$shutdown$2":I
    move-object/from16 v6, p0

    .local v6, "this_$iv":Lkotlinx/coroutines/scheduling/CoroutineScheduler;
    const/4 v7, 0x0

    .line 1046
    .local v7, "$i$f$getAvailableCpuPermits":I
    sget-object v10, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->controlState$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v10, v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v10

    .local v10, "state$iv$iv":J
    move-object v12, v6

    .local v12, "this_$iv$iv":Lkotlinx/coroutines/scheduling/CoroutineScheduler;
    const/4 v13, 0x0

    .line 1050
    .local v13, "$i$f$availableCpuPermits":I
    const-wide v14, 0x7ffffc0000000000L

    and-long/2addr v14, v10

    const/16 v16, 0x2a

    shr-long v14, v14, v16

    long-to-int v10, v14

    .line 1046
    .end local v10    # "state$iv$iv":J
    .end local v12    # "this_$iv$iv":Lkotlinx/coroutines/scheduling/CoroutineScheduler;
    .end local v13    # "$i$f$availableCpuPermits":I
    nop

    .line 375
    .end local v6    # "this_$iv":Lkotlinx/coroutines/scheduling/CoroutineScheduler;
    .end local v7    # "$i$f$getAvailableCpuPermits":I
    iget v6, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->corePoolSize:I

    if-ne v10, v6, :cond_a

    move v2, v3

    .end local v5    # "$i$a$-assert-CoroutineScheduler$shutdown$2":I
    :cond_a
    if-eqz v2, :cond_b

    goto :goto_6

    :cond_b
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_c
    :goto_6
    sget-object v2, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->parkedWorkersStack$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 376
    const-wide/16 v5, 0x0

    invoke-virtual {v2, v1, v5, v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->set(Ljava/lang/Object;J)V

    sget-object v2, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->controlState$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 377
    invoke-virtual {v2, v1, v5, v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->set(Ljava/lang/Object;J)V

    .line 378
    return-void

    .line 370
    .local v5, "task":Lkotlinx/coroutines/scheduling/Task;
    :cond_d
    invoke-virtual {v1, v5}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->runSafely(Lkotlinx/coroutines/scheduling/Task;)V

    .end local v5    # "task":Lkotlinx/coroutines/scheduling/Task;
    goto :goto_5

    .line 1044
    .end local v0    # "created":I
    .local v5, "lock$iv":Ljava/lang/Object;
    .local v6, "$i$f$synchronized":I
    .local v7, "$i$f$synchronizedImpl":I
    :catchall_0
    move-exception v0

    move-wide/from16 v8, p1

    monitor-exit v5

    throw v0
.end method

.method public final signalCpuWork()V
    .locals 4

    .line 439
    invoke-direct {p0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->tryUnpark()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 440
    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-static {p0, v2, v3, v0, v1}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->tryCreateWorker$default(Lkotlinx/coroutines/scheduling/CoroutineScheduler;JILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 441
    :cond_1
    invoke-direct {p0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->tryUnpark()Z

    .line 442
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 17

    .line 535
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 536
    .local v1, "parkedWorkers":I
    const/4 v2, 0x0

    .line 537
    .local v2, "blockingWorkers":I
    const/4 v3, 0x0

    .line 538
    .local v3, "cpuWorkers":I
    const/4 v4, 0x0

    .line 539
    .local v4, "dormant":I
    const/4 v5, 0x0

    .line 540
    .local v5, "terminated":I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 541
    .local v6, "queueSizes":Ljava/util/ArrayList;
    const/4 v7, 0x1

    .local v7, "index":I
    iget-object v8, v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->workers:Lkotlinx/coroutines/internal/ResizableAtomicArray;

    invoke-virtual {v8}, Lkotlinx/coroutines/internal/ResizableAtomicArray;->currentLength()I

    move-result v8

    :goto_0
    if-ge v7, v8, :cond_2

    .line 542
    iget-object v9, v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->workers:Lkotlinx/coroutines/internal/ResizableAtomicArray;

    invoke-virtual {v9, v7}, Lkotlinx/coroutines/internal/ResizableAtomicArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;

    if-nez v9, :cond_0

    goto/16 :goto_1

    .line 543
    .local v9, "worker":Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;
    :cond_0
    iget-object v10, v9, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->localQueue:Lkotlinx/coroutines/scheduling/WorkQueue;

    invoke-virtual {v10}, Lkotlinx/coroutines/scheduling/WorkQueue;->getSize$kotlinx_coroutines_core()I

    move-result v10

    .line 544
    .local v10, "queueSize":I
    iget-object v11, v9, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->state:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    sget-object v12, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v11}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->ordinal()I

    move-result v11

    aget v11, v12, v11

    packed-switch v11, :pswitch_data_0

    goto :goto_1

    .line 556
    :pswitch_0
    add-int/lit8 v5, v5, 0x1

    .line 558
    goto :goto_1

    .line 552
    :pswitch_1
    add-int/lit8 v4, v4, 0x1

    .line 555
    nop

    .line 556
    if-lez v10, :cond_1

    move-object v11, v6

    check-cast v11, Ljava/util/Collection;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const/16 v13, 0x64

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 548
    :pswitch_2
    add-int/lit8 v3, v3, 0x1

    .line 551
    nop

    .line 552
    move-object v11, v6

    check-cast v11, Ljava/util/Collection;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const/16 v13, 0x63

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 545
    :pswitch_3
    add-int/lit8 v2, v2, 0x1

    .line 547
    nop

    .line 548
    move-object v11, v6

    check-cast v11, Ljava/util/Collection;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const/16 v13, 0x62

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 544
    :pswitch_4
    add-int/lit8 v1, v1, 0x1

    .line 545
    nop

    .line 541
    .end local v9    # "worker":Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;
    .end local v10    # "queueSize":I
    :cond_1
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .end local v7    # "index":I
    :cond_2
    sget-object v7, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->controlState$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 561
    invoke-virtual {v7, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v7

    .line 562
    .local v7, "state":J
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->schedulerName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0x40

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static/range {p0 .. p0}, Lkotlinx/coroutines/DebugStringsKt;->getHexAddress(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "[Pool Size {core = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 564
    iget v11, v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->corePoolSize:I

    .line 562
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 564
    nop

    .line 562
    const-string v11, ", max = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 565
    iget v11, v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->maxPoolSize:I

    .line 562
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 565
    nop

    .line 562
    const-string/jumbo v11, "}, Worker States {CPU = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 567
    nop

    .line 562
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 567
    nop

    .line 562
    const-string v11, ", blocking = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 568
    nop

    .line 562
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 568
    nop

    .line 562
    const-string v11, ", parked = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 569
    nop

    .line 562
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 569
    nop

    .line 562
    const-string v11, ", dormant = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 570
    nop

    .line 562
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 570
    nop

    .line 562
    const-string v11, ", terminated = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 571
    nop

    .line 562
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 571
    nop

    .line 562
    const-string/jumbo v11, "}, running workers queues = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 572
    nop

    .line 562
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 572
    nop

    .line 562
    const-string v11, ", global CPU queue size = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 573
    iget-object v11, v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->globalCpuQueue:Lkotlinx/coroutines/scheduling/GlobalQueue;

    invoke-virtual {v11}, Lkotlinx/coroutines/scheduling/GlobalQueue;->getSize()I

    move-result v11

    .line 562
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 573
    nop

    .line 562
    const-string v11, ", global blocking queue size = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 574
    iget-object v11, v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->globalBlockingQueue:Lkotlinx/coroutines/scheduling/GlobalQueue;

    invoke-virtual {v11}, Lkotlinx/coroutines/scheduling/GlobalQueue;->getSize()I

    move-result v11

    .line 562
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 574
    nop

    .line 562
    const-string v10, ", Control State {created workers= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 576
    move-object/from16 v11, p0

    .local v11, "this_$iv":Lkotlinx/coroutines/scheduling/CoroutineScheduler;
    const/4 v12, 0x0

    .line 1067
    .local v12, "$i$f$createdWorkers":I
    const-wide/32 v13, 0x1fffff

    and-long/2addr v13, v7

    long-to-int v11, v13

    .line 562
    .end local v11    # "this_$iv":Lkotlinx/coroutines/scheduling/CoroutineScheduler;
    .end local v12    # "$i$f$createdWorkers":I
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 576
    nop

    .line 562
    const-string v11, ", blocking tasks = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 577
    move-object/from16 v11, p0

    .restart local v11    # "this_$iv":Lkotlinx/coroutines/scheduling/CoroutineScheduler;
    const/4 v12, 0x0

    .line 1068
    .local v12, "$i$f$blockingTasks":I
    const-wide v13, 0x3ffffe00000L

    and-long/2addr v13, v7

    const/16 v15, 0x15

    shr-long/2addr v13, v15

    long-to-int v11, v13

    .line 562
    .end local v11    # "this_$iv":Lkotlinx/coroutines/scheduling/CoroutineScheduler;
    .end local v12    # "$i$f$blockingTasks":I
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 577
    nop

    .line 562
    const-string v11, ", CPUs acquired = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 578
    iget v11, v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->corePoolSize:I

    move-object/from16 v12, p0

    .local v12, "this_$iv":Lkotlinx/coroutines/scheduling/CoroutineScheduler;
    const/4 v13, 0x0

    .line 1069
    .local v13, "$i$f$availableCpuPermits":I
    const-wide v14, 0x7ffffc0000000000L

    and-long/2addr v14, v7

    const/16 v16, 0x2a

    shr-long v14, v14, v16

    long-to-int v12, v14

    .line 578
    .end local v12    # "this_$iv":Lkotlinx/coroutines/scheduling/CoroutineScheduler;
    .end local v13    # "$i$f$availableCpuPermits":I
    sub-int/2addr v11, v12

    .line 562
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 579
    nop

    .line 562
    const-string/jumbo v11, "}]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    return-object v9

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
