.class Leu/chainfire/libsuperuser/Shell$Interactive$6;
.super Ljava/lang/Object;
.source "Shell.java"

# interfaces
.implements Leu/chainfire/libsuperuser/StreamGobbler$OnStreamClosedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leu/chainfire/libsuperuser/Shell$Interactive;->open()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Leu/chainfire/libsuperuser/Shell$Interactive;


# direct methods
.method constructor <init>(Leu/chainfire/libsuperuser/Shell$Interactive;)V
    .locals 0
    .param p1, "this$0"    # Leu/chainfire/libsuperuser/Shell$Interactive;

    .line 2085
    iput-object p1, p0, Leu/chainfire/libsuperuser/Shell$Interactive$6;->this$0:Leu/chainfire/libsuperuser/Shell$Interactive;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStreamClosed()V
    .locals 11

    .line 2088
    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive$6;->this$0:Leu/chainfire/libsuperuser/Shell$Interactive;

    invoke-static {v0}, Leu/chainfire/libsuperuser/Shell$Interactive;->access$2500(Leu/chainfire/libsuperuser/Shell$Interactive;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive$6;->this$0:Leu/chainfire/libsuperuser/Shell$Interactive;

    invoke-virtual {v0}, Leu/chainfire/libsuperuser/Shell$Interactive;->isRunning()Z

    move-result v0

    if-nez v0, :cond_8

    .line 2089
    :cond_0
    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive$6;->this$0:Leu/chainfire/libsuperuser/Shell$Interactive;

    invoke-static {v0}, Leu/chainfire/libsuperuser/Shell$Interactive;->access$2600(Leu/chainfire/libsuperuser/Shell$Interactive;)Leu/chainfire/libsuperuser/StreamGobbler;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Leu/chainfire/libsuperuser/Shell$Interactive$6;->this$0:Leu/chainfire/libsuperuser/Shell$Interactive;

    invoke-static {v1}, Leu/chainfire/libsuperuser/Shell$Interactive;->access$2700(Leu/chainfire/libsuperuser/Shell$Interactive;)Leu/chainfire/libsuperuser/StreamGobbler;

    move-result-object v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive$6;->this$0:Leu/chainfire/libsuperuser/Shell$Interactive;

    invoke-static {v0}, Leu/chainfire/libsuperuser/Shell$Interactive;->access$2600(Leu/chainfire/libsuperuser/Shell$Interactive;)Leu/chainfire/libsuperuser/StreamGobbler;

    move-result-object v0

    invoke-virtual {v0}, Leu/chainfire/libsuperuser/StreamGobbler;->resumeGobbling()V

    .line 2090
    :cond_1
    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive$6;->this$0:Leu/chainfire/libsuperuser/Shell$Interactive;

    invoke-static {v0}, Leu/chainfire/libsuperuser/Shell$Interactive;->access$2700(Leu/chainfire/libsuperuser/Shell$Interactive;)Leu/chainfire/libsuperuser/StreamGobbler;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Leu/chainfire/libsuperuser/Shell$Interactive$6;->this$0:Leu/chainfire/libsuperuser/Shell$Interactive;

    invoke-static {v1}, Leu/chainfire/libsuperuser/Shell$Interactive;->access$2600(Leu/chainfire/libsuperuser/Shell$Interactive;)Leu/chainfire/libsuperuser/StreamGobbler;

    move-result-object v1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive$6;->this$0:Leu/chainfire/libsuperuser/Shell$Interactive;

    invoke-static {v0}, Leu/chainfire/libsuperuser/Shell$Interactive;->access$2700(Leu/chainfire/libsuperuser/Shell$Interactive;)Leu/chainfire/libsuperuser/StreamGobbler;

    move-result-object v0

    invoke-virtual {v0}, Leu/chainfire/libsuperuser/StreamGobbler;->resumeGobbling()V

    .line 2093
    :cond_2
    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive$6;->this$0:Leu/chainfire/libsuperuser/Shell$Interactive;

    invoke-static {v0}, Leu/chainfire/libsuperuser/Shell$Interactive;->access$2800(Leu/chainfire/libsuperuser/Shell$Interactive;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2094
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iget-object v2, p0, Leu/chainfire/libsuperuser/Shell$Interactive$6;->this$0:Leu/chainfire/libsuperuser/Shell$Interactive;

    invoke-static {v2}, Leu/chainfire/libsuperuser/Shell$Interactive;->access$2700(Leu/chainfire/libsuperuser/Shell$Interactive;)Leu/chainfire/libsuperuser/StreamGobbler;

    move-result-object v2

    const/4 v3, 0x1

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Leu/chainfire/libsuperuser/Shell$Interactive$6;->this$0:Leu/chainfire/libsuperuser/Shell$Interactive;

    invoke-static {v1, v3}, Leu/chainfire/libsuperuser/Shell$Interactive;->access$2902(Leu/chainfire/libsuperuser/Shell$Interactive;Z)Z

    .line 2095
    :cond_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iget-object v2, p0, Leu/chainfire/libsuperuser/Shell$Interactive$6;->this$0:Leu/chainfire/libsuperuser/Shell$Interactive;

    invoke-static {v2}, Leu/chainfire/libsuperuser/Shell$Interactive;->access$2600(Leu/chainfire/libsuperuser/Shell$Interactive;)Leu/chainfire/libsuperuser/StreamGobbler;

    move-result-object v2

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Leu/chainfire/libsuperuser/Shell$Interactive$6;->this$0:Leu/chainfire/libsuperuser/Shell$Interactive;

    invoke-static {v1, v3}, Leu/chainfire/libsuperuser/Shell$Interactive;->access$3002(Leu/chainfire/libsuperuser/Shell$Interactive;Z)Z

    .line 2096
    :cond_4
    iget-object v1, p0, Leu/chainfire/libsuperuser/Shell$Interactive$6;->this$0:Leu/chainfire/libsuperuser/Shell$Interactive;

    invoke-static {v1}, Leu/chainfire/libsuperuser/Shell$Interactive;->access$2900(Leu/chainfire/libsuperuser/Shell$Interactive;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    iget-object v1, p0, Leu/chainfire/libsuperuser/Shell$Interactive$6;->this$0:Leu/chainfire/libsuperuser/Shell$Interactive;

    invoke-static {v1}, Leu/chainfire/libsuperuser/Shell$Interactive;->access$3000(Leu/chainfire/libsuperuser/Shell$Interactive;)Z

    move-result v1

    if-eqz v1, :cond_5

    move v1, v3

    goto :goto_0

    :cond_5
    move v1, v2

    .line 2098
    .local v1, "isLast":Z
    :goto_0
    iget-object v4, p0, Leu/chainfire/libsuperuser/Shell$Interactive$6;->this$0:Leu/chainfire/libsuperuser/Shell$Interactive;

    invoke-static {v4}, Leu/chainfire/libsuperuser/Shell$Interactive;->access$3100(Leu/chainfire/libsuperuser/Shell$Interactive;)Leu/chainfire/libsuperuser/Shell$Command;

    move-result-object v4

    .line 2099
    .local v4, "c":Leu/chainfire/libsuperuser/Shell$Command;
    if-eqz v4, :cond_6

    .line 2100
    invoke-static {v4}, Leu/chainfire/libsuperuser/Shell$Command;->access$2100(Leu/chainfire/libsuperuser/Shell$Command;)Leu/chainfire/libsuperuser/MarkerInputStream;

    move-result-object v5

    .line 2101
    .local v5, "mis":Leu/chainfire/libsuperuser/MarkerInputStream;
    if-eqz v5, :cond_6

    .line 2102
    invoke-virtual {v5}, Leu/chainfire/libsuperuser/MarkerInputStream;->setEOF()V

    .line 2105
    .end local v4    # "c":Leu/chainfire/libsuperuser/Shell$Command;
    .end local v5    # "mis":Leu/chainfire/libsuperuser/MarkerInputStream;
    :cond_6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2107
    if-eqz v1, :cond_8

    .line 2108
    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive$6;->this$0:Leu/chainfire/libsuperuser/Shell$Interactive;

    invoke-static {v0}, Leu/chainfire/libsuperuser/Shell$Interactive;->access$3200(Leu/chainfire/libsuperuser/Shell$Interactive;)Z

    .line 2110
    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive$6;->this$0:Leu/chainfire/libsuperuser/Shell$Interactive;

    monitor-enter v0

    .line 2112
    :try_start_1
    iget-object v4, p0, Leu/chainfire/libsuperuser/Shell$Interactive$6;->this$0:Leu/chainfire/libsuperuser/Shell$Interactive;

    invoke-static {v4}, Leu/chainfire/libsuperuser/Shell$Interactive;->access$3100(Leu/chainfire/libsuperuser/Shell$Interactive;)Leu/chainfire/libsuperuser/Shell$Command;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 2114
    iget-object v5, p0, Leu/chainfire/libsuperuser/Shell$Interactive$6;->this$0:Leu/chainfire/libsuperuser/Shell$Interactive;

    iget-object v4, p0, Leu/chainfire/libsuperuser/Shell$Interactive$6;->this$0:Leu/chainfire/libsuperuser/Shell$Interactive;

    invoke-static {v4}, Leu/chainfire/libsuperuser/Shell$Interactive;->access$3100(Leu/chainfire/libsuperuser/Shell$Interactive;)Leu/chainfire/libsuperuser/Shell$Command;

    move-result-object v6

    iget-object v4, p0, Leu/chainfire/libsuperuser/Shell$Interactive$6;->this$0:Leu/chainfire/libsuperuser/Shell$Interactive;

    invoke-static {v4}, Leu/chainfire/libsuperuser/Shell$Interactive;->access$3300(Leu/chainfire/libsuperuser/Shell$Interactive;)Ljava/util/List;

    move-result-object v8

    iget-object v4, p0, Leu/chainfire/libsuperuser/Shell$Interactive$6;->this$0:Leu/chainfire/libsuperuser/Shell$Interactive;

    invoke-static {v4}, Leu/chainfire/libsuperuser/Shell$Interactive;->access$3400(Leu/chainfire/libsuperuser/Shell$Interactive;)Ljava/util/List;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v7, -0x2

    invoke-static/range {v5 .. v10}, Leu/chainfire/libsuperuser/Shell$Interactive;->access$3500(Leu/chainfire/libsuperuser/Shell$Interactive;Leu/chainfire/libsuperuser/Shell$Command;ILjava/util/List;Ljava/util/List;Ljava/io/InputStream;)Z

    .line 2115
    iget-object v4, p0, Leu/chainfire/libsuperuser/Shell$Interactive$6;->this$0:Leu/chainfire/libsuperuser/Shell$Interactive;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Leu/chainfire/libsuperuser/Shell$Interactive;->access$3102(Leu/chainfire/libsuperuser/Shell$Interactive;Leu/chainfire/libsuperuser/Shell$Command;)Leu/chainfire/libsuperuser/Shell$Command;

    .line 2117
    :cond_7
    iget-object v4, p0, Leu/chainfire/libsuperuser/Shell$Interactive$6;->this$0:Leu/chainfire/libsuperuser/Shell$Interactive;

    iput-boolean v3, v4, Leu/chainfire/libsuperuser/Shell$Interactive;->closed:Z

    .line 2118
    iget-object v3, p0, Leu/chainfire/libsuperuser/Shell$Interactive$6;->this$0:Leu/chainfire/libsuperuser/Shell$Interactive;

    invoke-static {v3, v2}, Leu/chainfire/libsuperuser/Shell$Interactive;->access$3602(Leu/chainfire/libsuperuser/Shell$Interactive;Z)Z

    .line 2119
    iget-object v2, p0, Leu/chainfire/libsuperuser/Shell$Interactive$6;->this$0:Leu/chainfire/libsuperuser/Shell$Interactive;

    invoke-static {v2}, Leu/chainfire/libsuperuser/Shell$Interactive;->access$3700(Leu/chainfire/libsuperuser/Shell$Interactive;)V

    .line 2120
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 2123
    .end local v1    # "isLast":Z
    :cond_8
    :goto_1
    return-void

    .line 2105
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method
