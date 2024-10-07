.class Landroidx/test/core/app/InstrumentationActivityInvoker$ActivityResultWaiter$1;
.super Landroid/content/BroadcastReceiver;
.source "InstrumentationActivityInvoker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/test/core/app/InstrumentationActivityInvoker$ActivityResultWaiter;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/test/core/app/InstrumentationActivityInvoker$ActivityResultWaiter;


# direct methods
.method constructor <init>(Landroidx/test/core/app/InstrumentationActivityInvoker$ActivityResultWaiter;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/test/core/app/InstrumentationActivityInvoker$ActivityResultWaiter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 253
    iput-object p1, p0, Landroidx/test/core/app/InstrumentationActivityInvoker$ActivityResultWaiter$1;->this$0:Landroidx/test/core/app/InstrumentationActivityInvoker$ActivityResultWaiter;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "intent"
        }
    .end annotation

    .line 257
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 259
    const-string v0, "androidx.test.core.app.InstrumentationActivityInvoker.BOOTSTRAP_ACTIVITY_RESULT_RECEIVED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 260
    nop

    .line 261
    const-string v0, "androidx.test.core.app.InstrumentationActivityInvoker.BOOTSTRAP_ACTIVITY_RESULT_CODE_KEY"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 263
    .local v0, "resultCode":I
    const-string v1, "androidx.test.core.app.InstrumentationActivityInvoker.BOOTSTRAP_ACTIVITY_RESULT_DATA_KEY"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 264
    .local v1, "resultData":Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 266
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object v1, v2

    .line 268
    :cond_0
    iget-object v2, p0, Landroidx/test/core/app/InstrumentationActivityInvoker$ActivityResultWaiter$1;->this$0:Landroidx/test/core/app/InstrumentationActivityInvoker$ActivityResultWaiter;

    new-instance v3, Landroid/app/Instrumentation$ActivityResult;

    invoke-direct {v3, v0, v1}, Landroid/app/Instrumentation$ActivityResult;-><init>(ILandroid/content/Intent;)V

    invoke-static {v2, v3}, Landroidx/test/core/app/InstrumentationActivityInvoker$ActivityResultWaiter;->access$202(Landroidx/test/core/app/InstrumentationActivityInvoker$ActivityResultWaiter;Landroid/app/Instrumentation$ActivityResult;)Landroid/app/Instrumentation$ActivityResult;

    .line 269
    iget-object v2, p0, Landroidx/test/core/app/InstrumentationActivityInvoker$ActivityResultWaiter$1;->this$0:Landroidx/test/core/app/InstrumentationActivityInvoker$ActivityResultWaiter;

    invoke-static {v2}, Landroidx/test/core/app/InstrumentationActivityInvoker$ActivityResultWaiter;->access$300(Landroidx/test/core/app/InstrumentationActivityInvoker$ActivityResultWaiter;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 271
    .end local v0    # "resultCode":I
    .end local v1    # "resultData":Landroid/content/Intent;
    :cond_1
    return-void
.end method
