.class public abstract Lorg/junit/runner/Request;
.super Ljava/lang/Object;
.source "Request.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static aClass(Ljava/lang/Class;)Lorg/junit/runner/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/junit/runner/Request;"
        }
    .end annotation

    .line 52
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lorg/junit/internal/requests/ClassRequest;

    invoke-direct {v0, p0}, Lorg/junit/internal/requests/ClassRequest;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public static classWithoutSuiteMethod(Ljava/lang/Class;)Lorg/junit/runner/Request;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/junit/runner/Request;"
        }
    .end annotation

    .line 63
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lorg/junit/internal/requests/ClassRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/junit/internal/requests/ClassRequest;-><init>(Ljava/lang/Class;Z)V

    return-object v0
.end method

.method public static varargs classes(Lorg/junit/runner/Computer;[Ljava/lang/Class;)Lorg/junit/runner/Request;
    .locals 3
    .param p0, "computer"    # Lorg/junit/runner/Computer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/junit/runner/Computer;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/junit/runner/Request;"
        }
    .end annotation

    .line 76
    .local p1, "classes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :try_start_0
    new-instance v0, Lorg/junit/internal/builders/AllDefaultPossibilitiesBuilder;

    invoke-direct {v0}, Lorg/junit/internal/builders/AllDefaultPossibilitiesBuilder;-><init>()V

    .line 77
    .local v0, "builder":Lorg/junit/internal/builders/AllDefaultPossibilitiesBuilder;
    invoke-virtual {p0, v0, p1}, Lorg/junit/runner/Computer;->getSuite(Lorg/junit/runners/model/RunnerBuilder;[Ljava/lang/Class;)Lorg/junit/runner/Runner;

    move-result-object v1

    .line 78
    .local v1, "suite":Lorg/junit/runner/Runner;
    invoke-static {v1}, Lorg/junit/runner/Request;->runner(Lorg/junit/runner/Runner;)Lorg/junit/runner/Request;

    move-result-object v2
    :try_end_0
    .catch Lorg/junit/runners/model/InitializationError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 79
    .end local v0    # "builder":Lorg/junit/internal/builders/AllDefaultPossibilitiesBuilder;
    .end local v1    # "suite":Lorg/junit/runner/Runner;
    :catch_0
    move-exception v0

    .line 80
    .local v0, "e":Lorg/junit/runners/model/InitializationError;
    new-instance v1, Lorg/junit/internal/runners/ErrorReportingRunner;

    invoke-direct {v1, v0, p1}, Lorg/junit/internal/runners/ErrorReportingRunner;-><init>(Ljava/lang/Throwable;[Ljava/lang/Class;)V

    invoke-static {v1}, Lorg/junit/runner/Request;->runner(Lorg/junit/runner/Runner;)Lorg/junit/runner/Request;

    move-result-object v1

    return-object v1
.end method

.method public static varargs classes([Ljava/lang/Class;)Lorg/junit/runner/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/junit/runner/Request;"
        }
    .end annotation

    .line 92
    .local p0, "classes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-static {}, Lorg/junit/runner/JUnitCore;->defaultComputer()Lorg/junit/runner/Computer;

    move-result-object v0

    invoke-static {v0, p0}, Lorg/junit/runner/Request;->classes(Lorg/junit/runner/Computer;[Ljava/lang/Class;)Lorg/junit/runner/Request;

    move-result-object v0

    return-object v0
.end method

.method public static errorReport(Ljava/lang/Class;Ljava/lang/Throwable;)Lorg/junit/runner/Request;
    .locals 1
    .param p1, "cause"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Throwable;",
            ")",
            "Lorg/junit/runner/Request;"
        }
    .end annotation

    .line 101
    .local p0, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lorg/junit/internal/runners/ErrorReportingRunner;

    invoke-direct {v0, p0, p1}, Lorg/junit/internal/runners/ErrorReportingRunner;-><init>(Ljava/lang/Class;Ljava/lang/Throwable;)V

    invoke-static {v0}, Lorg/junit/runner/Request;->runner(Lorg/junit/runner/Runner;)Lorg/junit/runner/Request;

    move-result-object v0

    return-object v0
.end method

.method public static method(Ljava/lang/Class;Ljava/lang/String;)Lorg/junit/runner/Request;
    .locals 2
    .param p1, "methodName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Lorg/junit/runner/Request;"
        }
    .end annotation

    .line 40
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0, p1}, Lorg/junit/runner/Description;->createTestDescription(Ljava/lang/Class;Ljava/lang/String;)Lorg/junit/runner/Description;

    move-result-object v0

    .line 41
    .local v0, "method":Lorg/junit/runner/Description;
    invoke-static {p0}, Lorg/junit/runner/Request;->aClass(Ljava/lang/Class;)Lorg/junit/runner/Request;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/junit/runner/Request;->filterWith(Lorg/junit/runner/Description;)Lorg/junit/runner/Request;

    move-result-object v1

    return-object v1
.end method

.method public static runner(Lorg/junit/runner/Runner;)Lorg/junit/runner/Request;
    .locals 1
    .param p0, "runner"    # Lorg/junit/runner/Runner;

    .line 109
    new-instance v0, Lorg/junit/runner/Request$1;

    invoke-direct {v0, p0}, Lorg/junit/runner/Request$1;-><init>(Lorg/junit/runner/Runner;)V

    return-object v0
.end method


# virtual methods
.method public filterWith(Lorg/junit/runner/Description;)Lorg/junit/runner/Request;
    .locals 1
    .param p1, "desiredDescription"    # Lorg/junit/runner/Description;

    .line 146
    invoke-static {p1}, Lorg/junit/runner/manipulation/Filter;->matchMethodDescription(Lorg/junit/runner/Description;)Lorg/junit/runner/manipulation/Filter;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/junit/runner/Request;->filterWith(Lorg/junit/runner/manipulation/Filter;)Lorg/junit/runner/Request;

    move-result-object v0

    return-object v0
.end method

.method public filterWith(Lorg/junit/runner/manipulation/Filter;)Lorg/junit/runner/Request;
    .locals 1
    .param p1, "filter"    # Lorg/junit/runner/manipulation/Filter;

    .line 132
    new-instance v0, Lorg/junit/internal/requests/FilterRequest;

    invoke-direct {v0, p0, p1}, Lorg/junit/internal/requests/FilterRequest;-><init>(Lorg/junit/runner/Request;Lorg/junit/runner/manipulation/Filter;)V

    return-object v0
.end method

.method public abstract getRunner()Lorg/junit/runner/Runner;
.end method

.method public orderWith(Lorg/junit/runner/manipulation/Ordering;)Lorg/junit/runner/Request;
    .locals 1
    .param p1, "ordering"    # Lorg/junit/runner/manipulation/Ordering;

    .line 200
    new-instance v0, Lorg/junit/internal/requests/OrderingRequest;

    invoke-direct {v0, p0, p1}, Lorg/junit/internal/requests/OrderingRequest;-><init>(Lorg/junit/runner/Request;Lorg/junit/runner/manipulation/Ordering;)V

    return-object v0
.end method

.method public sortWith(Ljava/util/Comparator;)Lorg/junit/runner/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "Lorg/junit/runner/Description;",
            ">;)",
            "Lorg/junit/runner/Request;"
        }
    .end annotation

    .line 172
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lorg/junit/runner/Description;>;"
    new-instance v0, Lorg/junit/internal/requests/SortingRequest;

    invoke-direct {v0, p0, p1}, Lorg/junit/internal/requests/SortingRequest;-><init>(Lorg/junit/runner/Request;Ljava/util/Comparator;)V

    return-object v0
.end method
