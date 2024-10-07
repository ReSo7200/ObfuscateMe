.class Leu/chainfire/libsuperuser/Shell$Threaded$1;
.super Ljava/lang/Object;
.source "Shell.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leu/chainfire/libsuperuser/Shell$Threaded;->onClosed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Leu/chainfire/libsuperuser/Shell$Threaded;


# direct methods
.method constructor <init>(Leu/chainfire/libsuperuser/Shell$Threaded;)V
    .locals 0
    .param p1, "this$0"    # Leu/chainfire/libsuperuser/Shell$Threaded;

    .line 2887
    iput-object p1, p0, Leu/chainfire/libsuperuser/Shell$Threaded$1;->this$0:Leu/chainfire/libsuperuser/Shell$Threaded;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 2891
    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Threaded$1;->this$0:Leu/chainfire/libsuperuser/Shell$Threaded;

    iget-object v0, v0, Leu/chainfire/libsuperuser/Shell$Threaded;->callbackSync:Ljava/lang/Object;

    monitor-enter v0

    .line 2892
    :try_start_0
    iget-object v1, p0, Leu/chainfire/libsuperuser/Shell$Threaded$1;->this$0:Leu/chainfire/libsuperuser/Shell$Threaded;

    iget v1, v1, Leu/chainfire/libsuperuser/Shell$Threaded;->callbacks:I

    if-lez v1, :cond_0

    .line 2894
    iget-object v1, p0, Leu/chainfire/libsuperuser/Shell$Threaded$1;->this$0:Leu/chainfire/libsuperuser/Shell$Threaded;

    iget-object v1, v1, Leu/chainfire/libsuperuser/Shell$Threaded;->handler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 2896
    :cond_0
    iget-object v1, p0, Leu/chainfire/libsuperuser/Shell$Threaded$1;->this$0:Leu/chainfire/libsuperuser/Shell$Threaded;

    invoke-static {v1}, Leu/chainfire/libsuperuser/Shell$Threaded;->access$4800(Leu/chainfire/libsuperuser/Shell$Threaded;)V

    .line 2897
    nop

    .line 2898
    iget-object v1, p0, Leu/chainfire/libsuperuser/Shell$Threaded$1;->this$0:Leu/chainfire/libsuperuser/Shell$Threaded;

    invoke-static {v1}, Leu/chainfire/libsuperuser/Shell$Threaded;->access$4900(Leu/chainfire/libsuperuser/Shell$Threaded;)Landroid/os/HandlerThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 2903
    :goto_0
    monitor-exit v0

    .line 2904
    return-void

    .line 2903
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
