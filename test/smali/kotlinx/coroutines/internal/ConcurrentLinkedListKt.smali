.class public final Lkotlinx/coroutines/internal/ConcurrentLinkedListKt;
.super Ljava/lang/Object;
.source "ConcurrentLinkedList.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nConcurrentLinkedList.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConcurrentLinkedList.kt\nkotlinx/coroutines/internal/ConcurrentLinkedListKt\n+ 2 ConcurrentLinkedList.kt\nkotlinx/coroutines/internal/ConcurrentLinkedListNode\n*L\n1#1,269:1\n46#1,8:284\n107#2,7:270\n107#2,7:277\n*S KotlinDebug\n*F\n+ 1 ConcurrentLinkedList.kt\nkotlinx/coroutines/internal/ConcurrentLinkedListKt\n*L\n74#1:284,8\n27#1:270,7\n85#1:277,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u001a8\u0010\u0004\u001a\u00020\u0005*\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00032!\u0010\u0008\u001a\u001d\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\n\u0012\u0008\u0008\u000b\u0012\u0004\u0008\u0008(\u000c\u0012\u0004\u0012\u00020\u00050\tH\u0082\u0008\u001a!\u0010\r\u001a\u0002H\u000e\"\u000e\u0008\u0000\u0010\u000e*\u0008\u0012\u0004\u0012\u0002H\u000e0\u000f*\u0002H\u000eH\u0000\u00a2\u0006\u0002\u0010\u0010\u001av\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u0002H\u00130\u0012\"\u000e\u0008\u0000\u0010\u0013*\u0008\u0012\u0004\u0012\u0002H\u00130\u0014*\u0008\u0012\u0004\u0012\u0002H\u00130\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u0002H\u001328\u0008\u0008\u0010\u0019\u001a2\u0012\u0013\u0012\u00110\u0017\u00a2\u0006\u000c\u0008\n\u0012\u0008\u0008\u000b\u0012\u0004\u0008\u0008(\u0016\u0012\u0013\u0012\u0011H\u0013\u00a2\u0006\u000c\u0008\n\u0012\u0008\u0008\u000b\u0012\u0004\u0008\u0008(\u001b\u0012\u0004\u0012\u0002H\u00130\u001aH\u0080\u0008\u00f8\u0001\u0000\u001aj\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u0002H\u00130\u0012\"\u000e\u0008\u0000\u0010\u0013*\u0008\u0012\u0004\u0012\u0002H\u00130\u0014*\u0002H\u00132\u0006\u0010\u0016\u001a\u00020\u001726\u0010\u0019\u001a2\u0012\u0013\u0012\u00110\u0017\u00a2\u0006\u000c\u0008\n\u0012\u0008\u0008\u000b\u0012\u0004\u0008\u0008(\u0016\u0012\u0013\u0012\u0011H\u0013\u00a2\u0006\u000c\u0008\n\u0012\u0008\u0008\u000b\u0012\u0004\u0008\u0008(\u001b\u0012\u0004\u0012\u0002H\u00130\u001aH\u0000\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u001d\u001a+\u0010\u001e\u001a\u00020\u0005\"\u000e\u0008\u0000\u0010\u0013*\u0008\u0012\u0004\u0012\u0002H\u00130\u0014*\u0008\u0012\u0004\u0012\u0002H\u00130\u00152\u0006\u0010\u001f\u001a\u0002H\u0013H\u0080\u0008\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0003X\u0082T\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006 "
    }
    d2 = {
        "CLOSED",
        "Lkotlinx/coroutines/internal/Symbol;",
        "POINTERS_SHIFT",
        "",
        "addConditionally",
        "",
        "Lkotlinx/atomicfu/AtomicInt;",
        "delta",
        "condition",
        "Lkotlin/Function1;",
        "Lkotlin/ParameterName;",
        "name",
        "cur",
        "close",
        "N",
        "Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;",
        "(Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;)Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;",
        "findSegmentAndMoveForward",
        "Lkotlinx/coroutines/internal/SegmentOrClosed;",
        "S",
        "Lkotlinx/coroutines/internal/Segment;",
        "Lkotlinx/atomicfu/AtomicRef;",
        "id",
        "",
        "startFrom",
        "createNewSegment",
        "Lkotlin/Function2;",
        "prev",
        "findSegmentInternal",
        "(Lkotlinx/coroutines/internal/Segment;JLkotlin/jvm/functions/Function2;)Ljava/lang/Object;",
        "moveForward",
        "to",
        "kotlinx-coroutines-core"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final CLOSED:Lkotlinx/coroutines/internal/Symbol;

.field private static final POINTERS_SHIFT:I = 0x10


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 268
    new-instance v0, Lkotlinx/coroutines/internal/Symbol;

    const-string v1, "CLOSED"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/Symbol;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/internal/ConcurrentLinkedListKt;->CLOSED:Lkotlinx/coroutines/internal/Symbol;

    return-void
.end method

.method public static final synthetic access$getCLOSED$p()Lkotlinx/coroutines/internal/Symbol;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/internal/ConcurrentLinkedListKt;->CLOSED:Lkotlinx/coroutines/internal/Symbol;

    return-object v0
.end method

.method private static final addConditionally$atomicfu(Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;ILkotlin/jvm/functions/Function1;)Z
    .locals 3
    .param p0, "atomicfu$dispatchReceiver"    # Ljava/lang/Object;
    .param p1, "atomicfu$handler"    # Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .param p2, "delta"    # I
    .param p3, "condition"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;",
            "I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    .line 252
    .local v0, "$i$f$addConditionally$atomicfu":I
    :cond_0
    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v1

    .line 253
    nop

    .line 254
    .local v1, "cur":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p3, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    return v2

    .line 255
    :cond_1
    add-int v2, v1, p2

    invoke-virtual {p1, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    return v2
.end method

.method private static final addConditionally$atomicfu$array(Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicIntegerArray;IILkotlin/jvm/functions/Function1;)Z
    .locals 3
    .param p0, "atomicfu$dispatchReceiver"    # Ljava/lang/Object;
    .param p1, "atomicfu$handler"    # Ljava/util/concurrent/atomic/AtomicIntegerArray;
    .param p2, "atomicfu$index"    # I
    .param p3, "delta"    # I
    .param p4, "condition"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/concurrent/atomic/AtomicIntegerArray;",
            "II",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    .line 252
    .local v0, "$i$f$addConditionally$atomicfu$array":I
    :cond_0
    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->get(I)I

    move-result v1

    .line 253
    nop

    .line 254
    .local v1, "cur":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p4, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    return v2

    .line 255
    :cond_1
    add-int v2, v1, p3

    invoke-virtual {p1, p2, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->compareAndSet(III)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    return v2
.end method

.method public static final close(Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;)Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;
    .locals 6
    .param p0, "$this$close"    # Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Lkotlinx/coroutines/internal/ConcurrentLinkedListNode<",
            "TN;>;>(TN;)TN;"
        }
    .end annotation

    .line 83
    const/4 v0, 0x0

    .local v0, "cur":Ljava/lang/Object;
    move-object v0, p0

    .line 84
    :cond_0
    :goto_0
    nop

    .line 85
    move-object v1, v0

    .local v1, "this_$iv":Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;
    const/4 v2, 0x0

    .line 277
    .local v2, "$i$f$nextOrIfClosed":I
    invoke-static {v1}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->access$getNextOrClosed(Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;)Ljava/lang/Object;

    move-result-object v3

    .local v3, "it$iv":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 278
    .local v4, "$i$a$-let-ConcurrentLinkedListNode$nextOrIfClosed$1$iv":I
    invoke-static {}, Lkotlinx/coroutines/internal/ConcurrentLinkedListKt;->access$getCLOSED$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v5

    if-ne v3, v5, :cond_1

    .line 279
    const/4 v5, 0x0

    .line 85
    .local v5, "$i$a$-nextOrIfClosed-ConcurrentLinkedListKt$close$next$1":I
    return-object v0

    .line 281
    .end local v5    # "$i$a$-nextOrIfClosed-ConcurrentLinkedListKt$close$next$1":I
    :cond_1
    move-object v5, v3

    check-cast v5, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;

    .line 278
    nop

    .line 277
    .end local v3    # "it$iv":Ljava/lang/Object;
    .end local v4    # "$i$a$-let-ConcurrentLinkedListNode$nextOrIfClosed$1$iv":I
    nop

    .line 283
    nop

    .line 85
    .end local v1    # "this_$iv":Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;
    .end local v2    # "$i$f$nextOrIfClosed":I
    move-object v1, v5

    .line 86
    .local v1, "next":Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;
    if-nez v1, :cond_2

    .line 87
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->markAsClosed()Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v0

    .line 89
    :cond_2
    move-object v0, v1

    .end local v1    # "next":Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;
    goto :goto_0
.end method

.method public static final findSegmentAndMoveForward$atomicfu(Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;JLkotlinx/coroutines/internal/Segment;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;
    .locals 16
    .param p0, "atomicfu$dispatchReceiver"    # Ljava/lang/Object;
    .param p1, "atomicfu$handler"    # Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .param p2, "id"    # J
    .param p4, "startFrom"    # Lkotlinx/coroutines/internal/Segment;
    .param p5, "createNewSegment"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;",
            "JTS;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Long;",
            "-TS;+TS;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 72
    .local v2, "$i$f$findSegmentAndMoveForward$atomicfu":I
    :goto_0
    nop

    .line 73
    move-wide/from16 v3, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-static {v5, v3, v4, v6}, Lkotlinx/coroutines/internal/ConcurrentLinkedListKt;->findSegmentInternal(Lkotlinx/coroutines/internal/Segment;JLkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object v7

    .line 74
    .local v7, "s":Ljava/lang/Object;
    invoke-static {v7}, Lkotlinx/coroutines/internal/SegmentOrClosed;->isClosed-impl(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    invoke-static {v7}, Lkotlinx/coroutines/internal/SegmentOrClosed;->getSegment-impl(Ljava/lang/Object;)Lkotlinx/coroutines/internal/Segment;

    move-result-object v8

    .local v8, "to$iv":Lkotlinx/coroutines/internal/Segment;
    const/4 v9, 0x0

    .local v9, "$i$f$moveForward$atomicfu":I
    const/4 v10, 0x0

    .local v10, "$i$f$loop$atomicfu":I
    :goto_1
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lkotlinx/coroutines/internal/Segment;

    .local v11, "cur$iv":Lkotlinx/coroutines/internal/Segment;
    const/4 v12, 0x0

    .line 284
    .local v12, "$i$a$-loop$atomicfu-ConcurrentLinkedListKt$moveForward$atomicfu$1$iv":I
    iget-wide v13, v11, Lkotlinx/coroutines/internal/Segment;->id:J

    move v15, v2

    .end local v2    # "$i$f$findSegmentAndMoveForward$atomicfu":I
    .local v15, "$i$f$findSegmentAndMoveForward$atomicfu":I
    iget-wide v2, v8, Lkotlinx/coroutines/internal/Segment;->id:J

    cmp-long v2, v13, v2

    const/4 v3, 0x1

    if-ltz v2, :cond_0

    goto :goto_2

    .line 285
    :cond_0
    invoke-virtual {v8}, Lkotlinx/coroutines/internal/Segment;->tryIncPointers$kotlinx_coroutines_core()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v3, 0x0

    goto :goto_2

    .line 286
    :cond_1
    invoke-static {v1, v0, v11, v8}, Landroidx/concurrent/futures/AbstractResolvableFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 287
    invoke-virtual {v11}, Lkotlinx/coroutines/internal/Segment;->decPointers$kotlinx_coroutines_core()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v11}, Lkotlinx/coroutines/internal/Segment;->remove()V

    .line 288
    :cond_2
    nop

    .line 74
    .end local v8    # "to$iv":Lkotlinx/coroutines/internal/Segment;
    .end local v9    # "$i$f$moveForward$atomicfu":I
    .end local v10    # "$i$f$loop$atomicfu":I
    .end local v11    # "cur$iv":Lkotlinx/coroutines/internal/Segment;
    .end local v12    # "$i$a$-loop$atomicfu-ConcurrentLinkedListKt$moveForward$atomicfu$1$iv":I
    :goto_2
    if-eqz v3, :cond_3

    goto :goto_3

    :cond_3
    move v2, v15

    goto :goto_0

    .line 290
    .restart local v8    # "to$iv":Lkotlinx/coroutines/internal/Segment;
    .restart local v9    # "$i$f$moveForward$atomicfu":I
    .restart local v10    # "$i$f$loop$atomicfu":I
    .restart local v11    # "cur$iv":Lkotlinx/coroutines/internal/Segment;
    .restart local v12    # "$i$a$-loop$atomicfu-ConcurrentLinkedListKt$moveForward$atomicfu$1$iv":I
    :cond_4
    invoke-virtual {v8}, Lkotlinx/coroutines/internal/Segment;->decPointers$kotlinx_coroutines_core()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v8}, Lkotlinx/coroutines/internal/Segment;->remove()V

    .line 291
    :cond_5
    move-wide/from16 v3, p2

    move v2, v15

    .end local v11    # "cur$iv":Lkotlinx/coroutines/internal/Segment;
    .end local v12    # "$i$a$-loop$atomicfu-ConcurrentLinkedListKt$moveForward$atomicfu$1$iv":I
    goto :goto_1

    .line 74
    .end local v8    # "to$iv":Lkotlinx/coroutines/internal/Segment;
    .end local v9    # "$i$f$moveForward$atomicfu":I
    .end local v10    # "$i$f$loop$atomicfu":I
    .end local v15    # "$i$f$findSegmentAndMoveForward$atomicfu":I
    .restart local v2    # "$i$f$findSegmentAndMoveForward$atomicfu":I
    :cond_6
    move v15, v2

    .end local v2    # "$i$f$findSegmentAndMoveForward$atomicfu":I
    .restart local v15    # "$i$f$findSegmentAndMoveForward$atomicfu":I
    :goto_3
    return-object v7
.end method

.method public static final findSegmentAndMoveForward$atomicfu$array(Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicReferenceArray;IJLkotlinx/coroutines/internal/Segment;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;
    .locals 15
    .param p0, "atomicfu$dispatchReceiver"    # Ljava/lang/Object;
    .param p1, "atomicfu$handler"    # Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .param p2, "atomicfu$index"    # I
    .param p3, "id"    # J
    .param p5, "startFrom"    # Lkotlinx/coroutines/internal/Segment;
    .param p6, "createNewSegment"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray;",
            "IJTS;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Long;",
            "-TS;+TS;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 72
    .local v0, "$i$f$findSegmentAndMoveForward$atomicfu$array":I
    :cond_0
    nop

    .line 73
    move-wide/from16 v1, p3

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    invoke-static {v3, v1, v2, v4}, Lkotlinx/coroutines/internal/ConcurrentLinkedListKt;->findSegmentInternal(Lkotlinx/coroutines/internal/Segment;JLkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object v5

    .line 74
    .local v5, "s":Ljava/lang/Object;
    invoke-static {v5}, Lkotlinx/coroutines/internal/SegmentOrClosed;->isClosed-impl(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    invoke-static {v5}, Lkotlinx/coroutines/internal/SegmentOrClosed;->getSegment-impl(Ljava/lang/Object;)Lkotlinx/coroutines/internal/Segment;

    move-result-object v6

    .local v6, "to$iv":Lkotlinx/coroutines/internal/Segment;
    const/4 v7, 0x0

    .local v7, "$i$f$moveForward$atomicfu$array":I
    const/4 v8, 0x0

    .local v8, "$i$f$loop$atomicfu$array":I
    :goto_0
    invoke-virtual/range {p1 .. p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lkotlinx/coroutines/internal/Segment;

    .local v9, "cur$iv":Lkotlinx/coroutines/internal/Segment;
    const/4 v10, 0x0

    .line 284
    .local v10, "$i$a$-loop$atomicfu$array-ConcurrentLinkedListKt$moveForward$atomicfu$array$1$iv":I
    iget-wide v11, v9, Lkotlinx/coroutines/internal/Segment;->id:J

    iget-wide v13, v6, Lkotlinx/coroutines/internal/Segment;->id:J

    cmp-long v11, v11, v13

    const/4 v12, 0x1

    if-ltz v11, :cond_1

    move-object/from16 v11, p1

    move/from16 v13, p2

    goto :goto_1

    .line 285
    :cond_1
    invoke-virtual {v6}, Lkotlinx/coroutines/internal/Segment;->tryIncPointers$kotlinx_coroutines_core()Z

    move-result v11

    if-nez v11, :cond_2

    const/4 v12, 0x0

    move-object/from16 v11, p1

    move/from16 v13, p2

    goto :goto_1

    .line 286
    :cond_2
    move-object/from16 v11, p1

    move/from16 v13, p2

    invoke-static {v11, v13, v9, v6}, Lkotlinx/coroutines/channels/ChannelSegment$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 287
    invoke-virtual {v9}, Lkotlinx/coroutines/internal/Segment;->decPointers$kotlinx_coroutines_core()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-virtual {v9}, Lkotlinx/coroutines/internal/Segment;->remove()V

    .line 288
    :cond_3
    nop

    .line 74
    .end local v6    # "to$iv":Lkotlinx/coroutines/internal/Segment;
    .end local v7    # "$i$f$moveForward$atomicfu$array":I
    .end local v8    # "$i$f$loop$atomicfu$array":I
    .end local v9    # "cur$iv":Lkotlinx/coroutines/internal/Segment;
    .end local v10    # "$i$a$-loop$atomicfu$array-ConcurrentLinkedListKt$moveForward$atomicfu$array$1$iv":I
    :goto_1
    if-eqz v12, :cond_0

    goto :goto_2

    .line 290
    .restart local v6    # "to$iv":Lkotlinx/coroutines/internal/Segment;
    .restart local v7    # "$i$f$moveForward$atomicfu$array":I
    .restart local v8    # "$i$f$loop$atomicfu$array":I
    .restart local v9    # "cur$iv":Lkotlinx/coroutines/internal/Segment;
    .restart local v10    # "$i$a$-loop$atomicfu$array-ConcurrentLinkedListKt$moveForward$atomicfu$array$1$iv":I
    :cond_4
    invoke-virtual {v6}, Lkotlinx/coroutines/internal/Segment;->decPointers$kotlinx_coroutines_core()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-virtual {v6}, Lkotlinx/coroutines/internal/Segment;->remove()V

    .line 291
    :cond_5
    nop

    .end local v9    # "cur$iv":Lkotlinx/coroutines/internal/Segment;
    .end local v10    # "$i$a$-loop$atomicfu$array-ConcurrentLinkedListKt$moveForward$atomicfu$array$1$iv":I
    goto :goto_0

    .line 74
    .end local v6    # "to$iv":Lkotlinx/coroutines/internal/Segment;
    .end local v7    # "$i$f$moveForward$atomicfu$array":I
    .end local v8    # "$i$f$loop$atomicfu$array":I
    :cond_6
    move-object/from16 v11, p1

    move/from16 v13, p2

    :goto_2
    return-object v5
.end method

.method public static final findSegmentInternal(Lkotlinx/coroutines/internal/Segment;JLkotlin/jvm/functions/Function2;)Ljava/lang/Object;
    .locals 7
    .param p0, "$this$findSegmentInternal"    # Lkotlinx/coroutines/internal/Segment;
    .param p1, "id"    # J
    .param p3, "createNewSegment"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Lkotlinx/coroutines/internal/Segment<",
            "TS;>;>(TS;J",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Long;",
            "-TS;+TS;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 25
    move-object v0, p0

    .line 26
    .local v0, "cur":Lkotlinx/coroutines/internal/Segment;
    :cond_0
    :goto_0
    iget-wide v1, v0, Lkotlinx/coroutines/internal/Segment;->id:J

    cmp-long v1, v1, p1

    if-ltz v1, :cond_2

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/Segment;->isRemoved()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 38
    :cond_1
    invoke-static {v0}, Lkotlinx/coroutines/internal/SegmentOrClosed;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 27
    :cond_2
    :goto_1
    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;

    .local v1, "this_$iv":Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;
    const/4 v2, 0x0

    .line 270
    .local v2, "$i$f$nextOrIfClosed":I
    invoke-static {v1}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->access$getNextOrClosed(Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;)Ljava/lang/Object;

    move-result-object v3

    .local v3, "it$iv":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 271
    .local v4, "$i$a$-let-ConcurrentLinkedListNode$nextOrIfClosed$1$iv":I
    invoke-static {}, Lkotlinx/coroutines/internal/ConcurrentLinkedListKt;->access$getCLOSED$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v5

    if-ne v3, v5, :cond_3

    .line 272
    const/4 v5, 0x0

    .line 27
    .local v5, "$i$a$-nextOrIfClosed-ConcurrentLinkedListKt$findSegmentInternal$next$1":I
    sget-object v6, Lkotlinx/coroutines/internal/ConcurrentLinkedListKt;->CLOSED:Lkotlinx/coroutines/internal/Symbol;

    invoke-static {v6}, Lkotlinx/coroutines/internal/SegmentOrClosed;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    return-object v6

    .line 274
    .end local v5    # "$i$a$-nextOrIfClosed-ConcurrentLinkedListKt$findSegmentInternal$next$1":I
    :cond_3
    move-object v5, v3

    check-cast v5, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;

    .line 271
    nop

    .line 270
    .end local v3    # "it$iv":Ljava/lang/Object;
    .end local v4    # "$i$a$-let-ConcurrentLinkedListNode$nextOrIfClosed$1$iv":I
    nop

    .line 276
    nop

    .line 27
    .end local v1    # "this_$iv":Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;
    .end local v2    # "$i$f$nextOrIfClosed":I
    move-object v1, v5

    check-cast v1, Lkotlinx/coroutines/internal/Segment;

    .line 28
    .local v1, "next":Lkotlinx/coroutines/internal/Segment;
    if-eqz v1, :cond_4

    .line 29
    move-object v0, v1

    .line 30
    goto :goto_0

    .line 32
    :cond_4
    iget-wide v2, v0, Lkotlinx/coroutines/internal/Segment;->id:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p3, v2, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlinx/coroutines/internal/Segment;

    .line 33
    .local v2, "newTail":Lkotlinx/coroutines/internal/Segment;
    move-object v3, v2

    check-cast v3, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;

    invoke-virtual {v0, v3}, Lkotlinx/coroutines/internal/Segment;->trySetNext(Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 34
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/Segment;->isRemoved()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/Segment;->remove()V

    .line 35
    :cond_5
    move-object v0, v2

    .end local v1    # "next":Lkotlinx/coroutines/internal/Segment;
    .end local v2    # "newTail":Lkotlinx/coroutines/internal/Segment;
    goto :goto_0
.end method

.method private static final loop$atomicfu(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Object;",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private static final loop$atomicfu$array(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray;",
            "I",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Object;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static final moveForward$atomicfu(Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Lkotlinx/coroutines/internal/Segment;)Z
    .locals 8
    .param p0, "atomicfu$dispatchReceiver"    # Ljava/lang/Object;
    .param p1, "atomicfu$handler"    # Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .param p2, "to"    # Lkotlinx/coroutines/internal/Segment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;",
            "TS;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    .local v0, "$i$f$moveForward$atomicfu":I
    const/4 v1, 0x0

    .local v1, "$i$f$loop$atomicfu":I
    :goto_0
    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlinx/coroutines/internal/Segment;

    .local v2, "cur":Lkotlinx/coroutines/internal/Segment;
    const/4 v3, 0x0

    .line 46
    .local v3, "$i$a$-loop$atomicfu-ConcurrentLinkedListKt$moveForward$atomicfu$1":I
    iget-wide v4, v2, Lkotlinx/coroutines/internal/Segment;->id:J

    iget-wide v6, p2, Lkotlinx/coroutines/internal/Segment;->id:J

    cmp-long v4, v4, v6

    const/4 v5, 0x1

    if-ltz v4, :cond_0

    return v5

    .line 47
    :cond_0
    invoke-virtual {p2}, Lkotlinx/coroutines/internal/Segment;->tryIncPointers$kotlinx_coroutines_core()Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, 0x0

    return v4

    .line 48
    :cond_1
    invoke-static {p1, p0, v2, p2}, Landroidx/concurrent/futures/AbstractResolvableFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 49
    invoke-virtual {v2}, Lkotlinx/coroutines/internal/Segment;->decPointers$kotlinx_coroutines_core()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Lkotlinx/coroutines/internal/Segment;->remove()V

    .line 50
    :cond_2
    return v5

    .line 52
    :cond_3
    invoke-virtual {p2}, Lkotlinx/coroutines/internal/Segment;->decPointers$kotlinx_coroutines_core()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p2}, Lkotlinx/coroutines/internal/Segment;->remove()V

    .line 53
    :cond_4
    nop

    .end local v2    # "cur":Lkotlinx/coroutines/internal/Segment;
    .end local v3    # "$i$a$-loop$atomicfu-ConcurrentLinkedListKt$moveForward$atomicfu$1":I
    goto :goto_0
.end method

.method public static final moveForward$atomicfu$array(Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicReferenceArray;ILkotlinx/coroutines/internal/Segment;)Z
    .locals 8
    .param p0, "atomicfu$dispatchReceiver"    # Ljava/lang/Object;
    .param p1, "atomicfu$handler"    # Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .param p2, "atomicfu$index"    # I
    .param p3, "to"    # Lkotlinx/coroutines/internal/Segment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray;",
            "ITS;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    .local v0, "$i$f$moveForward$atomicfu$array":I
    const/4 v1, 0x0

    .local v1, "$i$f$loop$atomicfu$array":I
    :goto_0
    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlinx/coroutines/internal/Segment;

    .local v2, "cur":Lkotlinx/coroutines/internal/Segment;
    const/4 v3, 0x0

    .line 46
    .local v3, "$i$a$-loop$atomicfu$array-ConcurrentLinkedListKt$moveForward$atomicfu$array$1":I
    iget-wide v4, v2, Lkotlinx/coroutines/internal/Segment;->id:J

    iget-wide v6, p3, Lkotlinx/coroutines/internal/Segment;->id:J

    cmp-long v4, v4, v6

    const/4 v5, 0x1

    if-ltz v4, :cond_0

    return v5

    .line 47
    :cond_0
    invoke-virtual {p3}, Lkotlinx/coroutines/internal/Segment;->tryIncPointers$kotlinx_coroutines_core()Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, 0x0

    return v4

    .line 48
    :cond_1
    invoke-static {p1, p2, v2, p3}, Lkotlinx/coroutines/channels/ChannelSegment$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 49
    invoke-virtual {v2}, Lkotlinx/coroutines/internal/Segment;->decPointers$kotlinx_coroutines_core()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Lkotlinx/coroutines/internal/Segment;->remove()V

    .line 50
    :cond_2
    return v5

    .line 52
    :cond_3
    invoke-virtual {p3}, Lkotlinx/coroutines/internal/Segment;->decPointers$kotlinx_coroutines_core()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p3}, Lkotlinx/coroutines/internal/Segment;->remove()V

    .line 53
    :cond_4
    nop

    .end local v2    # "cur":Lkotlinx/coroutines/internal/Segment;
    .end local v3    # "$i$a$-loop$atomicfu$array-ConcurrentLinkedListKt$moveForward$atomicfu$array$1":I
    goto :goto_0
.end method
