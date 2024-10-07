.class Leu/chainfire/libsuperuser/Shell$Interactive$1;
.super Ljava/lang/Object;
.source "Shell.java"

# interfaces
.implements Leu/chainfire/libsuperuser/Shell$OnCommandResultListener2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leu/chainfire/libsuperuser/Shell$Interactive;-><init>(Leu/chainfire/libsuperuser/Shell$Builder;Leu/chainfire/libsuperuser/Shell$OnShellOpenResultListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Leu/chainfire/libsuperuser/Shell$Interactive;

.field final synthetic val$builder:Leu/chainfire/libsuperuser/Shell$Builder;

.field final synthetic val$onShellOpenResultListener:Leu/chainfire/libsuperuser/Shell$OnShellOpenResultListener;


# direct methods
.method constructor <init>(Leu/chainfire/libsuperuser/Shell$Interactive;Leu/chainfire/libsuperuser/Shell$Builder;Leu/chainfire/libsuperuser/Shell$OnShellOpenResultListener;)V
    .locals 0
    .param p1, "this$0"    # Leu/chainfire/libsuperuser/Shell$Interactive;

    .line 1622
    iput-object p1, p0, Leu/chainfire/libsuperuser/Shell$Interactive$1;->this$0:Leu/chainfire/libsuperuser/Shell$Interactive;

    iput-object p2, p0, Leu/chainfire/libsuperuser/Shell$Interactive$1;->val$builder:Leu/chainfire/libsuperuser/Shell$Builder;

    iput-object p3, p0, Leu/chainfire/libsuperuser/Shell$Interactive$1;->val$onShellOpenResultListener:Leu/chainfire/libsuperuser/Shell$OnShellOpenResultListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCommandResult(IILjava/util/List;Ljava/util/List;)V
    .locals 3
    .param p1, "commandCode"    # I
    .param p2, "exitCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1629
    .local p3, "STDOUT":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "STDERR":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x1

    if-nez p2, :cond_0

    iget-object v1, p0, Leu/chainfire/libsuperuser/Shell$Interactive$1;->this$0:Leu/chainfire/libsuperuser/Shell$Interactive;

    .line 1630
    invoke-static {v1}, Leu/chainfire/libsuperuser/Shell$Interactive;->access$1200(Leu/chainfire/libsuperuser/Shell$Interactive;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Leu/chainfire/libsuperuser/Shell$SU;->isSU(Ljava/lang/String;)Z

    move-result v1

    invoke-static {p3, v1}, Leu/chainfire/libsuperuser/Shell;->parseAvailableResult(Ljava/util/List;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1632
    const/4 p2, -0x4

    .line 1636
    iget-object v1, p0, Leu/chainfire/libsuperuser/Shell$Interactive$1;->this$0:Leu/chainfire/libsuperuser/Shell$Interactive;

    invoke-static {v1, v0}, Leu/chainfire/libsuperuser/Shell$Interactive;->access$1302(Leu/chainfire/libsuperuser/Shell$Interactive;Z)Z

    .line 1637
    iget-object v1, p0, Leu/chainfire/libsuperuser/Shell$Interactive$1;->this$0:Leu/chainfire/libsuperuser/Shell$Interactive;

    invoke-virtual {v1}, Leu/chainfire/libsuperuser/Shell$Interactive;->closeImmediately()V

    .line 1641
    :cond_0
    iget-object v1, p0, Leu/chainfire/libsuperuser/Shell$Interactive$1;->this$0:Leu/chainfire/libsuperuser/Shell$Interactive;

    iget-object v2, p0, Leu/chainfire/libsuperuser/Shell$Interactive$1;->val$builder:Leu/chainfire/libsuperuser/Shell$Builder;

    invoke-static {v2}, Leu/chainfire/libsuperuser/Shell$Builder;->access$900(Leu/chainfire/libsuperuser/Shell$Builder;)I

    move-result v2

    invoke-static {v1, v2}, Leu/chainfire/libsuperuser/Shell$Interactive;->access$1402(Leu/chainfire/libsuperuser/Shell$Interactive;I)I

    .line 1644
    iget-object v1, p0, Leu/chainfire/libsuperuser/Shell$Interactive$1;->val$onShellOpenResultListener:Leu/chainfire/libsuperuser/Shell$OnShellOpenResultListener;

    if-eqz v1, :cond_3

    .line 1645
    iget-object v1, p0, Leu/chainfire/libsuperuser/Shell$Interactive$1;->this$0:Leu/chainfire/libsuperuser/Shell$Interactive;

    iget-object v1, v1, Leu/chainfire/libsuperuser/Shell$Interactive;->handler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    .line 1646
    move v0, p2

    .line 1647
    .local v0, "fExitCode":I
    iget-object v1, p0, Leu/chainfire/libsuperuser/Shell$Interactive$1;->this$0:Leu/chainfire/libsuperuser/Shell$Interactive;

    invoke-virtual {v1}, Leu/chainfire/libsuperuser/Shell$Interactive;->startCallback()V

    .line 1648
    iget-object v1, p0, Leu/chainfire/libsuperuser/Shell$Interactive$1;->this$0:Leu/chainfire/libsuperuser/Shell$Interactive;

    iget-object v1, v1, Leu/chainfire/libsuperuser/Shell$Interactive;->handler:Landroid/os/Handler;

    new-instance v2, Leu/chainfire/libsuperuser/Shell$Interactive$1$1;

    invoke-direct {v2, p0, v0}, Leu/chainfire/libsuperuser/Shell$Interactive$1$1;-><init>(Leu/chainfire/libsuperuser/Shell$Interactive$1;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1658
    .end local v0    # "fExitCode":I
    goto :goto_1

    .line 1659
    :cond_1
    iget-object v1, p0, Leu/chainfire/libsuperuser/Shell$Interactive$1;->val$onShellOpenResultListener:Leu/chainfire/libsuperuser/Shell$OnShellOpenResultListener;

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-interface {v1, v0, p2}, Leu/chainfire/libsuperuser/Shell$OnShellOpenResultListener;->onOpenResult(ZI)V

    .line 1662
    :cond_3
    :goto_1
    return-void
.end method
