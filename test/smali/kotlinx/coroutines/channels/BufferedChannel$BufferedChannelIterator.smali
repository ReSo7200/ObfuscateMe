.class final Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;
.super Ljava/lang/Object;
.source "BufferedChannel.kt"

# interfaces
.implements Lkotlinx/coroutines/channels/ChannelIterator;
.implements Lkotlinx/coroutines/Waiter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/channels/BufferedChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BufferedChannelIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/channels/ChannelIterator<",
        "TE;>;",
        "Lkotlinx/coroutines/Waiter;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBufferedChannel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BufferedChannel.kt\nkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator\n+ 2 BufferedChannel.kt\nkotlinx/coroutines/channels/BufferedChannel\n+ 3 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n+ 4 BufferedChannel.kt\nkotlinx/coroutines/channels/BufferedChannel$receiveImpl$1\n+ 5 StackTraceRecovery.kt\nkotlinx/coroutines/internal/StackTraceRecoveryKt\n+ 6 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,3055:1\n886#2,52:3056\n964#2,8:3112\n858#2:3120\n882#2,33:3121\n974#2:3154\n916#2,14:3155\n935#2,3:3170\n979#2,6:3173\n332#3,4:3108\n336#3,8:3179\n882#4:3169\n61#5,2:3187\n61#5,2:3190\n1#6:3189\n*S KotlinDebug\n*F\n+ 1 BufferedChannel.kt\nkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator\n*L\n1590#1:3056,52\n1627#1:3112,8\n1627#1:3120\n1627#1:3121,33\n1627#1:3154\n1627#1:3155,14\n1627#1:3170,3\n1627#1:3173,6\n1625#1:3108,4\n1625#1:3179,8\n1627#1:3169\n1663#1:3187,2\n1708#1:3190,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0082\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00028\u00000\u00012\u00020\u0002B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0011\u0010\t\u001a\u00020\u0006H\u0096B\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\nJ/\u0010\u000b\u001a\u00020\u00062\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00028\u00000\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0012J\u001c\u0010\u0013\u001a\u00020\u00142\n\u0010\u000c\u001a\u0006\u0012\u0002\u0008\u00030\u00152\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\u000e\u0010\u0016\u001a\u00028\u0000H\u0096\u0002\u00a2\u0006\u0002\u0010\u0017J\u0008\u0010\u0018\u001a\u00020\u0006H\u0002J\u0008\u0010\u0019\u001a\u00020\u0014H\u0002J\u0013\u0010\u001a\u001a\u00020\u00062\u0006\u0010\u001b\u001a\u00028\u0000\u00a2\u0006\u0002\u0010\u001cJ\u0006\u0010\u001d\u001a\u00020\u0014R\u0016\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u001e"
    }
    d2 = {
        "Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;",
        "Lkotlinx/coroutines/channels/ChannelIterator;",
        "Lkotlinx/coroutines/Waiter;",
        "(Lkotlinx/coroutines/channels/BufferedChannel;)V",
        "continuation",
        "Lkotlinx/coroutines/CancellableContinuationImpl;",
        "",
        "receiveResult",
        "",
        "hasNext",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "hasNextOnNoWaiterSuspend",
        "segment",
        "Lkotlinx/coroutines/channels/ChannelSegment;",
        "index",
        "",
        "r",
        "",
        "(Lkotlinx/coroutines/channels/ChannelSegment;IJLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "invokeOnCancellation",
        "",
        "Lkotlinx/coroutines/internal/Segment;",
        "next",
        "()Ljava/lang/Object;",
        "onClosedHasNext",
        "onClosedHasNextNoWaiterSuspend",
        "tryResumeHasNext",
        "element",
        "(Ljava/lang/Object;)Z",
        "tryResumeHasNextOnClosedChannel",
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
.field private continuation:Lkotlinx/coroutines/CancellableContinuationImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/CancellableContinuationImpl<",
            "-",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private receiveResult:Ljava/lang/Object;

.field final synthetic this$0:Lkotlinx/coroutines/channels/BufferedChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/channels/BufferedChannel<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/channels/BufferedChannel;)V
    .locals 1
    .param p1, "this$0"    # Lkotlinx/coroutines/channels/BufferedChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1573
    iput-object p1, p0, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;->this$0:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1579
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getNO_RECEIVE_RESULT$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v0

    iput-object v0, p0, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;->receiveResult:Ljava/lang/Object;

    .line 1573
    return-void
.end method

