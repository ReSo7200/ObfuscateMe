.class public abstract Lorg/junit/runners/model/RunnerBuilder;
.super Ljava/lang/Object;
.source "RunnerBuilder.java"


# instance fields
.field private final parents:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/junit/runners/model/RunnerBuilder;->parents:Ljava/util/Set;

    return-void
.end method

.method private configureRunner(Lorg/junit/runner/Runner;)V
    .locals 3
    .param p1, "runner"    # Lorg/junit/runner/Runner;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/runner/manipulation/InvalidOrderingException;
        }
    .end annotation

    .line 81
    invoke-virtual {p1}, Lorg/junit/runner/Runner;->getDescription()Lorg/junit/runner/Description;

    move-result-object v0

    .line 82
    .local v0, "description":Lorg/junit/runner/Description;
    const-class v1, Lorg/junit/runner/OrderWith;

    invoke-virtual {v0, v1}, Lorg/junit/runner/Description;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lorg/junit/runner/OrderWith;

    .line 83
    .local v1, "orderWith":Lorg/junit/runner/OrderWith;
    if-eqz v1, :cond_0

    .line 84
    invoke-interface {v1}, Lorg/junit/runner/OrderWith;->value()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2, v0}, Lorg/junit/runner/manipulation/Ordering;->definedBy(Ljava/lang/Class;Lorg/junit/runner/Description;)Lorg/junit/runner/manipulation/Ordering;

    move-result-object v2

    .line 85
    .local v2, "ordering":Lorg/junit/runner/manipulation/Ordering;
    invoke-virtual {v2, p1}, Lorg/junit/runner/manipulation/Ordering;->apply(Ljava/lang/Object;)V

    .line 87
    .end local v2    # "ordering":Lorg/junit/runner/manipulation/Ordering;
    :cond_0
    return-void
.end method

.method private runners([Ljava/lang/Class;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/List<",
            "Lorg/junit/runner/Runner;",
            ">;"
        }
    .end annotation

    .line 123
    .local p1, "children":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 124
    .local v0, "runners":Ljava/util/List;, "Ljava/util/List<Lorg/junit/runner/Runner;>;"
    move-object v1, p1

    .local v1, "arr$":[Ljava/lang/Class;
    array-length v2, v1

    .local v2, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 125
    .local v4, "each":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, v4}, Lorg/junit/runners/model/RunnerBuilder;->safeRunnerForClass(Ljava/lang/Class;)Lorg/junit/runner/Runner;

    move-result-object v5

    .line 126
    .local v5, "childRunner":Lorg/junit/runner/Runner;
    if-eqz v5, :cond_0

    .line 127
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    .end local v4    # "each":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "childRunner":Lorg/junit/runner/Runner;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 130
    .end local v1    # "arr$":[Ljava/lang/Class;
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_1
    return-object v0
.end method


# virtual methods
.method addParent(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/runners/model/InitializationError;
        }
    .end annotation

    .line 90
    .local p1, "parent":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lorg/junit/runners/model/RunnerBuilder;->parents:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    return-object p1

    .line 91
    :cond_0
    new-instance v0, Lorg/junit/runners/model/InitializationError;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "class \'%s\' (possibly indirectly) contains itself as a SuiteClass"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/junit/runners/model/InitializationError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method removeParent(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 97
    .local p1, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lorg/junit/runners/model/RunnerBuilder;->parents:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 98
    return-void
.end method

.method public abstract runnerForClass(Ljava/lang/Class;)Lorg/junit/runner/Runner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/junit/runner/Runner;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public runners(Ljava/lang/Class;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;)",
            "Ljava/util/List<",
            "Lorg/junit/runner/Runner;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/runners/model/InitializationError;
        }
    .end annotation

    .line 119
    .local p1, "parent":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "children":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Class;

    invoke-interface {p2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Class;

    invoke-virtual {p0, p1, v0}, Lorg/junit/runners/model/RunnerBuilder;->runners(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public runners(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/List<",
            "Lorg/junit/runner/Runner;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/runners/model/InitializationError;
        }
    .end annotation

    .line 108
    .local p1, "parent":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "children":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-virtual {p0, p1}, Lorg/junit/runners/model/RunnerBuilder;->addParent(Ljava/lang/Class;)Ljava/lang/Class;

    .line 111
    :try_start_0
    invoke-direct {p0, p2}, Lorg/junit/runners/model/RunnerBuilder;->runners([Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    invoke-virtual {p0, p1}, Lorg/junit/runners/model/RunnerBuilder;->removeParent(Ljava/lang/Class;)V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0, p1}, Lorg/junit/runners/model/RunnerBuilder;->removeParent(Ljava/lang/Class;)V

    throw v0
.end method

.method public safeRunnerForClass(Ljava/lang/Class;)Lorg/junit/runner/Runner;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/junit/runner/Runner;"
        }
    .end annotation

    .line 70
    .local p1, "testClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/junit/runners/model/RunnerBuilder;->runnerForClass(Ljava/lang/Class;)Lorg/junit/runner/Runner;

    move-result-object v0

    .line 71
    .local v0, "runner":Lorg/junit/runner/Runner;
    if-eqz v0, :cond_0

    .line 72
    invoke-direct {p0, v0}, Lorg/junit/runners/model/RunnerBuilder;->configureRunner(Lorg/junit/runner/Runner;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    :cond_0
    return-object v0

    .line 75
    .end local v0    # "runner":Lorg/junit/runner/Runner;
    :catchall_0
    move-exception v0

    .line 76
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Lorg/junit/internal/runners/ErrorReportingRunner;

    invoke-direct {v1, p1, v0}, Lorg/junit/internal/runners/ErrorReportingRunner;-><init>(Ljava/lang/Class;Ljava/lang/Throwable;)V

    return-object v1
.end method
