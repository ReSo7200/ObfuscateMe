.class Landroidx/test/internal/runner/InstrumentationConnection$MessengerReceiver;
.super Landroid/content/BroadcastReceiver;
.source "InstrumentationConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/internal/runner/InstrumentationConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MessengerReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/test/internal/runner/InstrumentationConnection;


# direct methods
.method constructor <init>(Landroidx/test/internal/runner/InstrumentationConnection;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/test/internal/runner/InstrumentationConnection;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 279
    iput-object p1, p0, Landroidx/test/internal/runner/InstrumentationConnection$MessengerReceiver;->this$0:Landroidx/test/internal/runner/InstrumentationConnection;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
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

    .line 283
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "InstrConnection"

    const-string v2, "Broadcast received"

    invoke-static {v1, v2, v0}, Landroidx/test/internal/util/LogUtil;->logDebugWithProcess(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 286
    const-string v0, "new_instrumentation_binder"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 287
    .local v2, "extras":Landroid/os/Bundle;
    if-nez v2, :cond_0

    .line 288
    const-string v0, "Broadcast intent doesn\'t contain any extras, ignoring it.."

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    return-void

    .line 291
    :cond_0
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroidx/test/internal/util/ParcelableIBinder;

    .line 292
    .local v0, "iBinder":Landroidx/test/internal/util/ParcelableIBinder;
    if-eqz v0, :cond_1

    .line 293
    new-instance v1, Landroid/os/Messenger;

    invoke-virtual {v0}, Landroidx/test/internal/util/ParcelableIBinder;->getIBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    .line 294
    .local v1, "msgr":Landroid/os/Messenger;
    iget-object v3, p0, Landroidx/test/internal/runner/InstrumentationConnection$MessengerReceiver;->this$0:Landroidx/test/internal/runner/InstrumentationConnection;

    iget-object v3, v3, Landroidx/test/internal/runner/InstrumentationConnection;->incomingHandler:Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 295
    .local v3, "msg":Landroid/os/Message;
    iput-object v1, v3, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 296
    iget-object v4, p0, Landroidx/test/internal/runner/InstrumentationConnection$MessengerReceiver;->this$0:Landroidx/test/internal/runner/InstrumentationConnection;

    iget-object v4, v4, Landroidx/test/internal/runner/InstrumentationConnection;->incomingHandler:Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;

    invoke-virtual {v4, v3}, Landroidx/test/internal/runner/InstrumentationConnection$IncomingHandler;->sendMessage(Landroid/os/Message;)Z

    .line 298
    .end local v1    # "msgr":Landroid/os/Messenger;
    .end local v3    # "msg":Landroid/os/Message;
    :cond_1
    return-void
.end method
