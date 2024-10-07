.class public final Lkotlinx/coroutines/internal/OnDemandAllocatingPool;
.super Ljava/lang/Object;
.source "OnDemandAllocatingPool.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOnDemandAllocatingPool.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OnDemandAllocatingPool.kt\nkotlinx/coroutines/internal/OnDemandAllocatingPool\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 OnDemandAllocatingPool.kt\nkotlinx/coroutines/internal/OnDemandAllocatingPoolKt\n*L\n1#1,107:1\n41#1:108\n41#1:109\n35#1,7:110\n41#1:127\n1549#2:117\n1620#2,2:118\n1622#2:122\n1549#2:123\n1620#2,3:124\n101#3,2:120\n*S KotlinDebug\n*F\n+ 1 OnDemandAllocatingPool.kt\nkotlinx/coroutines/internal/OnDemandAllocatingPool\n*L\n35#1:108\n54#1:109\n76#1:110,7\n92#1:127\n77#1:117\n77#1:118,2\n77#1:122\n91#1:123\n91#1:124,3\n79#1:120,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0008\u0000\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u00020\u0002B!\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00028\u00000\u0006\u00a2\u0006\u0002\u0010\u0007J\u0006\u0010\u000c\u001a\u00020\rJ\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u000fJ\r\u0010\u0010\u001a\u00020\u0011H\u0000\u00a2\u0006\u0002\u0008\u0012J\u0008\u0010\u0013\u001a\u00020\u0011H\u0016J\t\u0010\u0014\u001a\u00020\u0004H\u0082\u0008J\r\u0010\u0015\u001a\u00020\r*\u00020\u0004H\u0082\u0008R\t\u0010\u0008\u001a\u00020\tX\u0082\u0004R\u001a\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00028\u00000\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\n\u001a\n\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u000bX\u0082\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lkotlinx/coroutines/internal/OnDemandAllocatingPool;",
        "T",
        "",
        "maxCapacity",
        "",
        "create",
        "Lkotlin/Function1;",
        "(ILkotlin/jvm/functions/Function1;)V",
        "controlState",
        "Lkotlinx/atomicfu/AtomicInt;",
        "elements",
        "Lkotlinx/atomicfu/AtomicArray;",
        "allocate",
        "",
        "close",
        "",
        "stateRepresentation",
        "",
        "stateRepresentation$kotlinx_coroutines_core",
        "toString",
        "tryForbidNewElements",
        "isClosed",
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
.field private static final controlState$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field private volatile controlState:I
    .annotation runtime Lkotlin/jvm/Volatile;
    .end annotation
.end field

.field private final create:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Integer;",
            "TT;>;"
        }
    .end annotation
.end field

.field private final elements:Ljava/util/concurrent/atomic/AtomicReferenceArray;

.field private final maxCapacity:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lkotlinx/coroutines/internal/OnDemandAllocatingPool;

    const-string v1, "controlState"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/internal/OnDemandAllocatingPool;->controlState$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(ILkotlin/jvm/functions/Function1;)V
    .locals 2
    .param p1, "maxCapacity"    # I
    .param p2, "create"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "+TT;>;)V"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput p1, p0, Lkotlinx/coroutines/internal/OnDemandAllocatingPool;->maxCapacity:I

    .line 20
    iput-object p2, p0, Lkotlinx/coroutines/internal/OnDemandAllocatingPool;->create:Lkotlin/jvm/functions/Function1;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 27
    iget v1, p0, Lkotlinx/coroutines/internal/OnDemandAllocatingPool;->maxCapacity:I

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    iput-object v0, p0, Lkotlinx/coroutines/internal/OnDemandAllocatingPool;->elements:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 18
    return-void
.end method

.method private final isClosed(I)Z
    .locals 2
    .param p1, "$this$isClosed"    # I

    const/4 v0, 0x0

    .line 41
    .local v0, "$i$f$isClosed":I
    const/high16 v1, -0x80000000

    and-int/2addr v1, p1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
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

