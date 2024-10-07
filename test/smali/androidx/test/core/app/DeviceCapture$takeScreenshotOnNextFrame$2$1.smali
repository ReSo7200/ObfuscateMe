.class final Landroidx/test/core/app/DeviceCapture$takeScreenshotOnNextFrame$2$1;
.super Ljava/lang/Object;
.source "DeviceCapture.kt"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/test/core/app/DeviceCapture;->takeScreenshotOnNextFrame(Landroid/app/UiAutomation;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "",
        "doFrame"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $cont:Lkotlinx/coroutines/CancellableContinuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/CancellableContinuation<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $hardwareDrawingEnabled:Z

.field final synthetic $uiAutomation:Landroid/app/UiAutomation;


# direct methods
.method constructor <init>(Landroid/app/UiAutomation;ZLkotlinx/coroutines/CancellableContinuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/UiAutomation;",
            "Z",
            "Lkotlinx/coroutines/CancellableContinuation<",
            "-",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/test/core/app/DeviceCapture$takeScreenshotOnNextFrame$2$1;->$uiAutomation:Landroid/app/UiAutomation;

    iput-boolean p2, p0, Landroidx/test/core/app/DeviceCapture$takeScreenshotOnNextFrame$2$1;->$hardwareDrawingEnabled:Z

    iput-object p3, p0, Landroidx/test/core/app/DeviceCapture$takeScreenshotOnNextFrame$2$1;->$cont:Lkotlinx/coroutines/CancellableContinuation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final doFrame(J)V
    .locals 4
    .param p1, "it"    # J

    .line 142
    const/4 v0, 0x0

    .line 143
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x4

    const-string v3, "DeviceCapture"

    if-ge v1, v2, :cond_1

    .line 144
    iget-object v2, p0, Landroidx/test/core/app/DeviceCapture$takeScreenshotOnNextFrame$2$1;->$uiAutomation:Landroid/app/UiAutomation;

    invoke-virtual {v2}, Landroid/app/UiAutomation;->takeScreenshot()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 145
    if-eqz v0, :cond_0

    .line 146
    const-string v2, "got bitmap, returning"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    goto :goto_1

    .line 143
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 150
    .end local v1    # "i":I
    :cond_1
    :goto_1
    iget-boolean v1, p0, Landroidx/test/core/app/DeviceCapture$takeScreenshotOnNextFrame$2$1;->$hardwareDrawingEnabled:Z

    invoke-static {v1}, Landroidx/test/platform/graphics/HardwareRendererCompat;->setDrawingEnabled(Z)V

    .line 151
    if-nez v0, :cond_2

    .line 152
    const-string v1, "failed to get bitmap, returning exception"

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object v1, p0, Landroidx/test/core/app/DeviceCapture$takeScreenshotOnNextFrame$2$1;->$cont:Lkotlinx/coroutines/CancellableContinuation;

    check-cast v1, Lkotlin/coroutines/Continuation;

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "uiAutomation.takeScreenshot returned null"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    invoke-static {v2}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    goto :goto_2

    .line 155
    :cond_2
    iget-object v1, p0, Landroidx/test/core/app/DeviceCapture$takeScreenshotOnNextFrame$2$1;->$cont:Lkotlinx/coroutines/CancellableContinuation;

    sget-object v2, Landroidx/test/core/app/DeviceCapture$takeScreenshotOnNextFrame$2$1$1;->INSTANCE:Landroidx/test/core/app/DeviceCapture$takeScreenshotOnNextFrame$2$1$1;

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-interface {v1, v0, v2}, Lkotlinx/coroutines/CancellableContinuation;->resume(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V

    .line 157
    :goto_2
    return-void
.end method
