.class public Lorg/junit/internal/runners/MethodRoadie;
.super Ljava/lang/Object;
.source "MethodRoadie.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final description:Lorg/junit/runner/Description;

.field private final notifier:Lorg/junit/runner/notification/RunNotifier;

.field private final test:Ljava/lang/Object;

.field private testMethod:Lorg/junit/internal/runners/TestMethod;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lorg/junit/internal/runners/TestMethod;Lorg/junit/runner/notification/RunNotifier;Lorg/junit/runner/Description;)V
    .locals 0
    .param p1, "test"    # Ljava/lang/Object;
    .param p2, "method"    # Lorg/junit/internal/runners/TestMethod;
    .param p3, "notifier"    # Lorg/junit/runner/notification/RunNotifier;
    .param p4, "description"    # Lorg/junit/runner/Description;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lorg/junit/internal/runners/MethodRoadie;->test:Ljava/lang/Object;

    .line 34
    iput-object p3, p0, Lorg/junit/internal/runners/MethodRoadie;->notifier:Lorg/junit/runner/notification/RunNotifier;

    .line 35
    iput-object p4, p0, Lorg/junit/internal/runners/MethodRoadie;->description:Lorg/junit/runner/Description;

    .line 36
    iput-object p2, p0, Lorg/junit/internal/runners/MethodRoadie;->testMethod:Lorg/junit/internal/runners/TestMethod;

    .line 37
    return-void
.end method

