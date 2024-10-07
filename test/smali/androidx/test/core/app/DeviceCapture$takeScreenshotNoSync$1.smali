.class final Landroidx/test/core/app/DeviceCapture$takeScreenshotNoSync$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "DeviceCapture.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/test/core/app/DeviceCapture;->takeScreenshotNoSync()Landroid/graphics/Bitmap;
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
    c = "androidx.test.core.app.DeviceCapture$takeScreenshotNoSync$1"
    f = "DeviceCapture.kt"
    i = {}
    l = {
        0x71
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
            "Landroidx/test/core/app/DeviceCapture$takeScreenshotNoSync$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/test/core/app/DeviceCapture$takeScreenshotNoSync$1;->$bitmap:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Landroidx/test/core/app/DeviceCapture$takeScreenshotNoSync$1;->$uiAutomation:Landroid/app/UiAutomation;

    iput-boolean p3, p0, Landroidx/test/core/app/DeviceCapture$takeScreenshotNoSync$1;->$hardwareDrawingEnabled:Z

    iput-object p4, p0, Landroidx/test/core/app/DeviceCapture$takeScreenshotNoSync$1;->$exception:Lkotlin/jvm/internal/Ref$ObjectRef;

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

    new-instance v6, Landroidx/test/core/app/DeviceCapture$takeScreenshotNoSync$1;

    iget-object v1, p0, Landroidx/test/core/app/DeviceCapture$takeScreenshotNoSync$1;->$bitmap:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v2, p0, Landroidx/test/core/app/DeviceCapture$takeScreenshotNoSync$1;->$uiAutomation:Landroid/app/UiAutomation;

    iget-boolean v3, p0, Landroidx/test/core/app/DeviceCapture$takeScreenshotNoSync$1;->$hardwareDrawingEnabled:Z

    iget-object v4, p0, Landroidx/test/core/app/DeviceCapture$takeScreenshotNoSync$1;->$exception:Lkotlin/jvm/internal/Ref$ObjectRef;

    move-object v0, v6

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroidx/test/core/app/DeviceCapture$takeScreenshotNoSync$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/app/UiAutomation;ZLkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    check-cast v6, Lkotlin/coroutines/Continuation;

    return-object v6
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/test/core/app/DeviceCapture$takeScreenshotNoSync$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Landroidx/test/core/app/DeviceCapture$takeScreenshotNoSync$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Landroidx/test/core/app/DeviceCapture$takeScreenshotNoSync$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Landroidx/test/core/app/DeviceCapture$takeScreenshotNoSync$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 112
    iget v1, p0, Landroidx/test/core/app/DeviceCapture$takeScreenshotNoSync$1;->label:I

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    move-object v0, p0

    .local v0, "this":Landroidx/test/core/app/DeviceCapture$takeScreenshotNoSync$1;
    .local p1, "$result":Ljava/lang/Object;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p1

    goto :goto_0

    .end local v0    # "this":Landroidx/test/core/app/DeviceCapture$takeScreenshotNoSync$1;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p0

    .line 113
    .local v1, "this":Landroidx/test/core/app/DeviceCapture$takeScreenshotNoSync$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    sget-object v2, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    const/4 v2, 0x5

    sget-object v3, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v2, v3}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v2

    new-instance v10, Landroidx/test/core/app/DeviceCapture$takeScreenshotNoSync$1$1;

    iget-object v5, v1, Landroidx/test/core/app/DeviceCapture$takeScreenshotNoSync$1;->$bitmap:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v6, v1, Landroidx/test/core/app/DeviceCapture$takeScreenshotNoSync$1;->$uiAutomation:Landroid/app/UiAutomation;

    iget-boolean v7, v1, Landroidx/test/core/app/DeviceCapture$takeScreenshotNoSync$1;->$hardwareDrawingEnabled:Z

    iget-object v8, v1, Landroidx/test/core/app/DeviceCapture$takeScreenshotNoSync$1;->$exception:Lkotlin/jvm/internal/Ref$ObjectRef;

    const/4 v9, 0x0

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Landroidx/test/core/app/DeviceCapture$takeScreenshotNoSync$1$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/app/UiAutomation;ZLkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    check-cast v10, Lkotlin/jvm/functions/Function2;

    move-object v4, v1

    check-cast v4, Lkotlin/coroutines/Continuation;

    const/4 v5, 0x1

    iput v5, v1, Landroidx/test/core/app/DeviceCapture$takeScreenshotNoSync$1;->label:I

    invoke-static {v2, v3, v10, v4}, Lkotlinx/coroutines/TimeoutKt;->withTimeout-KLykuaI(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_0

    .line 112
    return-object v0

    .line 113
    :cond_0
    move-object v0, v1

    .end local v1    # "this":Landroidx/test/core/app/DeviceCapture$takeScreenshotNoSync$1;
    .restart local v0    # "this":Landroidx/test/core/app/DeviceCapture$takeScreenshotNoSync$1;
    :goto_0
    return-object v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