.method private final tryForbidNewElements()I
    .locals 12

    const/4 v0, 0x0

    .local v0, "$i$f$tryForbidNewElements":I
    sget-object v1, Lkotlinx/coroutines/internal/OnDemandAllocatingPool;->controlState$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .local v1, "atomicfu$handler$iv":Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    move-object v2, p0

    .local v2, "this_$iv":Lkotlinx/coroutines/internal/OnDemandAllocatingPool;
    const/4 v3, 0x0

    .local v3, "$i$f$loop$atomicfu":I
    :goto_0
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v4

    .local v4, "it":I
    const/4 v5, 0x0

    .line 35
    .local v5, "$i$a$-loop$atomicfu-OnDemandAllocatingPool$tryForbidNewElements$1":I
    move v6, v4

    .local v6, "$this$isClosed$iv":I
    move-object v7, p0

    .local v7, "this_$iv":Lkotlinx/coroutines/internal/OnDemandAllocatingPool;
    const/4 v8, 0x0

    .line 108
    .local v8, "$i$f$isClosed":I
    const/high16 v9, -0x80000000

    and-int v10, v6, v9

    const/4 v11, 0x0

    if-eqz v10, :cond_0

    const/4 v10, 0x1

    goto :goto_1

    :cond_0
    move v10, v11

    .line 35
    .end local v6    # "$this$isClosed$iv":I
    .end local v7    # "this_$iv":Lkotlinx/coroutines/internal/OnDemandAllocatingPool;
    .end local v8    # "$i$f$isClosed":I
    :goto_1
    if-eqz v10, :cond_1

    return v11

    .line 36
    :cond_1
    sget-object v6, Lkotlinx/coroutines/internal/OnDemandAllocatingPool;->controlState$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    or-int v7, v4, v9

    invoke-virtual {v6, p0, v4, v7}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_2

    return v4

    .line 37
    :cond_2
    nop

    .end local v4    # "it":I
    .end local v5    # "$i$a$-loop$atomicfu-OnDemandAllocatingPool$tryForbidNewElements$1":I
    goto :goto_0
.end method


# virtual methods
.method public final allocate()Z
    .locals 11

    sget-object v0, Lkotlinx/coroutines/internal/OnDemandAllocatingPool;->controlState$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .local v0, "atomicfu$handler$iv":Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    move-object v1, p0

    .local v1, "this_$iv":Lkotlinx/coroutines/internal/OnDemandAllocatingPool;
    const/4 v2, 0x0

    .local v2, "$i$f$loop$atomicfu":I
    :goto_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v3

    .local v3, "ctl":I
    const/4 v4, 0x0

    .line 54
    .local v4, "$i$a$-loop$atomicfu-OnDemandAllocatingPool$allocate$1":I
    move v5, v3

    .local v5, "$this$isClosed$iv":I
    move-object v6, p0

    .local v6, "this_$iv":Lkotlinx/coroutines/internal/OnDemandAllocatingPool;
    const/4 v7, 0x0

    .line 109
    .local v7, "$i$f$isClosed":I
    const/high16 v8, -0x80000000

    and-int/2addr v8, v5

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eqz v8, :cond_0

    move v5, v10

    goto :goto_1

    :cond_0
    move v5, v9

    .line 54
    .end local v5    # "$this$isClosed$iv":I
    .end local v6    # "this_$iv":Lkotlinx/coroutines/internal/OnDemandAllocatingPool;
    .end local v7    # "$i$f$isClosed":I
    :goto_1
    if-eqz v5, :cond_1

    return v9

    .line 55
    :cond_1
    iget v5, p0, Lkotlinx/coroutines/internal/OnDemandAllocatingPool;->maxCapacity:I

    if-lt v3, v5, :cond_2

    return v10

    .line 56
    :cond_2
    sget-object v5, Lkotlinx/coroutines/internal/OnDemandAllocatingPool;->controlState$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v5, p0, v3, v6}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 57
    iget-object v5, p0, Lkotlinx/coroutines/internal/OnDemandAllocatingPool;->elements:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iget-object v6, p0, Lkotlinx/coroutines/internal/OnDemandAllocatingPool;->create:Lkotlin/jvm/functions/Function1;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 58
    return v10

    .line 60
    :cond_3
    nop

    .end local v3    # "ctl":I
    .end local v4    # "$i$a$-loop$atomicfu-OnDemandAllocatingPool$allocate$1":I
    goto :goto_0
.end method

