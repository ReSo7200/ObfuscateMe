.class final Landroidx/test/core/app/DeviceCapture$takeScreenshotNoSync$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "DeviceCapture.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/test/core/app/DeviceCapture$takeScreenshotNoSync$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Landroid/graphics/Bitmap;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDeviceCapture.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DeviceCapture.kt\nandroidx/test/core/app/DeviceCapture$takeScreenshotNoSync$1$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,160:1\n1#2:161\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "Landroid/graphics/Bitmap;",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "androidx.test.core.app.DeviceCapture$takeScreenshotNoSync$1$1"
    f = "DeviceCapture.kt"
    i = {}
    l = {
        0x72,
        0x73
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $bitmap:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $exception:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/Exception;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $hardwareDrawingEnabled:Z

.field final synthetic $uiAutomation:Landroid/app/UiAutomation;

.field L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/app/UiAutomation;ZLkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/app/UiAutomation;",
            "Z",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/Exception;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/test/core/app/DeviceCapture$takeScreenshotNoSync$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/test/core/app/DeviceCapture$takeScreenshotNoSync$1$1;->$bitmap:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Landroidx/test/core/app/DeviceCapture$takeScreenshotNoSync$1$1;->$uiAutomation:Landroid/app/UiAutomation;

    iput-boolean p3, p0, Landroidx/test/core/app/DeviceCapture$takeScreenshotNoSync$1$1;->$hardwareDrawingEnabled:Z

    iput-object p4, p0, Landroidx/test/core/app/DeviceCapture$takeScreenshotNoSync$1$1;->$exception:Lkotlin/jvm/internal/Ref$ObjectRef;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v6, Landroidx/test/core/app/DeviceCapture$takeScreenshotNoSync$1$1;

    iget-object v1, p0, Landroidx/test/core/app/DeviceCapture$takeScreenshotNoSync$1$1;->$bitmap:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v2, p0, Landroidx/test/core/app/DeviceCapture$takeScreenshotNoSync$1$1;->$uiAutomation:Landroid/app/UiAutomation;

    iget-boolean v3, p0, Landroidx/test/core/app/DeviceCapture$takeScreenshotNoSync$1$1;->$hardwareDrawingEnabled:Z

    iget-object v4, p0, Landroidx/test/core/app/DeviceCapture$takeScreenshotNoSync$1$1;->$exception:Lkotlin/jvm/internal/Ref$ObjectRef;

    move-object v0, v6

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroidx/test/core/app/DeviceCapture$takeScreenshotNoSync$1$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/app/UiAutomation;ZLkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    check-cast v6, Lkotlin/coroutines/Continuation;

    return-object v6
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/test/core/app/DeviceCapture$takeScreenshotNoSync$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Landroidx/test/core/app/DeviceCapture$takeScreenshotNoSync$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Landroidx/test/core/app/DeviceCapture$takeScreenshotNoSync$1$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Landroidx/test/core/app/DeviceCapture$takeScreenshotNoSync$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 113
    iget v1, p0, Landroidx/test/core/app/DeviceCapture$takeScreenshotNoSync$1$1;->label:I

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    move-object v0, p0

    .local v0, "this":Landroidx/test/core/app/DeviceCapture$takeScreenshotNoSync$1$1;
    .local p1, "$result":Ljava/lang/Object;
    iget-object v1, v0, Landroidx/test/core/app/DeviceCapture$takeScreenshotNoSync$1$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, v1

    move-object v1, v0

    move-object v0, p1

    goto :goto_1

    .end local v0    # "this":Landroidx/test/core/app/DeviceCapture$takeScreenshotNoSync$1$1;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_1
    move-object v1, p0

    .local v1, "this":Landroidx/test/core/app/DeviceCapture$takeScreenshotNoSync$1$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    .end local v1    # "this":Landroidx/test/core/app/DeviceCapture$takeScreenshotNoSync$1$1;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p0

    .restart local v1    # "this":Landroidx/test/core/app/DeviceCapture$takeScreenshotNoSync$1$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    move-object v2, v1

    check-cast v2, Lkotlin/coroutines/Continuation;

    .line 114
    const/4 v3, 0x1

    iput v3, v1, Landroidx/test/core/app/DeviceCapture$takeScreenshotNoSync$1$1;->label:I

    invoke-static {v2}, Landroidx/test/core/app/DeviceCapture;->access$forceRedrawGlobalWindowViews(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_0

    .line 113
    return-object v0

    .line 115
    :cond_0
    :goto_0
    iget-object v2, v1, Landroidx/test/core/app/DeviceCapture$takeScreenshotNoSync$1$1;->$bitmap:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v3, v1, Landroidx/test/core/app/DeviceCapture$takeScreenshotNoSync$1$1;->$uiAutomation:Landroid/app/UiAutomation;

    const-string/jumbo v4, "uiAutomation"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v4, v1, Landroidx/test/core/app/DeviceCapture$takeScreenshotNoSync$1$1;->$hardwareDrawingEnabled:Z

    move-object v5, v1

    check-cast v5, Lkotlin/coroutines/Continuation;

    iput-object v2, v1, Landroidx/test/core/app/DeviceCapture$takeScreenshotNoSync$1$1;->L$0:Ljava/lang/Object;

    const/4 v6, 0x2

    iput v6, v1, Landroidx/test/core/app/DeviceCapture$takeScreenshotNoSync$1$1;->label:I

    invoke-static {v3, v4, v5}, Landroidx/test/core/app/DeviceCapture;->access$takeScreenshotOnNextFrame(Landroid/app/UiAutomation;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_1

    .line 113
    return-object v0

    .line 115
    :cond_1
    move-object v0, p1

    move-object p1, v3

    .line 113
    .end local p1    # "$result":Ljava/lang/Object;
    .local v0, "$result":Ljava/lang/Object;
    :goto_1
    iput-object p1, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 116
    iget-object p1, v1, Landroidx/test/core/app/DeviceCapture$takeScreenshotNoSync$1$1;->$exception:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Exception;

    if-nez p1, :cond_2

    .line 117
    iget-object p1, v1, Landroidx/test/core/app/DeviceCapture$takeScreenshotNoSync$1$1;->$bitmap:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p1

    .line 161
    .local p1, "it":Ljava/lang/Exception;
    :cond_2
    const/4 v2, 0x0

    .line 116
    .local v2, "$i$a$-let-DeviceCapture$takeScreenshotNoSync$1$1$1":I
    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
