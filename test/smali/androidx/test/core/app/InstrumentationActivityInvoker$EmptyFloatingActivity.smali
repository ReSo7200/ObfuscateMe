.class public Landroidx/test/core/app/InstrumentationActivityInvoker$EmptyFloatingActivity;
.super Landroid/app/Activity;
.source "InstrumentationActivityInvoker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/core/app/InstrumentationActivityInvoker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmptyFloatingActivity"
.end annotation


# instance fields
.field private final receiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 358
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 359
    new-instance v0, Landroidx/test/core/app/InstrumentationActivityInvoker$EmptyFloatingActivity$1;

    invoke-direct {v0, p0}, Landroidx/test/core/app/InstrumentationActivityInvoker$EmptyFloatingActivity$1;-><init>(Landroidx/test/core/app/InstrumentationActivityInvoker$EmptyFloatingActivity;)V

    iput-object v0, p0, Landroidx/test/core/app/InstrumentationActivityInvoker$EmptyFloatingActivity;->receiver:Landroid/content/BroadcastReceiver;

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .line 378
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 380
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroidx/test/core/app/InstrumentationActivityInvoker$EmptyFloatingActivity;->overridePendingTransition(II)V

    .line 381
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 369
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 370
    iget-object v0, p0, Landroidx/test/core/app/InstrumentationActivityInvoker$EmptyFloatingActivity;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "androidx.test.core.app.InstrumentationActivityInvoker.FINISH_EMPTY_ACTIVITIES"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, v1}, Landroidx/test/core/app/InstrumentationActivityInvoker;->access$000(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 373
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroidx/test/core/app/InstrumentationActivityInvoker$EmptyFloatingActivity;->overridePendingTransition(II)V

    .line 374
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 391
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 392
    iget-object v0, p0, Landroidx/test/core/app/InstrumentationActivityInvoker$EmptyFloatingActivity;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroidx/test/core/app/InstrumentationActivityInvoker$EmptyFloatingActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 393
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 385
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 386
    new-instance v0, Landroid/content/Intent;

    const-string v1, "androidx.test.core.app.InstrumentationActivityInvoker.EMPTY_FLOATING_ACTIVITY_RESUMED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroidx/test/core/app/InstrumentationActivityInvoker$EmptyFloatingActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 387
    return-void
.end method
