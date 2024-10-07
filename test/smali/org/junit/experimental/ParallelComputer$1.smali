.class final Lorg/junit/experimental/ParallelComputer$1;
.super Ljava/lang/Object;
.source "ParallelComputer.java"

# interfaces
.implements Lorg/junit/runners/model/RunnerScheduler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/junit/experimental/ParallelComputer;->parallelize(Lorg/junit/runner/Runner;)Lorg/junit/runner/Runner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private final fService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lorg/junit/experimental/ParallelComputer$1;->fService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method


# virtual methods
.method public finished()V
    .locals 4

    .line 43
    :try_start_0
    iget-object v0, p0, Lorg/junit/experimental/ParallelComputer$1;->fService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 44
    iget-object v0, p0, Lorg/junit/experimental/ParallelComputer$1;->fService:Ljava/util/concurrent/ExecutorService;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide v2, 0x7fffffffffffffffL

    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    goto :goto_0

    .line 45
    :catch_0
    move-exception v0

    .line 46
    .local v0, "e":Ljava/lang/InterruptedException;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/lang/InterruptedException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 48
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_0
    return-void
.end method

.method public schedule(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "childStatement"    # Ljava/lang/Runnable;

    .line 38
    iget-object v0, p0, Lorg/junit/experimental/ParallelComputer$1;->fService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 39
    return-void
.end method
