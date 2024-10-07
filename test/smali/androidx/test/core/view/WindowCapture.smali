.class public final Landroidx/test/core/view/WindowCapture;
.super Ljava/lang/Object;
.source "WindowCapture.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWindowCapture.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WindowCapture.kt\nandroidx/test/core/view/WindowCapture\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,114:1\n314#2,11:115\n*S KotlinDebug\n*F\n+ 1 WindowCapture.kt\nandroidx/test/core/view/WindowCapture\n*L\n95#1:115,11\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u001a!\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0005\u001a\u001c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u0007*\u00020\u00022\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u001a!\u0010\u0008\u001a\u00020\u0001*\u00020\u00022\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004H\u0080@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0005\u001a)\u0010\t\u001a\u00020\u0001*\u00020\u00022\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\n\u001a\u00020\u0001H\u0081@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000b\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u000c"
    }
    d2 = {
        "captureRegionToBitmap",
        "Landroid/graphics/Bitmap;",
        "Landroid/view/Window;",
        "boundsInWindow",
        "Landroid/graphics/Rect;",
        "(Landroid/view/Window;Landroid/graphics/Rect;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "captureRegionToBitmapAsync",
        "Lcom/google/common/util/concurrent/ListenableFuture;",
        "generateBitmap",
        "generateBitmapFromPixelCopy",
        "destBitmap",
        "(Landroid/view/Window;Landroid/graphics/Rect;Landroid/graphics/Bitmap;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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
.method public static final captureRegionToBitmap(Landroid/view/Window;Landroid/graphics/Rect;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/Window;",
            "Landroid/graphics/Rect;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Landroidx/test/core/view/WindowCapture$captureRegionToBitmap$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Landroidx/test/core/view/WindowCapture$captureRegionToBitmap$1;

    iget v1, v0, Landroidx/test/core/view/WindowCapture$captureRegionToBitmap$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Landroidx/test/core/view/WindowCapture$captureRegionToBitmap$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Landroidx/test/core/view/WindowCapture$captureRegionToBitmap$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/test/core/view/WindowCapture$captureRegionToBitmap$1;

    invoke-direct {v0, p2}, Landroidx/test/core/view/WindowCapture$captureRegionToBitmap$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p2, v0

    .local p2, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p2, Landroidx/test/core/view/WindowCapture$captureRegionToBitmap$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 51
    iget v2, p2, Landroidx/test/core/view/WindowCapture$captureRegionToBitmap$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch v2, :pswitch_data_0

    .end local v0    # "$result":Ljava/lang/Object;
    .end local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    iget-boolean p0, p2, Landroidx/test/core/view/WindowCapture$captureRegionToBitmap$1;->Z$0:Z

    .local p0, "hardwareDrawingEnabled":Z
    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v5, v0

    goto :goto_2

    .end local p0    # "hardwareDrawingEnabled":Z
    :pswitch_1
    iget-boolean p0, p2, Landroidx/test/core/view/WindowCapture$captureRegionToBitmap$1;->Z$0:Z

    .restart local p0    # "hardwareDrawingEnabled":Z
    iget-object p1, p2, Landroidx/test/core/view/WindowCapture$captureRegionToBitmap$1;->L$1:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/Rect;

    .local p1, "boundsInWindow":Landroid/graphics/Rect;
    iget-object v2, p2, Landroidx/test/core/view/WindowCapture$captureRegionToBitmap$1;->L$0:Ljava/lang/Object;

    check-cast v2, Landroid/view/Window;

    .local v2, "$this$captureRegionToBitmap":Landroid/view/Window;
    :try_start_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .end local v2    # "$this$captureRegionToBitmap":Landroid/view/Window;
    .end local p0    # "hardwareDrawingEnabled":Z
    .end local p1    # "boundsInWindow":Landroid/graphics/Rect;
    :pswitch_2
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p0

    .line 52
    .restart local v2    # "$this$captureRegionToBitmap":Landroid/view/Window;
    .restart local p1    # "boundsInWindow":Landroid/graphics/Rect;
    nop

    .line 54
    invoke-static {}, Landroidx/test/platform/graphics/HardwareRendererCompat;->isDrawingEnabled()Z

    move-result p0

    .line 55
    .restart local p0    # "hardwareDrawingEnabled":Z
    invoke-static {v4}, Landroidx/test/platform/graphics/HardwareRendererCompat;->setDrawingEnabled(Z)V

    .line 56
    nop

    .line 57
    :try_start_2
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    const-string v6, "decorView"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, p2, Landroidx/test/core/view/WindowCapture$captureRegionToBitmap$1;->L$0:Ljava/lang/Object;

    iput-object p1, p2, Landroidx/test/core/view/WindowCapture$captureRegionToBitmap$1;->L$1:Ljava/lang/Object;

    iput-boolean p0, p2, Landroidx/test/core/view/WindowCapture$captureRegionToBitmap$1;->Z$0:Z

    iput v4, p2, Landroidx/test/core/view/WindowCapture$captureRegionToBitmap$1;->label:I

    invoke-static {v5, p2}, Landroidx/test/core/view/ViewCapture;->forceRedraw(Landroid/view/View;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v1, :cond_1

    .line 51
    return-object v1

    .line 58
    :cond_1
    :goto_1
    const/4 v5, 0x0

    iput-object v5, p2, Landroidx/test/core/view/WindowCapture$captureRegionToBitmap$1;->L$0:Ljava/lang/Object;

    iput-object v5, p2, Landroidx/test/core/view/WindowCapture$captureRegionToBitmap$1;->L$1:Ljava/lang/Object;

    iput-boolean p0, p2, Landroidx/test/core/view/WindowCapture$captureRegionToBitmap$1;->Z$0:Z

    const/4 v5, 0x2

    iput v5, p2, Landroidx/test/core/view/WindowCapture$captureRegionToBitmap$1;->label:I

    invoke-static {v2, p1, p2}, Landroidx/test/core/view/WindowCapture;->generateBitmap(Landroid/view/Window;Landroid/graphics/Rect;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    .end local v2    # "$this$captureRegionToBitmap":Landroid/view/Window;
    .end local p1    # "boundsInWindow":Landroid/graphics/Rect;
    if-ne v5, v1, :cond_2

    .line 51
    return-object v1

    :cond_2
    :goto_2
    check-cast v5, Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object p1, v5

    .line 60
    .local p1, "bitmap":Landroid/graphics/Bitmap;
    if-eqz p0, :cond_3

    move v3, v4

    nop

    .end local p0    # "hardwareDrawingEnabled":Z
    :cond_3
    invoke-static {v3}, Landroidx/test/platform/graphics/HardwareRendererCompat;->setDrawingEnabled(Z)V

    .line 61
    nop

    .line 63
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p1

    .line 60
    .end local p1    # "bitmap":Landroid/graphics/Bitmap;
    .restart local p0    # "hardwareDrawingEnabled":Z
    :catchall_0
    move-exception p1

    if-eqz p0, :cond_4

    move v3, v4

    nop

    .end local p0    # "hardwareDrawingEnabled":Z
    :cond_4
    invoke-static {v3}, Landroidx/test/platform/graphics/HardwareRendererCompat;->setDrawingEnabled(Z)V

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic captureRegionToBitmap$default(Landroid/view/Window;Landroid/graphics/Rect;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 51
    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-static {p0, p1, p2}, Landroidx/test/core/view/WindowCapture;->captureRegionToBitmap(Landroid/view/Window;Landroid/graphics/Rect;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final captureRegionToBitmapAsync(Landroid/view/Window;Landroid/graphics/Rect;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 7
    .param p0, "$this$captureRegionToBitmapAsync"    # Landroid/view/Window;
    .param p1, "boundsInWindow"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/Window;",
            "Landroid/graphics/Rect;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    sget-object v1, Landroidx/test/core/view/SuspendToFutureAdapter;->INSTANCE:Landroidx/test/core/view/SuspendToFutureAdapter;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    new-instance v0, Landroidx/test/core/view/WindowCapture$captureRegionToBitmapAsync$1;

    const/4 v3, 0x0

    invoke-direct {v0, p0, p1, v3}, Landroidx/test/core/view/WindowCapture$captureRegionToBitmapAsync$1;-><init>(Landroid/view/Window;Landroid/graphics/Rect;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Landroidx/test/core/view/SuspendToFutureAdapter;->launchFuture$default(Landroidx/test/core/view/SuspendToFutureAdapter;Lkotlin/coroutines/CoroutineContext;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic captureRegionToBitmapAsync$default(Landroid/view/Window;Landroid/graphics/Rect;ILjava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0

    .line 67
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-static {p0, p1}, Landroidx/test/core/view/WindowCapture;->captureRegionToBitmapAsync(Landroid/view/Window;Landroid/graphics/Rect;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method

.method public static final generateBitmap(Landroid/view/Window;Landroid/graphics/Rect;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/Window;",
            "Landroid/graphics/Rect;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Landroidx/test/core/view/WindowCapture$generateBitmap$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Landroidx/test/core/view/WindowCapture$generateBitmap$1;

    iget v1, v0, Landroidx/test/core/view/WindowCapture$generateBitmap$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Landroidx/test/core/view/WindowCapture$generateBitmap$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Landroidx/test/core/view/WindowCapture$generateBitmap$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/test/core/view/WindowCapture$generateBitmap$1;

    invoke-direct {v0, p2}, Landroidx/test/core/view/WindowCapture$generateBitmap$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p2, v0

    .local p2, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p2, Landroidx/test/core/view/WindowCapture$generateBitmap$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 73
    iget v2, p2, Landroidx/test/core/view/WindowCapture$generateBitmap$1;->label:I

    packed-switch v2, :pswitch_data_0

    .end local v0    # "$result":Ljava/lang/Object;
    .end local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    iget-object p0, p2, Landroidx/test/core/view/WindowCapture$generateBitmap$1;->L$0:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/Bitmap;

    .local p0, "destBitmap":Landroid/graphics/Bitmap;
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    .end local p0    # "destBitmap":Landroid/graphics/Bitmap;
    :pswitch_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 76
    .local p0, "$this$generateBitmap":Landroid/view/Window;
    .local p1, "boundsInWindow":Landroid/graphics/Rect;
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 77
    :goto_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 78
    :goto_2
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 75
    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    const-string v3, "createBitmap(\n      boun\u2026p.Config.ARGB_8888,\n    )"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    nop

    .line 80
    .local v2, "destBitmap":Landroid/graphics/Bitmap;
    nop

    .line 81
    nop

    .line 84
    iput-object v2, p2, Landroidx/test/core/view/WindowCapture$generateBitmap$1;->L$0:Ljava/lang/Object;

    const/4 v3, 0x1

    iput v3, p2, Landroidx/test/core/view/WindowCapture$generateBitmap$1;->label:I

    invoke-static {p0, p1, v2, p2}, Landroidx/test/core/view/WindowCapture;->generateBitmapFromPixelCopy(Landroid/view/Window;Landroid/graphics/Rect;Landroid/graphics/Bitmap;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "$this$generateBitmap":Landroid/view/Window;
    .end local p1    # "boundsInWindow":Landroid/graphics/Rect;
    if-ne p0, v1, :cond_3

    .line 73
    return-object v1

    .line 84
    :cond_3
    move-object p0, v2

    .line 87
    .end local v2    # "destBitmap":Landroid/graphics/Bitmap;
    .local p0, "destBitmap":Landroid/graphics/Bitmap;
    :goto_3
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic generateBitmap$default(Landroid/view/Window;Landroid/graphics/Rect;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 73
    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-static {p0, p1, p2}, Landroidx/test/core/view/WindowCapture;->generateBitmap(Landroid/view/Window;Landroid/graphics/Rect;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final generateBitmapFromPixelCopy(Landroid/view/Window;Landroid/graphics/Rect;Landroid/graphics/Bitmap;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .param p0, "$this$generateBitmapFromPixelCopy"    # Landroid/view/Window;
    .param p1, "boundsInWindow"    # Landroid/graphics/Rect;
    .param p2, "destBitmap"    # Landroid/graphics/Bitmap;
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/Window;",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Bitmap;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 95
    const/4 v0, 0x0

    .line 115
    .local v0, "$i$f$suspendCancellableCoroutine":I
    move-object v1, p3

    .local v1, "uCont$iv":Lkotlin/coroutines/Continuation;
    const/4 v2, 0x0

    .line 116
    .local v2, "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutine$2$iv":I
    new-instance v3, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {v1}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 122
    .local v3, "cancellable$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    invoke-virtual {v3}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 123
    move-object v4, v3

    check-cast v4, Lkotlinx/coroutines/CancellableContinuation;

    .local v4, "cont":Lkotlinx/coroutines/CancellableContinuation;
    const/4 v5, 0x0

    .line 96
    .local v5, "$i$a$-suspendCancellableCoroutine-WindowCapture$generateBitmapFromPixelCopy$2":I
    new-instance v6, Landroidx/test/core/view/WindowCapture$generateBitmapFromPixelCopy$2$onCopyFinished$1;

    invoke-direct {v6, v4, p2}, Landroidx/test/core/view/WindowCapture$generateBitmapFromPixelCopy$2$onCopyFinished$1;-><init>(Lkotlinx/coroutines/CancellableContinuation;Landroid/graphics/Bitmap;)V

    check-cast v6, Landroid/view/PixelCopy$OnPixelCopyFinishedListener;

    .line 106
    .local v6, "onCopyFinished":Landroid/view/PixelCopy$OnPixelCopyFinishedListener;
    nop

    .line 107
    nop

    .line 108
    nop

    .line 109
    nop

    .line 110
    new-instance v7, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 105
    invoke-static {p0, p1, p2, v6, v7}, Landroid/view/PixelCopy;->request(Landroid/view/Window;Landroid/graphics/Rect;Landroid/graphics/Bitmap;Landroid/view/PixelCopy$OnPixelCopyFinishedListener;Landroid/os/Handler;)V

    .line 112
    nop

    .line 123
    .end local v4    # "cont":Lkotlinx/coroutines/CancellableContinuation;
    .end local v5    # "$i$a$-suspendCancellableCoroutine-WindowCapture$generateBitmapFromPixelCopy$2":I
    .end local v6    # "onCopyFinished":Landroid/view/PixelCopy$OnPixelCopyFinishedListener;
    nop

    .line 124
    invoke-virtual {v3}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object v1

    .line 115
    .end local v1    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .end local v2    # "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendCancellableCoroutine$2$iv":I
    .end local v3    # "cancellable$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_0

    invoke-static {p3}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    .line 125
    :cond_0
    nop

    .line 95
    .end local v0    # "$i$f$suspendCancellableCoroutine":I
    return-object v1
.end method

.method public static synthetic generateBitmapFromPixelCopy$default(Landroid/view/Window;Landroid/graphics/Rect;Landroid/graphics/Bitmap;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 91
    and-int/lit8 p4, p4, 0x1

    if-eqz p4, :cond_0

    .line 92
    const/4 p1, 0x0

    .line 91
    :cond_0
    invoke-static {p0, p1, p2, p3}, Landroidx/test/core/view/WindowCapture;->generateBitmapFromPixelCopy(Landroid/view/Window;Landroid/graphics/Rect;Landroid/graphics/Bitmap;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
