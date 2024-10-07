.class Lorg/junit/rules/TestWatcher$1;
.super Lorg/junit/runners/model/Statement;
.source "TestWatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/junit/rules/TestWatcher;->apply(Lorg/junit/runners/model/Statement;Lorg/junit/runner/Description;)Lorg/junit/runners/model/Statement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/junit/rules/TestWatcher;

.field final synthetic val$base:Lorg/junit/runners/model/Statement;

.field final synthetic val$description:Lorg/junit/runner/Description;


# direct methods
.method constructor <init>(Lorg/junit/rules/TestWatcher;Lorg/junit/runner/Description;Lorg/junit/runners/model/Statement;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lorg/junit/rules/TestWatcher$1;->this$0:Lorg/junit/rules/TestWatcher;

    iput-object p2, p0, Lorg/junit/rules/TestWatcher$1;->val$description:Lorg/junit/runner/Description;

    iput-object p3, p0, Lorg/junit/rules/TestWatcher$1;->val$base:Lorg/junit/runners/model/Statement;

    invoke-direct {p0}, Lorg/junit/runners/model/Statement;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 59
    .local v0, "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    iget-object v1, p0, Lorg/junit/rules/TestWatcher$1;->this$0:Lorg/junit/rules/TestWatcher;

    iget-object v2, p0, Lorg/junit/rules/TestWatcher$1;->val$description:Lorg/junit/runner/Description;

    invoke-static {v1, v2, v0}, Lorg/junit/rules/TestWatcher;->access$000(Lorg/junit/rules/TestWatcher;Lorg/junit/runner/Description;Ljava/util/List;)V

    .line 61
    :try_start_0
    iget-object v1, p0, Lorg/junit/rules/TestWatcher$1;->val$base:Lorg/junit/runners/model/Statement;

    invoke-virtual {v1}, Lorg/junit/runners/model/Statement;->evaluate()V

    .line 62
    iget-object v1, p0, Lorg/junit/rules/TestWatcher$1;->this$0:Lorg/junit/rules/TestWatcher;

    iget-object v2, p0, Lorg/junit/rules/TestWatcher$1;->val$description:Lorg/junit/runner/Description;

    invoke-static {v1, v2, v0}, Lorg/junit/rules/TestWatcher;->access$100(Lorg/junit/rules/TestWatcher;Lorg/junit/runner/Description;Ljava/util/List;)V
    :try_end_0
    .catch Lorg/junit/internal/AssumptionViolatedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    :goto_0
    iget-object v1, p0, Lorg/junit/rules/TestWatcher$1;->this$0:Lorg/junit/rules/TestWatcher;

    iget-object v2, p0, Lorg/junit/rules/TestWatcher$1;->val$description:Lorg/junit/runner/Description;

    invoke-static {v1, v2, v0}, Lorg/junit/rules/TestWatcher;->access$400(Lorg/junit/rules/TestWatcher;Lorg/junit/runner/Description;Ljava/util/List;)V

    .line 71
    goto :goto_1

    .line 66
    :catchall_0
    move-exception v1

    .line 67
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_1
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    iget-object v2, p0, Lorg/junit/rules/TestWatcher$1;->this$0:Lorg/junit/rules/TestWatcher;

    iget-object v3, p0, Lorg/junit/rules/TestWatcher$1;->val$description:Lorg/junit/runner/Description;

    invoke-static {v2, v1, v3, v0}, Lorg/junit/rules/TestWatcher;->access$300(Lorg/junit/rules/TestWatcher;Ljava/lang/Throwable;Lorg/junit/runner/Description;Ljava/util/List;)V

    .end local v1    # "e":Ljava/lang/Throwable;
    goto :goto_0

    .line 63
    :catch_0
    move-exception v1

    .line 64
    .local v1, "e":Lorg/junit/internal/AssumptionViolatedException;
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    iget-object v2, p0, Lorg/junit/rules/TestWatcher$1;->this$0:Lorg/junit/rules/TestWatcher;

    iget-object v3, p0, Lorg/junit/rules/TestWatcher$1;->val$description:Lorg/junit/runner/Description;

    invoke-static {v2, v1, v3, v0}, Lorg/junit/rules/TestWatcher;->access$200(Lorg/junit/rules/TestWatcher;Lorg/junit/internal/AssumptionViolatedException;Lorg/junit/runner/Description;Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v1    # "e":Lorg/junit/internal/AssumptionViolatedException;
    goto :goto_0

    .line 73
    :goto_1
    invoke-static {v0}, Lorg/junit/runners/model/MultipleFailureException;->assertEmpty(Ljava/util/List;)V

    .line 74
    return-void

    .line 70
    :catchall_1
    move-exception v1

    iget-object v2, p0, Lorg/junit/rules/TestWatcher$1;->this$0:Lorg/junit/rules/TestWatcher;

    iget-object v3, p0, Lorg/junit/rules/TestWatcher$1;->val$description:Lorg/junit/runner/Description;

    invoke-static {v2, v3, v0}, Lorg/junit/rules/TestWatcher;->access$400(Lorg/junit/rules/TestWatcher;Lorg/junit/runner/Description;Ljava/util/List;)V

    throw v1
.end method
