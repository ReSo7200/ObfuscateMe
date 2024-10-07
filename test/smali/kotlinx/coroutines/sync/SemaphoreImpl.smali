.class public Lkotlinx/coroutines/sync/SemaphoreImpl;
.super Ljava/lang/Object;
.source "Semaphore.kt"

# interfaces
.implements Lkotlinx/coroutines/sync/Semaphore;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSemaphore.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Semaphore.kt\nkotlinx/coroutines/sync/SemaphoreImpl\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n+ 4 ConcurrentLinkedList.kt\nkotlinx/coroutines/internal/ConcurrentLinkedListKt\n+ 5 Semaphore.kt\nkotlinx/coroutines/sync/SemaphoreSegment\n*L\n1#1,397:1\n205#1,10:411\n205#1,10:421\n1#2:398\n332#3,12:399\n72#4,3:431\n46#4,8:434\n72#4,3:445\n46#4,8:448\n375#5:442\n375#5:443\n367#5:444\n378#5:456\n367#5:457\n375#5:458\n*S KotlinDebug\n*F\n+ 1 Semaphore.kt\nkotlinx/coroutines/sync/SemaphoreImpl\n*L\n197#1:411,10\n221#1:421,10\n187#1:399,12\n289#1:431,3\n289#1:434,8\n322#1:445,3\n322#1:448,8\n293#1:442\n299#1:443\n313#1:444\n328#1:456\n334#1:457\n337#1:458\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0005\u0008\u0010\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0005J\u0011\u0010\u0016\u001a\u00020\u0014H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0017Jb\u0010\u0016\u001a\u00020\u0014\"\u0004\u0008\u0000\u0010\u00182\u0006\u0010\u0019\u001a\u0002H\u00182!\u0010\u001a\u001a\u001d\u0012\u0013\u0012\u0011H\u0018\u00a2\u0006\u000c\u0008\u001b\u0012\u0008\u0008\u001c\u0012\u0004\u0008\u0008(\u0019\u0012\u0004\u0012\u00020\u001d0\u00122!\u0010\u001e\u001a\u001d\u0012\u0013\u0012\u0011H\u0018\u00a2\u0006\u000c\u0008\u001b\u0012\u0008\u0008\u001c\u0012\u0004\u0008\u0008(\u0019\u0012\u0004\u0012\u00020\u00140\u0012H\u0083\u0008\u00a2\u0006\u0002\u0010\u001fJ\u0016\u0010\u0016\u001a\u00020\u00142\u000c\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00140 H\u0005J\u0011\u0010!\u001a\u00020\u0014H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0017J\u0010\u0010\"\u001a\u00020\u001d2\u0006\u0010\u0019\u001a\u00020#H\u0002J\u0008\u0010$\u001a\u00020\u0014H\u0002J\u0008\u0010%\u001a\u00020\u0003H\u0002J\u001e\u0010&\u001a\u00020\u00142\n\u0010\'\u001a\u0006\u0012\u0002\u0008\u00030(2\u0008\u0010)\u001a\u0004\u0018\u00010*H\u0004J\u0008\u0010+\u001a\u00020\u0014H\u0016J\u0008\u0010,\u001a\u00020\u001dH\u0016J\u0008\u0010-\u001a\u00020\u001dH\u0002J\u000c\u0010.\u001a\u00020\u001d*\u00020*H\u0002R\t\u0010\u0006\u001a\u00020\u0007X\u0082\u0004R\u0014\u0010\u0008\u001a\u00020\u00038VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\nR\t\u0010\u000b\u001a\u00020\u000cX\u0082\u0004R\t\u0010\r\u001a\u00020\u000cX\u0082\u0004R\u000f\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000fX\u0082\u0004R\u001a\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u00140\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000f\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000fX\u0082\u0004\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006/"
    }
    d2 = {
        "Lkotlinx/coroutines/sync/SemaphoreImpl;",
        "Lkotlinx/coroutines/sync/Semaphore;",
        "permits",
        "",
        "acquiredPermits",
        "(II)V",
        "_availablePermits",
        "Lkotlinx/atomicfu/AtomicInt;",
        "availablePermits",
        "getAvailablePermits",
        "()I",
        "deqIdx",
        "Lkotlinx/atomicfu/AtomicLong;",
        "enqIdx",
        "head",
        "Lkotlinx/atomicfu/AtomicRef;",
        "Lkotlinx/coroutines/sync/SemaphoreSegment;",
        "onCancellationRelease",
        "Lkotlin/Function1;",
        "",
        "",
        "tail",
        "acquire",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "W",
        "waiter",
        "suspend",
        "Lkotlin/ParameterName;",
        "name",
        "",
        "onAcquired",
        "(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V",
        "Lkotlinx/coroutines/CancellableContinuation;",
        "acquireSlowPath",
        "addAcquireToQueue",
        "Lkotlinx/coroutines/Waiter;",
        "coerceAvailablePermitsAtMaximum",
        "decPermits",
        "onAcquireRegFunction",
        "select",
        "Lkotlinx/coroutines/selects/SelectInstance;",
        "ignoredParam",
        "",
        "release",
        "tryAcquire",
        "tryResumeNextFromQueue",
        "tryResumeAcquire",
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
.field private static final _availablePermits$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

.field private static final deqIdx$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

.field private static final enqIdx$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

.field private static final head$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field private static final tail$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile _availablePermits:I
    .annotation runtime Lkotlin/jvm/Volatile;
    .end annotation
.end field

.field private volatile deqIdx:J
    .annotation runtime Lkotlin/jvm/Volatile;
    .end annotation
.end field

.field private volatile enqIdx:J
    .annotation runtime Lkotlin/jvm/Volatile;
    .end annotation
.end field

.field private volatile head:Ljava/lang/Object;
    .annotation runtime Lkotlin/jvm/Volatile;
    .end annotation
.end field

.field private final onCancellationRelease:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final permits:I

.field private volatile tail:Ljava/lang/Object;
    .annotation runtime Lkotlin/jvm/Volatile;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Ljava/lang/Object;

    const-string v1, "head"

    const-class v2, Lkotlinx/coroutines/sync/SemaphoreImpl;

    invoke-static {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/sync/SemaphoreImpl;->head$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v0, "deqIdx"

    invoke-static {v2, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/sync/SemaphoreImpl;->deqIdx$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-class v0, Ljava/lang/Object;

    const-string/jumbo v1, "tail"

    invoke-static {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/sync/SemaphoreImpl;->tail$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v0, "enqIdx"

    invoke-static {v2, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/sync/SemaphoreImpl;->enqIdx$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-string v0, "_availablePermits"

    invoke-static {v2, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/sync/SemaphoreImpl;->_availablePermits$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 5
    .param p1, "permits"    # I
    .param p2, "acquiredPermits"    # I

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput p1, p0, Lkotlinx/coroutines/sync/SemaphoreImpl;->permits:I

    .line 136
    nop

    .line 137
    iget v0, p0, Lkotlinx/coroutines/sync/SemaphoreImpl;->permits:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_3

    .line 138
    if-ltz p2, :cond_1

    iget v0, p0, Lkotlinx/coroutines/sync/SemaphoreImpl;->permits:I

    if-gt p2, v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    if-eqz v1, :cond_2

    .line 139
    new-instance v0, Lkotlinx/coroutines/sync/SemaphoreSegment;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const-wide/16 v3, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lkotlinx/coroutines/sync/SemaphoreSegment;-><init>(JLkotlinx/coroutines/sync/SemaphoreSegment;I)V

    .line 140
    .local v0, "s":Lkotlinx/coroutines/sync/SemaphoreSegment;
    iput-object v0, p0, Lkotlinx/coroutines/sync/SemaphoreImpl;->head:Ljava/lang/Object;

    .line 141
    iput-object v0, p0, Lkotlinx/coroutines/sync/SemaphoreImpl;->tail:Ljava/lang/Object;

    .line 142
    .end local v0    # "s":Lkotlinx/coroutines/sync/SemaphoreSegment;
    nop

    .line 151
    iget v0, p0, Lkotlinx/coroutines/sync/SemaphoreImpl;->permits:I

    sub-int/2addr v0, p2

    iput v0, p0, Lkotlinx/coroutines/sync/SemaphoreImpl;->_availablePermits:I

    .line 154
    new-instance v0, Lkotlinx/coroutines/sync/SemaphoreImpl$onCancellationRelease$1;

    invoke-direct {v0, p0}, Lkotlinx/coroutines/sync/SemaphoreImpl$onCancellationRelease$1;-><init>(Lkotlinx/coroutines/sync/SemaphoreImpl;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    iput-object v0, p0, Lkotlinx/coroutines/sync/SemaphoreImpl;->onCancellationRelease:Lkotlin/jvm/functions/Function1;

    .line 95
    return-void

    .line 398
    :cond_2
    const/4 v0, 0x0

    .line 138
    .local v0, "$i$a$-require-SemaphoreImpl$2":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The number of acquired permits should be in 0.."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lkotlinx/coroutines/sync/SemaphoreImpl;->permits:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "$i$a$-require-SemaphoreImpl$2":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 398
    :cond_3
    const/4 v0, 0x0

    .line 137
    .local v0, "$i$a$-require-SemaphoreImpl$1":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Semaphore should have at least 1 permit, but had "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lkotlinx/coroutines/sync/SemaphoreImpl;->permits:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "$i$a$-require-SemaphoreImpl$1":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static final synthetic access$acquireSlowPath(Lkotlinx/coroutines/sync/SemaphoreImpl;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lkotlinx/coroutines/sync/SemaphoreImpl;
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 94
    invoke-direct {p0, p1}, Lkotlinx/coroutines/sync/SemaphoreImpl;->acquireSlowPath(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$addAcquireToQueue(Lkotlinx/coroutines/sync/SemaphoreImpl;Lkotlinx/coroutines/Waiter;)Z
    .locals 1
    .param p0, "$this"    # Lkotlinx/coroutines/sync/SemaphoreImpl;
    .param p1, "waiter"    # Lkotlinx/coroutines/Waiter;

    .line 94
    invoke-direct {p0, p1}, Lkotlinx/coroutines/sync/SemaphoreImpl;->addAcquireToQueue(Lkotlinx/coroutines/Waiter;)Z

    move-result v0

    return v0
.end method

.method private final acquire(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 3
    .param p1, "waiter"    # Ljava/lang/Object;
    .param p2, "suspend"    # Lkotlin/jvm/functions/Function1;
    .param p3, "onAcquired"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<W:",
            "Ljava/lang/Object;",
            ">(TW;",
            "Lkotlin/jvm/functions/Function1<",
            "-TW;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-TW;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 205
    .local v0, "$i$f$acquire":I
    :cond_0
    nop

    .line 207
    invoke-direct {p0}, Lkotlinx/coroutines/sync/SemaphoreImpl;->decPermits()I

    move-result v1

    .line 209
    .local v1, "p":I
    if-lez v1, :cond_1

    .line 210
    invoke-interface {p3, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    return-void

    .line 214
    :cond_1
    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void
.end method

.method static synthetic acquire$suspendImpl(Lkotlinx/coroutines/sync/SemaphoreImpl;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p0, "$this"    # Lkotlinx/coroutines/sync/SemaphoreImpl;
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/sync/SemaphoreImpl;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 177
    invoke-direct {p0}, Lkotlinx/coroutines/sync/SemaphoreImpl;->decPermits()I

    move-result v0

    .line 179
    .local v0, "p":I
    if-lez v0, :cond_0

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    .line 184
    :cond_0
    invoke-direct {p0, p1}, Lkotlinx/coroutines/sync/SemaphoreImpl;->acquireSlowPath(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_1

    return-object v1

    :cond_1
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 185
    return-object v1
.end method

.method private final acquireSlowPath(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 187
    const/4 v0, 0x0

    .line 399
    .local v0, "$i$f$suspendCancellableCoroutineReusable":I
    move-object v1, p1

    .local v1, "uCont$iv":Lkotlin/coroutines/Continuation;
    const/4 v2, 0x0

    .line 400
    .local v2, "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutineReusable$2$iv":I
    invoke-static {v1}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v3

    invoke-static {v3}, Lkotlinx/coroutines/CancellableContinuationKt;->getOrCreateCancellableContinuation(Lkotlin/coroutines/Continuation;)Lkotlinx/coroutines/CancellableContinuationImpl;

    move-result-object v3

    .line 401
    .local v3, "cancellable$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    nop

    .line 402
    move-object v4, v3

    .local v4, "cont":Lkotlinx/coroutines/CancellableContinuationImpl;
    const/4 v5, 0x0

    .line 189
    .local v5, "$i$a$-suspendCancellableCoroutineReusable-SemaphoreImpl$acquireSlowPath$2":I
    :try_start_0
    move-object v6, v4

    check-cast v6, Lkotlinx/coroutines/Waiter;

    invoke-static {p0, v6}, Lkotlinx/coroutines/sync/SemaphoreImpl;->access$addAcquireToQueue(Lkotlinx/coroutines/sync/SemaphoreImpl;Lkotlinx/coroutines/Waiter;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 193
    move-object v6, v4

    check-cast v6, Lkotlinx/coroutines/CancellableContinuation;

    invoke-virtual {p0, v6}, Lkotlinx/coroutines/sync/SemaphoreImpl;->acquire(Lkotlinx/coroutines/CancellableContinuation;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    nop

    .line 402
    .end local v4    # "cont":Lkotlinx/coroutines/CancellableContinuationImpl;
    .end local v5    # "$i$a$-suspendCancellableCoroutineReusable-SemaphoreImpl$acquireSlowPath$2":I
    :cond_0
    nop

    .line 409
    invoke-virtual {v3}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object v1

    .line 399
    .end local v1    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .end local v2    # "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutineReusable$2$iv":I
    .end local v3    # "cancellable$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_1

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_2

    return-object v1

    .line 410
    :cond_2
    nop

    .end local v0    # "$i$f$suspendCancellableCoroutineReusable":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 194
    return-object v0

    .line 403
    .restart local v0    # "$i$f$suspendCancellableCoroutineReusable":I
    .restart local v1    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .restart local v2    # "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutineReusable$2$iv":I
    .restart local v3    # "cancellable$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    :catchall_0
    move-exception v4

    .line 406
    .local v4, "e$iv":Ljava/lang/Throwable;
    invoke-virtual {v3}, Lkotlinx/coroutines/CancellableContinuationImpl;->releaseClaimedReusableContinuation$kotlinx_coroutines_core()V

    .line 407
    throw v4
.end method

.method private final addAcquireToQueue(Lkotlinx/coroutines/Waiter;)Z
    .locals 20
    .param p1, "waiter"    # Lkotlinx/coroutines/Waiter;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget-object v2, Lkotlinx/coroutines/sync/SemaphoreImpl;->tail$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 286
    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlinx/coroutines/sync/SemaphoreSegment;

    .local v2, "curTail":Lkotlinx/coroutines/sync/SemaphoreSegment;
    sget-object v3, Lkotlinx/coroutines/sync/SemaphoreImpl;->enqIdx$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 287
    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v3

    .line 288
    .local v3, "enqIdx":J
    sget-object v5, Lkotlinx/coroutines/sync/SemaphoreImpl$addAcquireToQueue$createNewSegment$1;->INSTANCE:Lkotlinx/coroutines/sync/SemaphoreImpl$addAcquireToQueue$createNewSegment$1;

    check-cast v5, Lkotlin/reflect/KFunction;

    .local v5, "createNewSegment":Lkotlin/reflect/KFunction;
    sget-object v6, Lkotlinx/coroutines/sync/SemaphoreImpl;->tail$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 289
    invoke-static {}, Lkotlinx/coroutines/sync/SemaphoreKt;->access$getSEGMENT_SIZE$p()I

    move-result v7

    int-to-long v7, v7

    div-long v7, v3, v7

    .local v6, "atomicfu$handler$iv":Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .local v7, "id$iv":J
    const/4 v9, 0x0

    .line 431
    .local v9, "$i$f$findSegmentAndMoveForward$atomicfu":I
    :goto_0
    nop

    .line 432
    move-object v10, v2

    check-cast v10, Lkotlinx/coroutines/internal/Segment;

    move-object v11, v5

    check-cast v11, Lkotlin/jvm/functions/Function2;

    invoke-static {v10, v7, v8, v11}, Lkotlinx/coroutines/internal/ConcurrentLinkedListKt;->findSegmentInternal(Lkotlinx/coroutines/internal/Segment;JLkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object v10

    .line 433
    .local v10, "s$iv":Ljava/lang/Object;
    invoke-static {v10}, Lkotlinx/coroutines/internal/SegmentOrClosed;->isClosed-impl(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_6

    invoke-static {v10}, Lkotlinx/coroutines/internal/SegmentOrClosed;->getSegment-impl(Ljava/lang/Object;)Lkotlinx/coroutines/internal/Segment;

    move-result-object v11

    .local v11, "to$iv$iv":Lkotlinx/coroutines/internal/Segment;
    const/4 v14, 0x0

    .local v14, "$i$f$moveForward$atomicfu":I
    const/4 v15, 0x0

    .local v15, "$i$f$loop$atomicfu":I
    :goto_1
    invoke-virtual {v6, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v12, v16

    check-cast v12, Lkotlinx/coroutines/internal/Segment;

    .local v12, "cur$iv$iv":Lkotlinx/coroutines/internal/Segment;
    const/16 v16, 0x0

    .line 434
    .local v16, "$i$a$-loop$atomicfu-ConcurrentLinkedListKt$moveForward$atomicfu$1$iv$iv":I
    move/from16 v17, v14

    .end local v14    # "$i$f$moveForward$atomicfu":I
    .local v17, "$i$f$moveForward$atomicfu":I
    iget-wide v13, v12, Lkotlinx/coroutines/internal/Segment;->id:J

    move-wide/from16 v18, v7

    .end local v7    # "id$iv":J
    .local v18, "id$iv":J
    iget-wide v7, v11, Lkotlinx/coroutines/internal/Segment;->id:J

    cmp-long v7, v13, v7

    if-ltz v7, :cond_0

    const/4 v7, 0x1

    goto :goto_2

    .line 435
    :cond_0
    invoke-virtual {v11}, Lkotlinx/coroutines/internal/Segment;->tryIncPointers$kotlinx_coroutines_core()Z

    move-result v7

    if-nez v7, :cond_1

    const/4 v7, 0x0

    goto :goto_2

    .line 436
    :cond_1
    invoke-static {v6, v0, v12, v11}, Landroidx/concurrent/futures/AbstractResolvableFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 437
    invoke-virtual {v12}, Lkotlinx/coroutines/internal/Segment;->decPointers$kotlinx_coroutines_core()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v12}, Lkotlinx/coroutines/internal/Segment;->remove()V

    .line 438
    :cond_2
    const/4 v7, 0x1

    .line 433
    .end local v11    # "to$iv$iv":Lkotlinx/coroutines/internal/Segment;
    .end local v12    # "cur$iv$iv":Lkotlinx/coroutines/internal/Segment;
    .end local v15    # "$i$f$loop$atomicfu":I
    .end local v16    # "$i$a$-loop$atomicfu-ConcurrentLinkedListKt$moveForward$atomicfu$1$iv$iv":I
    .end local v17    # "$i$f$moveForward$atomicfu":I
    :goto_2
    if-eqz v7, :cond_3

    goto :goto_3

    :cond_3
    move-wide/from16 v7, v18

    goto :goto_0

    .line 440
    .restart local v11    # "to$iv$iv":Lkotlinx/coroutines/internal/Segment;
    .restart local v12    # "cur$iv$iv":Lkotlinx/coroutines/internal/Segment;
    .restart local v15    # "$i$f$loop$atomicfu":I
    .restart local v16    # "$i$a$-loop$atomicfu-ConcurrentLinkedListKt$moveForward$atomicfu$1$iv$iv":I
    .restart local v17    # "$i$f$moveForward$atomicfu":I
    :cond_4
    invoke-virtual {v11}, Lkotlinx/coroutines/internal/Segment;->decPointers$kotlinx_coroutines_core()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v11}, Lkotlinx/coroutines/internal/Segment;->remove()V

    .line 441
    :cond_5
    move/from16 v14, v17

    move-wide/from16 v7, v18

    .end local v12    # "cur$iv$iv":Lkotlinx/coroutines/internal/Segment;
    .end local v16    # "$i$a$-loop$atomicfu-ConcurrentLinkedListKt$moveForward$atomicfu$1$iv$iv":I
    goto :goto_1

    .line 433
    .end local v11    # "to$iv$iv":Lkotlinx/coroutines/internal/Segment;
    .end local v15    # "$i$f$loop$atomicfu":I
    .end local v17    # "$i$f$moveForward$atomicfu":I
    .end local v18    # "id$iv":J
    .restart local v7    # "id$iv":J
    :cond_6
    move-wide/from16 v18, v7

    .line 290
    .end local v6    # "atomicfu$handler$iv":Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .end local v7    # "id$iv":J
    .end local v9    # "$i$f$findSegmentAndMoveForward$atomicfu":I
    .end local v10    # "s$iv":Ljava/lang/Object;
    :goto_3
    invoke-static {v10}, Lkotlinx/coroutines/internal/SegmentOrClosed;->getSegment-impl(Ljava/lang/Object;)Lkotlinx/coroutines/internal/Segment;

    move-result-object v6

    check-cast v6, Lkotlinx/coroutines/sync/SemaphoreSegment;

    .line 289
    nop

    .line 291
    .local v6, "segment":Lkotlinx/coroutines/sync/SemaphoreSegment;
    invoke-static {}, Lkotlinx/coroutines/sync/SemaphoreKt;->access$getSEGMENT_SIZE$p()I

    move-result v7

    int-to-long v7, v7

    rem-long v7, v3, v7

    long-to-int v7, v7

    .line 293
    .local v7, "i":I
    const/4 v8, 0x0

    .local v8, "expected$iv":Ljava/lang/Object;
    move-object v9, v6

    .local v9, "this_$iv":Lkotlinx/coroutines/sync/SemaphoreSegment;
    const/4 v10, 0x0

    .line 442
    .local v10, "$i$f$cas":I
    invoke-virtual {v9}, Lkotlinx/coroutines/sync/SemaphoreSegment;->getAcquirers()Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v11

    invoke-static {v11, v7, v8, v1}, Lkotlinx/coroutines/channels/ChannelSegment$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    .line 293
    .end local v8    # "expected$iv":Ljava/lang/Object;
    .end local v9    # "this_$iv":Lkotlinx/coroutines/sync/SemaphoreSegment;
    .end local v10    # "$i$f$cas":I
    if-eqz v8, :cond_7

    .line 294
    move-object v8, v6

    check-cast v8, Lkotlinx/coroutines/internal/Segment;

    invoke-interface {v1, v8, v7}, Lkotlinx/coroutines/Waiter;->invokeOnCancellation(Lkotlinx/coroutines/internal/Segment;I)V

    .line 295
    const/4 v8, 0x1

    return v8

    .line 299
    :cond_7
    invoke-static {}, Lkotlinx/coroutines/sync/SemaphoreKt;->access$getPERMIT$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v8

    .restart local v8    # "expected$iv":Ljava/lang/Object;
    invoke-static {}, Lkotlinx/coroutines/sync/SemaphoreKt;->access$getTAKEN$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v9

    .local v9, "value$iv":Ljava/lang/Object;
    move-object v10, v6

    .local v10, "this_$iv":Lkotlinx/coroutines/sync/SemaphoreSegment;
    const/4 v11, 0x0

    .line 443
    .local v11, "$i$f$cas":I
    invoke-virtual {v10}, Lkotlinx/coroutines/sync/SemaphoreSegment;->getAcquirers()Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v12

    invoke-static {v12, v7, v8, v9}, Lkotlinx/coroutines/channels/ChannelSegment$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    .line 299
    .end local v8    # "expected$iv":Ljava/lang/Object;
    .end local v9    # "value$iv":Ljava/lang/Object;
    .end local v10    # "this_$iv":Lkotlinx/coroutines/sync/SemaphoreSegment;
    .end local v11    # "$i$f$cas":I
    if-eqz v8, :cond_a

    .line 301
    nop

    .line 302
    instance-of v8, v1, Lkotlinx/coroutines/CancellableContinuation;

    if-eqz v8, :cond_8

    .line 303
    const-string v8, "null cannot be cast to non-null type kotlinx.coroutines.CancellableContinuation<kotlin.Unit>"

    invoke-static {v1, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v8, v1

    check-cast v8, Lkotlinx/coroutines/CancellableContinuation;

    .line 304
    move-object v8, v1

    check-cast v8, Lkotlinx/coroutines/CancellableContinuation;

    sget-object v9, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    iget-object v10, v0, Lkotlinx/coroutines/sync/SemaphoreImpl;->onCancellationRelease:Lkotlin/jvm/functions/Function1;

    invoke-interface {v8, v9, v10}, Lkotlinx/coroutines/CancellableContinuation;->resume(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V

    goto :goto_4

    .line 306
    :cond_8
    instance-of v8, v1, Lkotlinx/coroutines/selects/SelectInstance;

    if-eqz v8, :cond_9

    .line 307
    move-object v8, v1

    check-cast v8, Lkotlinx/coroutines/selects/SelectInstance;

    sget-object v9, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-interface {v8, v9}, Lkotlinx/coroutines/selects/SelectInstance;->selectInRegistrationPhase(Ljava/lang/Object;)V

    .line 311
    :goto_4
    const/4 v8, 0x1

    return v8

    .line 307
    :cond_9
    new-instance v8, Ljava/lang/IllegalStateException;

    .line 309
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "unexpected: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 313
    :cond_a
    const/4 v8, 0x1

    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v9

    if-eqz v9, :cond_d

    .line 398
    const/4 v9, 0x0

    .line 313
    .local v9, "$i$a$-assert-SemaphoreImpl$addAcquireToQueue$1":I
    move-object v10, v6

    .restart local v10    # "this_$iv":Lkotlinx/coroutines/sync/SemaphoreSegment;
    const/4 v11, 0x0

    .line 444
    .local v11, "$i$f$get":I
    invoke-virtual {v10}, Lkotlinx/coroutines/sync/SemaphoreSegment;->getAcquirers()Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    .line 313
    .end local v10    # "this_$iv":Lkotlinx/coroutines/sync/SemaphoreSegment;
    .end local v11    # "$i$f$get":I
    invoke-static {}, Lkotlinx/coroutines/sync/SemaphoreKt;->access$getBROKEN$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v11

    if-ne v10, v11, :cond_b

    move v13, v8

    goto :goto_5

    :cond_b
    const/4 v13, 0x0

    .end local v9    # "$i$a$-assert-SemaphoreImpl$addAcquireToQueue$1":I
    :goto_5
    if-eqz v13, :cond_c

    goto :goto_6

    :cond_c
    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v8

    .line 314
    :cond_d
    :goto_6
    const/4 v8, 0x0

    return v8
.end method

.method private final coerceAvailablePermitsAtMaximum()V
    .locals 3

    .line 275
    nop

    :cond_0
    sget-object v0, Lkotlinx/coroutines/sync/SemaphoreImpl;->_availablePermits$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 276
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v0

    .line 277
    .local v0, "cur":I
    iget v1, p0, Lkotlinx/coroutines/sync/SemaphoreImpl;->permits:I

    if-le v0, v1, :cond_1

    .line 278
    sget-object v1, Lkotlinx/coroutines/sync/SemaphoreImpl;->_availablePermits$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    iget v2, p0, Lkotlinx/coroutines/sync/SemaphoreImpl;->permits:I

    invoke-virtual {v1, p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 280
    .end local v0    # "cur":I
    :cond_1
    return-void
.end method

.method private final decPermits()I
    .locals 2

    .line 235
    nop

    :cond_0
    sget-object v0, Lkotlinx/coroutines/sync/SemaphoreImpl;->_availablePermits$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 237
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->getAndDecrement(Ljava/lang/Object;)I

    move-result v0

    .line 241
    .local v0, "p":I
    iget v1, p0, Lkotlinx/coroutines/sync/SemaphoreImpl;->permits:I

    if-gt v0, v1, :cond_0

    .line 243
    return v0
.end method

.method private final tryResumeAcquire(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "$this$tryResumeAcquire"    # Ljava/lang/Object;

    .line 344
    nop

    .line 345
    instance-of v0, p1, Lkotlinx/coroutines/CancellableContinuation;

    if-eqz v0, :cond_1

    .line 346
    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.CancellableContinuation<kotlin.Unit>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/CancellableContinuation;

    .line 347
    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/CancellableContinuation;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const/4 v2, 0x0

    iget-object v3, p0, Lkotlinx/coroutines/sync/SemaphoreImpl;->onCancellationRelease:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, v1, v2, v3}, Lkotlinx/coroutines/CancellableContinuation;->tryResume(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v0

    .line 348
    .local v0, "token":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 349
    move-object v1, p1

    check-cast v1, Lkotlinx/coroutines/CancellableContinuation;

    invoke-interface {v1, v0}, Lkotlinx/coroutines/CancellableContinuation;->completeResume(Ljava/lang/Object;)V

    .line 350
    const/4 v1, 0x1

    goto :goto_0

    .line 351
    :cond_0
    nop

    .end local v0    # "token":Ljava/lang/Object;
    const/4 v1, 0x0

    goto :goto_0

    .line 353
    :cond_1
    instance-of v0, p1, Lkotlinx/coroutines/selects/SelectInstance;

    if-eqz v0, :cond_2

    .line 354
    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/selects/SelectInstance;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-interface {v0, p0, v1}, Lkotlinx/coroutines/selects/SelectInstance;->trySelect(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .line 357
    :goto_0
    return v1

    .line 354
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 356
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unexpected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final tryResumeNextFromQueue()Z
    .locals 21

    move-object/from16 v0, p0

    sget-object v1, Lkotlinx/coroutines/sync/SemaphoreImpl;->head$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 319
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/sync/SemaphoreSegment;

    .local v1, "curHead":Lkotlinx/coroutines/sync/SemaphoreSegment;
    sget-object v2, Lkotlinx/coroutines/sync/SemaphoreImpl;->deqIdx$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 320
    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v2

    .line 321
    .local v2, "deqIdx":J
    invoke-static {}, Lkotlinx/coroutines/sync/SemaphoreKt;->access$getSEGMENT_SIZE$p()I

    move-result v4

    int-to-long v4, v4

    div-long v4, v2, v4

    .line 322
    .local v4, "id":J
    sget-object v6, Lkotlinx/coroutines/sync/SemaphoreImpl$tryResumeNextFromQueue$createNewSegment$1;->INSTANCE:Lkotlinx/coroutines/sync/SemaphoreImpl$tryResumeNextFromQueue$createNewSegment$1;

    check-cast v6, Lkotlin/reflect/KFunction;

    .local v6, "createNewSegment":Lkotlin/reflect/KFunction;
    sget-object v7, Lkotlinx/coroutines/sync/SemaphoreImpl;->head$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .local v7, "atomicfu$handler$iv":Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    const/4 v8, 0x0

    .line 445
    .local v8, "$i$f$findSegmentAndMoveForward$atomicfu":I
    :goto_0
    nop

    .line 446
    move-object v9, v1

    check-cast v9, Lkotlinx/coroutines/internal/Segment;

    move-object v10, v6

    check-cast v10, Lkotlin/jvm/functions/Function2;

    invoke-static {v9, v4, v5, v10}, Lkotlinx/coroutines/internal/ConcurrentLinkedListKt;->findSegmentInternal(Lkotlinx/coroutines/internal/Segment;JLkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object v9

    .line 447
    .local v9, "s$iv":Ljava/lang/Object;
    invoke-static {v9}, Lkotlinx/coroutines/internal/SegmentOrClosed;->isClosed-impl(Ljava/lang/Object;)Z

    move-result v10

    const/4 v11, 0x0

    if-nez v10, :cond_6

    invoke-static {v9}, Lkotlinx/coroutines/internal/SegmentOrClosed;->getSegment-impl(Ljava/lang/Object;)Lkotlinx/coroutines/internal/Segment;

    move-result-object v10

    .local v10, "to$iv$iv":Lkotlinx/coroutines/internal/Segment;
    const/4 v13, 0x0

    .local v13, "$i$f$moveForward$atomicfu":I
    const/4 v14, 0x0

    .local v14, "$i$f$loop$atomicfu":I
    :goto_1
    invoke-virtual {v7, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lkotlinx/coroutines/internal/Segment;

    .local v15, "cur$iv$iv":Lkotlinx/coroutines/internal/Segment;
    const/16 v16, 0x0

    .line 448
    .local v16, "$i$a$-loop$atomicfu-ConcurrentLinkedListKt$moveForward$atomicfu$1$iv$iv":I
    move/from16 v17, v13

    .end local v13    # "$i$f$moveForward$atomicfu":I
    .local v17, "$i$f$moveForward$atomicfu":I
    iget-wide v12, v15, Lkotlinx/coroutines/internal/Segment;->id:J

    move-object/from16 v18, v1

    move-wide/from16 v19, v2

    .end local v1    # "curHead":Lkotlinx/coroutines/sync/SemaphoreSegment;
    .end local v2    # "deqIdx":J
    .local v18, "curHead":Lkotlinx/coroutines/sync/SemaphoreSegment;
    .local v19, "deqIdx":J
    iget-wide v1, v10, Lkotlinx/coroutines/internal/Segment;->id:J

    cmp-long v1, v12, v1

    if-ltz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_2

    .line 449
    :cond_0
    invoke-virtual {v10}, Lkotlinx/coroutines/internal/Segment;->tryIncPointers$kotlinx_coroutines_core()Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v11

    goto :goto_2

    .line 450
    :cond_1
    invoke-static {v7, v0, v15, v10}, Landroidx/concurrent/futures/AbstractResolvableFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 451
    invoke-virtual {v15}, Lkotlinx/coroutines/internal/Segment;->decPointers$kotlinx_coroutines_core()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v15}, Lkotlinx/coroutines/internal/Segment;->remove()V

    .line 452
    :cond_2
    const/4 v1, 0x1

    .line 447
    .end local v10    # "to$iv$iv":Lkotlinx/coroutines/internal/Segment;
    .end local v14    # "$i$f$loop$atomicfu":I
    .end local v15    # "cur$iv$iv":Lkotlinx/coroutines/internal/Segment;
    .end local v16    # "$i$a$-loop$atomicfu-ConcurrentLinkedListKt$moveForward$atomicfu$1$iv$iv":I
    .end local v17    # "$i$f$moveForward$atomicfu":I
    :goto_2
    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    move-object/from16 v1, v18

    move-wide/from16 v2, v19

    goto :goto_0

    .line 454
    .restart local v10    # "to$iv$iv":Lkotlinx/coroutines/internal/Segment;
    .restart local v14    # "$i$f$loop$atomicfu":I
    .restart local v15    # "cur$iv$iv":Lkotlinx/coroutines/internal/Segment;
    .restart local v16    # "$i$a$-loop$atomicfu-ConcurrentLinkedListKt$moveForward$atomicfu$1$iv$iv":I
    .restart local v17    # "$i$f$moveForward$atomicfu":I
    :cond_4
    invoke-virtual {v10}, Lkotlinx/coroutines/internal/Segment;->decPointers$kotlinx_coroutines_core()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v10}, Lkotlinx/coroutines/internal/Segment;->remove()V

    .line 455
    :cond_5
    move/from16 v13, v17

    move-object/from16 v1, v18

    move-wide/from16 v2, v19

    .end local v15    # "cur$iv$iv":Lkotlinx/coroutines/internal/Segment;
    .end local v16    # "$i$a$-loop$atomicfu-ConcurrentLinkedListKt$moveForward$atomicfu$1$iv$iv":I
    goto :goto_1

    .line 447
    .end local v10    # "to$iv$iv":Lkotlinx/coroutines/internal/Segment;
    .end local v14    # "$i$f$loop$atomicfu":I
    .end local v17    # "$i$f$moveForward$atomicfu":I
    .end local v18    # "curHead":Lkotlinx/coroutines/sync/SemaphoreSegment;
    .end local v19    # "deqIdx":J
    .restart local v1    # "curHead":Lkotlinx/coroutines/sync/SemaphoreSegment;
    .restart local v2    # "deqIdx":J
    :cond_6
    move-object/from16 v18, v1

    move-wide/from16 v19, v2

    .line 324
    .end local v1    # "curHead":Lkotlinx/coroutines/sync/SemaphoreSegment;
    .end local v2    # "deqIdx":J
    .end local v7    # "atomicfu$handler$iv":Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .end local v8    # "$i$f$findSegmentAndMoveForward$atomicfu":I
    .end local v9    # "s$iv":Ljava/lang/Object;
    .restart local v18    # "curHead":Lkotlinx/coroutines/sync/SemaphoreSegment;
    .restart local v19    # "deqIdx":J
    :goto_3
    invoke-static {v9}, Lkotlinx/coroutines/internal/SegmentOrClosed;->getSegment-impl(Ljava/lang/Object;)Lkotlinx/coroutines/internal/Segment;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/sync/SemaphoreSegment;

    .line 323
    nop

    .line 325
    .local v1, "segment":Lkotlinx/coroutines/sync/SemaphoreSegment;
    invoke-virtual {v1}, Lkotlinx/coroutines/sync/SemaphoreSegment;->cleanPrev()V

    .line 326
    iget-wide v2, v1, Lkotlinx/coroutines/sync/SemaphoreSegment;->id:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_7

    return v11

    .line 327
    :cond_7
    invoke-static {}, Lkotlinx/coroutines/sync/SemaphoreKt;->access$getSEGMENT_SIZE$p()I

    move-result v2

    int-to-long v2, v2

    rem-long v2, v19, v2

    long-to-int v2, v2

    .line 328
    .local v2, "i":I
    invoke-static {}, Lkotlinx/coroutines/sync/SemaphoreKt;->access$getPERMIT$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v3

    .local v3, "value$iv":Ljava/lang/Object;
    move-object v7, v1

    .local v7, "this_$iv":Lkotlinx/coroutines/sync/SemaphoreSegment;
    const/4 v8, 0x0

    .line 456
    .local v8, "$i$f$getAndSet":I
    invoke-virtual {v7}, Lkotlinx/coroutines/sync/SemaphoreSegment;->getAcquirers()Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v9

    invoke-virtual {v9, v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->getAndSet(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 328
    .end local v3    # "value$iv":Ljava/lang/Object;
    .end local v7    # "this_$iv":Lkotlinx/coroutines/sync/SemaphoreSegment;
    .end local v8    # "$i$f$getAndSet":I
    nop

    .line 329
    .local v3, "cellState":Ljava/lang/Object;
    nop

    .line 330
    if-nez v3, :cond_a

    .line 333
    invoke-static {}, Lkotlinx/coroutines/sync/SemaphoreKt;->access$getMAX_SPIN_CYCLES$p()I

    move-result v7

    :goto_4
    if-ge v11, v7, :cond_9

    move v8, v11

    .local v8, "it":I
    const/4 v9, 0x0

    .line 334
    .local v9, "$i$a$-repeat-SemaphoreImpl$tryResumeNextFromQueue$1":I
    move-object v10, v1

    .local v10, "this_$iv":Lkotlinx/coroutines/sync/SemaphoreSegment;
    const/4 v12, 0x0

    .line 457
    .local v12, "$i$f$get":I
    invoke-virtual {v10}, Lkotlinx/coroutines/sync/SemaphoreSegment;->getAcquirers()Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    .line 334
    .end local v10    # "this_$iv":Lkotlinx/coroutines/sync/SemaphoreSegment;
    .end local v12    # "$i$f$get":I
    invoke-static {}, Lkotlinx/coroutines/sync/SemaphoreKt;->access$getTAKEN$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v12

    if-ne v10, v12, :cond_8

    const/4 v7, 0x1

    return v7

    .line 335
    :cond_8
    nop

    .line 333
    .end local v8    # "it":I
    .end local v9    # "$i$a$-repeat-SemaphoreImpl$tryResumeNextFromQueue$1":I
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 337
    :cond_9
    invoke-static {}, Lkotlinx/coroutines/sync/SemaphoreKt;->access$getPERMIT$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v7

    .local v7, "expected$iv":Ljava/lang/Object;
    invoke-static {}, Lkotlinx/coroutines/sync/SemaphoreKt;->access$getBROKEN$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v8

    .local v8, "value$iv":Ljava/lang/Object;
    move-object v9, v1

    .local v9, "this_$iv":Lkotlinx/coroutines/sync/SemaphoreSegment;
    const/4 v10, 0x0

    .line 458
    .local v10, "$i$f$cas":I
    invoke-virtual {v9}, Lkotlinx/coroutines/sync/SemaphoreSegment;->getAcquirers()Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v11

    invoke-static {v11, v2, v7, v8}, Lkotlinx/coroutines/channels/ChannelSegment$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    .end local v7    # "expected$iv":Ljava/lang/Object;
    .end local v8    # "value$iv":Ljava/lang/Object;
    .end local v9    # "this_$iv":Lkotlinx/coroutines/sync/SemaphoreSegment;
    .end local v10    # "$i$f$cas":I
    const/4 v8, 0x1

    .line 337
    xor-int/2addr v7, v8

    return v7

    .line 339
    :cond_a
    invoke-static {}, Lkotlinx/coroutines/sync/SemaphoreKt;->access$getCANCELLED$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v7

    if-ne v3, v7, :cond_b

    return v11

    .line 340
    :cond_b
    invoke-direct {v0, v3}, Lkotlinx/coroutines/sync/SemaphoreImpl;->tryResumeAcquire(Ljava/lang/Object;)Z

    move-result v7

    return v7
.end method


# virtual methods
.method public acquire(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1}, Lkotlinx/coroutines/sync/SemaphoreImpl;->acquire$suspendImpl(Lkotlinx/coroutines/sync/SemaphoreImpl;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected final acquire(Lkotlinx/coroutines/CancellableContinuation;)V
    .locals 7
    .param p1, "waiter"    # Lkotlinx/coroutines/CancellableContinuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CancellableContinuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 197
    move-object v0, p0

    .local v0, "this_$iv":Lkotlinx/coroutines/sync/SemaphoreImpl;
    const/4 v1, 0x0

    .line 411
    .local v1, "$i$f$acquire":I
    :cond_0
    nop

    .line 413
    invoke-direct {v0}, Lkotlinx/coroutines/sync/SemaphoreImpl;->decPermits()I

    move-result v2

    .line 415
    .local v2, "p$iv":I
    if-lez v2, :cond_1

    .line 416
    move-object v3, p1

    .local v3, "cont":Lkotlinx/coroutines/CancellableContinuation;
    const/4 v4, 0x0

    .line 200
    .local v4, "$i$a$-acquire-SemaphoreImpl$acquire$3":I
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    iget-object v6, p0, Lkotlinx/coroutines/sync/SemaphoreImpl;->onCancellationRelease:Lkotlin/jvm/functions/Function1;

    invoke-interface {v3, v5, v6}, Lkotlinx/coroutines/CancellableContinuation;->resume(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V

    .line 416
    .end local v3    # "cont":Lkotlinx/coroutines/CancellableContinuation;
    .end local v4    # "$i$a$-acquire-SemaphoreImpl$acquire$3":I
    nop

    .line 417
    goto :goto_0

    .line 420
    :cond_1
    move-object v3, p1

    .restart local v3    # "cont":Lkotlinx/coroutines/CancellableContinuation;
    const/4 v4, 0x0

    .line 199
    .local v4, "$i$a$-acquire-SemaphoreImpl$acquire$2":I
    const-string v5, "null cannot be cast to non-null type kotlinx.coroutines.Waiter"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, v3

    check-cast v5, Lkotlinx/coroutines/Waiter;

    invoke-direct {p0, v5}, Lkotlinx/coroutines/sync/SemaphoreImpl;->addAcquireToQueue(Lkotlinx/coroutines/Waiter;)Z

    move-result v3

    .line 420
    .end local v3    # "cont":Lkotlinx/coroutines/CancellableContinuation;
    .end local v4    # "$i$a$-acquire-SemaphoreImpl$acquire$2":I
    if-eqz v3, :cond_0

    .line 201
    .end local v0    # "this_$iv":Lkotlinx/coroutines/sync/SemaphoreImpl;
    .end local v1    # "$i$f$acquire":I
    .end local v2    # "p$iv":I
    :goto_0
    return-void
.end method

.method public getAvailablePermits()I
    .locals 2

    sget-object v0, Lkotlinx/coroutines/sync/SemaphoreImpl;->_availablePermits$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 152
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected final onAcquireRegFunction(Lkotlinx/coroutines/selects/SelectInstance;Ljava/lang/Object;)V
    .locals 6
    .param p1, "select"    # Lkotlinx/coroutines/selects/SelectInstance;
    .param p2, "ignoredParam"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/selects/SelectInstance<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 221
    move-object v0, p0

    .local v0, "this_$iv":Lkotlinx/coroutines/sync/SemaphoreImpl;
    const/4 v1, 0x0

    .line 421
    .local v1, "$i$f$acquire":I
    :cond_0
    nop

    .line 423
    invoke-direct {v0}, Lkotlinx/coroutines/sync/SemaphoreImpl;->decPermits()I

    move-result v2

    .line 425
    .local v2, "p$iv":I
    if-lez v2, :cond_1

    .line 426
    move-object v3, p1

    .local v3, "s":Lkotlinx/coroutines/selects/SelectInstance;
    const/4 v4, 0x0

    .line 224
    .local v4, "$i$a$-acquire-SemaphoreImpl$onAcquireRegFunction$2":I
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-interface {v3, v5}, Lkotlinx/coroutines/selects/SelectInstance;->selectInRegistrationPhase(Ljava/lang/Object;)V

    .line 426
    .end local v3    # "s":Lkotlinx/coroutines/selects/SelectInstance;
    .end local v4    # "$i$a$-acquire-SemaphoreImpl$onAcquireRegFunction$2":I
    nop

    .line 427
    goto :goto_0

    .line 430
    :cond_1
    move-object v3, p1

    .restart local v3    # "s":Lkotlinx/coroutines/selects/SelectInstance;
    const/4 v4, 0x0

    .line 223
    .local v4, "$i$a$-acquire-SemaphoreImpl$onAcquireRegFunction$1":I
    const-string v5, "null cannot be cast to non-null type kotlinx.coroutines.Waiter"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, v3

    check-cast v5, Lkotlinx/coroutines/Waiter;

    invoke-direct {p0, v5}, Lkotlinx/coroutines/sync/SemaphoreImpl;->addAcquireToQueue(Lkotlinx/coroutines/Waiter;)Z

    move-result v3

    .line 430
    .end local v3    # "s":Lkotlinx/coroutines/selects/SelectInstance;
    .end local v4    # "$i$a$-acquire-SemaphoreImpl$onAcquireRegFunction$1":I
    if-eqz v3, :cond_0

    .line 225
    .end local v0    # "this_$iv":Lkotlinx/coroutines/sync/SemaphoreImpl;
    .end local v1    # "$i$f$acquire":I
    .end local v2    # "p$iv":I
    :goto_0
    return-void
.end method

.method public release()V
    .locals 4

    .line 248
    nop

    :cond_0
    sget-object v0, Lkotlinx/coroutines/sync/SemaphoreImpl;->_availablePermits$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 250
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->getAndIncrement(Ljava/lang/Object;)I

    move-result v0

    .line 253
    .local v0, "p":I
    iget v1, p0, Lkotlinx/coroutines/sync/SemaphoreImpl;->permits:I

    if-ge v0, v1, :cond_2

    .line 260
    if-ltz v0, :cond_1

    return-void

    .line 265
    :cond_1
    invoke-direct {p0}, Lkotlinx/coroutines/sync/SemaphoreImpl;->tryResumeNextFromQueue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 256
    :cond_2
    invoke-direct {p0}, Lkotlinx/coroutines/sync/SemaphoreImpl;->coerceAvailablePermitsAtMaximum()V

    new-instance v1, Ljava/lang/IllegalStateException;

    .line 257
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The number of released permits cannot be greater than "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lkotlinx/coroutines/sync/SemaphoreImpl;->permits:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public tryAcquire()Z
    .locals 3

    .line 157
    nop

    :cond_0
    :goto_0
    sget-object v0, Lkotlinx/coroutines/sync/SemaphoreImpl;->_availablePermits$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 159
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v0

    .line 164
    .local v0, "p":I
    iget v1, p0, Lkotlinx/coroutines/sync/SemaphoreImpl;->permits:I

    if-le v0, v1, :cond_1

    .line 165
    invoke-direct {p0}, Lkotlinx/coroutines/sync/SemaphoreImpl;->coerceAvailablePermitsAtMaximum()V

    .line 166
    goto :goto_0

    .line 170
    :cond_1
    if-gtz v0, :cond_2

    const/4 v1, 0x0

    return v1

    .line 171
    :cond_2
    sget-object v1, Lkotlinx/coroutines/sync/SemaphoreImpl;->_availablePermits$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1
.end method
