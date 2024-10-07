.class final Lkotlinx/coroutines/sync/MutexImpl$SelectInstanceWithOwner;
.super Ljava/lang/Object;
.source "Mutex.kt"

# interfaces
.implements Lkotlinx/coroutines/selects/SelectInstanceInternal;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/sync/MutexImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SelectInstanceWithOwner"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Q:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/selects/SelectInstanceInternal<",
        "TQ;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMutex.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Mutex.kt\nkotlinx/coroutines/sync/MutexImpl$SelectInstanceWithOwner\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,300:1\n1#2:301\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0008\u0082\u0004\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u0002B\u001d\u0012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0002\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\u0011\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0096\u0001J\u001d\u0010\u000f\u001a\u00020\u000c2\n\u0010\u0010\u001a\u0006\u0012\u0002\u0008\u00030\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0096\u0001J\u0012\u0010\u0014\u001a\u00020\u000c2\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0005H\u0016J\u001a\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00052\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0005H\u0016R\u0012\u0010\u0007\u001a\u00020\u0008X\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\nR\u0012\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00028\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001a"
    }
    d2 = {
        "Lkotlinx/coroutines/sync/MutexImpl$SelectInstanceWithOwner;",
        "Q",
        "Lkotlinx/coroutines/selects/SelectInstanceInternal;",
        "select",
        "owner",
        "",
        "(Lkotlinx/coroutines/sync/MutexImpl;Lkotlinx/coroutines/selects/SelectInstanceInternal;Ljava/lang/Object;)V",
        "context",
        "Lkotlin/coroutines/CoroutineContext;",
        "getContext",
        "()Lkotlin/coroutines/CoroutineContext;",
        "disposeOnCompletion",
        "",
        "disposableHandle",
        "Lkotlinx/coroutines/DisposableHandle;",
        "invokeOnCancellation",
        "segment",
        "Lkotlinx/coroutines/internal/Segment;",
        "index",
        "",
        "selectInRegistrationPhase",
        "internalResult",
        "trySelect",
        "",
        "clauseObject",
        "result",
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


# instance fields
.field public final owner:Ljava/lang/Object;

.field public final select:Lkotlinx/coroutines/selects/SelectInstanceInternal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/selects/SelectInstanceInternal<",
            "TQ;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lkotlinx/coroutines/sync/MutexImpl;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/sync/MutexImpl;Lkotlinx/coroutines/selects/SelectInstanceInternal;Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$0"    # Lkotlinx/coroutines/sync/MutexImpl;
    .param p2, "select"    # Lkotlinx/coroutines/selects/SelectInstanceInternal;
    .param p3, "owner"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/selects/SelectInstanceInternal<",
            "TQ;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 271
    iput-object p1, p0, Lkotlinx/coroutines/sync/MutexImpl$SelectInstanceWithOwner;->this$0:Lkotlinx/coroutines/sync/MutexImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 272
    iput-object p2, p0, Lkotlinx/coroutines/sync/MutexImpl$SelectInstanceWithOwner;->select:Lkotlinx/coroutines/selects/SelectInstanceInternal;

    .line 274
    iput-object p3, p0, Lkotlinx/coroutines/sync/MutexImpl$SelectInstanceWithOwner;->owner:Ljava/lang/Object;

    .line 271
    return-void
.end method


# virtual methods
.method public disposeOnCompletion(Lkotlinx/coroutines/DisposableHandle;)V
    .locals 1

    iget-object v0, p0, Lkotlinx/coroutines/sync/MutexImpl$SelectInstanceWithOwner;->select:Lkotlinx/coroutines/selects/SelectInstanceInternal;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/selects/SelectInstanceInternal;->disposeOnCompletion(Lkotlinx/coroutines/DisposableHandle;)V

    return-void
.end method

.method public getContext()Lkotlin/coroutines/CoroutineContext;
    .locals 1

    iget-object v0, p0, Lkotlinx/coroutines/sync/MutexImpl$SelectInstanceWithOwner;->select:Lkotlinx/coroutines/selects/SelectInstanceInternal;

    invoke-interface {v0}, Lkotlinx/coroutines/selects/SelectInstanceInternal;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    return-object v0
.end method

.method public invokeOnCancellation(Lkotlinx/coroutines/internal/Segment;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/internal/Segment<",
            "*>;I)V"
        }
    .end annotation

    iget-object v0, p0, Lkotlinx/coroutines/sync/MutexImpl$SelectInstanceWithOwner;->select:Lkotlinx/coroutines/selects/SelectInstanceInternal;

    invoke-interface {v0, p1, p2}, Lkotlinx/coroutines/selects/SelectInstanceInternal;->invokeOnCancellation(Lkotlinx/coroutines/internal/Segment;I)V

    return-void
.end method

.method public selectInRegistrationPhase(Ljava/lang/Object;)V
    .locals 3
    .param p1, "internalResult"    # Ljava/lang/Object;

    .line 285
    iget-object v0, p0, Lkotlinx/coroutines/sync/MutexImpl$SelectInstanceWithOwner;->this$0:Lkotlinx/coroutines/sync/MutexImpl;

    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 301
    const/4 v1, 0x0

    .local v1, "$i$a$-assert-MutexImpl$SelectInstanceWithOwner$selectInRegistrationPhase$1":I
    invoke-static {}, Lkotlinx/coroutines/sync/MutexImpl;->access$getOwner$FU$p()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v2

    .line 285
    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlinx/coroutines/sync/MutexKt;->access$getNO_OWNER$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .end local v1    # "$i$a$-assert-MutexImpl$SelectInstanceWithOwner$selectInRegistrationPhase$1":I
    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_2
    :goto_1
    invoke-static {}, Lkotlinx/coroutines/sync/MutexImpl;->access$getOwner$FU$p()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    .line 286
    iget-object v1, p0, Lkotlinx/coroutines/sync/MutexImpl$SelectInstanceWithOwner;->this$0:Lkotlinx/coroutines/sync/MutexImpl;

    iget-object v2, p0, Lkotlinx/coroutines/sync/MutexImpl$SelectInstanceWithOwner;->owner:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 287
    iget-object v0, p0, Lkotlinx/coroutines/sync/MutexImpl$SelectInstanceWithOwner;->select:Lkotlinx/coroutines/selects/SelectInstanceInternal;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/selects/SelectInstanceInternal;->selectInRegistrationPhase(Ljava/lang/Object;)V

    .line 288
    return-void
.end method

.method public trySelect(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "clauseObject"    # Ljava/lang/Object;
    .param p2, "result"    # Ljava/lang/Object;

    .line 278
    iget-object v0, p0, Lkotlinx/coroutines/sync/MutexImpl$SelectInstanceWithOwner;->this$0:Lkotlinx/coroutines/sync/MutexImpl;

    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 301
    const/4 v1, 0x0

    .local v1, "$i$a$-assert-MutexImpl$SelectInstanceWithOwner$trySelect$1":I
    invoke-static {}, Lkotlinx/coroutines/sync/MutexImpl;->access$getOwner$FU$p()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v2

    .line 278
    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlinx/coroutines/sync/MutexKt;->access$getNO_OWNER$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .end local v1    # "$i$a$-assert-MutexImpl$SelectInstanceWithOwner$trySelect$1":I
    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 279
    :cond_2
    :goto_1
    iget-object v0, p0, Lkotlinx/coroutines/sync/MutexImpl$SelectInstanceWithOwner;->select:Lkotlinx/coroutines/selects/SelectInstanceInternal;

    invoke-interface {v0, p1, p2}, Lkotlinx/coroutines/selects/SelectInstanceInternal;->trySelect(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p0, Lkotlinx/coroutines/sync/MutexImpl$SelectInstanceWithOwner;->this$0:Lkotlinx/coroutines/sync/MutexImpl;

    move v2, v0

    .local v2, "success":Z
    const/4 v3, 0x0

    .line 280
    .local v3, "$i$a$-also-MutexImpl$SelectInstanceWithOwner$trySelect$2":I
    if-eqz v2, :cond_3

    invoke-static {}, Lkotlinx/coroutines/sync/MutexImpl;->access$getOwner$FU$p()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v4

    iget-object v5, p0, Lkotlinx/coroutines/sync/MutexImpl$SelectInstanceWithOwner;->owner:Ljava/lang/Object;

    invoke-virtual {v4, v1, v5}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 281
    :cond_3
    nop

    .line 279
    .end local v2    # "success":Z
    .end local v3    # "$i$a$-also-MutexImpl$SelectInstanceWithOwner$trySelect$2":I
    return v0
.end method
