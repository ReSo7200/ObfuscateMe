.class public Lorg/junit/internal/runners/ClassRoadie;
.super Ljava/lang/Object;
.source "ClassRoadie.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private description:Lorg/junit/runner/Description;

.field private notifier:Lorg/junit/runner/notification/RunNotifier;

.field private final runnable:Ljava/lang/Runnable;

.field private testClass:Lorg/junit/internal/runners/TestClass;


# direct methods
.method public constructor <init>(Lorg/junit/runner/notification/RunNotifier;Lorg/junit/internal/runners/TestClass;Lorg/junit/runner/Description;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "notifier"    # Lorg/junit/runner/notification/RunNotifier;
    .param p2, "testClass"    # Lorg/junit/internal/runners/TestClass;
    .param p3, "description"    # Lorg/junit/runner/Description;
    .param p4, "runnable"    # Ljava/lang/Runnable;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lorg/junit/internal/runners/ClassRoadie;->notifier:Lorg/junit/runner/notification/RunNotifier;

    .line 28
    iput-object p2, p0, Lorg/junit/internal/runners/ClassRoadie;->testClass:Lorg/junit/internal/runners/TestClass;

    .line 29
    iput-object p3, p0, Lorg/junit/internal/runners/ClassRoadie;->description:Lorg/junit/runner/Description;

    .line 30
    iput-object p4, p0, Lorg/junit/internal/runners/ClassRoadie;->runnable:Ljava/lang/Runnable;

    .line 31
    return-void
.end method

.method private runAfters()V
    .locals 5

    .line 70
    iget-object v0, p0, Lorg/junit/internal/runners/ClassRoadie;->testClass:Lorg/junit/internal/runners/TestClass;

    invoke-virtual {v0}, Lorg/junit/internal/runners/TestClass;->getAfters()Ljava/util/List;

    move-result-object v0

    .line 71
    .local v0, "afters":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Method;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Method;

    .line 73
    .local v2, "after":Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    :try_start_0
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 76
    :catchall_0
    move-exception v3

    .line 77
    .local v3, "e":Ljava/lang/Throwable;
    invoke-virtual {p0, v3}, Lorg/junit/internal/runners/ClassRoadie;->addFailure(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 74
    .end local v3    # "e":Ljava/lang/Throwable;
    :catch_0
    move-exception v3

    .line 75
    .local v3, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/junit/internal/runners/ClassRoadie;->addFailure(Ljava/lang/Throwable;)V

    .line 78
    .end local v3    # "e":Ljava/lang/reflect/InvocationTargetException;
    :goto_1
    nop

    .end local v2    # "after":Ljava/lang/reflect/Method;
    :goto_2
    goto :goto_0

    .line 80
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method private runBefores()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/internal/runners/FailedBefore;
        }
    .end annotation

    .line 54
    :try_start_0
    iget-object v0, p0, Lorg/junit/internal/runners/ClassRoadie;->testClass:Lorg/junit/internal/runners/TestClass;

    invoke-virtual {v0}, Lorg/junit/internal/runners/TestClass;->getBefores()Ljava/util/List;

    move-result-object v0

    .line 55
    .local v0, "befores":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Method;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Method;

    .line 56
    .local v2, "before":Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/junit/internal/AssumptionViolatedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 60
    .end local v0    # "befores":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Method;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "before":Ljava/lang/reflect/Method;
    :cond_0
    nop

    .line 66
    nop

    .line 67
    return-void

    .line 63
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 61
    :catch_0
    move-exception v0

    goto :goto_2

    .line 58
    :catch_1
    move-exception v0

    .line 59
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v1

    throw v1
    :try_end_1
    .catch Lorg/junit/internal/AssumptionViolatedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    .local v0, "e":Ljava/lang/Throwable;
    :goto_1
    invoke-virtual {p0, v0}, Lorg/junit/internal/runners/ClassRoadie;->addFailure(Ljava/lang/Throwable;)V

    .line 65
    new-instance v1, Lorg/junit/internal/runners/FailedBefore;

    invoke-direct {v1}, Lorg/junit/internal/runners/FailedBefore;-><init>()V

    throw v1

    .line 62
    .local v0, "e":Lorg/junit/internal/AssumptionViolatedException;
    :goto_2
    new-instance v1, Lorg/junit/internal/runners/FailedBefore;

    invoke-direct {v1}, Lorg/junit/internal/runners/FailedBefore;-><init>()V

    throw v1
.end method


# virtual methods
.method protected addFailure(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "targetException"    # Ljava/lang/Throwable;

    .line 38
    iget-object v0, p0, Lorg/junit/internal/runners/ClassRoadie;->notifier:Lorg/junit/runner/notification/RunNotifier;

    new-instance v1, Lorg/junit/runner/notification/Failure;

    iget-object v2, p0, Lorg/junit/internal/runners/ClassRoadie;->description:Lorg/junit/runner/Description;

    invoke-direct {v1, v2, p1}, Lorg/junit/runner/notification/Failure;-><init>(Lorg/junit/runner/Description;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lorg/junit/runner/notification/RunNotifier;->fireTestFailure(Lorg/junit/runner/notification/Failure;)V

    .line 39
    return-void
.end method

.method public runProtected()V
    .locals 1

    .line 43
    :try_start_0
    invoke-direct {p0}, Lorg/junit/internal/runners/ClassRoadie;->runBefores()V

    .line 44
    invoke-virtual {p0}, Lorg/junit/internal/runners/ClassRoadie;->runUnprotected()V
    :try_end_0
    .catch Lorg/junit/internal/runners/FailedBefore; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 47
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lorg/junit/internal/runners/ClassRoadie;->runAfters()V

    throw v0

    .line 45
    :catch_0
    move-exception v0

    .line 47
    :goto_0
    invoke-direct {p0}, Lorg/junit/internal/runners/ClassRoadie;->runAfters()V

    .line 48
    nop

    .line 49
    return-void
.end method

.method protected runUnprotected()V
    .locals 1

    .line 34
    iget-object v0, p0, Lorg/junit/internal/runners/ClassRoadie;->runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 35
    return-void
.end method
