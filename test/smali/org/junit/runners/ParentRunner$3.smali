.class Lorg/junit/runners/ParentRunner$3;
.super Lorg/junit/runners/model/Statement;
.source "ParentRunner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/junit/runners/ParentRunner;->withInterruptIsolation(Lorg/junit/runners/model/Statement;)Lorg/junit/runners/model/Statement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/junit/runners/ParentRunner;

.field final synthetic val$statement:Lorg/junit/runners/model/Statement;


# direct methods
.method constructor <init>(Lorg/junit/runners/ParentRunner;Lorg/junit/runners/model/Statement;)V
    .locals 0

    .line 302
    .local p0, "this":Lorg/junit/runners/ParentRunner$3;, "Lorg/junit/runners/ParentRunner.3;"
    iput-object p1, p0, Lorg/junit/runners/ParentRunner$3;->this$0:Lorg/junit/runners/ParentRunner;

    iput-object p2, p0, Lorg/junit/runners/ParentRunner$3;->val$statement:Lorg/junit/runners/model/Statement;

    invoke-direct {p0}, Lorg/junit/runners/model/Statement;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 306
    .local p0, "this":Lorg/junit/runners/ParentRunner$3;, "Lorg/junit/runners/ParentRunner.3;"
    :try_start_0
    iget-object v0, p0, Lorg/junit/runners/ParentRunner$3;->val$statement:Lorg/junit/runners/model/Statement;

    invoke-virtual {v0}, Lorg/junit/runners/model/Statement;->evaluate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 308
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 309
    nop

    .line 310
    return-void

    .line 308
    :catchall_0
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    throw v0
.end method
