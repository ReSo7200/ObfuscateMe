.class Leu/chainfire/libsuperuser/Shell$Interactive$8;
.super Ljava/lang/Object;
.source "Shell.java"

# interfaces
.implements Leu/chainfire/libsuperuser/StreamGobbler$OnLineListener;


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

    .line 2179
    iput-object p1, p0, Leu/chainfire/libsuperuser/Shell$Interactive$8;->this$0:Leu/chainfire/libsuperuser/Shell$Interactive;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLine(Ljava/lang/String;)V
    .locals 6
    .param p1, "line"    # Ljava/lang/String;

    .line 2183
    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive$8;->this$0:Leu/chainfire/libsuperuser/Shell$Interactive;

    monitor-enter v0

    .line 2184
    :try_start_0
    iget-object v1, p0, Leu/chainfire/libsuperuser/Shell$Interactive$8;->this$0:Leu/chainfire/libsuperuser/Shell$Interactive;

    invoke-static {v1}, Leu/chainfire/libsuperuser/Shell$Interactive;->access$3100(Leu/chainfire/libsuperuser/Shell$Interactive;)Leu/chainfire/libsuperuser/Shell$Command;

    move-result-object v1

    if-nez v1, :cond_0

    .line 2185
    monitor-exit v0

    return-void

    .line 2188
    :cond_0
    move-object v1, p1

    .line 2190
    .local v1, "contentPart":Ljava/lang/String;
    iget-object v2, p0, Leu/chainfire/libsuperuser/Shell$Interactive$8;->this$0:Leu/chainfire/libsuperuser/Shell$Interactive;

    invoke-static {v2}, Leu/chainfire/libsuperuser/Shell$Interactive;->access$3100(Leu/chainfire/libsuperuser/Shell$Interactive;)Leu/chainfire/libsuperuser/Shell$Command;

    move-result-object v2

    invoke-static {v2}, Leu/chainfire/libsuperuser/Shell$Command;->access$2000(Leu/chainfire/libsuperuser/Shell$Command;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 2191
    .local v2, "markerIndex":I
    if-nez v2, :cond_1

    .line 2192
    const/4 v1, 0x0

    goto :goto_0

    .line 2193
    :cond_1
    if-lez v2, :cond_2

    .line 2194
    const/4 v3, 0x0

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 2197
    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    .line 2198
    iget-object v3, p0, Leu/chainfire/libsuperuser/Shell$Interactive$8;->this$0:Leu/chainfire/libsuperuser/Shell$Interactive;

    const/4 v4, 0x1

    invoke-static {v3, v1, v4}, Leu/chainfire/libsuperuser/Shell$Interactive;->access$3800(Leu/chainfire/libsuperuser/Shell$Interactive;Ljava/lang/String;Z)V

    .line 2199
    iget-object v3, p0, Leu/chainfire/libsuperuser/Shell$Interactive$8;->this$0:Leu/chainfire/libsuperuser/Shell$Interactive;

    iget-object v5, p0, Leu/chainfire/libsuperuser/Shell$Interactive$8;->this$0:Leu/chainfire/libsuperuser/Shell$Interactive;

    invoke-static {v5}, Leu/chainfire/libsuperuser/Shell$Interactive;->access$4400(Leu/chainfire/libsuperuser/Shell$Interactive;)Leu/chainfire/libsuperuser/StreamGobbler$OnLineListener;

    move-result-object v5

    invoke-static {v3, v1, v5, v4}, Leu/chainfire/libsuperuser/Shell$Interactive;->access$4000(Leu/chainfire/libsuperuser/Shell$Interactive;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 2200
    iget-object v3, p0, Leu/chainfire/libsuperuser/Shell$Interactive$8;->this$0:Leu/chainfire/libsuperuser/Shell$Interactive;

    iget-object v5, p0, Leu/chainfire/libsuperuser/Shell$Interactive$8;->this$0:Leu/chainfire/libsuperuser/Shell$Interactive;

    invoke-static {v5}, Leu/chainfire/libsuperuser/Shell$Interactive;->access$3100(Leu/chainfire/libsuperuser/Shell$Interactive;)Leu/chainfire/libsuperuser/Shell$Command;

    move-result-object v5

    invoke-static {v5}, Leu/chainfire/libsuperuser/Shell$Command;->access$2200(Leu/chainfire/libsuperuser/Shell$Command;)Leu/chainfire/libsuperuser/Shell$OnCommandLineListener;

    move-result-object v5

    invoke-static {v3, v1, v5, v4}, Leu/chainfire/libsuperuser/Shell$Interactive;->access$4000(Leu/chainfire/libsuperuser/Shell$Interactive;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 2201
    iget-object v3, p0, Leu/chainfire/libsuperuser/Shell$Interactive$8;->this$0:Leu/chainfire/libsuperuser/Shell$Interactive;

    iget-object v5, p0, Leu/chainfire/libsuperuser/Shell$Interactive$8;->this$0:Leu/chainfire/libsuperuser/Shell$Interactive;

    invoke-static {v5}, Leu/chainfire/libsuperuser/Shell$Interactive;->access$3100(Leu/chainfire/libsuperuser/Shell$Interactive;)Leu/chainfire/libsuperuser/Shell$Command;

    move-result-object v5

    invoke-static {v5}, Leu/chainfire/libsuperuser/Shell$Command;->access$1900(Leu/chainfire/libsuperuser/Shell$Command;)Leu/chainfire/libsuperuser/Shell$OnCommandInputStreamListener;

    move-result-object v5

    invoke-static {v3, v1, v5, v4}, Leu/chainfire/libsuperuser/Shell$Interactive;->access$4000(Leu/chainfire/libsuperuser/Shell$Interactive;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 2204
    :cond_3
    if-ltz v2, :cond_4

    .line 2205
    iget-object v3, p0, Leu/chainfire/libsuperuser/Shell$Interactive$8;->this$0:Leu/chainfire/libsuperuser/Shell$Interactive;

    iget-object v4, p0, Leu/chainfire/libsuperuser/Shell$Interactive$8;->this$0:Leu/chainfire/libsuperuser/Shell$Interactive;

    invoke-static {v4}, Leu/chainfire/libsuperuser/Shell$Interactive;->access$3100(Leu/chainfire/libsuperuser/Shell$Interactive;)Leu/chainfire/libsuperuser/Shell$Command;

    move-result-object v4

    invoke-static {v4}, Leu/chainfire/libsuperuser/Shell$Command;->access$2000(Leu/chainfire/libsuperuser/Shell$Command;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Leu/chainfire/libsuperuser/Shell$Interactive;->access$4502(Leu/chainfire/libsuperuser/Shell$Interactive;Ljava/lang/String;)Ljava/lang/String;

    .line 2206
    iget-object v3, p0, Leu/chainfire/libsuperuser/Shell$Interactive$8;->this$0:Leu/chainfire/libsuperuser/Shell$Interactive;

    invoke-static {v3}, Leu/chainfire/libsuperuser/Shell$Interactive;->access$4300(Leu/chainfire/libsuperuser/Shell$Interactive;)V

    .line 2208
    .end local v1    # "contentPart":Ljava/lang/String;
    .end local v2    # "markerIndex":I
    :cond_4
    monitor-exit v0

    .line 2209
    return-void

    .line 2208
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
