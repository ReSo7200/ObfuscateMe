.class public Lorg/junit/runner/JUnitCore;
.super Ljava/lang/Object;
.source "JUnitCore.java"


# instance fields
.field private final notifier:Lorg/junit/runner/notification/RunNotifier;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lorg/junit/runner/notification/RunNotifier;

    invoke-direct {v0}, Lorg/junit/runner/notification/RunNotifier;-><init>()V

    iput-object v0, p0, Lorg/junit/runner/JUnitCore;->notifier:Lorg/junit/runner/notification/RunNotifier;

    return-void
.end method

.method static defaultComputer()Lorg/junit/runner/Computer;
    .locals 1

    .line 165
    new-instance v0, Lorg/junit/runner/Computer;

    invoke-direct {v0}, Lorg/junit/runner/Computer;-><init>()V

    return-object v0
.end method

.method public static varargs main([Ljava/lang/String;)V
    .locals 2
    .param p0, "args"    # [Ljava/lang/String;

    .line 36
    new-instance v0, Lorg/junit/runner/JUnitCore;

    invoke-direct {v0}, Lorg/junit/runner/JUnitCore;-><init>()V

    new-instance v1, Lorg/junit/internal/RealSystem;

    invoke-direct {v1}, Lorg/junit/internal/RealSystem;-><init>()V

    invoke-virtual {v0, v1, p0}, Lorg/junit/runner/JUnitCore;->runMain(Lorg/junit/internal/JUnitSystem;[Ljava/lang/String;)Lorg/junit/runner/Result;

    move-result-object v0

    .line 37
    .local v0, "result":Lorg/junit/runner/Result;
    invoke-virtual {v0}, Lorg/junit/runner/Result;->wasSuccessful()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 38
    return-void
.end method

.method public static varargs runClasses(Lorg/junit/runner/Computer;[Ljava/lang/Class;)Lorg/junit/runner/Result;
    .locals 1
    .param p0, "computer"    # Lorg/junit/runner/Computer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/junit/runner/Computer;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/junit/runner/Result;"
        }
    .end annotation

    .line 62
    .local p1, "classes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-instance v0, Lorg/junit/runner/JUnitCore;

    invoke-direct {v0}, Lorg/junit/runner/JUnitCore;-><init>()V

    invoke-virtual {v0, p0, p1}, Lorg/junit/runner/JUnitCore;->run(Lorg/junit/runner/Computer;[Ljava/lang/Class;)Lorg/junit/runner/Result;

    move-result-object v0

    return-object v0
.end method

.method public static varargs runClasses([Ljava/lang/Class;)Lorg/junit/runner/Result;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/junit/runner/Result;"
        }
    .end annotation

    .line 49
    .local p0, "classes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-static {}, Lorg/junit/runner/JUnitCore;->defaultComputer()Lorg/junit/runner/Computer;

    move-result-object v0

    invoke-static {v0, p0}, Lorg/junit/runner/JUnitCore;->runClasses(Lorg/junit/runner/Computer;[Ljava/lang/Class;)Lorg/junit/runner/Result;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addListener(Lorg/junit/runner/notification/RunListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/junit/runner/notification/RunListener;

    .line 152
    iget-object v0, p0, Lorg/junit/runner/JUnitCore;->notifier:Lorg/junit/runner/notification/RunNotifier;

    invoke-virtual {v0, p1}, Lorg/junit/runner/notification/RunNotifier;->addListener(Lorg/junit/runner/notification/RunListener;)V

    .line 153
    return-void
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 84
    invoke-static {}, Ljunit/runner/Version;->id()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public removeListener(Lorg/junit/runner/notification/RunListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/junit/runner/notification/RunListener;

    .line 161
    iget-object v0, p0, Lorg/junit/runner/JUnitCore;->notifier:Lorg/junit/runner/notification/RunNotifier;

    invoke-virtual {v0, p1}, Lorg/junit/runner/notification/RunNotifier;->removeListener(Lorg/junit/runner/notification/RunListener;)V

    .line 162
    return-void
.end method

.method public run(Ljunit/framework/Test;)Lorg/junit/runner/Result;
    .locals 1
    .param p1, "test"    # Ljunit/framework/Test;

    .line 125
    new-instance v0, Lorg/junit/internal/runners/JUnit38ClassRunner;

    invoke-direct {v0, p1}, Lorg/junit/internal/runners/JUnit38ClassRunner;-><init>(Ljunit/framework/Test;)V

    invoke-virtual {p0, v0}, Lorg/junit/runner/JUnitCore;->run(Lorg/junit/runner/Runner;)Lorg/junit/runner/Result;

    move-result-object v0

    return-object v0
.end method

.method public varargs run(Lorg/junit/runner/Computer;[Ljava/lang/Class;)Lorg/junit/runner/Result;
    .locals 1
    .param p1, "computer"    # Lorg/junit/runner/Computer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/junit/runner/Computer;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/junit/runner/Result;"
        }
    .end annotation

    .line 105
    .local p2, "classes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-static {p1, p2}, Lorg/junit/runner/Request;->classes(Lorg/junit/runner/Computer;[Ljava/lang/Class;)Lorg/junit/runner/Request;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/junit/runner/JUnitCore;->run(Lorg/junit/runner/Request;)Lorg/junit/runner/Result;

    move-result-object v0

    return-object v0
.end method

.method public run(Lorg/junit/runner/Request;)Lorg/junit/runner/Result;
    .locals 1
    .param p1, "request"    # Lorg/junit/runner/Request;

    .line 115
    invoke-virtual {p1}, Lorg/junit/runner/Request;->getRunner()Lorg/junit/runner/Runner;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/junit/runner/JUnitCore;->run(Lorg/junit/runner/Runner;)Lorg/junit/runner/Result;

    move-result-object v0

    return-object v0
.end method

.method public run(Lorg/junit/runner/Runner;)Lorg/junit/runner/Result;
    .locals 4
    .param p1, "runner"    # Lorg/junit/runner/Runner;

    .line 132
    new-instance v0, Lorg/junit/runner/Result;

    invoke-direct {v0}, Lorg/junit/runner/Result;-><init>()V

    .line 133
    .local v0, "result":Lorg/junit/runner/Result;
    invoke-virtual {v0}, Lorg/junit/runner/Result;->createListener()Lorg/junit/runner/notification/RunListener;

    move-result-object v1

    .line 134
    .local v1, "listener":Lorg/junit/runner/notification/RunListener;
    iget-object v2, p0, Lorg/junit/runner/JUnitCore;->notifier:Lorg/junit/runner/notification/RunNotifier;

    invoke-virtual {v2, v1}, Lorg/junit/runner/notification/RunNotifier;->addFirstListener(Lorg/junit/runner/notification/RunListener;)V

    .line 136
    :try_start_0
    iget-object v2, p0, Lorg/junit/runner/JUnitCore;->notifier:Lorg/junit/runner/notification/RunNotifier;

    invoke-virtual {p1}, Lorg/junit/runner/Runner;->getDescription()Lorg/junit/runner/Description;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/junit/runner/notification/RunNotifier;->fireTestRunStarted(Lorg/junit/runner/Description;)V

    .line 137
    iget-object v2, p0, Lorg/junit/runner/JUnitCore;->notifier:Lorg/junit/runner/notification/RunNotifier;

    invoke-virtual {p1, v2}, Lorg/junit/runner/Runner;->run(Lorg/junit/runner/notification/RunNotifier;)V

    .line 138
    iget-object v2, p0, Lorg/junit/runner/JUnitCore;->notifier:Lorg/junit/runner/notification/RunNotifier;

    invoke-virtual {v2, v0}, Lorg/junit/runner/notification/RunNotifier;->fireTestRunFinished(Lorg/junit/runner/Result;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    invoke-virtual {p0, v1}, Lorg/junit/runner/JUnitCore;->removeListener(Lorg/junit/runner/notification/RunListener;)V

    .line 141
    nop

    .line 142
    return-object v0

    .line 140
    :catchall_0
    move-exception v2

    invoke-virtual {p0, v1}, Lorg/junit/runner/JUnitCore;->removeListener(Lorg/junit/runner/notification/RunListener;)V

    throw v2
.end method

.method public varargs run([Ljava/lang/Class;)Lorg/junit/runner/Result;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/junit/runner/Result;"
        }
    .end annotation

    .line 94
    .local p1, "classes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-static {}, Lorg/junit/runner/JUnitCore;->defaultComputer()Lorg/junit/runner/Computer;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/junit/runner/JUnitCore;->run(Lorg/junit/runner/Computer;[Ljava/lang/Class;)Lorg/junit/runner/Result;

    move-result-object v0

    return-object v0
.end method

.method varargs runMain(Lorg/junit/internal/JUnitSystem;[Ljava/lang/String;)Lorg/junit/runner/Result;
    .locals 3
    .param p1, "system"    # Lorg/junit/internal/JUnitSystem;
    .param p2, "args"    # [Ljava/lang/String;

    .line 70
    invoke-interface {p1}, Lorg/junit/internal/JUnitSystem;->out()Ljava/io/PrintStream;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JUnit version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljunit/runner/Version;->id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 72
    invoke-static {p2}, Lorg/junit/runner/JUnitCommandLineParseResult;->parse([Ljava/lang/String;)Lorg/junit/runner/JUnitCommandLineParseResult;

    move-result-object v0

    .line 74
    .local v0, "jUnitCommandLineParseResult":Lorg/junit/runner/JUnitCommandLineParseResult;
    new-instance v1, Lorg/junit/internal/TextListener;

    invoke-direct {v1, p1}, Lorg/junit/internal/TextListener;-><init>(Lorg/junit/internal/JUnitSystem;)V

    .line 75
    .local v1, "listener":Lorg/junit/runner/notification/RunListener;
    invoke-virtual {p0, v1}, Lorg/junit/runner/JUnitCore;->addListener(Lorg/junit/runner/notification/RunListener;)V

    .line 77
    invoke-static {}, Lorg/junit/runner/JUnitCore;->defaultComputer()Lorg/junit/runner/Computer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/junit/runner/JUnitCommandLineParseResult;->createRequest(Lorg/junit/runner/Computer;)Lorg/junit/runner/Request;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/junit/runner/JUnitCore;->run(Lorg/junit/runner/Request;)Lorg/junit/runner/Result;

    move-result-object v2

    return-object v2
.end method
