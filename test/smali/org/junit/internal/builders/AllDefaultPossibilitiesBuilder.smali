.class public Lorg/junit/internal/builders/AllDefaultPossibilitiesBuilder;
.super Lorg/junit/runners/model/RunnerBuilder;
.source "AllDefaultPossibilitiesBuilder.java"


# instance fields
.field private final canUseSuiteMethod:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Lorg/junit/runners/model/RunnerBuilder;-><init>()V

    .line 16
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/junit/internal/builders/AllDefaultPossibilitiesBuilder;->canUseSuiteMethod:Z

    .line 17
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .param p1, "canUseSuiteMethod"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 23
    invoke-direct {p0}, Lorg/junit/runners/model/RunnerBuilder;-><init>()V

    .line 24
    iput-boolean p1, p0, Lorg/junit/internal/builders/AllDefaultPossibilitiesBuilder;->canUseSuiteMethod:Z

    .line 25
    return-void
.end method


# virtual methods
.method protected annotatedBuilder()Lorg/junit/internal/builders/AnnotatedBuilder;
    .locals 1

    .line 54
    new-instance v0, Lorg/junit/internal/builders/AnnotatedBuilder;

    invoke-direct {v0, p0}, Lorg/junit/internal/builders/AnnotatedBuilder;-><init>(Lorg/junit/runners/model/RunnerBuilder;)V

    return-object v0
.end method

.method protected ignoredBuilder()Lorg/junit/internal/builders/IgnoredBuilder;
    .locals 1

    .line 58
    new-instance v0, Lorg/junit/internal/builders/IgnoredBuilder;

    invoke-direct {v0}, Lorg/junit/internal/builders/IgnoredBuilder;-><init>()V

    return-object v0
.end method

.method protected junit3Builder()Lorg/junit/internal/builders/JUnit3Builder;
    .locals 1

    .line 50
    new-instance v0, Lorg/junit/internal/builders/JUnit3Builder;

    invoke-direct {v0}, Lorg/junit/internal/builders/JUnit3Builder;-><init>()V

    return-object v0
.end method

.method protected junit4Builder()Lorg/junit/internal/builders/JUnit4Builder;
    .locals 1

    .line 46
    new-instance v0, Lorg/junit/internal/builders/JUnit4Builder;

    invoke-direct {v0}, Lorg/junit/internal/builders/JUnit4Builder;-><init>()V

    return-object v0
.end method

.method public runnerForClass(Ljava/lang/Class;)Lorg/junit/runner/Runner;
    .locals 4
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

    .line 29
    .local p1, "testClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x5

    new-array v0, v0, [Lorg/junit/runners/model/RunnerBuilder;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/junit/internal/builders/AllDefaultPossibilitiesBuilder;->ignoredBuilder()Lorg/junit/internal/builders/IgnoredBuilder;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Lorg/junit/internal/builders/AllDefaultPossibilitiesBuilder;->annotatedBuilder()Lorg/junit/internal/builders/AnnotatedBuilder;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-virtual {p0}, Lorg/junit/internal/builders/AllDefaultPossibilitiesBuilder;->suiteMethodBuilder()Lorg/junit/runners/model/RunnerBuilder;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-virtual {p0}, Lorg/junit/internal/builders/AllDefaultPossibilitiesBuilder;->junit3Builder()Lorg/junit/internal/builders/JUnit3Builder;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    invoke-virtual {p0}, Lorg/junit/internal/builders/AllDefaultPossibilitiesBuilder;->junit4Builder()Lorg/junit/internal/builders/JUnit4Builder;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 36
    .local v0, "builders":Ljava/util/List;, "Ljava/util/List<Lorg/junit/runners/model/RunnerBuilder;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/junit/runners/model/RunnerBuilder;

    .line 37
    .local v2, "each":Lorg/junit/runners/model/RunnerBuilder;
    invoke-virtual {v2, p1}, Lorg/junit/runners/model/RunnerBuilder;->safeRunnerForClass(Ljava/lang/Class;)Lorg/junit/runner/Runner;

    move-result-object v3

    .line 38
    .local v3, "runner":Lorg/junit/runner/Runner;
    if-eqz v3, :cond_0

    .line 39
    return-object v3

    .line 41
    .end local v2    # "each":Lorg/junit/runners/model/RunnerBuilder;
    .end local v3    # "runner":Lorg/junit/runner/Runner;
    :cond_0
    goto :goto_0

    .line 42
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method protected suiteMethodBuilder()Lorg/junit/runners/model/RunnerBuilder;
    .locals 1

    .line 62
    iget-boolean v0, p0, Lorg/junit/internal/builders/AllDefaultPossibilitiesBuilder;->canUseSuiteMethod:Z

    if-eqz v0, :cond_0

    .line 63
    new-instance v0, Lorg/junit/internal/builders/SuiteMethodBuilder;

    invoke-direct {v0}, Lorg/junit/internal/builders/SuiteMethodBuilder;-><init>()V

    return-object v0

    .line 65
    :cond_0
    new-instance v0, Lorg/junit/internal/builders/NullBuilder;

    invoke-direct {v0}, Lorg/junit/internal/builders/NullBuilder;-><init>()V

    return-object v0
.end method
