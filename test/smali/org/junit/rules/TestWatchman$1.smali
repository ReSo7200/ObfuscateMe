.class Lorg/junit/rules/TestWatchman$1;
.super Lorg/junit/runners/model/Statement;
.source "TestWatchman.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/junit/rules/TestWatchman;->apply(Lorg/junit/runners/model/Statement;Lorg/junit/runners/model/FrameworkMethod;Ljava/lang/Object;)Lorg/junit/runners/model/Statement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/junit/rules/TestWatchman;

.field final synthetic val$base:Lorg/junit/runners/model/Statement;

.field final synthetic val$method:Lorg/junit/runners/model/FrameworkMethod;


# direct methods
.method constructor <init>(Lorg/junit/rules/TestWatchman;Lorg/junit/runners/model/FrameworkMethod;Lorg/junit/runners/model/Statement;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lorg/junit/rules/TestWatchman$1;->this$0:Lorg/junit/rules/TestWatchman;

    iput-object p2, p0, Lorg/junit/rules/TestWatchman$1;->val$method:Lorg/junit/runners/model/FrameworkMethod;

    iput-object p3, p0, Lorg/junit/rules/TestWatchman$1;->val$base:Lorg/junit/runners/model/Statement;

    invoke-direct {p0}, Lorg/junit/runners/model/Statement;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lorg/junit/rules/TestWatchman$1;->this$0:Lorg/junit/rules/TestWatchman;

    iget-object v1, p0, Lorg/junit/rules/TestWatchman$1;->val$method:Lorg/junit/runners/model/FrameworkMethod;

    invoke-virtual {v0, v1}, Lorg/junit/rules/TestWatchman;->starting(Lorg/junit/runners/model/FrameworkMethod;)V

    .line 53
    :try_start_0
    iget-object v0, p0, Lorg/junit/rules/TestWatchman$1;->val$base:Lorg/junit/runners/model/Statement;

    invoke-virtual {v0}, Lorg/junit/runners/model/Statement;->evaluate()V

    .line 54
    iget-object v0, p0, Lorg/junit/rules/TestWatchman$1;->this$0:Lorg/junit/rules/TestWatchman;

    iget-object v1, p0, Lorg/junit/rules/TestWatchman$1;->val$method:Lorg/junit/runners/model/FrameworkMethod;

    invoke-virtual {v0, v1}, Lorg/junit/rules/TestWatchman;->succeeded(Lorg/junit/runners/model/FrameworkMethod;)V
    :try_end_0
    .catch Lorg/junit/internal/AssumptionViolatedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    iget-object v0, p0, Lorg/junit/rules/TestWatchman$1;->this$0:Lorg/junit/rules/TestWatchman;

    iget-object v1, p0, Lorg/junit/rules/TestWatchman$1;->val$method:Lorg/junit/runners/model/FrameworkMethod;

    invoke-virtual {v0, v1}, Lorg/junit/rules/TestWatchman;->finished(Lorg/junit/runners/model/FrameworkMethod;)V

    .line 62
    nop

    .line 63
    return-void

    .line 57
    :catchall_0
    move-exception v0

    .line 58
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_1
    iget-object v1, p0, Lorg/junit/rules/TestWatchman$1;->this$0:Lorg/junit/rules/TestWatchman;

    iget-object v2, p0, Lorg/junit/rules/TestWatchman$1;->val$method:Lorg/junit/runners/model/FrameworkMethod;

    invoke-virtual {v1, v0, v2}, Lorg/junit/rules/TestWatchman;->failed(Ljava/lang/Throwable;Lorg/junit/runners/model/FrameworkMethod;)V

    .line 59
    throw v0

    .line 55
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_0
    move-exception v0

    .line 56
    .local v0, "e":Lorg/junit/internal/AssumptionViolatedException;
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 61
    .end local v0    # "e":Lorg/junit/internal/AssumptionViolatedException;
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lorg/junit/rules/TestWatchman$1;->this$0:Lorg/junit/rules/TestWatchman;

    iget-object v2, p0, Lorg/junit/rules/TestWatchman$1;->val$method:Lorg/junit/runners/model/FrameworkMethod;

    invoke-virtual {v1, v2}, Lorg/junit/rules/TestWatchman;->finished(Lorg/junit/runners/model/FrameworkMethod;)V

    throw v0
.end method
