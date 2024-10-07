.class Leu/chainfire/libsuperuser/Shell$Interactive$5;
.super Ljava/lang/Object;
.source "Shell.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leu/chainfire/libsuperuser/Shell$Interactive;->postCallback(Leu/chainfire/libsuperuser/Shell$Command;ILjava/util/List;Ljava/util/List;Ljava/io/InputStream;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Leu/chainfire/libsuperuser/Shell$Interactive;

.field final synthetic val$fCommand:Leu/chainfire/libsuperuser/Shell$Command;

.field final synthetic val$fExitCode:I

.field final synthetic val$fSTDERR:Ljava/util/List;

.field final synthetic val$fSTDOUT:Ljava/util/List;

.field final synthetic val$inputStream:Ljava/io/InputStream;


# direct methods
.method constructor <init>(Leu/chainfire/libsuperuser/Shell$Interactive;Ljava/io/InputStream;Leu/chainfire/libsuperuser/Shell$Command;ILjava/util/List;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Leu/chainfire/libsuperuser/Shell$Interactive;

    .line 2018
    iput-object p1, p0, Leu/chainfire/libsuperuser/Shell$Interactive$5;->this$0:Leu/chainfire/libsuperuser/Shell$Interactive;

    iput-object p2, p0, Leu/chainfire/libsuperuser/Shell$Interactive$5;->val$inputStream:Ljava/io/InputStream;

    iput-object p3, p0, Leu/chainfire/libsuperuser/Shell$Interactive$5;->val$fCommand:Leu/chainfire/libsuperuser/Shell$Command;

    iput p4, p0, Leu/chainfire/libsuperuser/Shell$Interactive$5;->val$fExitCode:I

    iput-object p5, p0, Leu/chainfire/libsuperuser/Shell$Interactive$5;->val$fSTDOUT:Ljava/util/List;

    iput-object p6, p0, Leu/chainfire/libsuperuser/Shell$Interactive$5;->val$fSTDERR:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 2022
    :try_start_0
    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive$5;->val$inputStream:Ljava/io/InputStream;

    if-nez v0, :cond_6

    .line 2023
    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive$5;->val$fCommand:Leu/chainfire/libsuperuser/Shell$Command;

    invoke-static {v0}, Leu/chainfire/libsuperuser/Shell$Command;->access$1700(Leu/chainfire/libsuperuser/Shell$Command;)Leu/chainfire/libsuperuser/Shell$OnCommandResultListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2024
    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive$5;->val$fCommand:Leu/chainfire/libsuperuser/Shell$Command;

    invoke-static {v0}, Leu/chainfire/libsuperuser/Shell$Command;->access$1700(Leu/chainfire/libsuperuser/Shell$Command;)Leu/chainfire/libsuperuser/Shell$OnCommandResultListener;

    move-result-object v0

    iget-object v1, p0, Leu/chainfire/libsuperuser/Shell$Interactive$5;->val$fCommand:Leu/chainfire/libsuperuser/Shell$Command;

    invoke-static {v1}, Leu/chainfire/libsuperuser/Shell$Command;->access$2300(Leu/chainfire/libsuperuser/Shell$Command;)I

    move-result v1

    iget v2, p0, Leu/chainfire/libsuperuser/Shell$Interactive$5;->val$fExitCode:I

    iget-object v3, p0, Leu/chainfire/libsuperuser/Shell$Interactive$5;->val$fSTDOUT:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, p0, Leu/chainfire/libsuperuser/Shell$Interactive$5;->val$fSTDOUT:Ljava/util/List;

    goto :goto_0

    :cond_0
    iget-object v3, p0, Leu/chainfire/libsuperuser/Shell$Interactive$5;->this$0:Leu/chainfire/libsuperuser/Shell$Interactive;

    invoke-static {v3}, Leu/chainfire/libsuperuser/Shell$Interactive;->access$2400(Leu/chainfire/libsuperuser/Shell$Interactive;)Ljava/util/List;

    move-result-object v3

    :goto_0
    invoke-interface {v0, v1, v2, v3}, Leu/chainfire/libsuperuser/Shell$OnCommandResultListener;->onCommandResult(IILjava/util/List;)V

    .line 2025
    :cond_1
    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive$5;->val$fCommand:Leu/chainfire/libsuperuser/Shell$Command;

    invoke-static {v0}, Leu/chainfire/libsuperuser/Shell$Command;->access$1800(Leu/chainfire/libsuperuser/Shell$Command;)Leu/chainfire/libsuperuser/Shell$OnCommandResultListener2;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2026
    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive$5;->val$fCommand:Leu/chainfire/libsuperuser/Shell$Command;

    invoke-static {v0}, Leu/chainfire/libsuperuser/Shell$Command;->access$1800(Leu/chainfire/libsuperuser/Shell$Command;)Leu/chainfire/libsuperuser/Shell$OnCommandResultListener2;

    move-result-object v0

    iget-object v1, p0, Leu/chainfire/libsuperuser/Shell$Interactive$5;->val$fCommand:Leu/chainfire/libsuperuser/Shell$Command;

    invoke-static {v1}, Leu/chainfire/libsuperuser/Shell$Command;->access$2300(Leu/chainfire/libsuperuser/Shell$Command;)I

    move-result v1

    iget v2, p0, Leu/chainfire/libsuperuser/Shell$Interactive$5;->val$fExitCode:I

    iget-object v3, p0, Leu/chainfire/libsuperuser/Shell$Interactive$5;->val$fSTDOUT:Ljava/util/List;

    if-eqz v3, :cond_2

    iget-object v3, p0, Leu/chainfire/libsuperuser/Shell$Interactive$5;->val$fSTDOUT:Ljava/util/List;

    goto :goto_1

    :cond_2
    iget-object v3, p0, Leu/chainfire/libsuperuser/Shell$Interactive$5;->this$0:Leu/chainfire/libsuperuser/Shell$Interactive;

    invoke-static {v3}, Leu/chainfire/libsuperuser/Shell$Interactive;->access$2400(Leu/chainfire/libsuperuser/Shell$Interactive;)Ljava/util/List;

    move-result-object v3

    :goto_1
    iget-object v4, p0, Leu/chainfire/libsuperuser/Shell$Interactive$5;->val$fSTDERR:Ljava/util/List;

    if-eqz v4, :cond_3

    iget-object v4, p0, Leu/chainfire/libsuperuser/Shell$Interactive$5;->val$fSTDERR:Ljava/util/List;

    goto :goto_2

    :cond_3
    iget-object v4, p0, Leu/chainfire/libsuperuser/Shell$Interactive$5;->this$0:Leu/chainfire/libsuperuser/Shell$Interactive;

    invoke-static {v4}, Leu/chainfire/libsuperuser/Shell$Interactive;->access$2400(Leu/chainfire/libsuperuser/Shell$Interactive;)Ljava/util/List;

    move-result-object v4

    :goto_2
    invoke-interface {v0, v1, v2, v3, v4}, Leu/chainfire/libsuperuser/Shell$OnCommandResultListener2;->onCommandResult(IILjava/util/List;Ljava/util/List;)V

    .line 2027
    :cond_4
    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive$5;->val$fCommand:Leu/chainfire/libsuperuser/Shell$Command;

    invoke-static {v0}, Leu/chainfire/libsuperuser/Shell$Command;->access$2200(Leu/chainfire/libsuperuser/Shell$Command;)Leu/chainfire/libsuperuser/Shell$OnCommandLineListener;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 2028
    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive$5;->val$fCommand:Leu/chainfire/libsuperuser/Shell$Command;

    invoke-static {v0}, Leu/chainfire/libsuperuser/Shell$Command;->access$2200(Leu/chainfire/libsuperuser/Shell$Command;)Leu/chainfire/libsuperuser/Shell$OnCommandLineListener;

    move-result-object v0

    iget-object v1, p0, Leu/chainfire/libsuperuser/Shell$Interactive$5;->val$fCommand:Leu/chainfire/libsuperuser/Shell$Command;

    invoke-static {v1}, Leu/chainfire/libsuperuser/Shell$Command;->access$2300(Leu/chainfire/libsuperuser/Shell$Command;)I

    move-result v1

    iget v2, p0, Leu/chainfire/libsuperuser/Shell$Interactive$5;->val$fExitCode:I

    invoke-interface {v0, v1, v2}, Leu/chainfire/libsuperuser/Shell$OnCommandLineListener;->onCommandResult(II)V

    .line 2029
    :cond_5
    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive$5;->val$fCommand:Leu/chainfire/libsuperuser/Shell$Command;

    invoke-static {v0}, Leu/chainfire/libsuperuser/Shell$Command;->access$1900(Leu/chainfire/libsuperuser/Shell$Command;)Leu/chainfire/libsuperuser/Shell$OnCommandInputStreamListener;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 2030
    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive$5;->val$fCommand:Leu/chainfire/libsuperuser/Shell$Command;

    invoke-static {v0}, Leu/chainfire/libsuperuser/Shell$Command;->access$1900(Leu/chainfire/libsuperuser/Shell$Command;)Leu/chainfire/libsuperuser/Shell$OnCommandInputStreamListener;

    move-result-object v0

    iget-object v1, p0, Leu/chainfire/libsuperuser/Shell$Interactive$5;->val$fCommand:Leu/chainfire/libsuperuser/Shell$Command;

    invoke-static {v1}, Leu/chainfire/libsuperuser/Shell$Command;->access$2300(Leu/chainfire/libsuperuser/Shell$Command;)I

    move-result v1

    iget v2, p0, Leu/chainfire/libsuperuser/Shell$Interactive$5;->val$fExitCode:I

    invoke-interface {v0, v1, v2}, Leu/chainfire/libsuperuser/Shell$OnCommandInputStreamListener;->onCommandResult(II)V

    goto :goto_3

    .line 2031
    :cond_6
    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive$5;->val$fCommand:Leu/chainfire/libsuperuser/Shell$Command;

    invoke-static {v0}, Leu/chainfire/libsuperuser/Shell$Command;->access$1900(Leu/chainfire/libsuperuser/Shell$Command;)Leu/chainfire/libsuperuser/Shell$OnCommandInputStreamListener;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 2032
    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive$5;->val$fCommand:Leu/chainfire/libsuperuser/Shell$Command;

    invoke-static {v0}, Leu/chainfire/libsuperuser/Shell$Command;->access$1900(Leu/chainfire/libsuperuser/Shell$Command;)Leu/chainfire/libsuperuser/Shell$OnCommandInputStreamListener;

    move-result-object v0

    iget-object v1, p0, Leu/chainfire/libsuperuser/Shell$Interactive$5;->val$inputStream:Ljava/io/InputStream;

    invoke-interface {v0, v1}, Leu/chainfire/libsuperuser/Shell$OnCommandInputStreamListener;->onInputStream(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2035
    :cond_7
    :goto_3
    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive$5;->this$0:Leu/chainfire/libsuperuser/Shell$Interactive;

    invoke-virtual {v0}, Leu/chainfire/libsuperuser/Shell$Interactive;->endCallback()V

    .line 2036
    nop

    .line 2037
    return-void

    .line 2035
    :catchall_0
    move-exception v0

    iget-object v1, p0, Leu/chainfire/libsuperuser/Shell$Interactive$5;->this$0:Leu/chainfire/libsuperuser/Shell$Interactive;

    invoke-virtual {v1}, Leu/chainfire/libsuperuser/Shell$Interactive;->endCallback()V

    .line 2036
    throw v0
.end method