.method public static final synthetic access$hasNextOnNoWaiterSuspend(Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;Lkotlinx/coroutines/channels/ChannelSegment;IJLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;
    .param p1, "segment"    # Lkotlinx/coroutines/channels/ChannelSegment;
    .param p2, "index"    # I
    .param p3, "r"    # J
    .param p5, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 1573
    invoke-direct/range {p0 .. p5}, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;->hasNextOnNoWaiterSuspend(Lkotlinx/coroutines/channels/ChannelSegment;IJLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$onClosedHasNextNoWaiterSuspend(Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;)V
    .locals 0
    .param p0, "$this"    # Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;

    .line 1573
    invoke-direct {p0}, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;->onClosedHasNextNoWaiterSuspend()V

    return-void
.end method

.method public static final synthetic access$setContinuation$p(Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;Lkotlinx/coroutines/CancellableContinuationImpl;)V
    .locals 0
    .param p0, "$this"    # Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;
    .param p1, "<set-?>"    # Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 1573
    iput-object p1, p0, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;->continuation:Lkotlinx/coroutines/CancellableContinuationImpl;

    return-void
.end method

.method public static final synthetic access$setReceiveResult$p(Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;Ljava/lang/Object;)V
    .locals 0
    .param p0, "$this"    # Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;
    .param p1, "<set-?>"    # Ljava/lang/Object;

    .line 1573
    iput-object p1, p0, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;->receiveResult:Ljava/lang/Object;

    return-void
.end method

.method private final hasNextOnNoWaiterSuspend(Lkotlinx/coroutines/channels/ChannelSegment;IJLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 27
    .param p1, "segment"    # Lkotlinx/coroutines/channels/ChannelSegment;
    .param p2, "index"    # I
    .param p3, "r"    # J
    .param p5, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/ChannelSegment<",
            "TE;>;IJ",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1625
    move-object/from16 v1, p0

    iget-object v0, v1, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;->this$0:Lkotlinx/coroutines/channels/BufferedChannel;

    const/4 v2, 0x0

    .line 3108
    .local v2, "$i$f$suspendCancellableCoroutineReusable":I
    move-object/from16 v3, p5

    .local v3, "uCont$iv":Lkotlin/coroutines/Continuation;
    const/4 v4, 0x0

    .line 3109
    .local v4, "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutineReusable$2$iv":I
    invoke-static {v3}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v5

    invoke-static {v5}, Lkotlinx/coroutines/CancellableContinuationKt;->getOrCreateCancellableContinuation(Lkotlin/coroutines/Continuation;)Lkotlinx/coroutines/CancellableContinuationImpl;

    move-result-object v5

    .line 3110
    .local v5, "cancellable$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    nop

    .line 3111
    move-object v6, v5

    .local v6, "cont":Lkotlinx/coroutines/CancellableContinuationImpl;
    const/4 v7, 0x0

    .line 1626
    .local v7, "$i$a$-suspendCancellableCoroutineReusable-BufferedChannel$BufferedChannelIterator$hasNextOnNoWaiterSuspend$2":I
    :try_start_0
    invoke-static {v1, v6}, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;->access$setContinuation$p(Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;Lkotlinx/coroutines/CancellableContinuationImpl;)V

    .line 1627
    move-object v14, v0

    .local v14, "this_$iv":Lkotlinx/coroutines/channels/BufferedChannel;
    const/4 v15, 0x0

    .line 3112
    .local v15, "$i$f$receiveImplOnNoWaiter":I
    move-object v13, v1

    check-cast v13, Lkotlinx/coroutines/Waiter;

    move-object v8, v14

    move-object/from16 v9, p1

    move/from16 v10, p2

    move-wide/from16 v11, p3

    invoke-static/range {v8 .. v13}, Lkotlinx/coroutines/channels/BufferedChannel;->access$updateCellReceive(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/channels/ChannelSegment;IJLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v13, v8

    .line 3113
    .local v13, "updCellResult$iv":Ljava/lang/Object;
    nop

    .line 3114
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getSUSPEND$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    if-ne v13, v8, :cond_0

    .line 3115
    :try_start_1
    move-object v0, v1

    check-cast v0, Lkotlinx/coroutines/Waiter;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v11, p1

    move/from16 v12, p2

    :try_start_2
    invoke-static {v14, v0, v11, v12}, Lkotlinx/coroutines/channels/BufferedChannel;->access$prepareReceiverForSuspension(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/Waiter;Lkotlinx/coroutines/channels/ChannelSegment;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move/from16 v21, v2

    move-object/from16 v22, v3

    move/from16 v23, v4

    move/from16 v20, v7

    move-object/from16 v26, v13

    goto/16 :goto_7

    .line 3179
    .end local v6    # "cont":Lkotlinx/coroutines/CancellableContinuationImpl;
    .end local v7    # "$i$a$-suspendCancellableCoroutineReusable-BufferedChannel$BufferedChannelIterator$hasNextOnNoWaiterSuspend$2":I
    .end local v13    # "updCellResult$iv":Ljava/lang/Object;
    .end local v14    # "this_$iv":Lkotlinx/coroutines/channels/BufferedChannel;
    .end local v15    # "$i$f$receiveImplOnNoWaiter":I
    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object/from16 v11, p1

    move/from16 v12, p2

    :goto_0
    move/from16 v21, v2

    move-object/from16 v22, v3

    move/from16 v23, v4

    goto/16 :goto_8

    .line 3117
    .restart local v6    # "cont":Lkotlinx/coroutines/CancellableContinuationImpl;
    .restart local v7    # "$i$a$-suspendCancellableCoroutineReusable-BufferedChannel$BufferedChannelIterator$hasNextOnNoWaiterSuspend$2":I
    .restart local v13    # "updCellResult$iv":Ljava/lang/Object;
    .restart local v14    # "this_$iv":Lkotlinx/coroutines/channels/BufferedChannel;
    .restart local v15    # "$i$f$receiveImplOnNoWaiter":I
    :cond_0
    move-object/from16 v11, p1

    move/from16 v12, p2

    :try_start_3
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getFAILED$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v8

    const/16 v16, 0x1

    if-ne v13, v8, :cond_c

    .line 3118
    invoke-virtual {v14}, Lkotlinx/coroutines/channels/BufferedChannel;->getSendersCounter$kotlinx_coroutines_core()J

    move-result-wide v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    cmp-long v8, p3, v8

    if-gez v8, :cond_1

    :try_start_4
    invoke-virtual/range {p1 .. p1}, Lkotlinx/coroutines/channels/ChannelSegment;->cleanPrev()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3119
    :cond_1
    nop

    .line 3120
    nop

    .line 3121
    nop

    .line 3120
    const/16 v17, 0x0

    .local v17, "$i$f$receiveImpl":I
    :try_start_5
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->access$getReceiveSegment$FU$p()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v8

    .line 3125
    invoke-virtual {v8, v14}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lkotlinx/coroutines/channels/ChannelSegment;

    .line 3126
    .local v8, "segment$iv$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    :goto_1
    nop

    .line 3129
    invoke-virtual {v14}, Lkotlinx/coroutines/channels/BufferedChannel;->isClosedForReceive()Z

    move-result v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    if-eqz v9, :cond_2

    const/4 v0, 0x0

    .line 1641
    .local v0, "$i$a$-receiveImplOnNoWaiter-BufferedChannel$BufferedChannelIterator$hasNextOnNoWaiterSuspend$2$2":I
    :try_start_6
    invoke-static/range {p0 .. p0}, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;->access$onClosedHasNextNoWaiterSuspend(Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 3129
    .end local v0    # "$i$a$-receiveImplOnNoWaiter-BufferedChannel$BufferedChannelIterator$hasNextOnNoWaiterSuspend$2$2":I
    move/from16 v21, v2

    move-object/from16 v22, v3

    move/from16 v23, v4

    move/from16 v20, v7

    move-object/from16 v26, v13

    goto/16 :goto_7

    :cond_2
    :try_start_7
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->access$getReceivers$FU$p()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v9

    .line 3132
    invoke-virtual {v9, v14}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v18

    .line 3134
    .local v18, "r$iv$iv":J
    sget v9, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    int-to-long v10, v9

    div-long v9, v18, v10

    move-wide v10, v9

    .line 3135
    .local v10, "id$iv$iv":J
    sget v9, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    move/from16 v21, v2

    move-object/from16 v22, v3

    .end local v2    # "$i$f$suspendCancellableCoroutineReusable":I
    .end local v3    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .local v21, "$i$f$suspendCancellableCoroutineReusable":I
    .local v22, "uCont$iv":Lkotlin/coroutines/Continuation;
    int-to-long v2, v9

    :try_start_8
    rem-long v2, v18, v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    long-to-int v2, v2

    .line 3138
    .local v2, "i$iv$iv":I
    move/from16 v23, v4

    .end local v4    # "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutineReusable$2$iv":I
    .local v23, "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutineReusable$2$iv":I
    :try_start_9
    iget-wide v3, v8, Lkotlinx/coroutines/channels/ChannelSegment;->id:J

    cmp-long v3, v3, v10

    if-eqz v3, :cond_4

    .line 3140
    invoke-static {v14, v10, v11, v8}, Lkotlinx/coroutines/channels/BufferedChannel;->access$findSegmentReceive(Lkotlinx/coroutines/channels/BufferedChannel;JLkotlinx/coroutines/channels/ChannelSegment;)Lkotlinx/coroutines/channels/ChannelSegment;

    move-result-object v3

    if-nez v3, :cond_3

    .line 3144
    move-object/from16 v11, p1

    move/from16 v2, v21

    move-object/from16 v3, v22

    move/from16 v4, v23

    goto :goto_1

    .line 3140
    .end local v8    # "segment$iv$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .local v3, "segment$iv$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    :cond_3
    goto :goto_2

    .line 3138
    .end local v3    # "segment$iv$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local v8    # "segment$iv$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    :cond_4
    move-object v3, v8

    .line 3147
    .end local v8    # "segment$iv$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local v3    # "segment$iv$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    :goto_2
    move-object v4, v1

    check-cast v4, Lkotlinx/coroutines/Waiter;

    move-object v8, v14

    move-object v9, v3

    move-wide/from16 v24, v10

    const/4 v11, 0x0

    .end local v10    # "id$iv$iv":J
    .local v24, "id$iv$iv":J
    move v10, v2

    move/from16 v20, v7

    move-object v7, v11

    .end local v7    # "$i$a$-suspendCancellableCoroutineReusable-BufferedChannel$BufferedChannelIterator$hasNextOnNoWaiterSuspend$2":I
    .local v20, "$i$a$-suspendCancellableCoroutineReusable-BufferedChannel$BufferedChannelIterator$hasNextOnNoWaiterSuspend$2":I
    move-wide/from16 v11, v18

    move-object/from16 v26, v13

    .end local v13    # "updCellResult$iv":Ljava/lang/Object;
    .local v26, "updCellResult$iv":Ljava/lang/Object;
    move-object v13, v4

    invoke-static/range {v8 .. v13}, Lkotlinx/coroutines/channels/BufferedChannel;->access$updateCellReceive(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/channels/ChannelSegment;IJLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 3148
    .local v4, "updCellResult$iv$iv":Ljava/lang/Object;
    nop

    .line 3149
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getSUSPEND$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v8

    if-ne v4, v8, :cond_7

    .line 3152
    move-object v0, v1

    check-cast v0, Lkotlinx/coroutines/Waiter;

    instance-of v0, v0, Lkotlinx/coroutines/Waiter;

    if-eqz v0, :cond_5

    move-object v10, v1

    check-cast v10, Lkotlinx/coroutines/Waiter;

    goto :goto_3

    :cond_5
    move-object v10, v7

    :goto_3
    if-eqz v10, :cond_6

    invoke-static {v14, v10, v3, v2}, Lkotlinx/coroutines/channels/BufferedChannel;->access$prepareReceiverForSuspension(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/Waiter;Lkotlinx/coroutines/channels/ChannelSegment;I)V

    .line 3153
    :cond_6
    const/4 v0, 0x0

    .line 3154
    .local v0, "$i$a$-receiveImpl$default-BufferedChannel$receiveImplOnNoWaiter$1$iv":I
    nop

    .line 3153
    .end local v0    # "$i$a$-receiveImpl$default-BufferedChannel$receiveImplOnNoWaiter$1$iv":I
    goto :goto_5

    .line 3155
    :cond_7
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getFAILED$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v8

    if-ne v4, v8, :cond_9

    .line 3162
    invoke-virtual {v14}, Lkotlinx/coroutines/channels/BufferedChannel;->getSendersCounter$kotlinx_coroutines_core()J

    move-result-wide v8

    cmp-long v8, v18, v8

    if-gez v8, :cond_8

    invoke-virtual {v3}, Lkotlinx/coroutines/channels/ChannelSegment;->cleanPrev()V

    .line 3163
    :cond_8
    move-object/from16 v11, p1

    move/from16 v12, p2

    move-object v8, v3

    move/from16 v7, v20

    move/from16 v2, v21

    move-object/from16 v3, v22

    move/from16 v4, v23

    move-object/from16 v13, v26

    goto/16 :goto_1

    .line 3165
    :cond_9
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getSUSPEND_NO_WAITER$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v8

    if-eq v4, v8, :cond_b

    .line 3170
    invoke-virtual {v3}, Lkotlinx/coroutines/channels/ChannelSegment;->cleanPrev()V

    .line 3172
    move-object v8, v4

    .local v8, "element":Ljava/lang/Object;
    const/4 v9, 0x0

    .line 1637
    .local v9, "$i$a$-receiveImplOnNoWaiter-BufferedChannel$BufferedChannelIterator$hasNextOnNoWaiterSuspend$2$1":I
    invoke-static {v1, v8}, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;->access$setReceiveResult$p(Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;Ljava/lang/Object;)V

    .line 1638
    invoke-static {v1, v7}, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;->access$setContinuation$p(Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;Lkotlinx/coroutines/CancellableContinuationImpl;)V

    .line 1639
    invoke-static/range {v16 .. v16}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v10

    iget-object v0, v0, Lkotlinx/coroutines/channels/BufferedChannel;->onUndeliveredElement:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_a

    invoke-virtual {v6}, Lkotlinx/coroutines/CancellableContinuationImpl;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v7

    invoke-static {v0, v8, v7}, Lkotlinx/coroutines/internal/OnUndeliveredElementKt;->bindCancellationFun(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;)Lkotlin/jvm/functions/Function1;

    move-result-object v0

    goto :goto_4

    :cond_a
    move-object v0, v7

    :goto_4
    invoke-virtual {v6, v10, v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->resume(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V

    .line 1640
    nop

    .line 3172
    .end local v8    # "element":Ljava/lang/Object;
    .end local v9    # "$i$a$-receiveImplOnNoWaiter-BufferedChannel$BufferedChannelIterator$hasNextOnNoWaiterSuspend$2$1":I
    :goto_5
    nop

    .line 3148
    nop

    .end local v2    # "i$iv$iv":I
    .end local v3    # "segment$iv$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .end local v4    # "updCellResult$iv$iv":Ljava/lang/Object;
    .end local v17    # "$i$f$receiveImpl":I
    .end local v18    # "r$iv$iv":J
    .end local v24    # "id$iv$iv":J
    goto :goto_7

    .line 3168
    .restart local v2    # "i$iv$iv":I
    .restart local v3    # "segment$iv$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local v4    # "updCellResult$iv$iv":Ljava/lang/Object;
    .restart local v17    # "$i$f$receiveImpl":I
    .restart local v18    # "r$iv$iv":J
    .restart local v24    # "id$iv$iv":J
    :cond_b
    const/4 v0, 0x0

    .local v0, "$i$a$-receiveImpl-BufferedChannel$receiveImpl$1$iv":I
    new-instance v7, Ljava/lang/IllegalStateException;

    .line 3169
    const-string/jumbo v8, "unexpected"

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v5    # "cancellable$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    .end local v21    # "$i$f$suspendCancellableCoroutineReusable":I
    .end local v22    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .end local v23    # "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutineReusable$2$iv":I
    .end local p1    # "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    .end local p2    # "index":I
    .end local p3    # "r":J
    .end local p5    # "$completion":Lkotlin/coroutines/Continuation;
    throw v7

    .line 3179
    .end local v0    # "$i$a$-receiveImpl-BufferedChannel$receiveImpl$1$iv":I
    .end local v2    # "i$iv$iv":I
    .end local v3    # "segment$iv$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .end local v6    # "cont":Lkotlinx/coroutines/CancellableContinuationImpl;
    .end local v14    # "this_$iv":Lkotlinx/coroutines/channels/BufferedChannel;
    .end local v15    # "$i$f$receiveImplOnNoWaiter":I
    .end local v17    # "$i$f$receiveImpl":I
    .end local v18    # "r$iv$iv":J
    .end local v20    # "$i$a$-suspendCancellableCoroutineReusable-BufferedChannel$BufferedChannelIterator$hasNextOnNoWaiterSuspend$2":I
    .end local v24    # "id$iv$iv":J
    .end local v26    # "updCellResult$iv":Ljava/lang/Object;
    .local v4, "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutineReusable$2$iv":I
    .restart local v5    # "cancellable$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    .restart local v21    # "$i$f$suspendCancellableCoroutineReusable":I
    .restart local v22    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .restart local p1    # "segment":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local p2    # "index":I
    .restart local p3    # "r":J
    .restart local p5    # "$completion":Lkotlin/coroutines/Continuation;
    :catchall_2
    move-exception v0

    move/from16 v23, v4

    .end local v4    # "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutineReusable$2$iv":I
    .restart local v23    # "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutineReusable$2$iv":I
    goto :goto_8

    .line 3173
    .end local v21    # "$i$f$suspendCancellableCoroutineReusable":I
    .end local v22    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .end local v23    # "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutineReusable$2$iv":I
    .local v2, "$i$f$suspendCancellableCoroutineReusable":I
    .local v3, "uCont$iv":Lkotlin/coroutines/Continuation;
    .restart local v4    # "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutineReusable$2$iv":I
    .restart local v6    # "cont":Lkotlinx/coroutines/CancellableContinuationImpl;
    .restart local v7    # "$i$a$-suspendCancellableCoroutineReusable-BufferedChannel$BufferedChannelIterator$hasNextOnNoWaiterSuspend$2":I
    .restart local v13    # "updCellResult$iv":Ljava/lang/Object;
    .restart local v14    # "this_$iv":Lkotlinx/coroutines/channels/BufferedChannel;
    .restart local v15    # "$i$f$receiveImplOnNoWaiter":I
    :cond_c
    move/from16 v21, v2

    move-object/from16 v22, v3

    move/from16 v23, v4

    move/from16 v20, v7

    move-object/from16 v26, v13

    const/4 v7, 0x0

    .end local v2    # "$i$f$suspendCancellableCoroutineReusable":I
    .end local v3    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .end local v4    # "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutineReusable$2$iv":I
    .end local v7    # "$i$a$-suspendCancellableCoroutineReusable-BufferedChannel$BufferedChannelIterator$hasNextOnNoWaiterSuspend$2":I
    .end local v13    # "updCellResult$iv":Ljava/lang/Object;
    .restart local v20    # "$i$a$-suspendCancellableCoroutineReusable-BufferedChannel$BufferedChannelIterator$hasNextOnNoWaiterSuspend$2":I
    .restart local v21    # "$i$f$suspendCancellableCoroutineReusable":I
    .restart local v22    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .restart local v23    # "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutineReusable$2$iv":I
    .restart local v26    # "updCellResult$iv":Ljava/lang/Object;
    invoke-virtual/range {p1 .. p1}, Lkotlinx/coroutines/channels/ChannelSegment;->cleanPrev()V

    .line 3175
    move-object/from16 v2, v26

    .local v2, "element":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 1637
    .local v3, "$i$a$-receiveImplOnNoWaiter-BufferedChannel$BufferedChannelIterator$hasNextOnNoWaiterSuspend$2$1":I
    invoke-static {v1, v2}, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;->access$setReceiveResult$p(Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;Ljava/lang/Object;)V

    .line 1638
    invoke-static {v1, v7}, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;->access$setContinuation$p(Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;Lkotlinx/coroutines/CancellableContinuationImpl;)V

    .line 1639
    invoke-static/range {v16 .. v16}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v4

    iget-object v0, v0, Lkotlinx/coroutines/channels/BufferedChannel;->onUndeliveredElement:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_d

    invoke-virtual {v6}, Lkotlinx/coroutines/CancellableContinuationImpl;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v7

    invoke-static {v0, v2, v7}, Lkotlinx/coroutines/internal/OnUndeliveredElementKt;->bindCancellationFun(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;)Lkotlin/jvm/functions/Function1;

    move-result-object v10

    goto :goto_6

    :cond_d
    move-object v10, v7

    :goto_6
    invoke-virtual {v6, v4, v10}, Lkotlinx/coroutines/CancellableContinuationImpl;->resume(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 1640
    nop

    .line 3175
    .end local v2    # "element":Ljava/lang/Object;
    .end local v3    # "$i$a$-receiveImplOnNoWaiter-BufferedChannel$BufferedChannelIterator$hasNextOnNoWaiterSuspend$2$1":I
    nop

    .line 3178
    :goto_7
    nop

    .line 1643
    .end local v14    # "this_$iv":Lkotlinx/coroutines/channels/BufferedChannel;
    .end local v15    # "$i$f$receiveImplOnNoWaiter":I
    .end local v26    # "updCellResult$iv":Ljava/lang/Object;
    nop

    .line 3111
    .end local v6    # "cont":Lkotlinx/coroutines/CancellableContinuationImpl;
    .end local v20    # "$i$a$-suspendCancellableCoroutineReusable-BufferedChannel$BufferedChannelIterator$hasNextOnNoWaiterSuspend$2":I
    nop

    .line 3185
    invoke-virtual {v5}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object v0

    .line 3108
    .end local v5    # "cancellable$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    .end local v22    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .end local v23    # "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutineReusable$2$iv":I
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    if-ne v0, v2, :cond_e

    invoke-static/range {p5 .. p5}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    .line 3186
    :cond_e
    nop

    .line 1643
    .end local v21    # "$i$f$suspendCancellableCoroutineReusable":I
    return-object v0

    .line 3179
    .restart local v5    # "cancellable$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    .restart local v21    # "$i$f$suspendCancellableCoroutineReusable":I
    .restart local v22    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .restart local v23    # "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutineReusable$2$iv":I
    :catchall_3
    move-exception v0

    goto :goto_8

    .end local v21    # "$i$f$suspendCancellableCoroutineReusable":I
    .end local v22    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .end local v23    # "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutineReusable$2$iv":I
    .local v2, "$i$f$suspendCancellableCoroutineReusable":I
    .local v3, "uCont$iv":Lkotlin/coroutines/Continuation;
    .restart local v4    # "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutineReusable$2$iv":I
    :catchall_4
    move-exception v0

    move/from16 v21, v2

    move-object/from16 v22, v3

    move/from16 v23, v4

    .line 3182
    .end local v2    # "$i$f$suspendCancellableCoroutineReusable":I
    .end local v3    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .end local v4    # "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutineReusable$2$iv":I
    .local v0, "e$iv":Ljava/lang/Throwable;
    .restart local v21    # "$i$f$suspendCancellableCoroutineReusable":I
    .restart local v22    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .restart local v23    # "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutineReusable$2$iv":I
    :goto_8
    invoke-virtual {v5}, Lkotlinx/coroutines/CancellableContinuationImpl;->releaseClaimedReusableContinuation$kotlinx_coroutines_core()V

    .line 3183
    throw v0
.end method

.method private final onClosedHasNext()Z
    .locals 2

    .line 1613
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->getCHANNEL_CLOSED()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v0

    iput-object v0, p0, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;->receiveResult:Ljava/lang/Object;

    .line 1614
    iget-object v0, p0, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;->this$0:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-virtual {v0}, Lkotlinx/coroutines/channels/BufferedChannel;->getCloseCause()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1615
    .local v0, "cause":Ljava/lang/Throwable;
    :cond_0
    invoke-static {v0}, Lkotlinx/coroutines/internal/StackTraceRecoveryKt;->recoverStackTrace(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    throw v1
.end method

.method private final onClosedHasNextNoWaiterSuspend()V
    .locals 5

    .line 1652
    iget-object v0, p0, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;->continuation:Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1653
    .local v0, "cont":Lkotlinx/coroutines/CancellableContinuationImpl;
    const/4 v1, 0x0

    iput-object v1, p0, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;->continuation:Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 1655
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->getCHANNEL_CLOSED()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v1

    iput-object v1, p0, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;->receiveResult:Ljava/lang/Object;

    .line 1659
    iget-object v1, p0, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;->this$0:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-virtual {v1}, Lkotlinx/coroutines/channels/BufferedChannel;->getCloseCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 1660
    .local v1, "cause":Ljava/lang/Throwable;
    if-nez v1, :cond_0

    .line 1661
    move-object v2, v0

    check-cast v2, Lkotlin/coroutines/Continuation;

    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    goto :goto_2

    .line 1663
    :cond_0
    move-object v2, v0

    check-cast v2, Lkotlin/coroutines/Continuation;

    const/4 v3, 0x0

    .line 3187
    .local v3, "$i$f$recoverStackTrace":I
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getRECOVER_STACK_TRACES()Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v4, v0

    check-cast v4, Lkotlin/coroutines/Continuation;

    instance-of v4, v4, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    if-nez v4, :cond_1

    goto :goto_0

    .line 3188
    :cond_1
    move-object v4, v0

    check-cast v4, Lkotlin/coroutines/Continuation;

    check-cast v4, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    invoke-static {v1, v4}, Lkotlinx/coroutines/internal/StackTraceRecoveryKt;->access$recoverFromStackFrame(Ljava/lang/Throwable;Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;)Ljava/lang/Throwable;

    move-result-object v4

    goto :goto_1

    .line 3187
    :cond_2
    :goto_0
    move-object v4, v1

    .line 1663
    .end local v3    # "$i$f$recoverStackTrace":I
    :goto_1
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v4}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 1665
    :goto_2
    return-void
.end method


# virtual methods
.method public hasNext(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 18
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1590
    move-object/from16 v6, p0

    iget-object v0, v6, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;->this$0:Lkotlinx/coroutines/channels/BufferedChannel;

    .line 1593
    nop

    .line 1590
    move-object v13, v0

    .local v13, "this_$iv":Lkotlinx/coroutines/channels/BufferedChannel;
    const/4 v12, 0x0

    .local v12, "waiter$iv":Ljava/lang/Object;
    const/4 v14, 0x0

    .local v14, "$i$f$receiveImpl":I
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->access$getReceiveSegment$FU$p()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    .line 3056
    invoke-virtual {v0, v13}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/channels/ChannelSegment;

    .line 3057
    .local v0, "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    :goto_0
    nop

    .line 3060
    invoke-virtual {v13}, Lkotlinx/coroutines/channels/BufferedChannel;->isClosedForReceive()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 1605
    .local v1, "$i$a$-receiveImpl-BufferedChannel$BufferedChannelIterator$hasNext$4":I
    invoke-direct/range {p0 .. p0}, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;->onClosedHasNext()Z

    move-result v1

    .end local v1    # "$i$a$-receiveImpl-BufferedChannel$BufferedChannelIterator$hasNext$4":I
    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 3060
    goto/16 :goto_2

    :cond_0
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->access$getReceivers$FU$p()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v1

    .line 3063
    invoke-virtual {v1, v13}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v15

    .line 3065
    .local v15, "r$iv":J
    sget v1, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    int-to-long v1, v1

    div-long v3, v15, v1

    .line 3066
    .local v3, "id$iv":J
    sget v1, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    int-to-long v1, v1

    rem-long v1, v15, v1

    long-to-int v5, v1

    .line 3069
    .local v5, "i$iv":I
    iget-wide v1, v0, Lkotlinx/coroutines/channels/ChannelSegment;->id:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2

    .line 3071
    invoke-static {v13, v3, v4, v0}, Lkotlinx/coroutines/channels/BufferedChannel;->access$findSegmentReceive(Lkotlinx/coroutines/channels/BufferedChannel;JLkotlinx/coroutines/channels/ChannelSegment;)Lkotlinx/coroutines/channels/ChannelSegment;

    move-result-object v1

    if-nez v1, :cond_1

    .line 3075
    goto :goto_0

    .line 3071
    :cond_1
    move-object v0, v1

    move-object/from16 v17, v0

    goto :goto_1

    .line 3069
    :cond_2
    move-object/from16 v17, v0

    .line 3078
    .end local v0    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .local v17, "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    :goto_1
    move-object v7, v13

    move-object/from16 v8, v17

    move v9, v5

    move-wide v10, v15

    invoke-static/range {v7 .. v12}, Lkotlinx/coroutines/channels/BufferedChannel;->access$updateCellReceive(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/channels/ChannelSegment;IJLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 3079
    .local v7, "updCellResult$iv":Ljava/lang/Object;
    nop

    .line 3080
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getSUSPEND$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v0

    if-eq v7, v0, :cond_6

    .line 3086
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getFAILED$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v0

    if-ne v7, v0, :cond_4

    .line 3093
    invoke-virtual {v13}, Lkotlinx/coroutines/channels/BufferedChannel;->getSendersCounter$kotlinx_coroutines_core()J

    move-result-wide v0

    cmp-long v0, v15, v0

    if-gez v0, :cond_3

    invoke-virtual/range {v17 .. v17}, Lkotlinx/coroutines/channels/ChannelSegment;->cleanPrev()V

    .line 3094
    :cond_3
    move-object/from16 v0, v17

    goto :goto_0

    .line 3096
    :cond_4
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getSUSPEND_NO_WAITER$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v0

    if-ne v7, v0, :cond_5

    .line 3099
    move-object/from16 v1, v17

    .local v1, "segm":Lkotlinx/coroutines/channels/ChannelSegment;
    move v2, v5

    move-wide v8, v3

    .end local v3    # "id$iv":J
    .local v2, "i":I
    .local v8, "id$iv":J
    move-wide v3, v15

    .local v3, "r":J
    const/4 v10, 0x0

    .line 1609
    .local v10, "$i$a$-receiveImpl-BufferedChannel$BufferedChannelIterator$hasNext$5":I
    move-object/from16 v0, p0

    move v11, v5

    .end local v5    # "i$iv":I
    .local v11, "i$iv":I
    move-object/from16 v5, p1

    invoke-direct/range {v0 .. v5}, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;->hasNextOnNoWaiterSuspend(Lkotlinx/coroutines/channels/ChannelSegment;IJLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 3105
    .end local v1    # "segm":Lkotlinx/coroutines/channels/ChannelSegment;
    .end local v2    # "i":I
    .end local v8    # "id$iv":J
    .end local v10    # "$i$a$-receiveImpl-BufferedChannel$BufferedChannelIterator$hasNext$5":I
    .end local v11    # "i$iv":I
    .local v3, "id$iv":J
    .restart local v5    # "i$iv":I
    :cond_5
    move-wide v8, v3

    move v11, v5

    .end local v3    # "id$iv":J
    .end local v5    # "i$iv":I
    .restart local v8    # "id$iv":J
    .restart local v11    # "i$iv":I
    invoke-virtual/range {v17 .. v17}, Lkotlinx/coroutines/channels/ChannelSegment;->cleanPrev()V

    .line 3107
    move-object v0, v7

    .local v0, "element":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 1599
    .local v1, "$i$a$-receiveImpl-BufferedChannel$BufferedChannelIterator$hasNext$2":I
    iput-object v0, v6, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;->receiveResult:Ljava/lang/Object;

    .line 1600
    const/4 v0, 0x1

    .end local v0    # "element":Ljava/lang/Object;
    .end local v1    # "$i$a$-receiveImpl-BufferedChannel$BufferedChannelIterator$hasNext$2":I
    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 3107
    nop

    .line 3079
    nop

    .line 1610
    .end local v7    # "updCellResult$iv":Ljava/lang/Object;
    .end local v8    # "id$iv":J
    .end local v11    # "i$iv":I
    .end local v12    # "waiter$iv":Ljava/lang/Object;
    .end local v13    # "this_$iv":Lkotlinx/coroutines/channels/BufferedChannel;
    .end local v14    # "$i$f$receiveImpl":I
    .end local v15    # "r$iv":J
    .end local v17    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    :goto_2
    return-object v1

    .line 3083
    .restart local v3    # "id$iv":J
    .restart local v5    # "i$iv":I
    .restart local v7    # "updCellResult$iv":Ljava/lang/Object;
    .restart local v12    # "waiter$iv":Ljava/lang/Object;
    .restart local v13    # "this_$iv":Lkotlinx/coroutines/channels/BufferedChannel;
    .restart local v14    # "$i$f$receiveImpl":I
    .restart local v15    # "r$iv":J
    .restart local v17    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    :cond_6
    nop

    .line 3084
    const/4 v0, 0x0

    .local v0, "$i$a$-receiveImpl-BufferedChannel$BufferedChannelIterator$hasNext$3":I
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 1603
    const-string/jumbo v2, "unreachable"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public invokeOnCancellation(Lkotlinx/coroutines/internal/Segment;I)V
    .locals 1
    .param p1, "segment"    # Lkotlinx/coroutines/internal/Segment;
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/internal/Segment<",
            "*>;I)V"
        }
    .end annotation

    .line 1646
    iget-object v0, p0, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;->continuation:Lkotlinx/coroutines/CancellableContinuationImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lkotlinx/coroutines/CancellableContinuationImpl;->invokeOnCancellation(Lkotlinx/coroutines/internal/Segment;I)V

    .line 1647
    :cond_0
    return-void
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1670
    iget-object v0, p0, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;->receiveResult:Ljava/lang/Object;

    .line 1671
    .local v0, "result":Ljava/lang/Object;
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getNO_RECEIVE_RESULT$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 1672
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getNO_RECEIVE_RESULT$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v1

    iput-object v1, p0, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;->receiveResult:Ljava/lang/Object;

    .line 1674
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->getCHANNEL_CLOSED()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 1676
    return-object v0

    .line 1674
    :cond_1
    iget-object v1, p0, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;->this$0:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-static {v1}, Lkotlinx/coroutines/channels/BufferedChannel;->access$getReceiveException(Lkotlinx/coroutines/channels/BufferedChannel;)Ljava/lang/Throwable;

    move-result-object v1

    invoke-static {v1}, Lkotlinx/coroutines/internal/StackTraceRecoveryKt;->recoverStackTrace(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    throw v1

    .line 3189
    :cond_2
    const/4 v1, 0x0

    .line 1671
    .local v1, "$i$a$-check-BufferedChannel$BufferedChannelIterator$next$1":I
    nop

    .end local v1    # "$i$a$-check-BufferedChannel$BufferedChannelIterator$next$1":I
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "`hasNext()` has not been invoked"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public synthetic next(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Since 1.3.0, binary compatibility with versions <= 1.2.x"
    .end annotation

    .line 1573
    invoke-static {p0, p1}, Lkotlinx/coroutines/channels/ChannelIterator$DefaultImpls;->next(Lkotlinx/coroutines/channels/ChannelIterator;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final tryResumeHasNext(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "element"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 1682
    iget-object v0, p0, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;->continuation:Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1683
    .local v0, "cont":Lkotlinx/coroutines/CancellableContinuationImpl;
    const/4 v1, 0x0

    iput-object v1, p0, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;->continuation:Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 1685
    iput-object p1, p0, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;->receiveResult:Ljava/lang/Object;

    .line 1689
    move-object v2, v0

    check-cast v2, Lkotlinx/coroutines/CancellableContinuation;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-object v4, p0, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;->this$0:Lkotlinx/coroutines/channels/BufferedChannel;

    iget-object v4, v4, Lkotlinx/coroutines/channels/BufferedChannel;->onUndeliveredElement:Lkotlin/jvm/functions/Function1;

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v1

    invoke-static {v4, p1, v1}, Lkotlinx/coroutines/internal/OnUndeliveredElementKt;->bindCancellationFun(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;)Lkotlin/jvm/functions/Function1;

    move-result-object v1

    :cond_0
    invoke-static {v2, v3, v1}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$tryResume0(Lkotlinx/coroutines/CancellableContinuation;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Z

    move-result v1

    return v1
.end method

.method public final tryResumeHasNextOnClosedChannel()V
    .locals 5

    .line 1695
    iget-object v0, p0, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;->continuation:Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1696
    .local v0, "cont":Lkotlinx/coroutines/CancellableContinuationImpl;
    const/4 v1, 0x0

    iput-object v1, p0, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;->continuation:Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 1700
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->getCHANNEL_CLOSED()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v1

    iput-object v1, p0, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;->receiveResult:Ljava/lang/Object;

    .line 1704
    iget-object v1, p0, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;->this$0:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-virtual {v1}, Lkotlinx/coroutines/channels/BufferedChannel;->getCloseCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 1705
    .local v1, "cause":Ljava/lang/Throwable;
    if-nez v1, :cond_0

    .line 1706
    move-object v2, v0

    check-cast v2, Lkotlin/coroutines/Continuation;

    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    goto :goto_2

    .line 1708
    :cond_0
    move-object v2, v0

    check-cast v2, Lkotlin/coroutines/Continuation;

    const/4 v3, 0x0

    .line 3190
    .local v3, "$i$f$recoverStackTrace":I
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getRECOVER_STACK_TRACES()Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v4, v0

    check-cast v4, Lkotlin/coroutines/Continuation;

    instance-of v4, v4, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    if-nez v4, :cond_1

    goto :goto_0

    .line 3191
    :cond_1
    move-object v4, v0

    check-cast v4, Lkotlin/coroutines/Continuation;

    check-cast v4, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    invoke-static {v1, v4}, Lkotlinx/coroutines/internal/StackTraceRecoveryKt;->access$recoverFromStackFrame(Ljava/lang/Throwable;Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;)Ljava/lang/Throwable;

    move-result-object v4

    goto :goto_1

    .line 3190
    :cond_2
    :goto_0
    move-object v4, v1

    .line 1708
    .end local v3    # "$i$f$recoverStackTrace":I
    :goto_1
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v4}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 1710
    :goto_2
    return-void
.end method