.method private runAfters()V
    .locals 5

    .line 147
    iget-object v0, p0, Lorg/junit/internal/runners/MethodRoadie;->testMethod:Lorg/junit/internal/runners/TestMethod;

    invoke-virtual {v0}, Lorg/junit/internal/runners/TestMethod;->getAfters()Ljava/util/List;

    move-result-object v0

    .line 148
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

    .line 150
    .local v2, "after":Ljava/lang/reflect/Method;
    :try_start_0
    iget-object v3, p0, Lorg/junit/internal/runners/MethodRoadie;->test:Ljava/lang/Object;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 153
    :catchall_0
    move-exception v3

    .line 154
    .local v3, "e":Ljava/lang/Throwable;
    invoke-virtual {p0, v3}, Lorg/junit/internal/runners/MethodRoadie;->addFailure(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 151
    .end local v3    # "e":Ljava/lang/Throwable;
    :catch_0
    move-exception v3

    .line 152
    .local v3, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/junit/internal/runners/MethodRoadie;->addFailure(Ljava/lang/Throwable;)V

    .line 155
    .end local v3    # "e":Ljava/lang/reflect/InvocationTargetException;
    :goto_1
    nop

    .end local v2    # "after":Ljava/lang/reflect/Method;
    :goto_2
    goto :goto_0

    .line 157
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

    .line 131
    :try_start_0
    iget-object v0, p0, Lorg/junit/internal/runners/MethodRoadie;->testMethod:Lorg/junit/internal/runners/TestMethod;

    invoke-virtual {v0}, Lorg/junit/internal/runners/TestMethod;->getBefores()Ljava/util/List;

    move-result-object v0

    .line 132
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

    .line 133
    .local v2, "before":Ljava/lang/reflect/Method;
    iget-object v3, p0, Lorg/junit/internal/runners/MethodRoadie;->test:Ljava/lang/Object;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/junit/internal/AssumptionViolatedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 137
    .end local v0    # "befores":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Method;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "before":Ljava/lang/reflect/Method;
    :cond_0
    nop

    .line 143
    nop

    .line 144
    return-void

    .line 140
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 138
    :catch_0
    move-exception v0

    goto :goto_2

    .line 135
    :catch_1
    move-exception v0

    .line 136
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v1

    throw v1
    :try_end_1
    .catch Lorg/junit/internal/AssumptionViolatedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 141
    .local v0, "e":Ljava/lang/Throwable;
    :goto_1
    invoke-virtual {p0, v0}, Lorg/junit/internal/runners/MethodRoadie;->addFailure(Ljava/lang/Throwable;)V

    .line 142
    new-instance v1, Lorg/junit/internal/runners/FailedBefore;

    invoke-direct {v1}, Lorg/junit/internal/runners/FailedBefore;-><init>()V

    throw v1

    .line 139
    .local v0, "e":Lorg/junit/internal/AssumptionViolatedException;
    :goto_2
    new-instance v1, Lorg/junit/internal/runners/FailedBefore;

    invoke-direct {v1}, Lorg/junit/internal/runners/FailedBefore;-><init>()V

    throw v1
.end method

.method private runWithTimeout(J)V
    .locals 1
    .param p1, "timeout"    # J

    .line 58
    new-instance v0, Lorg/junit/internal/runners/MethodRoadie$1;

    invoke-direct {v0, p0, p1, p2}, Lorg/junit/internal/runners/MethodRoadie$1;-><init>(Lorg/junit/internal/runners/MethodRoadie;J)V

    invoke-virtual {p0, v0}, Lorg/junit/internal/runners/MethodRoadie;->runBeforesThenTestThenAfters(Ljava/lang/Runnable;)V

    .line 84
    return-void
.end method


# virtual methods
.method protected addFailure(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 160
    iget-object v0, p0, Lorg/junit/internal/runners/MethodRoadie;->notifier:Lorg/junit/runner/notification/RunNotifier;

    new-instance v1, Lorg/junit/runner/notification/Failure;

    iget-object v2, p0, Lorg/junit/internal/runners/MethodRoadie;->description:Lorg/junit/runner/Description;

    invoke-direct {v1, v2, p1}, Lorg/junit/runner/notification/Failure;-><init>(Lorg/junit/runner/Description;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lorg/junit/runner/notification/RunNotifier;->fireTestFailure(Lorg/junit/runner/notification/Failure;)V

    .line 161
    return-void
.end method

.method public run()V
    .locals 4

    .line 40
    iget-object v0, p0, Lorg/junit/internal/runners/MethodRoadie;->testMethod:Lorg/junit/internal/runners/TestMethod;

    invoke-virtual {v0}, Lorg/junit/internal/runners/TestMethod;->isIgnored()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lorg/junit/internal/runners/MethodRoadie;->notifier:Lorg/junit/runner/notification/RunNotifier;

    iget-object v1, p0, Lorg/junit/internal/runners/MethodRoadie;->description:Lorg/junit/runner/Description;

    invoke-virtual {v0, v1}, Lorg/junit/runner/notification/RunNotifier;->fireTestIgnored(Lorg/junit/runner/Description;)V

    .line 42
    return-void

    .line 44
    :cond_0
    iget-object v0, p0, Lorg/junit/internal/runners/MethodRoadie;->notifier:Lorg/junit/runner/notification/RunNotifier;

    iget-object v1, p0, Lorg/junit/internal/runners/MethodRoadie;->description:Lorg/junit/runner/Description;

    invoke-virtual {v0, v1}, Lorg/junit/runner/notification/RunNotifier;->fireTestStarted(Lorg/junit/runner/Description;)V

    .line 46
    :try_start_0
    iget-object v0, p0, Lorg/junit/internal/runners/MethodRoadie;->testMethod:Lorg/junit/internal/runners/TestMethod;

    invoke-virtual {v0}, Lorg/junit/internal/runners/TestMethod;->getTimeout()J

    move-result-wide v0

    .line 47
    .local v0, "timeout":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 48
    invoke-direct {p0, v0, v1}, Lorg/junit/internal/runners/MethodRoadie;->runWithTimeout(J)V

    goto :goto_0

    .line 50
    :cond_1
    invoke-virtual {p0}, Lorg/junit/internal/runners/MethodRoadie;->runTest()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    .end local v0    # "timeout":J
    :goto_0
    iget-object v0, p0, Lorg/junit/internal/runners/MethodRoadie;->notifier:Lorg/junit/runner/notification/RunNotifier;

    iget-object v1, p0, Lorg/junit/internal/runners/MethodRoadie;->description:Lorg/junit/runner/Description;

    invoke-virtual {v0, v1}, Lorg/junit/runner/notification/RunNotifier;->fireTestFinished(Lorg/junit/runner/Description;)V

    .line 54
    nop

    .line 55
    return-void

    .line 53
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/junit/internal/runners/MethodRoadie;->notifier:Lorg/junit/runner/notification/RunNotifier;

    iget-object v2, p0, Lorg/junit/internal/runners/MethodRoadie;->description:Lorg/junit/runner/Description;

    invoke-virtual {v1, v2}, Lorg/junit/runner/notification/RunNotifier;->fireTestFinished(Lorg/junit/runner/Description;)V

    throw v0
.end method

.method public runBeforesThenTestThenAfters(Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "test"    # Ljava/lang/Runnable;

    .line 96
    :try_start_0
    invoke-direct {p0}, Lorg/junit/internal/runners/MethodRoadie;->runBefores()V

    .line 97
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Lorg/junit/internal/runners/FailedBefore; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 102
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "test should never throw an exception to this level"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local p1    # "test":Ljava/lang/Runnable;
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local p1    # "test":Ljava/lang/Runnable;
    :goto_0
    invoke-direct {p0}, Lorg/junit/internal/runners/MethodRoadie;->runAfters()V

    throw v0

    .line 98
    :catch_1
    move-exception v0

    .line 102
    :goto_1
    invoke-direct {p0}, Lorg/junit/internal/runners/MethodRoadie;->runAfters()V

    .line 103
    nop

    .line 104
    return-void
.end method

.method public runTest()V
    .locals 1

    .line 87
    new-instance v0, Lorg/junit/internal/runners/MethodRoadie$2;

    invoke-direct {v0, p0}, Lorg/junit/internal/runners/MethodRoadie$2;-><init>(Lorg/junit/internal/runners/MethodRoadie;)V

    invoke-virtual {p0, v0}, Lorg/junit/internal/runners/MethodRoadie;->runBeforesThenTestThenAfters(Ljava/lang/Runnable;)V

    .line 92
    return-void
.end method

.method protected runTestMethod()V
    .locals 4

    .line 108
    :try_start_0
    iget-object v0, p0, Lorg/junit/internal/runners/MethodRoadie;->testMethod:Lorg/junit/internal/runners/TestMethod;

    iget-object v1, p0, Lorg/junit/internal/runners/MethodRoadie;->test:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/junit/internal/runners/TestMethod;->invoke(Ljava/lang/Object;)V

    .line 109
    iget-object v0, p0, Lorg/junit/internal/runners/MethodRoadie;->testMethod:Lorg/junit/internal/runners/TestMethod;

    invoke-virtual {v0}, Lorg/junit/internal/runners/TestMethod;->expectsException()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 110
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/junit/internal/runners/MethodRoadie;->testMethod:Lorg/junit/internal/runners/TestMethod;

    invoke-virtual {v2}, Lorg/junit/internal/runners/TestMethod;->getExpectedException()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lorg/junit/internal/runners/MethodRoadie;->addFailure(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 123
    :catchall_0
    move-exception v0

    .line 124
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {p0, v0}, Lorg/junit/internal/runners/MethodRoadie;->addFailure(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 112
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_0
    move-exception v0

    .line 113
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v1

    .line 114
    .local v1, "actual":Ljava/lang/Throwable;
    instance-of v2, v1, Lorg/junit/internal/AssumptionViolatedException;

    if-eqz v2, :cond_0

    .line 115
    return-void

    .line 116
    :cond_0
    iget-object v2, p0, Lorg/junit/internal/runners/MethodRoadie;->testMethod:Lorg/junit/internal/runners/TestMethod;

    invoke-virtual {v2}, Lorg/junit/internal/runners/TestMethod;->expectsException()Z

    move-result v2

    if-nez v2, :cond_1

    .line 117
    invoke-virtual {p0, v1}, Lorg/junit/internal/runners/MethodRoadie;->addFailure(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 118
    :cond_1
    iget-object v2, p0, Lorg/junit/internal/runners/MethodRoadie;->testMethod:Lorg/junit/internal/runners/TestMethod;

    invoke-virtual {v2, v1}, Lorg/junit/internal/runners/TestMethod;->isUnexpected(Ljava/lang/Throwable;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 119
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected exception, expected<"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/junit/internal/runners/MethodRoadie;->testMethod:Lorg/junit/internal/runners/TestMethod;

    invoke-virtual {v3}, Lorg/junit/internal/runners/TestMethod;->getExpectedException()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> but was<"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 121
    .local v2, "message":Ljava/lang/String;
    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3, v2, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v3}, Lorg/junit/internal/runners/MethodRoadie;->addFailure(Ljava/lang/Throwable;)V

    .line 125
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    .end local v1    # "actual":Ljava/lang/Throwable;
    .end local v2    # "message":Ljava/lang/String;
    :cond_2
    :goto_0
    nop

    .line 126
    :goto_1
    return-void
.end method
