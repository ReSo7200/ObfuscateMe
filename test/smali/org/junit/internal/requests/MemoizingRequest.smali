.class abstract Lorg/junit/internal/requests/MemoizingRequest;
.super Lorg/junit/runner/Request;
.source "MemoizingRequest.java"


# instance fields
.field private volatile runner:Lorg/junit/runner/Runner;

.field private final runnerLock:Ljava/util/concurrent/locks/Lock;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Lorg/junit/runner/Request;-><init>()V

    .line 10
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lorg/junit/internal/requests/MemoizingRequest;->runnerLock:Ljava/util/concurrent/locks/Lock;

    return-void
.end method


# virtual methods
.method protected abstract createRunner()Lorg/junit/runner/Runner;
.end method

.method public final getRunner()Lorg/junit/runner/Runner;
    .locals 2

    .line 15
    iget-object v0, p0, Lorg/junit/internal/requests/MemoizingRequest;->runner:Lorg/junit/runner/Runner;

    if-nez v0, :cond_1

    .line 16
    iget-object v0, p0, Lorg/junit/internal/requests/MemoizingRequest;->runnerLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 18
    :try_start_0
    iget-object v0, p0, Lorg/junit/internal/requests/MemoizingRequest;->runner:Lorg/junit/runner/Runner;

    if-nez v0, :cond_0

    .line 19
    invoke-virtual {p0}, Lorg/junit/internal/requests/MemoizingRequest;->createRunner()Lorg/junit/runner/Runner;

    move-result-object v0

    iput-object v0, p0, Lorg/junit/internal/requests/MemoizingRequest;->runner:Lorg/junit/runner/Runner;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    :cond_0
    iget-object v0, p0, Lorg/junit/internal/requests/MemoizingRequest;->runnerLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 23
    goto :goto_0

    .line 22
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/junit/internal/requests/MemoizingRequest;->runnerLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    .line 25
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/junit/internal/requests/MemoizingRequest;->runner:Lorg/junit/runner/Runner;

    return-object v0
.end method
