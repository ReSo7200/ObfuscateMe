.class Leu/chainfire/libsuperuser/Shell$Interactive$9;
.super Ljava/lang/Object;
.source "Shell.java"

# interfaces
.implements Leu/chainfire/libsuperuser/Shell$OnCommandResultListener2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leu/chainfire/libsuperuser/Shell$Interactive;->run(Ljava/lang/Object;Ljava/util/List;Ljava/util/List;Z)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Leu/chainfire/libsuperuser/Shell$Interactive;

.field final synthetic val$STDERR:Ljava/util/List;

.field final synthetic val$STDOUT:Ljava/util/List;

.field final synthetic val$exitCode:[I


# direct methods
.method constructor <init>(Leu/chainfire/libsuperuser/Shell$Interactive;[ILjava/util/List;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Leu/chainfire/libsuperuser/Shell$Interactive;

    .line 2604
    iput-object p1, p0, Leu/chainfire/libsuperuser/Shell$Interactive$9;->this$0:Leu/chainfire/libsuperuser/Shell$Interactive;

    iput-object p2, p0, Leu/chainfire/libsuperuser/Shell$Interactive$9;->val$exitCode:[I

    iput-object p3, p0, Leu/chainfire/libsuperuser/Shell$Interactive$9;->val$STDOUT:Ljava/util/List;

    iput-object p4, p0, Leu/chainfire/libsuperuser/Shell$Interactive$9;->val$STDERR:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCommandResult(IILjava/util/List;Ljava/util/List;)V
    .locals 2
    .param p1, "commandCode"    # I
    .param p2, "intExitCode"    # I
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

    .line 2607
    .local p3, "intSTDOUT":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "intSTDERR":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive$9;->val$exitCode:[I

    const/4 v1, 0x0

    aput p2, v0, v1

    .line 2608
    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive$9;->val$STDOUT:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive$9;->val$STDOUT:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2609
    :cond_0
    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive$9;->val$STDERR:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive$9;->val$STDERR:Ljava/util/List;

    invoke-interface {v0, p4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2610
    :cond_1
    return-void
.end method
