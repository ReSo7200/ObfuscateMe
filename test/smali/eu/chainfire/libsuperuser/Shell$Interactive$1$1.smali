.class Leu/chainfire/libsuperuser/Shell$Interactive$1$1;
.super Ljava/lang/Object;
.source "Shell.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leu/chainfire/libsuperuser/Shell$Interactive$1;->onCommandResult(IILjava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Leu/chainfire/libsuperuser/Shell$Interactive$1;

.field final synthetic val$fExitCode:I


# direct methods
.method constructor <init>(Leu/chainfire/libsuperuser/Shell$Interactive$1;I)V
    .locals 0
    .param p1, "this$1"    # Leu/chainfire/libsuperuser/Shell$Interactive$1;

    .line 1648
    iput-object p1, p0, Leu/chainfire/libsuperuser/Shell$Interactive$1$1;->this$1:Leu/chainfire/libsuperuser/Shell$Interactive$1;

    iput p2, p0, Leu/chainfire/libsuperuser/Shell$Interactive$1$1;->val$fExitCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1652
    :try_start_0
    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive$1$1;->this$1:Leu/chainfire/libsuperuser/Shell$Interactive$1;

    iget-object v0, v0, Leu/chainfire/libsuperuser/Shell$Interactive$1;->val$onShellOpenResultListener:Leu/chainfire/libsuperuser/Shell$OnShellOpenResultListener;

    iget v1, p0, Leu/chainfire/libsuperuser/Shell$Interactive$1$1;->val$fExitCode:I

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Leu/chainfire/libsuperuser/Shell$Interactive$1$1;->val$fExitCode:I

    invoke-interface {v0, v1, v2}, Leu/chainfire/libsuperuser/Shell$OnShellOpenResultListener;->onOpenResult(ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1654
    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive$1$1;->this$1:Leu/chainfire/libsuperuser/Shell$Interactive$1;

    iget-object v0, v0, Leu/chainfire/libsuperuser/Shell$Interactive$1;->this$0:Leu/chainfire/libsuperuser/Shell$Interactive;

    invoke-virtual {v0}, Leu/chainfire/libsuperuser/Shell$Interactive;->endCallback()V

    .line 1655
    nop

    .line 1656
    return-void

    .line 1654
    :catchall_0
    move-exception v0

    iget-object v1, p0, Leu/chainfire/libsuperuser/Shell$Interactive$1$1;->this$1:Leu/chainfire/libsuperuser/Shell$Interactive$1;

    iget-object v1, v1, Leu/chainfire/libsuperuser/Shell$Interactive$1;->this$0:Leu/chainfire/libsuperuser/Shell$Interactive;

    invoke-virtual {v1}, Leu/chainfire/libsuperuser/Shell$Interactive;->endCallback()V

    .line 1655
    throw v0
.end method
