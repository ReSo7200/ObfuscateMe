.class public final Landroidx/test/core/view/ViewCapture$forceRedraw$2$2;
.super Ljava/lang/Object;
.source "ViewCapture.kt"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/test/core/view/ViewCapture;->forceRedraw(Landroid/view/View;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0008\u001a\u00020\tH\u0016R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0004\u0010\u0005\"\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\n"
    }
    d2 = {
        "androidx/test/core/view/ViewCapture$forceRedraw$2$2",
        "Landroid/view/ViewTreeObserver$OnDrawListener;",
        "handled",
        "",
        "getHandled",
        "()Z",
        "setHandled",
        "(Z)V",
        "onDraw",
        "",
        "core_java_androidx_test_core-core_internal_kt"
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
.field final synthetic $cont:Lkotlinx/coroutines/CancellableContinuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/CancellableContinuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private handled:Z


# direct methods
.method constructor <init>(Lkotlinx/coroutines/CancellableContinuation;)V
    .locals 0
    .param p1, "$cont"    # Lkotlinx/coroutines/CancellableContinuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CancellableContinuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/test/core/view/ViewCapture$forceRedraw$2$2;->$cont:Lkotlinx/coroutines/CancellableContinuation;

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getHandled()Z
    .locals 1

    .line 139
    iget-boolean v0, p0, Landroidx/test/core/view/ViewCapture$forceRedraw$2$2;->handled:Z

    return v0
.end method

.method public onDraw()V
    .locals 2

    .line 142
    iget-boolean v0, p0, Landroidx/test/core/view/ViewCapture$forceRedraw$2$2;->handled:Z

    if-nez v0, :cond_0

    .line 143
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/test/core/view/ViewCapture$forceRedraw$2$2;->handled:Z

    .line 144
    iget-object v0, p0, Landroidx/test/core/view/ViewCapture$forceRedraw$2$2;->$cont:Lkotlinx/coroutines/CancellableContinuation;

    check-cast v0, Lkotlin/coroutines/Continuation;

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 146
    :cond_0
    return-void
.end method

.method public final setHandled(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 139
    iput-boolean p1, p0, Landroidx/test/core/view/ViewCapture$forceRedraw$2$2;->handled:Z

    return-void
.end method
