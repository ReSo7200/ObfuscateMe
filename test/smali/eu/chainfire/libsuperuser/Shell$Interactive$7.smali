.class Leu/chainfire/libsuperuser/Shell$Interactive$7;
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

    .line 2128
    iput-object p1, p0, Leu/chainfire/libsuperuser/Shell$Interactive$7;->this$0:Leu/chainfire/libsuperuser/Shell$Interactive;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLine(Ljava/lang/String;)V
    .locals 8
    .param p1, "line"    # Ljava/lang/String;

    .line 2132
    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive$7;->this$0:Leu/chainfire/libsuperuser/Shell$Interactive;

    invoke-static {v0}, Leu/chainfire/libsuperuser/Shell$Interactive;->access$3100(Leu/chainfire/libsuperuser/Shell$Interactive;)Leu/chainfire/libsuperuser/Shell$Command;

    move-result-object v0

    .line 2133
    .local v0, "cmd":Leu/chainfire/libsuperuser/Shell$Command;
    if-eqz v0, :cond_1

    invoke-static {v0}, Leu/chainfire/libsuperuser/Shell$Command;->access$1900(Leu/chainfire/libsuperuser/Shell$Command;)Leu/chainfire/libsuperuser/Shell$OnCommandInputStreamListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2135
    const-string v1, "inputstream"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2136
    iget-object v1, p0, Leu/chainfire/libsuperuser/Shell$Interactive$7;->this$0:Leu/chainfire/libsuperuser/Shell$Interactive;

    invoke-static {v1}, Leu/chainfire/libsuperuser/Shell$Interactive;->access$2700(Leu/chainfire/libsuperuser/Shell$Interactive;)Leu/chainfire/libsuperuser/StreamGobbler;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Leu/chainfire/libsuperuser/Shell$Interactive$7;->this$0:Leu/chainfire/libsuperuser/Shell$Interactive;

    invoke-static {v1}, Leu/chainfire/libsuperuser/Shell$Interactive;->access$2700(Leu/chainfire/libsuperuser/Shell$Interactive;)Leu/chainfire/libsuperuser/StreamGobbler;

    move-result-object v1

    invoke-virtual {v1}, Leu/chainfire/libsuperuser/StreamGobbler;->suspendGobbling()V

    .line 2137
    :cond_0
    return-void

    .line 2141
    :cond_1
    iget-object v1, p0, Leu/chainfire/libsuperuser/Shell$Interactive$7;->this$0:Leu/chainfire/libsuperuser/Shell$Interactive;

    monitor-enter v1

    .line 2142
    :try_start_0
    iget-object v2, p0, Leu/chainfire/libsuperuser/Shell$Interactive$7;->this$0:Leu/chainfire/libsuperuser/Shell$Interactive;

    invoke-static {v2}, Leu/chainfire/libsuperuser/Shell$Interactive;->access$3100(Leu/chainfire/libsuperuser/Shell$Interactive;)Leu/chainfire/libsuperuser/Shell$Command;

    move-result-object v2

    if-nez v2, :cond_2

    .line 2143
    monitor-exit v1

    return-void

    .line 2146
    :cond_2
    move-object v2, p1

    .line 2147
    .local v2, "contentPart":Ljava/lang/String;
    const/4 v3, 0x0

    .line 2149
    .local v3, "markerPart":Ljava/lang/String;
    iget-object v4, p0, Leu/chainfire/libsuperuser/Shell$Interactive$7;->this$0:Leu/chainfire/libsuperuser/Shell$Interactive;

    invoke-static {v4}, Leu/chainfire/libsuperuser/Shell$Interactive;->access$3100(Leu/chainfire/libsuperuser/Shell$Interactive;)Leu/chainfire/libsuperuser/Shell$Command;

    move-result-object v4

    invoke-static {v4}, Leu/chainfire/libsuperuser/Shell$Command;->access$2000(Leu/chainfire/libsuperuser/Shell$Command;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 2150
    .local v4, "markerIndex":I
    const/4 v5, 0x0

    if-nez v4, :cond_3

    .line 2151
    const/4 v2, 0x0

    .line 2152
    move-object v3, p1

    goto :goto_0

    .line 2153
    :cond_3
    if-lez v4, :cond_4

    .line 2154
    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    move-object v2, v6

    .line 2155
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    .line 2158
    :cond_4
    :goto_0
    if-eqz v2, :cond_5

    .line 2159
    iget-object v6, p0, Leu/chainfire/libsuperuser/Shell$Interactive$7;->this$0:Leu/chainfire/libsuperuser/Shell$Interactive;

    invoke-static {v6, v2, v5}, Leu/chainfire/libsuperuser/Shell$Interactive;->access$3800(Leu/chainfire/libsuperuser/Shell$Interactive;Ljava/lang/String;Z)V

    .line 2160
    iget-object v6, p0, Leu/chainfire/libsuperuser/Shell$Interactive$7;->this$0:Leu/chainfire/libsuperuser/Shell$Interactive;

    iget-object v7, p0, Leu/chainfire/libsuperuser/Shell$Interactive$7;->this$0:Leu/chainfire/libsuperuser/Shell$Interactive;

    invoke-static {v7}, Leu/chainfire/libsuperuser/Shell$Interactive;->access$3900(Leu/chainfire/libsuperuser/Shell$Interactive;)Leu/chainfire/libsuperuser/StreamGobbler$OnLineListener;

    move-result-object v7

    invoke-static {v6, v2, v7, v5}, Leu/chainfire/libsuperuser/Shell$Interactive;->access$4000(Leu/chainfire/libsuperuser/Shell$Interactive;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 2161
    iget-object v6, p0, Leu/chainfire/libsuperuser/Shell$Interactive$7;->this$0:Leu/chainfire/libsuperuser/Shell$Interactive;

    iget-object v7, p0, Leu/chainfire/libsuperuser/Shell$Interactive$7;->this$0:Leu/chainfire/libsuperuser/Shell$Interactive;

    invoke-static {v7}, Leu/chainfire/libsuperuser/Shell$Interactive;->access$3100(Leu/chainfire/libsuperuser/Shell$Interactive;)Leu/chainfire/libsuperuser/Shell$Command;

    move-result-object v7

    invoke-static {v7}, Leu/chainfire/libsuperuser/Shell$Command;->access$2200(Leu/chainfire/libsuperuser/Shell$Command;)Leu/chainfire/libsuperuser/Shell$OnCommandLineListener;

    move-result-object v7

    invoke-static {v6, v2, v7, v5}, Leu/chainfire/libsuperuser/Shell$Interactive;->access$4000(Leu/chainfire/libsuperuser/Shell$Interactive;Ljava/lang/String;Ljava/lang/Object;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2164
    :cond_5
    if-eqz v3, :cond_6

    .line 2166
    :try_start_1
    iget-object v5, p0, Leu/chainfire/libsuperuser/Shell$Interactive$7;->this$0:Leu/chainfire/libsuperuser/Shell$Interactive;

    iget-object v6, p0, Leu/chainfire/libsuperuser/Shell$Interactive$7;->this$0:Leu/chainfire/libsuperuser/Shell$Interactive;

    .line 2167
    invoke-static {v6}, Leu/chainfire/libsuperuser/Shell$Interactive;->access$3100(Leu/chainfire/libsuperuser/Shell$Interactive;)Leu/chainfire/libsuperuser/Shell$Command;

    move-result-object v6

    invoke-static {v6}, Leu/chainfire/libsuperuser/Shell$Command;->access$2000(Leu/chainfire/libsuperuser/Shell$Command;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 2166
    const/16 v7, 0xa

    invoke-static {v6, v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v5, v6}, Leu/chainfire/libsuperuser/Shell$Interactive;->access$4102(Leu/chainfire/libsuperuser/Shell$Interactive;I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2171
    goto :goto_1

    .line 2168
    :catch_0
    move-exception v5

    .line 2170
    .local v5, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 2172
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_1
    iget-object v5, p0, Leu/chainfire/libsuperuser/Shell$Interactive$7;->this$0:Leu/chainfire/libsuperuser/Shell$Interactive;

    iget-object v6, p0, Leu/chainfire/libsuperuser/Shell$Interactive$7;->this$0:Leu/chainfire/libsuperuser/Shell$Interactive;

    invoke-static {v6}, Leu/chainfire/libsuperuser/Shell$Interactive;->access$3100(Leu/chainfire/libsuperuser/Shell$Interactive;)Leu/chainfire/libsuperuser/Shell$Command;

    move-result-object v6

    invoke-static {v6}, Leu/chainfire/libsuperuser/Shell$Command;->access$2000(Leu/chainfire/libsuperuser/Shell$Command;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Leu/chainfire/libsuperuser/Shell$Interactive;->access$4202(Leu/chainfire/libsuperuser/Shell$Interactive;Ljava/lang/String;)Ljava/lang/String;

    .line 2173
    iget-object v5, p0, Leu/chainfire/libsuperuser/Shell$Interactive$7;->this$0:Leu/chainfire/libsuperuser/Shell$Interactive;

    invoke-static {v5}, Leu/chainfire/libsuperuser/Shell$Interactive;->access$4300(Leu/chainfire/libsuperuser/Shell$Interactive;)V

    .line 2175
    .end local v2    # "contentPart":Ljava/lang/String;
    .end local v3    # "markerPart":Ljava/lang/String;
    .end local v4    # "markerIndex":I
    :cond_6
    monitor-exit v1

    .line 2176
    return-void

    .line 2175
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method
