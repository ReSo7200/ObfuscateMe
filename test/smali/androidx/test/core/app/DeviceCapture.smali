.class public final Landroidx/test/core/app/DeviceCapture;
.super Ljava/lang/Object;
.source "DeviceCapture.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDeviceCapture.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DeviceCapture.kt\nandroidx/test/core/app/DeviceCapture\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,160:1\n314#2,11:161\n*S KotlinDebug\n*F\n+ 1 DeviceCapture.kt\nandroidx/test/core/app/DeviceCapture\n*L\n138#1:161,11\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a\u0008\u0010\u0000\u001a\u00020\u0001H\u0007\u001a\u0011\u0010\u0002\u001a\u00020\u0003H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0004\u001a\u0006\u0010\u0005\u001a\u00020\u0006\u001a\u0008\u0010\u0007\u001a\u00020\u0006H\u0007\u001a!\u0010\u0008\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0001H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000c\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\r"
    }
    d2 = {
        "canTakeScreenshot",
        "",
        "forceRedrawGlobalWindowViews",
        "",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "takeScreenshot",
        "Landroid/graphics/Bitmap;",
        "takeScreenshotNoSync",
        "takeScreenshotOnNextFrame",
        "uiAutomation",
        "Landroid/app/UiAutomation;",
        "hardwareDrawingEnabled",
        "(Landroid/app/UiAutomation;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "core_java_androidx_test_core-core_internal_kt"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final synthetic access$forceRedrawGlobalWindowViews(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 1
    invoke-static {p0}, Landroidx/test/core/app/DeviceCapture;->forceRedrawGlobalWindowViews(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$takeScreenshotOnNextFrame(Landroid/app/UiAutomation;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "uiAutomation"    # Landroid/app/UiAutomation;
    .param p1, "hardwareDrawingEnabled"    # Z
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/test/core/app/DeviceCapture;->takeScreenshotOnNextFrame(Landroid/app/UiAutomation;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final canTakeScreenshot()Z
    .locals 2

    .line 53
    invoke-static {}, Landroidx/test/platform/app/InstrumentationRegistry;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Instrumentation;->getUiAutomation()Landroid/app/UiAutomation;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static final forceRedrawGlobalWindowViews(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
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

    instance-of v0, p0, Landroidx/test/core/app/DeviceCapture$forceRedrawGlobalWindowViews$1;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Landroidx/test/core/app/DeviceCapture$forceRedrawGlobalWindowViews$1;

    iget v1, v0, Landroidx/test/core/app/DeviceCapture$forceRedrawGlobalWindowViews$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p0, v0, Landroidx/test/core/app/DeviceCapture$forceRedrawGlobalWindowViews$1;->label:I

    sub-int/2addr p0, v2

    iput p0, v0, Landroidx/test/core/app/DeviceCapture$forceRedrawGlobalWindowViews$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/test/core/app/DeviceCapture$forceRedrawGlobalWindowViews$1;

    invoke-direct {v0, p0}, Landroidx/test/core/app/DeviceCapture$forceRedrawGlobalWindowViews$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p0, v0

    .local p0, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p0, Landroidx/test/core/app/DeviceCapture$forceRedrawGlobalWindowViews$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 122
    iget v2, p0, Landroidx/test/core/app/DeviceCapture$forceRedrawGlobalWindowViews$1;->label:I

    packed-switch v2, :pswitch_data_0

    .end local v0    # "$result":Ljava/lang/Object;
    .end local p0    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p0    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    iget-object v2, p0, Landroidx/test/core/app/DeviceCapture$forceRedrawGlobalWindowViews$1;->L$0:Ljava/lang/Object;

    check-cast v2, Ljava/util/Iterator;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :pswitch_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 123
    invoke-static {}, Landroidx/test/platform/view/inspector/WindowInspectorCompat;->getGlobalWindowViews()Ljava/util/List;

    move-result-object v2

    .line 124
    .local v2, "views":Ljava/util/List;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " global views to redraw"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DeviceCapture"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v2, v3

    .end local v2    # "views":Ljava/util/List;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 126
    .local v3, "view":Landroid/view/View;
    const-string/jumbo v4, "view"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, p0, Landroidx/test/core/app/DeviceCapture$forceRedrawGlobalWindowViews$1;->L$0:Ljava/lang/Object;

    const/4 v4, 0x1

    iput v4, p0, Landroidx/test/core/app/DeviceCapture$forceRedrawGlobalWindowViews$1;->label:I

    invoke-static {v3, p0}, Landroidx/test/core/view/ViewCapture;->forceRedraw(Landroid/view/View;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "view":Landroid/view/View;
    if-ne v3, v1, :cond_1

    .line 122
    return-object v1

    .line 126
    :cond_1
    :goto_2
    goto :goto_1

    .line 128
    :cond_2
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final takeScreenshot()Landroid/graphics/Bitmap;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 79
    invoke-static {}, Landroidx/test/platform/app/InstrumentationRegistry;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Instrumentation;->waitForIdleSync()V

    .line 80
    invoke-static {}, Landroidx/test/core/app/DeviceCapture;->takeScreenshotNoSync()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static final takeScreenshotNoSync()Landroid/graphics/Bitmap;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 98
    invoke-static {}, Landroidx/test/core/app/DeviceCapture;->canTakeScreenshot()Z

    move-result v0

    invoke-static {v0}, Landroidx/test/internal/util/Checks;->checkState(Z)V

    .line 100
    new-instance v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 101
    .local v2, "bitmap":Lkotlin/jvm/internal/Ref$ObjectRef;
    new-instance v5, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v5}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 103
    .local v5, "exception":Lkotlin/jvm/internal/Ref$ObjectRef;
    new-instance v0, Landroidx/test/core/internal/os/HandlerExecutor;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, v1}, Landroidx/test/core/internal/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    check-cast v0, Ljava/util/concurrent/Executor;

    invoke-static {v0}, Lkotlinx/coroutines/ExecutorsKt;->from(Ljava/util/concurrent/Executor;)Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    .line 102
    nop

    .line 104
    .local v0, "mainHandlerDispatcher":Lkotlinx/coroutines/CoroutineDispatcher;
    invoke-static {}, Landroidx/test/platform/app/InstrumentationRegistry;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Instrumentation;->getUiAutomation()Landroid/app/UiAutomation;

    move-result-object v7

    .line 105
    .local v7, "uiAutomation":Landroid/app/UiAutomation;
    if-eqz v7, :cond_0

    .line 109
    invoke-static {}, Landroidx/test/platform/graphics/HardwareRendererCompat;->isDrawingEnabled()Z

    move-result v8

    .line 110
    .local v8, "hardwareDrawingEnabled":Z
    const/4 v1, 0x1

    invoke-static {v1}, Landroidx/test/platform/graphics/HardwareRendererCompat;->setDrawingEnabled(Z)V

    .line 112
    move-object v9, v0

    check-cast v9, Lkotlin/coroutines/CoroutineContext;

    new-instance v10, Landroidx/test/core/app/DeviceCapture$takeScreenshotNoSync$1;

    const/4 v6, 0x0

    move-object v1, v10

    move-object v3, v7

    move v4, v8

    invoke-direct/range {v1 .. v6}, Landroidx/test/core/app/DeviceCapture$takeScreenshotNoSync$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/app/UiAutomation;ZLkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    check-cast v10, Lkotlin/jvm/functions/Function2;

    invoke-static {v9, v10}, Lkotlinx/coroutines/BuildersKt;->runBlocking(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    return-object v1

    .line 106
    .end local v8    # "hardwareDrawingEnabled":Z
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "uiautomation is null"

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static final takeScreenshotOnNextFrame(Landroid/app/UiAutomation;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .param p0, "uiAutomation"    # Landroid/app/UiAutomation;
    .param p1, "hardwareDrawingEnabled"    # Z
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/UiAutomation;",
            "Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 138
    const/4 v0, 0x0

    .line 161
    .local v0, "$i$f$suspendCancellableCoroutine":I
    move-object v1, p2

    .local v1, "uCont$iv":Lkotlin/coroutines/Continuation;
    const/4 v2, 0x0

    .line 162
    .local v2, "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutine$2$iv":I
    new-instance v3, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {v1}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 168
    .local v3, "cancellable$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    invoke-virtual {v3}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 169
    move-object v4, v3

    check-cast v4, Lkotlinx/coroutines/CancellableContinuation;

    .local v4, "cont":Lkotlinx/coroutines/CancellableContinuation;
    const/4 v5, 0x0

    .line 139
    .local v5, "$i$a$-suspendCancellableCoroutine-DeviceCapture$takeScreenshotOnNextFrame$2":I
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v6

    new-instance v7, Landroidx/test/core/app/DeviceCapture$takeScreenshotOnNextFrame$2$1;

    invoke-direct {v7, p0, p1, v4}, Landroidx/test/core/app/DeviceCapture$takeScreenshotOnNextFrame$2$1;-><init>(Landroid/app/UiAutomation;ZLkotlinx/coroutines/CancellableContinuation;)V

    check-cast v7, Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v6, v7}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 158
    nop

    .line 169
    .end local v4    # "cont":Lkotlinx/coroutines/CancellableContinuation;
    .end local v5    # "$i$a$-suspendCancellableCoroutine-DeviceCapture$takeScreenshotOnNextFrame$2":I
    nop

    .line 170
    invoke-virtual {v3}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object v1

    .line 161
    .end local v1    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .end local v2    # "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutine$2$iv":I
    .end local v3    # "cancellable$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_0

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    .line 171
    :cond_0
    nop

    .line 138
    .end local v0    # "$i$f$suspendCancellableCoroutine":I
    return-object v1
.end method
