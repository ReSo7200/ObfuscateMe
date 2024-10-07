.class Leu/chainfire/libsuperuser/Shell$Interactive$2;
.super Ljava/lang/Object;
.source "Shell.java"

# interfaces
.implements Ljava/lang/Runnable;


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

.field final synthetic val$onShellOpenResultListener:Leu/chainfire/libsuperuser/Shell$OnShellOpenResultListener;


# direct methods
.method constructor <init>(Leu/chainfire/libsuperuser/Shell$Interactive;Leu/chainfire/libsuperuser/Shell$OnShellOpenResultListener;)V
    .locals 0
    .param p1, "this$0"    # Leu/chainfire/libsuperuser/Shell$Interactive;

    .line 1669
    iput-object p1, p0, Leu/chainfire/libsuperuser/Shell$Interactive$2;->this$0:Leu/chainfire/libsuperuser/Shell$Interactive;

    iput-object p2, p0, Leu/chainfire/libsuperuser/Shell$Interactive$2;->val$onShellOpenResultListener:Leu/chainfire/libsuperuser/Shell$OnShellOpenResultListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1673
    :try_start_0
    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive$2;->val$onShellOpenResultListener:Leu/chainfire/libsuperuser/Shell$OnShellOpenResultListener;

    const/4 v1, 0x0

    const/4 v2, -0x3

    invoke-interface {v0, v1, v2}, Leu/chainfire/libsuperuser/Shell$OnShellOpenResultListener;->onOpenResult(ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1675
    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive$2;->this$0:Leu/chainfire/libsuperuser/Shell$Interactive;

    invoke-virtual {v0}, Leu/chainfire/libsuperuser/Shell$Interactive;->endCallback()V

    .line 1676
    nop

    .line 1677
    return-void

    .line 1675
    :catchall_0
    move-exception v0

    iget-object v1, p0, Leu/chainfire/libsuperuser/Shell$Interactive$2;->this$0:Leu/chainfire/libsuperuser/Shell$Interactive;

    invoke-virtual {v1}, Leu/chainfire/libsuperuser/Shell$Interactive;->endCallback()V

    .line 1676
    throw v0
.end method
