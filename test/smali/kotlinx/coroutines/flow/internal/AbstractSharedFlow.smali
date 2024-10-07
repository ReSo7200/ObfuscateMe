.class public abstract Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;
.super Ljava/lang/Object;
.source "AbstractSharedFlow.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot<",
        "*>;>",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAbstractSharedFlow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AbstractSharedFlow.kt\nkotlinx/coroutines/flow/internal/AbstractSharedFlow\n+ 2 Synchronized.common.kt\nkotlinx/coroutines/internal/Synchronized_commonKt\n+ 3 Synchronized.kt\nkotlinx/coroutines/internal/SynchronizedKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,132:1\n28#2,4:133\n28#2,4:138\n28#2,4:144\n20#3:137\n20#3:142\n20#3:148\n1#4:143\n13579#5,2:149\n*S KotlinDebug\n*F\n+ 1 AbstractSharedFlow.kt\nkotlinx/coroutines/flow/internal/AbstractSharedFlow\n*L\n30#1:133,4\n45#1:138,4\n76#1:144,4\n30#1:137\n45#1:142\n76#1:148\n95#1:149,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u0011\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008 \u0018\u0000*\u000c\u0008\u0000\u0010\u0001*\u0006\u0012\u0002\u0008\u00030\u00022\u00060\u0003j\u0002`\u0004B\u0005\u00a2\u0006\u0002\u0010\u0005J\r\u0010\u0017\u001a\u00028\u0000H\u0004\u00a2\u0006\u0002\u0010\u0018J\r\u0010\u0019\u001a\u00028\u0000H$\u00a2\u0006\u0002\u0010\u0018J\u001d\u0010\u001a\u001a\n\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u000e2\u0006\u0010\u001b\u001a\u00020\tH$\u00a2\u0006\u0002\u0010\u001cJ\u001d\u0010\u001d\u001a\u00020\u001e2\u0012\u0010\u001f\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u001e0 H\u0084\u0008J\u0015\u0010!\u001a\u00020\u001e2\u0006\u0010\"\u001a\u00028\u0000H\u0004\u00a2\u0006\u0002\u0010#R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\n\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\t@BX\u0084\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u000e\u0010\r\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R4\u0010\u000f\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00018\u0000\u0018\u00010\u000e2\u0010\u0010\u0008\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00018\u0000\u0018\u00010\u000e@BX\u0084\u000e\u00a2\u0006\n\n\u0002\u0010\u0012\u001a\u0004\u0008\u0010\u0010\u0011R\u0017\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00148F\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\u0016\u00a8\u0006$"
    }
    d2 = {
        "Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;",
        "S",
        "Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;",
        "",
        "Lkotlinx/coroutines/internal/SynchronizedObject;",
        "()V",
        "_subscriptionCount",
        "Lkotlinx/coroutines/flow/internal/SubscriptionCountStateFlow;",
        "<set-?>",
        "",
        "nCollectors",
        "getNCollectors",
        "()I",
        "nextIndex",
        "",
        "slots",
        "getSlots",
        "()[Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;",
        "[Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;",
        "subscriptionCount",
        "Lkotlinx/coroutines/flow/StateFlow;",
        "getSubscriptionCount",
        "()Lkotlinx/coroutines/flow/StateFlow;",
        "allocateSlot",
        "()Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;",
        "createSlot",
        "createSlotArray",
        "size",
        "(I)[Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;",
        "forEachSlotLocked",
        "",
        "block",
        "Lkotlin/Function1;",
        "freeSlot",
        "slot",
        "(Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;)V",
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
.field private _subscriptionCount:Lkotlinx/coroutines/flow/internal/SubscriptionCountStateFlow;

.field private nCollectors:I

.field private nextIndex:I

.field private slots:[Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TS;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getNCollectors(Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;)I
    .locals 1
    .param p0, "$this"    # Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;

    .line 21
    iget v0, p0, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->nCollectors:I

    return v0
.end method

.method public static final synthetic access$getSlots(Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;)[Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;
    .locals 1
    .param p0, "$this"    # Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;

    .line 21
    iget-object v0, p0, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->slots:[Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;

    return-object v0
.end method


# virtual methods
.method protected final allocateSlot()Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    .line 44
    const/4 v0, 0x0

    .line 45
    .local v0, "subscriptionCount":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 138
    .local v1, "$i$f$synchronized":I
    nop

    .line 141
    const/4 v2, 0x0

    .line 142
    .local v2, "$i$f$synchronizedImpl":I
    monitor-enter p0

    const/4 v3, 0x0

    .line 46
    .local v3, "$i$a$-synchronized-AbstractSharedFlow$allocateSlot$slot$1":I
    :try_start_0
    iget-object v4, p0, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->slots:[Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;

    .line 47
    .local v4, "curSlots":[Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;
    const/4 v5, 0x2

    if-nez v4, :cond_0

    invoke-virtual {p0, v5}, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->createSlotArray(I)[Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;

    move-result-object v5

    move-object v6, v5

    .line 143
    .local v6, "it":[Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;
    const/4 v7, 0x0

    .line 47
    .local v7, "$i$a$-also-AbstractSharedFlow$allocateSlot$slot$1$slots$1":I
    iput-object v6, p0, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->slots:[Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;

    move-object v4, v5

    .end local v6    # "it":[Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;
    .end local v7    # "$i$a$-also-AbstractSharedFlow$allocateSlot$slot$1$slots$1":I
    goto :goto_0

    .line 48
    :cond_0
    iget v6, p0, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->nCollectors:I

    array-length v7, v4

    if-lt v6, v7, :cond_1

    .line 49
    array-length v6, v4

    mul-int/2addr v6, v5

    invoke-static {v4, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    const-string v6, "copyOf(this, newSize)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v6, v5

    check-cast v6, [Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;

    .line 143
    .restart local v6    # "it":[Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;
    const/4 v7, 0x0

    .line 49
    .local v7, "$i$a$-also-AbstractSharedFlow$allocateSlot$slot$1$slots$2":I
    iput-object v6, p0, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->slots:[Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;

    .end local v6    # "it":[Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;
    .end local v7    # "$i$a$-also-AbstractSharedFlow$allocateSlot$slot$1$slots$2":I
    check-cast v5, [Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;

    move-object v4, v5

    goto :goto_0

    .line 51
    :cond_1
    nop

    .line 46
    .end local v4    # "curSlots":[Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;
    :goto_0
    nop

    .line 54
    .local v4, "slots":[Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;
    const/4 v5, 0x0

    .local v5, "index":I
    iget v6, p0, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->nextIndex:I

    move v5, v6

    const/4 v6, 0x0

    .line 56
    .local v6, "slot":Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;
    :cond_2
    nop

    .line 57
    aget-object v7, v4, v5

    if-nez v7, :cond_3

    invoke-virtual {p0}, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->createSlot()Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;

    move-result-object v7

    move-object v8, v7

    .line 143
    .local v8, "it":Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;
    const/4 v9, 0x0

    .line 57
    .local v9, "$i$a$-also-AbstractSharedFlow$allocateSlot$slot$1$1":I
    aput-object v8, v4, v5

    .end local v8    # "it":Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;
    .end local v9    # "$i$a$-also-AbstractSharedFlow$allocateSlot$slot$1$1":I
    :cond_3
    move-object v6, v7

    .line 58
    add-int/lit8 v5, v5, 0x1

    .line 59
    array-length v7, v4

    if-lt v5, v7, :cond_4

    const/4 v5, 0x0

    .line 60
    :cond_4
    const-string v7, "null cannot be cast to non-null type kotlinx.coroutines.flow.internal.AbstractSharedFlowSlot<kotlin.Any>"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;->allocateLocked(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 62
    iput v5, p0, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->nextIndex:I

    .line 63
    iget v7, p0, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->nCollectors:I

    const/4 v8, 0x1

    add-int/2addr v7, v8

    iput v7, p0, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->nCollectors:I

    .line 64
    iget-object v7, p0, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->_subscriptionCount:Lkotlinx/coroutines/flow/internal/SubscriptionCountStateFlow;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v7

    .line 65
    nop

    .line 142
    .end local v3    # "$i$a$-synchronized-AbstractSharedFlow$allocateSlot$slot$1":I
    .end local v4    # "slots":[Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;
    .end local v5    # "index":I
    .end local v6    # "slot":Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;
    monitor-exit p0

    .line 141
    .end local v2    # "$i$f$synchronizedImpl":I
    nop

    .line 45
    .end local v1    # "$i$f$synchronized":I
    move-object v1, v6

    .line 68
    .local v1, "slot":Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;
    if-eqz v0, :cond_5

    invoke-virtual {v0, v8}, Lkotlinx/coroutines/flow/internal/SubscriptionCountStateFlow;->increment(I)Z

    .line 69
    :cond_5
    return-object v1

    .line 142
    .local v1, "$i$f$synchronized":I
    .restart local v2    # "$i$f$synchronizedImpl":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method protected abstract createSlot()Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation
.end method

.method protected abstract createSlotArray(I)[Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[TS;"
        }
    .end annotation
.end method

.method protected final forEachSlotLocked(Lkotlin/jvm/functions/Function1;)V
    .locals 8
    .param p1, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-TS;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 94
    .local v0, "$i$f$forEachSlotLocked":I
    invoke-static {p0}, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->access$getNCollectors(Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;)I

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 95
    :cond_0
    invoke-static {p0}, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->access$getSlots(Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;)[Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;

    move-result-object v1

    if-eqz v1, :cond_3

    .local v1, "$this$forEach$iv":[Ljava/lang/Object;
    const/4 v2, 0x0

    .line 149
    .local v2, "$i$f$forEach":I
    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v1, v4

    .local v5, "element$iv":Ljava/lang/Object;
    move-object v6, v5

    .local v6, "slot":Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;
    const/4 v7, 0x0

    .line 96
    .local v7, "$i$a$-forEach-AbstractSharedFlow$forEachSlotLocked$1":I
    if-eqz v6, :cond_1

    invoke-interface {p1, v6}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    :cond_1
    nop

    .line 149
    .end local v6    # "slot":Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;
    .end local v7    # "$i$a$-forEach-AbstractSharedFlow$forEachSlotLocked$1":I
    nop

    .end local v5    # "element$iv":Ljava/lang/Object;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 150
    :cond_2
    nop

    .line 98
    .end local v1    # "$this$forEach$iv":[Ljava/lang/Object;
    .end local v2    # "$i$f$forEach":I
    :cond_3
    return-void
.end method

.method protected final freeSlot(Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;)V
    .locals 7
    .param p1, "slot"    # Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    .line 75
    const/4 v0, 0x0

    .line 76
    .local v0, "subscriptionCount":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 144
    .local v1, "$i$f$synchronized":I
    nop

    .line 147
    const/4 v2, 0x0

    .line 148
    .local v2, "$i$f$synchronizedImpl":I
    monitor-enter p0

    const/4 v3, 0x0

    .line 77
    .local v3, "$i$a$-synchronized-AbstractSharedFlow$freeSlot$resumes$1":I
    :try_start_0
    iget v4, p0, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->nCollectors:I

    const/4 v5, -0x1

    add-int/2addr v4, v5

    iput v4, p0, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->nCollectors:I

    .line 78
    iget-object v4, p0, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->_subscriptionCount:Lkotlinx/coroutines/flow/internal/SubscriptionCountStateFlow;

    move-object v0, v4

    .line 80
    iget v4, p0, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->nCollectors:I

    const/4 v6, 0x0

    if-nez v4, :cond_0

    iput v6, p0, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->nextIndex:I

    .line 81
    :cond_0
    const-string v4, "null cannot be cast to non-null type kotlinx.coroutines.flow.internal.AbstractSharedFlowSlot<kotlin.Any>"

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;->freeLocked(Ljava/lang/Object;)[Lkotlin/coroutines/Continuation;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    .end local v3    # "$i$a$-synchronized-AbstractSharedFlow$freeSlot$resumes$1":I
    monitor-exit p0

    .line 147
    .end local v2    # "$i$f$synchronizedImpl":I
    nop

    .line 76
    .end local v1    # "$i$f$synchronized":I
    move-object v1, v4

    .line 88
    .local v1, "resumes":[Lkotlin/coroutines/Continuation;
    array-length v2, v1

    :goto_0
    if-ge v6, v2, :cond_2

    aget-object v3, v1, v6

    .local v3, "cont":Lkotlin/coroutines/Continuation;
    if-eqz v3, :cond_1

    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v4}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .end local v3    # "cont":Lkotlin/coroutines/Continuation;
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 90
    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0, v5}, Lkotlinx/coroutines/flow/internal/SubscriptionCountStateFlow;->increment(I)Z

    .line 91
    :cond_3
    return-void

    .line 148
    .local v1, "$i$f$synchronized":I
    .restart local v2    # "$i$f$synchronizedImpl":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method protected final getNCollectors()I
    .locals 1

    .line 24
    iget v0, p0, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->nCollectors:I

    return v0
.end method

.method protected final getSlots()[Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TS;"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->slots:[Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;

    return-object v0
.end method

.method public final getSubscriptionCount()Lkotlinx/coroutines/flow/StateFlow;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 30
    const/4 v0, 0x0

    .line 133
    .local v0, "$i$f$synchronized":I
    nop

    .line 136
    const/4 v1, 0x0

    .line 137
    .local v1, "$i$f$synchronizedImpl":I
    monitor-enter p0

    const/4 v2, 0x0

    .line 32
    .local v2, "$i$a$-synchronized-AbstractSharedFlow$subscriptionCount$1":I
    :try_start_0
    iget-object v3, p0, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->_subscriptionCount:Lkotlinx/coroutines/flow/internal/SubscriptionCountStateFlow;

    if-nez v3, :cond_0

    new-instance v3, Lkotlinx/coroutines/flow/internal/SubscriptionCountStateFlow;

    iget v4, p0, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->nCollectors:I

    invoke-direct {v3, v4}, Lkotlinx/coroutines/flow/internal/SubscriptionCountStateFlow;-><init>(I)V

    move-object v4, v3

    .local v4, "it":Lkotlinx/coroutines/flow/internal/SubscriptionCountStateFlow;
    const/4 v5, 0x0

    .line 33
    .local v5, "$i$a$-also-AbstractSharedFlow$subscriptionCount$1$1":I
    iput-object v4, p0, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->_subscriptionCount:Lkotlinx/coroutines/flow/internal/SubscriptionCountStateFlow;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    nop

    .line 32
    .end local v4    # "it":Lkotlinx/coroutines/flow/internal/SubscriptionCountStateFlow;
    .end local v5    # "$i$a$-also-AbstractSharedFlow$subscriptionCount$1$1":I
    :cond_0
    nop

    .line 137
    .end local v2    # "$i$a$-synchronized-AbstractSharedFlow$subscriptionCount$1":I
    monitor-exit p0

    .line 136
    .end local v1    # "$i$f$synchronizedImpl":I
    nop

    .end local v0    # "$i$f$synchronized":I
    check-cast v3, Lkotlinx/coroutines/flow/StateFlow;

    .line 35
    return-object v3

    .line 137
    .restart local v0    # "$i$f$synchronized":I
    .restart local v1    # "$i$f$synchronizedImpl":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method
