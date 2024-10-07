.class public Lkotlinx/coroutines/channels/ConflatedBufferedChannel;
.super Lkotlinx/coroutines/channels/BufferedChannel;
.source "ConflatedBufferedChannel.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/channels/BufferedChannel<",
        "TE;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nConflatedBufferedChannel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConflatedBufferedChannel.kt\nkotlinx/coroutines/channels/ConflatedBufferedChannel\n+ 2 Channel.kt\nkotlinx/coroutines/channels/ChannelKt\n+ 3 BufferedChannel.kt\nkotlinx/coroutines/channels/BufferedChannel\n+ 4 BufferedChannel.kt\nkotlinx/coroutines/channels/BufferedChannelKt\n+ 5 BufferedChannel.kt\nkotlinx/coroutines/channels/BufferedChannel$sendImpl$1\n*L\n1#1,119:1\n548#2,5:120\n514#2,6:125\n514#2,6:212\n548#2,5:218\n244#3:131\n269#3,10:132\n280#3,68:143\n3038#4:142\n269#5:211\n*S KotlinDebug\n*F\n+ 1 ConflatedBufferedChannel.kt\nkotlinx/coroutines/channels/ConflatedBufferedChannel\n*L\n41#1:120,5\n53#1:125,6\n106#1:212,6\n109#1:218,5\n80#1:131\n80#1:132,10\n80#1:143,68\n80#1:142\n80#1:211\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0008\u0010\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u0002B9\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\"\u0008\u0002\u0010\u0007\u001a\u001c\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\t\u0018\u00010\u0008j\n\u0012\u0004\u0012\u00028\u0000\u0018\u0001`\n\u00a2\u0006\u0002\u0010\u000bJ\u001e\u0010\u000f\u001a\u00020\t2\n\u0010\u0010\u001a\u0006\u0012\u0002\u0008\u00030\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0014J\u0019\u0010\u0014\u001a\u00020\t2\u0006\u0010\u0012\u001a\u00028\u0000H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0015J\u001b\u0010\u0016\u001a\u00020\r2\u0006\u0010\u0012\u001a\u00028\u0000H\u0090@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0017\u0010\u0015J\r\u0010\u0018\u001a\u00020\rH\u0010\u00a2\u0006\u0002\u0008\u0019J&\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\t0\u001b2\u0006\u0010\u0012\u001a\u00028\u0000H\u0016\u00f8\u0001\u0001\u00f8\u0001\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ.\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\t0\u001b2\u0006\u0010\u0012\u001a\u00028\u00002\u0006\u0010\u001f\u001a\u00020\rH\u0002\u00f8\u0001\u0001\u00f8\u0001\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008 \u0010!J&\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020\t0\u001b2\u0006\u0010\u0012\u001a\u00028\u0000H\u0002\u00f8\u0001\u0001\u00f8\u0001\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008#\u0010\u001dJ.\u0010$\u001a\u0008\u0012\u0004\u0012\u00020\t0\u001b2\u0006\u0010\u0012\u001a\u00028\u00002\u0006\u0010\u001f\u001a\u00020\rH\u0002\u00f8\u0001\u0001\u00f8\u0001\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008%\u0010!R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000c\u001a\u00020\r8TX\u0094\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\u000eR\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u000f\n\u0002\u0008\u0019\n\u0002\u0008!\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006&"
    }
    d2 = {
        "Lkotlinx/coroutines/channels/ConflatedBufferedChannel;",
        "E",
        "Lkotlinx/coroutines/channels/BufferedChannel;",
        "capacity",
        "",
        "onBufferOverflow",
        "Lkotlinx/coroutines/channels/BufferOverflow;",
        "onUndeliveredElement",
        "Lkotlin/Function1;",
        "",
        "Lkotlinx/coroutines/internal/OnUndeliveredElement;",
        "(ILkotlinx/coroutines/channels/BufferOverflow;Lkotlin/jvm/functions/Function1;)V",
        "isConflatedDropOldest",
        "",
        "()Z",
        "registerSelectForSend",
        "select",
        "Lkotlinx/coroutines/selects/SelectInstance;",
        "element",
        "",
        "send",
        "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "sendBroadcast",
        "sendBroadcast$kotlinx_coroutines_core",
        "shouldSendSuspend",
        "shouldSendSuspend$kotlinx_coroutines_core",
        "trySend",
        "Lkotlinx/coroutines/channels/ChannelResult;",
        "trySend-JP2dKIU",
        "(Ljava/lang/Object;)Ljava/lang/Object;",
        "trySendDropLatest",
        "isSendOp",
        "trySendDropLatest-Mj0NB7M",
        "(Ljava/lang/Object;Z)Ljava/lang/Object;",
        "trySendDropOldest",
        "trySendDropOldest-JP2dKIU",
        "trySendImpl",
        "trySendImpl-Mj0NB7M",
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
.field private final capacity:I

.field private final onBufferOverflow:Lkotlinx/coroutines/channels/BufferOverflow;


# direct methods
.method public constructor <init>(ILkotlinx/coroutines/channels/BufferOverflow;Lkotlin/jvm/functions/Function1;)V
    .locals 4
    .param p1, "capacity"    # I
    .param p2, "onBufferOverflow"    # Lkotlinx/coroutines/channels/BufferOverflow;
    .param p3, "onUndeliveredElement"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlinx/coroutines/channels/BufferOverflow;",
            "Lkotlin/jvm/functions/Function1<",
            "-TE;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1, p3}, Lkotlinx/coroutines/channels/BufferedChannel;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 23
    iput p1, p0, Lkotlinx/coroutines/channels/ConflatedBufferedChannel;->capacity:I

    .line 24
    iput-object p2, p0, Lkotlinx/coroutines/channels/ConflatedBufferedChannel;->onBufferOverflow:Lkotlinx/coroutines/channels/BufferOverflow;

    .line 27
    nop

    .line 28
    iget-object v0, p0, Lkotlinx/coroutines/channels/ConflatedBufferedChannel;->onBufferOverflow:Lkotlinx/coroutines/channels/BufferOverflow;

    sget-object v1, Lkotlinx/coroutines/channels/BufferOverflow;->SUSPEND:Lkotlinx/coroutines/channels/BufferOverflow;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_3

    .line 31
    iget v0, p0, Lkotlinx/coroutines/channels/ConflatedBufferedChannel;->capacity:I

    if-lt v0, v3, :cond_1

    move v2, v3

    :cond_1
    if-eqz v2, :cond_2

    .line 34
    nop

    .line 22
    return-void

    .line 31
    :cond_2
    const/4 v0, 0x0

    .line 32
    .local v0, "$i$a$-require-ConflatedBufferedChannel$2":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Buffered channel capacity must be at least 1, but "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lkotlinx/coroutines/channels/ConflatedBufferedChannel;->capacity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " was specified"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 31
    .end local v0    # "$i$a$-require-ConflatedBufferedChannel$2":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 28
    :cond_3
    const/4 v0, 0x0

    .line 29
    .local v0, "$i$a$-require-ConflatedBufferedChannel$1":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "This implementation does not support suspension for senders, use "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    invoke-interface {v2}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " instead"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 28
    .end local v0    # "$i$a$-require-ConflatedBufferedChannel$1":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public synthetic constructor <init>(ILkotlinx/coroutines/channels/BufferOverflow;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 22
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 25
    const/4 p3, 0x0

    .line 22
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lkotlinx/coroutines/channels/ConflatedBufferedChannel;-><init>(ILkotlinx/coroutines/channels/BufferOverflow;Lkotlin/jvm/functions/Function1;)V

    .line 118
    return-void
.end method

.method static synthetic send$suspendImpl(Lkotlinx/coroutines/channels/ConflatedBufferedChannel;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .param p0, "$this"    # Lkotlinx/coroutines/channels/ConflatedBufferedChannel;
    .param p1, "element"    # Ljava/lang/Object;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/channels/ConflatedBufferedChannel<",
            "TE;>;TE;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 41
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lkotlinx/coroutines/channels/ConflatedBufferedChannel;->trySendImpl-Mj0NB7M(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    .local v0, "$this$onClosed_u2dWpGqRn0$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 120
    .local v1, "$i$f$onClosed-WpGqRn0":I
    nop

    .line 123
    instance-of v2, v0, Lkotlinx/coroutines/channels/ChannelResult$Closed;

    if-eqz v2, :cond_1

    invoke-static {v0}, Lkotlinx/coroutines/channels/ChannelResult;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    .local v2, "it":Ljava/lang/Throwable;
    const/4 v3, 0x0

    .line 42
    .local v3, "$i$a$-onClosed-WpGqRn0-ConflatedBufferedChannel$send$2":I
    iget-object v4, p0, Lkotlinx/coroutines/channels/ConflatedBufferedChannel;->onUndeliveredElement:Lkotlin/jvm/functions/Function1;

    if-eqz v4, :cond_0

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static {v4, p1, v6, v5, v6}, Lkotlinx/coroutines/internal/OnUndeliveredElementKt;->callUndeliveredElementCatchingException$default(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Lkotlinx/coroutines/internal/UndeliveredElementException;ILjava/lang/Object;)Lkotlinx/coroutines/internal/UndeliveredElementException;

    move-result-object v4

    if-eqz v4, :cond_0

    .local v4, "it":Lkotlinx/coroutines/internal/UndeliveredElementException;
    const/4 v5, 0x0

    .line 43
    .local v5, "$i$a$-let-ConflatedBufferedChannel$send$2$1":I
    move-object v6, v4

    check-cast v6, Ljava/lang/Throwable;

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/ConflatedBufferedChannel;->getSendException()Ljava/lang/Throwable;

    move-result-object v7

    invoke-static {v6, v7}, Lkotlin/ExceptionsKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 44
    throw v4

    .line 46
    .end local v4    # "it":Lkotlinx/coroutines/internal/UndeliveredElementException;
    .end local v5    # "$i$a$-let-ConflatedBufferedChannel$send$2$1":I
    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/ConflatedBufferedChannel;->getSendException()Ljava/lang/Throwable;

    move-result-object v4

    throw v4

    .line 124
    .end local v2    # "it":Ljava/lang/Throwable;
    .end local v3    # "$i$a$-onClosed-WpGqRn0-ConflatedBufferedChannel$send$2":I
    :cond_1
    nop

    .line 48
    .end local v0    # "$this$onClosed_u2dWpGqRn0$iv":Ljava/lang/Object;
    .end local v1    # "$i$f$onClosed-WpGqRn0":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static synthetic sendBroadcast$suspendImpl(Lkotlinx/coroutines/channels/ConflatedBufferedChannel;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .param p0, "$this"    # Lkotlinx/coroutines/channels/ConflatedBufferedChannel;
    .param p1, "element"    # Ljava/lang/Object;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/channels/ConflatedBufferedChannel<",
            "TE;>;TE;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 52
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lkotlinx/coroutines/channels/ConflatedBufferedChannel;->trySendImpl-Mj0NB7M(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v1

    .line 53
    nop

    .local v1, "$this$onSuccess_u2dWpGqRn0$iv":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 125
    .local v2, "$i$f$onSuccess-WpGqRn0":I
    nop

    .line 129
    instance-of v3, v1, Lkotlinx/coroutines/channels/ChannelResult$Failed;

    if-nez v3, :cond_0

    move-object v3, v1

    check-cast v3, Lkotlin/Unit;

    .local v3, "it":Lkotlin/Unit;
    const/4 v4, 0x0

    .line 53
    .local v4, "$i$a$-onSuccess-WpGqRn0-ConflatedBufferedChannel$sendBroadcast$2":I
    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 130
    .end local v3    # "it":Lkotlin/Unit;
    .end local v4    # "$i$a$-onSuccess-WpGqRn0-ConflatedBufferedChannel$sendBroadcast$2":I
    :cond_0
    nop

    .line 54
    .end local v1    # "$this$onSuccess_u2dWpGqRn0$iv":Ljava/lang/Object;
    .end local v2    # "$i$f$onSuccess-WpGqRn0":I
    const/4 v0, 0x0

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private final trySendDropLatest-Mj0NB7M(Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 4
    .param p1, "element"    # Ljava/lang/Object;
    .param p2, "isSendOp"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 65
    invoke-super {p0, p1}, Lkotlinx/coroutines/channels/BufferedChannel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 67
    .local v0, "result":Ljava/lang/Object;
    invoke-static {v0}, Lkotlinx/coroutines/channels/ChannelResult;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {v0}, Lkotlinx/coroutines/channels/ChannelResult;->isClosed-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 71
    :cond_0
    if-eqz p2, :cond_2

    .line 72
    iget-object v1, p0, Lkotlinx/coroutines/channels/ConflatedBufferedChannel;->onUndeliveredElement:Lkotlin/jvm/functions/Function1;

    if-eqz v1, :cond_2

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v1, p1, v3, v2, v3}, Lkotlinx/coroutines/internal/OnUndeliveredElementKt;->callUndeliveredElementCatchingException$default(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Lkotlinx/coroutines/internal/UndeliveredElementException;ILjava/lang/Object;)Lkotlinx/coroutines/internal/UndeliveredElementException;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    .local v1, "it":Lkotlinx/coroutines/internal/UndeliveredElementException;
    :cond_1
    const/4 v2, 0x0

    .line 73
    .local v2, "$i$a$-let-ConflatedBufferedChannel$trySendDropLatest$1":I
    throw v1

    .line 76
    .end local v1    # "it":Lkotlinx/coroutines/internal/UndeliveredElementException;
    .end local v2    # "$i$a$-let-ConflatedBufferedChannel$trySendDropLatest$1":I
    :cond_2
    :goto_0
    sget-object v1, Lkotlinx/coroutines/channels/ChannelResult;->Companion:Lkotlinx/coroutines/channels/ChannelResult$Companion;

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v1, v2}, Lkotlinx/coroutines/channels/ChannelResult$Companion;->success-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 67
    :cond_3
    :goto_1
    return-object v0
.end method

.method private final trySendDropOldest-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20
    .param p1, "element"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 85
    move-object/from16 v0, p0

    sget-object v1, Lkotlinx/coroutines/channels/BufferedChannelKt;->BUFFERED:Lkotlinx/coroutines/internal/Symbol;

    .line 80
    nop

    .line 131
    .local v1, "waiter$iv":Ljava/lang/Object;
    nop

    .line 132
    nop

    .line 131
    const/4 v10, 0x0

    .local v10, "$i$f$sendImpl":I
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->access$getSendSegment$FU$p()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v2

    .line 136
    move-object v3, v0

    check-cast v3, Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlinx/coroutines/channels/ChannelSegment;

    .line 137
    .local v2, "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    :goto_0
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannel;->access$getSendersAndCloseStatus$FU$p()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v3

    .line 140
    move-object v4, v0

    check-cast v4, Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v11

    .line 141
    .local v11, "sendersAndCloseStatusCur$iv":J
    move-wide v3, v11

    .local v3, "$this$sendersCounter$iv$iv":J
    const/4 v5, 0x0

    .line 142
    .local v5, "$i$f$getSendersCounter":I
    const-wide v6, 0xfffffffffffffffL

    and-long/2addr v3, v6

    .line 141
    .end local v3    # "$this$sendersCounter$iv$iv":J
    .end local v5    # "$i$f$getSendersCounter":I
    move-wide v13, v3

    .line 143
    .local v13, "s$iv":J
    move-object v3, v0

    check-cast v3, Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-static {v3, v11, v12}, Lkotlinx/coroutines/channels/BufferedChannel;->access$isClosedForSend0(Lkotlinx/coroutines/channels/BufferedChannel;J)Z

    move-result v15

    .line 145
    .local v15, "closed$iv":Z
    sget v3, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    int-to-long v3, v3

    div-long v8, v13, v3

    .line 146
    .local v8, "id$iv":J
    sget v3, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    int-to-long v3, v3

    rem-long v3, v13, v3

    long-to-int v6, v3

    .line 149
    .local v6, "i$iv":I
    iget-wide v3, v2, Lkotlinx/coroutines/channels/ChannelSegment;->id:J

    cmp-long v3, v3, v8

    if-eqz v3, :cond_2

    .line 151
    move-object v3, v0

    check-cast v3, Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-static {v3, v8, v9, v2}, Lkotlinx/coroutines/channels/BufferedChannel;->access$findSegmentSend(Lkotlinx/coroutines/channels/BufferedChannel;JLkotlinx/coroutines/channels/ChannelSegment;)Lkotlinx/coroutines/channels/ChannelSegment;

    move-result-object v3

    if-nez v3, :cond_1

    .line 158
    if-eqz v15, :cond_0

    .line 159
    const/4 v3, 0x0

    .line 97
    .local v3, "$i$a$-sendImpl$default-ConflatedBufferedChannel$trySendDropOldest$3":I
    sget-object v4, Lkotlinx/coroutines/channels/ChannelResult;->Companion:Lkotlinx/coroutines/channels/ChannelResult$Companion;

    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/channels/ConflatedBufferedChannel;->getSendException()Ljava/lang/Throwable;

    move-result-object v5

    invoke-virtual {v4, v5}, Lkotlinx/coroutines/channels/ChannelResult$Companion;->closed-JP2dKIU(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v4

    return-object v4

    .line 161
    .end local v3    # "$i$a$-sendImpl$default-ConflatedBufferedChannel$trySendDropOldest$3":I
    :cond_0
    goto :goto_0

    .line 151
    :cond_1
    move-object v2, v3

    move-object v7, v2

    goto :goto_1

    .line 149
    :cond_2
    move-object v7, v2

    .line 167
    .end local v2    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .local v7, "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    :goto_1
    move-object v2, v0

    check-cast v2, Lkotlinx/coroutines/channels/BufferedChannel;

    move-object v3, v7

    move v4, v6

    move-object/from16 v5, p1

    move-object/from16 v17, v7

    move/from16 v16, v10

    move v10, v6

    .end local v6    # "i$iv":I
    .end local v7    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .local v10, "i$iv":I
    .local v16, "$i$f$sendImpl":I
    .local v17, "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    move-wide v6, v13

    move-wide/from16 v18, v8

    .end local v8    # "id$iv":J
    .local v18, "id$iv":J
    move-object v8, v1

    move v9, v15

    invoke-static/range {v2 .. v9}, Lkotlinx/coroutines/channels/BufferedChannel;->access$updateCellSend(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/channels/ChannelSegment;ILjava/lang/Object;JLjava/lang/Object;Z)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move-object/from16 v4, v17

    .line 211
    .end local v10    # "i$iv":I
    .end local v11    # "sendersAndCloseStatusCur$iv":J
    .end local v13    # "s$iv":J
    .end local v15    # "closed$iv":Z
    .end local v17    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .end local v18    # "id$iv":J
    .local v4, "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    goto/16 :goto_6

    .line 204
    .end local v4    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local v10    # "i$iv":I
    .restart local v11    # "sendersAndCloseStatusCur$iv":J
    .restart local v13    # "s$iv":J
    .restart local v15    # "closed$iv":Z
    .restart local v17    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local v18    # "id$iv":J
    :pswitch_0
    invoke-virtual/range {v17 .. v17}, Lkotlinx/coroutines/channels/ChannelSegment;->cleanPrev()V

    .line 205
    move-object/from16 v4, v17

    goto/16 :goto_6

    .line 197
    :pswitch_1
    move-object v2, v0

    check-cast v2, Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-virtual {v2}, Lkotlinx/coroutines/channels/BufferedChannel;->getReceiversCounter$kotlinx_coroutines_core()J

    move-result-wide v2

    cmp-long v2, v13, v2

    if-gez v2, :cond_3

    invoke-virtual/range {v17 .. v17}, Lkotlinx/coroutines/channels/ChannelSegment;->cleanPrev()V

    .line 198
    :cond_3
    const/4 v2, 0x0

    .line 97
    .local v2, "$i$a$-sendImpl$default-ConflatedBufferedChannel$trySendDropOldest$3":I
    :goto_2
    sget-object v3, Lkotlinx/coroutines/channels/ChannelResult;->Companion:Lkotlinx/coroutines/channels/ChannelResult$Companion;

    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/channels/ConflatedBufferedChannel;->getSendException()Ljava/lang/Throwable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lkotlinx/coroutines/channels/ChannelResult$Companion;->closed-JP2dKIU(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v3

    return-object v3

    .line 210
    .end local v2    # "$i$a$-sendImpl$default-ConflatedBufferedChannel$trySendDropOldest$3":I
    :pswitch_2
    const/4 v2, 0x0

    .local v2, "$i$a$-sendImpl-BufferedChannel$sendImpl$1":I
    new-instance v3, Ljava/lang/IllegalStateException;

    .line 211
    const-string/jumbo v4, "unexpected"

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 185
    .end local v2    # "$i$a$-sendImpl-BufferedChannel$sendImpl$1":I
    :pswitch_3
    if-eqz v15, :cond_4

    .line 186
    invoke-virtual/range {v17 .. v17}, Lkotlinx/coroutines/channels/ChannelSegment;->onSlotCleaned()V

    .line 187
    const/4 v2, 0x0

    .local v2, "$i$a$-sendImpl$default-ConflatedBufferedChannel$trySendDropOldest$3":I
    goto :goto_2

    .line 189
    .end local v2    # "$i$a$-sendImpl$default-ConflatedBufferedChannel$trySendDropOldest$3":I
    :cond_4
    instance-of v2, v1, Lkotlinx/coroutines/Waiter;

    if-eqz v2, :cond_5

    move-object v2, v1

    check-cast v2, Lkotlinx/coroutines/Waiter;

    goto :goto_3

    :cond_5
    const/4 v2, 0x0

    :goto_3
    if-eqz v2, :cond_6

    move-object v3, v0

    check-cast v3, Lkotlinx/coroutines/channels/BufferedChannel;

    move-object/from16 v4, v17

    .end local v17    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local v4    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    invoke-static {v3, v2, v4, v10}, Lkotlinx/coroutines/channels/BufferedChannel;->access$prepareSenderForSuspension(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/Waiter;Lkotlinx/coroutines/channels/ChannelSegment;I)V

    goto :goto_4

    .end local v4    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local v17    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    :cond_6
    move-object/from16 v4, v17

    .line 190
    .end local v17    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local v4    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    :goto_4
    move-object v2, v4

    .local v2, "segm":Lkotlinx/coroutines/channels/ChannelSegment;
    move v3, v10

    .local v3, "i":I
    const/4 v5, 0x0

    .line 93
    .local v5, "$i$a$-sendImpl$default-ConflatedBufferedChannel$trySendDropOldest$2":I
    iget-wide v6, v2, Lkotlinx/coroutines/channels/ChannelSegment;->id:J

    sget v8, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    int-to-long v8, v8

    mul-long/2addr v6, v8

    int-to-long v8, v3

    add-long/2addr v6, v8

    invoke-virtual {v0, v6, v7}, Lkotlinx/coroutines/channels/ConflatedBufferedChannel;->dropFirstElementUntilTheSpecifiedCellIsInTheBuffer(J)V

    .line 94
    sget-object v6, Lkotlinx/coroutines/channels/ChannelResult;->Companion:Lkotlinx/coroutines/channels/ChannelResult$Companion;

    sget-object v7, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v6, v7}, Lkotlinx/coroutines/channels/ChannelResult$Companion;->success-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    return-object v6

    .line 178
    .end local v2    # "segm":Lkotlinx/coroutines/channels/ChannelSegment;
    .end local v3    # "i":I
    .end local v4    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .end local v5    # "$i$a$-sendImpl$default-ConflatedBufferedChannel$trySendDropOldest$2":I
    .restart local v17    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    :pswitch_4
    move-object/from16 v4, v17

    .end local v17    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local v4    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    const/4 v2, 0x0

    .line 88
    .local v2, "$i$a$-sendImpl$default-ConflatedBufferedChannel$trySendDropOldest$1":I
    :goto_5
    sget-object v3, Lkotlinx/coroutines/channels/ChannelResult;->Companion:Lkotlinx/coroutines/channels/ChannelResult$Companion;

    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v3, v5}, Lkotlinx/coroutines/channels/ChannelResult$Companion;->success-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    return-object v3

    .line 173
    .end local v2    # "$i$a$-sendImpl$default-ConflatedBufferedChannel$trySendDropOldest$1":I
    .end local v4    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local v17    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    :pswitch_5
    move-object/from16 v4, v17

    .end local v17    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local v4    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    invoke-virtual {v4}, Lkotlinx/coroutines/channels/ChannelSegment;->cleanPrev()V

    .line 174
    const/4 v2, 0x0

    .restart local v2    # "$i$a$-sendImpl$default-ConflatedBufferedChannel$trySendDropOldest$1":I
    goto :goto_5

    .line 137
    .end local v2    # "$i$a$-sendImpl$default-ConflatedBufferedChannel$trySendDropOldest$1":I
    .end local v4    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .end local v10    # "i$iv":I
    .end local v11    # "sendersAndCloseStatusCur$iv":J
    .end local v13    # "s$iv":J
    .end local v15    # "closed$iv":Z
    .end local v18    # "id$iv":J
    .restart local v17    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    :goto_6
    move-object v2, v4

    move/from16 v10, v16

    .end local v17    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    .restart local v4    # "segment$iv":Lkotlinx/coroutines/channels/ChannelSegment;
    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final trySendImpl-Mj0NB7M(Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 2
    .param p1, "element"    # Ljava/lang/Object;
    .param p2, "isSendOp"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lkotlinx/coroutines/channels/ConflatedBufferedChannel;->onBufferOverflow:Lkotlinx/coroutines/channels/BufferOverflow;

    sget-object v1, Lkotlinx/coroutines/channels/BufferOverflow;->DROP_LATEST:Lkotlinx/coroutines/channels/BufferOverflow;

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/channels/ConflatedBufferedChannel;->trySendDropLatest-Mj0NB7M(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 61
    :cond_0
    invoke-direct {p0, p1}, Lkotlinx/coroutines/channels/ConflatedBufferedChannel;->trySendDropOldest-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0
.end method


# virtual methods
.method protected isConflatedDropOldest()Z
    .locals 2

    .line 37
    iget-object v0, p0, Lkotlinx/coroutines/channels/ConflatedBufferedChannel;->onBufferOverflow:Lkotlinx/coroutines/channels/BufferOverflow;

    sget-object v1, Lkotlinx/coroutines/channels/BufferOverflow;->DROP_OLDEST:Lkotlinx/coroutines/channels/BufferOverflow;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected registerSelectForSend(Lkotlinx/coroutines/selects/SelectInstance;Ljava/lang/Object;)V
    .locals 7
    .param p1, "select"    # Lkotlinx/coroutines/selects/SelectInstance;
    .param p2, "element"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/selects/SelectInstance<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 105
    invoke-virtual {p0, p2}, Lkotlinx/coroutines/channels/ConflatedBufferedChannel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .local v0, "it":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 106
    .local v1, "$i$a$-let-ConflatedBufferedChannel$registerSelectForSend$1":I
    move-object v2, v0

    .local v2, "$this$onSuccess_u2dWpGqRn0$iv":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 212
    .local v3, "$i$f$onSuccess-WpGqRn0":I
    nop

    .line 216
    instance-of v4, v2, Lkotlinx/coroutines/channels/ChannelResult$Failed;

    if-nez v4, :cond_0

    move-object v4, v2

    check-cast v4, Lkotlin/Unit;

    .local v4, "it":Lkotlin/Unit;
    const/4 v5, 0x0

    .line 107
    .local v5, "$i$a$-onSuccess-WpGqRn0-ConflatedBufferedChannel$registerSelectForSend$1$1":I
    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-interface {p1, v6}, Lkotlinx/coroutines/selects/SelectInstance;->selectInRegistrationPhase(Ljava/lang/Object;)V

    .line 108
    return-void

    .line 217
    .end local v4    # "it":Lkotlin/Unit;
    .end local v5    # "$i$a$-onSuccess-WpGqRn0-ConflatedBufferedChannel$registerSelectForSend$1$1":I
    :cond_0
    nop

    .line 109
    .end local v2    # "$this$onSuccess_u2dWpGqRn0$iv":Ljava/lang/Object;
    .end local v3    # "$i$f$onSuccess-WpGqRn0":I
    nop

    .local v2, "$this$onClosed_u2dWpGqRn0$iv":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 218
    .local v3, "$i$f$onClosed-WpGqRn0":I
    nop

    .line 221
    instance-of v4, v2, Lkotlinx/coroutines/channels/ChannelResult$Closed;

    if-eqz v4, :cond_1

    invoke-static {v2}, Lkotlinx/coroutines/channels/ChannelResult;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v4

    .local v4, "it":Ljava/lang/Throwable;
    const/4 v5, 0x0

    .line 110
    .local v5, "$i$a$-onClosed-WpGqRn0-ConflatedBufferedChannel$registerSelectForSend$1$2":I
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->getCHANNEL_CLOSED()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v6

    invoke-interface {p1, v6}, Lkotlinx/coroutines/selects/SelectInstance;->selectInRegistrationPhase(Ljava/lang/Object;)V

    .line 111
    return-void

    .line 222
    .end local v4    # "it":Ljava/lang/Throwable;
    .end local v5    # "$i$a$-onClosed-WpGqRn0-ConflatedBufferedChannel$registerSelectForSend$1$2":I
    :cond_1
    nop

    .line 109
    .end local v2    # "$this$onClosed_u2dWpGqRn0$iv":Ljava/lang/Object;
    .end local v3    # "$i$f$onClosed-WpGqRn0":I
    nop

    .line 105
    .end local v0    # "it":Ljava/lang/Object;
    .end local v1    # "$i$a$-let-ConflatedBufferedChannel$registerSelectForSend$1":I
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 114
    const-string/jumbo v1, "unreachable"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public send(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lkotlinx/coroutines/channels/ConflatedBufferedChannel;->send$suspendImpl(Lkotlinx/coroutines/channels/ConflatedBufferedChannel;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public sendBroadcast$kotlinx_coroutines_core(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lkotlinx/coroutines/channels/ConflatedBufferedChannel;->sendBroadcast$suspendImpl(Lkotlinx/coroutines/channels/ConflatedBufferedChannel;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public shouldSendSuspend$kotlinx_coroutines_core()Z
    .locals 1

    .line 117
    const/4 v0, 0x0

    return v0
.end method

.method public trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "element"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lkotlinx/coroutines/channels/ConflatedBufferedChannel;->trySendImpl-Mj0NB7M(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
