.class Lorg/junit/internal/runners/MethodRoadie$1;
.super Ljava/lang/Object;
.source "MethodRoadie.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/junit/internal/runners/MethodRoadie;->runWithTimeout(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/junit/internal/runners/MethodRoadie;

.field final synthetic val$timeout:J


# direct methods
.method constructor <init>(Lorg/junit/internal/runners/MethodRoadie;J)V
    .locals 0

    .line 58
    iput-object p1, p0, Lorg/junit/internal/runners/MethodRoadie$1;->this$0:Lorg/junit/internal/runners/MethodRoadie;

    iput-wide p2, p0, Lorg/junit/internal/runners/MethodRoadie$1;->val$timeout:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 61
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 62
    .local v0, "service":Ljava/util/concurrent/ExecutorService;
    new-instance v1, Lorg/junit/internal/runners/MethodRoadie$1$1;

    invoke-direct {v1, p0}, Lorg/junit/internal/runners/MethodRoadie$1$1;-><init>(Lorg/junit/internal/runners/MethodRoadie$1;)V

    .line 68
    .local v1, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Ljava/lang/Object;>;"
    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v2

    .line 69
    .local v2, "result":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 71
    :try_start_0
    iget-wide v3, p0, Lorg/junit/internal/runners/MethodRoadie$1;->val$timeout:J

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v3, v4, v5}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v3

    .line 73
    .local v3, "terminated":Z
    if-nez v3, :cond_0

    .line 74
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 76
    :cond_0
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x0

    invoke-interface {v2, v5, v6, v4}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    nop

    .end local v3    # "terminated":Z
    goto :goto_0

    .line 79
    :catch_0
    move-exception v3

    .line 80
    .local v3, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lorg/junit/internal/runners/MethodRoadie$1;->this$0:Lorg/junit/internal/runners/MethodRoadie;

    invoke-virtual {v4, v3}, Lorg/junit/internal/runners/MethodRoadie;->addFailure(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 77
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 78
    .local v3, "e":Ljava/util/concurrent/TimeoutException;
    iget-object v4, p0, Lorg/junit/internal/runners/MethodRoadie$1;->this$0:Lorg/junit/internal/runners/MethodRoadie;

    new-instance v5, Lorg/junit/runners/model/TestTimedOutException;

    iget-wide v6, p0, Lorg/junit/internal/runners/MethodRoadie$1;->val$timeout:J

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v5, v6, v7, v8}, Lorg/junit/runners/model/TestTimedOutException;-><init>(JLjava/util/concurrent/TimeUnit;)V

    invoke-virtual {v4, v5}, Lorg/junit/internal/runners/MethodRoadie;->addFailure(Ljava/lang/Throwable;)V

    .line 81
    .end local v3    # "e":Ljava/util/concurrent/TimeoutException;
    nop

    .line 82
    :goto_0
    return-void
.end method