.method public final close()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 76
    move-object v0, p0

    .local v0, "this_$iv":Lkotlinx/coroutines/internal/OnDemandAllocatingPool;
    const/4 v1, 0x0

    .local v1, "$i$f$tryForbidNewElements":I
    sget-object v2, Lkotlinx/coroutines/internal/OnDemandAllocatingPool;->controlState$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .local v2, "atomicfu$handler$iv$iv":Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    move-object v3, v0

    .local v3, "this_$iv$iv":Lkotlinx/coroutines/internal/OnDemandAllocatingPool;
    const/4 v4, 0x0

    .local v4, "$i$f$loop$atomicfu":I
    :goto_0
    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v5

    .local v5, "it$iv":I
    const/4 v6, 0x0

    .line 110
    .local v6, "$i$a$-loop$atomicfu-OnDemandAllocatingPool$tryForbidNewElements$1$iv":I
    move v7, v5

    .local v7, "$this$isClosed$iv$iv":I
    move-object v8, v0

    .local v8, "this_$iv$iv":Lkotlinx/coroutines/internal/OnDemandAllocatingPool;
    const/4 v9, 0x0

    .line 116
    .local v9, "$i$f$isClosed":I
    const/high16 v10, -0x80000000

    and-int v11, v7, v10

    const/4 v12, 0x0

    if-eqz v11, :cond_0

    const/4 v11, 0x1

    goto :goto_1

    :cond_0
    move v11, v12

    .line 110
    .end local v7    # "$this$isClosed$iv$iv":I
    .end local v8    # "this_$iv$iv":Lkotlinx/coroutines/internal/OnDemandAllocatingPool;
    .end local v9    # "$i$f$isClosed":I
    :goto_1
    if-eqz v11, :cond_1

    move v5, v12

    goto :goto_2

    .line 111
    :cond_1
    sget-object v7, Lkotlinx/coroutines/internal/OnDemandAllocatingPool;->controlState$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    or-int v8, v5, v10

    invoke-virtual {v7, v0, v5, v8}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 76
    .end local v0    # "this_$iv":Lkotlinx/coroutines/internal/OnDemandAllocatingPool;
    .end local v1    # "$i$f$tryForbidNewElements":I
    .end local v2    # "atomicfu$handler$iv$iv":Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .end local v3    # "this_$iv$iv":Lkotlinx/coroutines/internal/OnDemandAllocatingPool;
    .end local v4    # "$i$f$loop$atomicfu":I
    .end local v5    # "it$iv":I
    .end local v6    # "$i$a$-loop$atomicfu-OnDemandAllocatingPool$tryForbidNewElements$1$iv":I
    :goto_2
    move v0, v5

    .line 77
    .local v0, "elementsExisting":I
    invoke-static {v12, v0}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 117
    .local v2, "$i$f$map":I
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v1, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v3, Ljava/util/Collection;

    .local v3, "destination$iv$iv":Ljava/util/Collection;
    move-object v4, v1

    .local v4, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v5, 0x0

    .line 118
    .local v5, "$i$f$mapTo":I
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    move-object v7, v6

    check-cast v7, Lkotlin/collections/IntIterator;

    invoke-virtual {v7}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v7

    .line 119
    .local v7, "item$iv$iv":I
    move v8, v7

    .local v8, "i":I
    const/4 v9, 0x0

    .line 79
    .local v9, "$i$a$-map-OnDemandAllocatingPool$close$1":I
    const/4 v10, 0x0

    .line 120
    .local v10, "$i$f$loop":I
    :goto_4
    nop

    .line 121
    const/4 v11, 0x0

    .line 80
    .local v11, "$i$a$-loop-OnDemandAllocatingPool$close$1$1":I
    iget-object v12, p0, Lkotlinx/coroutines/internal/OnDemandAllocatingPool;->elements:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const/4 v13, 0x0

    invoke-virtual {v12, v8, v13}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->getAndSet(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 81
    .local v12, "element":Ljava/lang/Object;
    if-eqz v12, :cond_2

    .line 82
    nop

    .line 119
    .end local v8    # "i":I
    .end local v9    # "$i$a$-map-OnDemandAllocatingPool$close$1":I
    .end local v10    # "$i$f$loop":I
    .end local v11    # "$i$a$-loop-OnDemandAllocatingPool$close$1$1":I
    .end local v12    # "element":Ljava/lang/Object;
    invoke-interface {v3, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 84
    .restart local v8    # "i":I
    .restart local v9    # "$i$a$-map-OnDemandAllocatingPool$close$1":I
    .restart local v10    # "$i$f$loop":I
    .restart local v11    # "$i$a$-loop-OnDemandAllocatingPool$close$1$1":I
    .restart local v12    # "element":Ljava/lang/Object;
    :cond_2
    nop

    .line 121
    .end local v11    # "$i$a$-loop-OnDemandAllocatingPool$close$1$1":I
    .end local v12    # "element":Ljava/lang/Object;
    goto :goto_4

    .line 122
    .end local v7    # "item$iv$iv":I
    .end local v8    # "i":I
    .end local v9    # "$i$a$-map-OnDemandAllocatingPool$close$1":I
    .end local v10    # "$i$f$loop":I
    :cond_3
    nop

    .end local v3    # "destination$iv$iv":Ljava/util/Collection;
    .end local v4    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v5    # "$i$f$mapTo":I
    check-cast v3, Ljava/util/List;

    .line 117
    nop

    .line 77
    .end local v1    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$map":I
    return-object v3

    .line 112
    .local v0, "this_$iv":Lkotlinx/coroutines/internal/OnDemandAllocatingPool;
    .local v1, "$i$f$tryForbidNewElements":I
    .local v2, "atomicfu$handler$iv$iv":Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .local v3, "this_$iv$iv":Lkotlinx/coroutines/internal/OnDemandAllocatingPool;
    .local v4, "$i$f$loop$atomicfu":I
    .local v5, "it$iv":I
    .restart local v6    # "$i$a$-loop$atomicfu-OnDemandAllocatingPool$tryForbidNewElements$1$iv":I
    :cond_4
    nop

    .end local v5    # "it$iv":I
    .end local v6    # "$i$a$-loop$atomicfu-OnDemandAllocatingPool$tryForbidNewElements$1$iv":I
    goto :goto_0
.end method

.method public final stateRepresentation$kotlinx_coroutines_core()Ljava/lang/String;
    .locals 12

    sget-object v0, Lkotlinx/coroutines/internal/OnDemandAllocatingPool;->controlState$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 90
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v0

    .line 91
    .local v0, "ctl":I
    const v1, 0x7fffffff

    and-int/2addr v1, v0

    const/4 v2, 0x0

    invoke-static {v2, v1}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 123
    .local v3, "$i$f$map":I
    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v1, v5}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v4, Ljava/util/Collection;

    .local v4, "destination$iv$iv":Ljava/util/Collection;
    move-object v5, v1

    .local v5, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v6, 0x0

    .line 124
    .local v6, "$i$f$mapTo":I
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    move-object v8, v7

    check-cast v8, Lkotlin/collections/IntIterator;

    invoke-virtual {v8}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v8

    .line 125
    .local v8, "item$iv$iv":I
    move v9, v8

    .local v9, "it":I
    const/4 v10, 0x0

    .line 91
    .local v10, "$i$a$-map-OnDemandAllocatingPool$stateRepresentation$elementsStr$1":I
    iget-object v11, p0, Lkotlinx/coroutines/internal/OnDemandAllocatingPool;->elements:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v11, v9}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    .line 125
    .end local v9    # "it":I
    .end local v10    # "$i$a$-map-OnDemandAllocatingPool$stateRepresentation$elementsStr$1":I
    invoke-interface {v4, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 126
    .end local v8    # "item$iv$iv":I
    :cond_0
    nop

    .end local v4    # "destination$iv$iv":Ljava/util/Collection;
    .end local v5    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v6    # "$i$f$mapTo":I
    check-cast v4, Ljava/util/List;

    .line 123
    nop

    .line 91
    .end local v1    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v3    # "$i$f$map":I
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 92
    .local v1, "elementsStr":Ljava/lang/String;
    move v3, v0

    .local v3, "$this$isClosed$iv":I
    move-object v4, p0

    .local v4, "this_$iv":Lkotlinx/coroutines/internal/OnDemandAllocatingPool;
    const/4 v5, 0x0

    .line 127
    .local v5, "$i$f$isClosed":I
    const/high16 v6, -0x80000000

    and-int/2addr v6, v3

    if-eqz v6, :cond_1

    const/4 v2, 0x1

    .line 92
    .end local v3    # "$this$isClosed$iv":I
    .end local v4    # "this_$iv":Lkotlinx/coroutines/internal/OnDemandAllocatingPool;
    .end local v5    # "$i$f$isClosed":I
    :cond_1
    if-eqz v2, :cond_2

    const-string v2, "[closed]"

    goto :goto_1

    :cond_2
    const-string v2, ""

    .line 93
    .local v2, "closedStr":Ljava/lang/String;
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OnDemandAllocatingPool("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/OnDemandAllocatingPool;->stateRepresentation$kotlinx_coroutines_core()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
