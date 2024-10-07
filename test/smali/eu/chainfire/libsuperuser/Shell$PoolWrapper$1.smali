.class Leu/chainfire/libsuperuser/Shell$PoolWrapper$1;
.super Ljava/lang/Object;
.source "Shell.java"

# interfaces
.implements Leu/chainfire/libsuperuser/Shell$OnCommandResultListener2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leu/chainfire/libsuperuser/Shell$PoolWrapper;->run(Ljava/lang/Object;Z)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Leu/chainfire/libsuperuser/Shell$PoolWrapper;

.field final synthetic val$exitCode:[I

.field final synthetic val$output:Ljava/util/List;

.field final synthetic val$wantSTDERR:Z


# direct methods
.method constructor <init>(Leu/chainfire/libsuperuser/Shell$PoolWrapper;[ILjava/util/List;Z)V
    .locals 0
    .param p1, "this$0"    # Leu/chainfire/libsuperuser/Shell$PoolWrapper;

    .line 3067
    iput-object p1, p0, Leu/chainfire/libsuperuser/Shell$PoolWrapper$1;->this$0:Leu/chainfire/libsuperuser/Shell$PoolWrapper;

    iput-object p2, p0, Leu/chainfire/libsuperuser/Shell$PoolWrapper$1;->val$exitCode:[I

    iput-object p3, p0, Leu/chainfire/libsuperuser/Shell$PoolWrapper$1;->val$output:Ljava/util/List;

    iput-boolean p4, p0, Leu/chainfire/libsuperuser/Shell$PoolWrapper$1;->val$wantSTDERR:Z

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

    .line 3070
    .local p3, "intSTDOUT":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "intSTDERR":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$PoolWrapper$1;->val$exitCode:[I

    const/4 v1, 0x0

    aput p2, v0, v1

    .line 3071
    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$PoolWrapper$1;->val$output:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3072
    iget-boolean v0, p0, Leu/chainfire/libsuperuser/Shell$PoolWrapper$1;->val$wantSTDERR:Z

    if-eqz v0, :cond_0

    .line 3073
    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$PoolWrapper$1;->val$output:Ljava/util/List;

    invoke-interface {v0, p4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3075
    :cond_0
    return-void
.end method
