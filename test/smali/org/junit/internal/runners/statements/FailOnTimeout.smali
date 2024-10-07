.class public Lorg/junit/internal/runners/statements/FailOnTimeout;
.super Lorg/junit/runners/model/Statement;
.source "FailOnTimeout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/junit/internal/runners/statements/FailOnTimeout$CallableStatement;,
        Lorg/junit/internal/runners/statements/FailOnTimeout$Builder;
    }
.end annotation


# instance fields
.field private final lookForStuckThread:Z

.field private final originalStatement:Lorg/junit/runners/model/Statement;

.field private final timeUnit:Ljava/util/concurrent/TimeUnit;

.field private final timeout:J


# direct methods
.method private constructor <init>(Lorg/junit/internal/runners/statements/FailOnTimeout$Builder;Lorg/junit/runners/model/Statement;)V
    .locals 2
    .param p1, "builder"    # Lorg/junit/internal/runners/statements/FailOnTimeout$Builder;
    .param p2, "statement"    # Lorg/junit/runners/model/Statement;

    .line 46
    invoke-direct {p0}, Lorg/junit/runners/model/Statement;-><init>()V

    .line 47
    iput-object p2, p0, Lorg/junit/internal/runners/statements/FailOnTimeout;->originalStatement:Lorg/junit/runners/model/Statement;

    .line 48
    invoke-static {p1}, Lorg/junit/internal/runners/statements/FailOnTimeout$Builder;->access$100(Lorg/junit/internal/runners/statements/FailOnTimeout$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/junit/internal/runners/statements/FailOnTimeout;->timeout:J

    .line 49
    invoke-static {p1}, Lorg/junit/internal/runners/statements/FailOnTimeout$Builder;->access$200(Lorg/junit/internal/runners/statements/FailOnTimeout$Builder;)Ljava/util/concurrent/TimeUnit;

    move-result-object v0

    iput-object v0, p0, Lorg/junit/internal/runners/statements/FailOnTimeout;->timeUnit:Ljava/util/concurrent/TimeUnit;

    .line 50
    invoke-static {p1}, Lorg/junit/internal/runners/statements/FailOnTimeout$Builder;->access$300(Lorg/junit/internal/runners/statements/FailOnTimeout$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/junit/internal/runners/statements/FailOnTimeout;->lookForStuckThread:Z

    .line 51
    return-void
.end method

.method synthetic constructor <init>(Lorg/junit/internal/runners/statements/FailOnTimeout$Builder;Lorg/junit/runners/model/Statement;Lorg/junit/internal/runners/statements/FailOnTimeout$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/junit/internal/runners/statements/FailOnTimeout$Builder;
    .param p2, "x1"    # Lorg/junit/runners/model/Statement;
    .param p3, "x2"    # Lorg/junit/internal/runners/statements/FailOnTimeout$1;

    .line 19
    invoke-direct {p0, p1, p2}, Lorg/junit/internal/runners/statements/FailOnTimeout;-><init>(Lorg/junit/internal/runners/statements/FailOnTimeout$Builder;Lorg/junit/runners/model/Statement;)V

    return-void
.end method

.method public constructor <init>(Lorg/junit/runners/model/Statement;J)V
    .locals 2
    .param p1, "statement"    # Lorg/junit/runners/model/Statement;
    .param p2, "timeoutMillis"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 43
    invoke-static {}, Lorg/junit/internal/runners/statements/FailOnTimeout;->builder()Lorg/junit/internal/runners/statements/FailOnTimeout$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p2, p3, v1}, Lorg/junit/internal/runners/statements/FailOnTimeout$Builder;->withTimeout(JLjava/util/concurrent/TimeUnit;)Lorg/junit/internal/runners/statements/FailOnTimeout$Builder;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/junit/internal/runners/statements/FailOnTimeout;-><init>(Lorg/junit/internal/runners/statements/FailOnTimeout$Builder;Lorg/junit/runners/model/Statement;)V

    .line 44
    return-void
.end method

.method static synthetic access$600(Lorg/junit/internal/runners/statements/FailOnTimeout;)Lorg/junit/runners/model/Statement;
    .locals 1
    .param p0, "x0"    # Lorg/junit/internal/runners/statements/FailOnTimeout;

    .line 19
    iget-object v0, p0, Lorg/junit/internal/runners/statements/FailOnTimeout;->originalStatement:Lorg/junit/runners/model/Statement;

    return-object v0
.end method

.method public static builder()Lorg/junit/internal/runners/statements/FailOnTimeout$Builder;
    .locals 2

    .line 31
    new-instance v0, Lorg/junit/internal/runners/statements/FailOnTimeout$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/junit/internal/runners/statements/FailOnTimeout$Builder;-><init>(Lorg/junit/internal/runners/statements/FailOnTimeout$1;)V

    return-object v0
.end method

.method private cpuTime(Ljava/lang/Thread;)J
    .locals 3
    .param p1, "thr"    # Ljava/lang/Thread;

    .line 283
    invoke-static {}, Lorg/junit/internal/management/ManagementFactory;->getThreadMXBean()Lorg/junit/internal/management/ThreadMXBean;

    move-result-object v0

    .line 284
    .local v0, "mxBean":Lorg/junit/internal/management/ThreadMXBean;
    invoke-interface {v0}, Lorg/junit/internal/management/ThreadMXBean;->isThreadCpuTimeSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 286
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lorg/junit/internal/management/ThreadMXBean;->getThreadCpuTime(J)J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v1

    .line 287
    :catch_0
    move-exception v1

    .line 290
    :cond_0
    const-wide/16 v1, 0x0

    return-wide v1
.end method

.method private createTimeoutException(Ljava/lang/Thread;)Ljava/lang/Exception;
    .locals 7
    .param p1, "thread"    # Ljava/lang/Thread;

    .line 182
    invoke-virtual {p1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 183
    .local v0, "stackTrace":[Ljava/lang/StackTraceElement;
    iget-boolean v1, p0, Lorg/junit/internal/runners/statements/FailOnTimeout;->lookForStuckThread:Z

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lorg/junit/internal/runners/statements/FailOnTimeout;->getStuckThread(Ljava/lang/Thread;)Ljava/lang/Thread;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 184
    .local v1, "stuckThread":Ljava/lang/Thread;
    :goto_0
    new-instance v2, Lorg/junit/runners/model/TestTimedOutException;

    iget-wide v3, p0, Lorg/junit/internal/runners/statements/FailOnTimeout;->timeout:J

    iget-object v5, p0, Lorg/junit/internal/runners/statements/FailOnTimeout;->timeUnit:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v2, v3, v4, v5}, Lorg/junit/runners/model/TestTimedOutException;-><init>(JLjava/util/concurrent/TimeUnit;)V

    .line 185
    .local v2, "currThreadException":Ljava/lang/Exception;
    if-eqz v0, :cond_1

    .line 186
    invoke-virtual {v2, v0}, Ljava/lang/Exception;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 187
    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 189
    :cond_1
    if-eqz v1, :cond_2

    .line 190
    new-instance v3, Ljava/lang/Exception;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Appears to be stuck in thread "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 193
    .local v3, "stuckThreadException":Ljava/lang/Exception;
    invoke-direct {p0, v1}, Lorg/junit/internal/runners/statements/FailOnTimeout;->getStackTrace(Ljava/lang/Thread;)[Ljava/lang/StackTraceElement;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Exception;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 194
    new-instance v4, Lorg/junit/runners/model/MultipleFailureException;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Throwable;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const/4 v6, 0x1

    aput-object v3, v5, v6

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/junit/runners/model/MultipleFailureException;-><init>(Ljava/util/List;)V

    return-object v4

    .line 197
    .end local v3    # "stuckThreadException":Ljava/lang/Exception;
    :cond_2
    return-object v2
.end method

.method private getResult(Ljava/util/concurrent/FutureTask;Ljava/lang/Thread;)Ljava/lang/Throwable;
    .locals 4
    .param p2, "thread"    # Ljava/lang/Thread;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/FutureTask<",
            "Ljava/lang/Throwable;",
            ">;",
            "Ljava/lang/Thread;",
            ")",
            "Ljava/lang/Throwable;"
        }
    .end annotation

    .line 166
    .local p1, "task":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/Throwable;>;"
    :try_start_0
    iget-wide v0, p0, Lorg/junit/internal/runners/statements/FailOnTimeout;->timeout:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 167
    iget-wide v0, p0, Lorg/junit/internal/runners/statements/FailOnTimeout;->timeout:J

    iget-object v2, p0, Lorg/junit/internal/runners/statements/FailOnTimeout;->timeUnit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    return-object v0

    .line 169
    :cond_0
    invoke-virtual {p1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 176
    :catch_0
    move-exception v0

    .line 177
    .local v0, "e":Ljava/util/concurrent/TimeoutException;
    invoke-direct {p0, p2}, Lorg/junit/internal/runners/statements/FailOnTimeout;->createTimeoutException(Ljava/lang/Thread;)Ljava/lang/Exception;

    move-result-object v1

    return-object v1

    .line 173
    .end local v0    # "e":Ljava/util/concurrent/TimeoutException;
    :catch_1
    move-exception v0

    .line 175
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    return-object v1

    .line 171
    .end local v0    # "e":Ljava/util/concurrent/ExecutionException;
    :catch_2
    move-exception v0

    .line 172
    .local v0, "e":Ljava/lang/InterruptedException;
    return-object v0
.end method

.method private getStackTrace(Ljava/lang/Thread;)[Ljava/lang/StackTraceElement;
    .locals 2
    .param p1, "thread"    # Ljava/lang/Thread;

    .line 209
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 210
    :catch_0
    move-exception v0

    .line 211
    .local v0, "e":Ljava/lang/SecurityException;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/StackTraceElement;

    return-object v1
.end method

.method private getStuckThread(Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 10
    .param p1, "mainThread"    # Ljava/lang/Thread;

    .line 226
    invoke-virtual {p1}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/junit/internal/runners/statements/FailOnTimeout;->getThreadsInGroup(Ljava/lang/ThreadGroup;)Ljava/util/List;

    move-result-object v0

    .line 227
    .local v0, "threadsInGroup":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Thread;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 228
    return-object v2

    .line 236
    :cond_0
    const/4 v1, 0x0

    .line 237
    .local v1, "stuckThread":Ljava/lang/Thread;
    const-wide/16 v3, 0x0

    .line 238
    .local v3, "maxCpuTime":J
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Thread;

    .line 239
    .local v6, "thread":Ljava/lang/Thread;
    invoke-virtual {v6}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v7

    sget-object v8, Ljava/lang/Thread$State;->RUNNABLE:Ljava/lang/Thread$State;

    if-ne v7, v8, :cond_2

    .line 240
    invoke-direct {p0, v6}, Lorg/junit/internal/runners/statements/FailOnTimeout;->cpuTime(Ljava/lang/Thread;)J

    move-result-wide v7

    .line 241
    .local v7, "threadCpuTime":J
    if-eqz v1, :cond_1

    cmp-long v9, v7, v3

    if-lez v9, :cond_2

    .line 242
    :cond_1
    move-object v1, v6

    .line 243
    move-wide v3, v7

    .line 245
    .end local v6    # "thread":Ljava/lang/Thread;
    .end local v7    # "threadCpuTime":J
    :cond_2
    goto :goto_0

    .line 247
    .end local v5    # "i$":Ljava/util/Iterator;
    :cond_3
    if-ne v1, p1, :cond_4

    goto :goto_1

    :cond_4
    move-object v2, v1

    :goto_1
    return-object v2
.end method

.method private getThreadsInGroup(Ljava/lang/ThreadGroup;)Ljava/util/List;
    .locals 7
    .param p1, "group"    # Ljava/lang/ThreadGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ThreadGroup;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation

    .line 259
    invoke-virtual {p1}, Ljava/lang/ThreadGroup;->activeCount()I

    move-result v0

    .line 260
    .local v0, "activeThreadCount":I
    mul-int/lit8 v1, v0, 0x2

    const/16 v2, 0x64

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 261
    .local v1, "threadArraySize":I
    const/4 v2, 0x0

    .local v2, "loopCount":I
    :goto_0
    const/4 v3, 0x5

    if-ge v2, v3, :cond_1

    .line 262
    new-array v3, v1, [Ljava/lang/Thread;

    .line 263
    .local v3, "threads":[Ljava/lang/Thread;
    invoke-virtual {p1, v3}, Ljava/lang/ThreadGroup;->enumerate([Ljava/lang/Thread;)I

    move-result v4

    .line 264
    .local v4, "enumCount":I
    if-ge v4, v1, :cond_0

    .line 265
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v6, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v5

    return-object v5

    .line 270
    :cond_0
    nop

    .end local v3    # "threads":[Ljava/lang/Thread;
    .end local v4    # "enumCount":I
    add-int/lit8 v1, v1, 0x64

    .line 261
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 274
    .end local v2    # "loopCount":I
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method private threadGroupForNewThread()Ljava/lang/ThreadGroup;
    .locals 2

    .line 135
    iget-boolean v0, p0, Lorg/junit/internal/runners/statements/FailOnTimeout;->lookForStuckThread:Z

    if-nez v0, :cond_0

    .line 138
    const/4 v0, 0x0

    return-object v0

    .line 144
    :cond_0
    new-instance v0, Ljava/lang/ThreadGroup;

    const-string v1, "FailOnTimeoutGroup"

    invoke-direct {v0, v1}, Ljava/lang/ThreadGroup;-><init>(Ljava/lang/String;)V

    .line 145
    .local v0, "threadGroup":Ljava/lang/ThreadGroup;
    invoke-virtual {v0}, Ljava/lang/ThreadGroup;->isDaemon()Z

    move-result v1

    if-nez v1, :cond_1

    .line 151
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {v0, v1}, Ljava/lang/ThreadGroup;->setDaemon(Z)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    goto :goto_0

    .line 152
    :catch_0
    move-exception v1

    .line 156
    :cond_1
    :goto_0
    return-object v0
.end method


# virtual methods
.method public evaluate()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 121
    new-instance v0, Lorg/junit/internal/runners/statements/FailOnTimeout$CallableStatement;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/junit/internal/runners/statements/FailOnTimeout$CallableStatement;-><init>(Lorg/junit/internal/runners/statements/FailOnTimeout;Lorg/junit/internal/runners/statements/FailOnTimeout$1;)V

    .line 122
    .local v0, "callable":Lorg/junit/internal/runners/statements/FailOnTimeout$CallableStatement;
    new-instance v1, Ljava/util/concurrent/FutureTask;

    invoke-direct {v1, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 123
    .local v1, "task":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/Throwable;>;"
    invoke-direct {p0}, Lorg/junit/internal/runners/statements/FailOnTimeout;->threadGroupForNewThread()Ljava/lang/ThreadGroup;

    move-result-object v2

    .line 124
    .local v2, "threadGroup":Ljava/lang/ThreadGroup;
    new-instance v3, Ljava/lang/Thread;

    const-string v4, "Time-limited test"

    invoke-direct {v3, v2, v1, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 125
    .local v3, "thread":Ljava/lang/Thread;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 126
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 127
    invoke-virtual {v0}, Lorg/junit/internal/runners/statements/FailOnTimeout$CallableStatement;->awaitStarted()V

    .line 128
    invoke-direct {p0, v1, v3}, Lorg/junit/internal/runners/statements/FailOnTimeout;->getResult(Ljava/util/concurrent/FutureTask;Ljava/lang/Thread;)Ljava/lang/Throwable;

    move-result-object v4

    .line 129
    .local v4, "throwable":Ljava/lang/Throwable;
    if-nez v4, :cond_0

    .line 132
    return-void

    .line 130
    :cond_0
    throw v4
.end method
