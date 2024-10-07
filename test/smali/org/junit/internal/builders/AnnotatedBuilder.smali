.class public Lorg/junit/internal/builders/AnnotatedBuilder;
.super Lorg/junit/runners/model/RunnerBuilder;
.source "AnnotatedBuilder.java"


# static fields
.field private static final CONSTRUCTOR_ERROR_FORMAT:Ljava/lang/String; = "Custom runner class %s should have a public constructor with signature %s(Class testClass)"


# instance fields
.field private final suiteBuilder:Lorg/junit/runners/model/RunnerBuilder;


# direct methods
.method public constructor <init>(Lorg/junit/runners/model/RunnerBuilder;)V
    .locals 0
    .param p1, "suiteBuilder"    # Lorg/junit/runners/model/RunnerBuilder;

    .line 76
    invoke-direct {p0}, Lorg/junit/runners/model/RunnerBuilder;-><init>()V

    .line 77
    iput-object p1, p0, Lorg/junit/internal/builders/AnnotatedBuilder;->suiteBuilder:Lorg/junit/runners/model/RunnerBuilder;

    .line 78
    return-void
.end method

.method private getEnclosingClassForNonStaticMemberClass(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 94
    .local p1, "currentTestClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->isMemberClass()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    invoke-virtual {p1}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0

    .line 97
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public buildRunner(Ljava/lang/Class;Ljava/lang/Class;)Lorg/junit/runner/Runner;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lorg/junit/runner/Runner;",
            ">;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/junit/runner/Runner;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 104
    .local p1, "runnerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/junit/runner/Runner;>;"
    .local p2, "testClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/Class;

    aput-object v3, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/junit/runner/Runner;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 105
    :catch_0
    move-exception v2

    .line 107
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    const/4 v3, 0x2

    :try_start_1
    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Ljava/lang/Class;

    aput-object v4, v3, v0

    const-class v0, Lorg/junit/runners/model/RunnerBuilder;

    aput-object v0, v3, v1

    invoke-virtual {p1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    iget-object v1, p0, Lorg/junit/internal/builders/AnnotatedBuilder;->suiteBuilder:Lorg/junit/runners/model/RunnerBuilder;

    filled-new-array {p2, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/junit/runner/Runner;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    .line 109
    :catch_1
    move-exception v0

    .line 110
    .local v0, "e2":Ljava/lang/NoSuchMethodException;
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 111
    .local v1, "simpleName":Ljava/lang/String;
    new-instance v3, Lorg/junit/runners/model/InitializationError;

    const-string v4, "Custom runner class %s should have a public constructor with signature %s(Class testClass)"

    filled-new-array {v1, v1}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/junit/runners/model/InitializationError;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public runnerForClass(Ljava/lang/Class;)Lorg/junit/runner/Runner;
    .locals 3
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
            Ljava/lang/Exception;
        }
    .end annotation

    .line 82
    .local p1, "testClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v0, p1

    .local v0, "currentTestClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    if-eqz v0, :cond_1

    .line 84
    const-class v1, Lorg/junit/runner/RunWith;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lorg/junit/runner/RunWith;

    .line 85
    .local v1, "annotation":Lorg/junit/runner/RunWith;
    if-eqz v1, :cond_0

    .line 86
    invoke-interface {v1}, Lorg/junit/runner/RunWith;->value()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0, v2, p1}, Lorg/junit/internal/builders/AnnotatedBuilder;->buildRunner(Ljava/lang/Class;Ljava/lang/Class;)Lorg/junit/runner/Runner;

    move-result-object v2

    return-object v2

    .line 83
    .end local v1    # "annotation":Lorg/junit/runner/RunWith;
    :cond_0
    invoke-direct {p0, v0}, Lorg/junit/internal/builders/AnnotatedBuilder;->getEnclosingClassForNonStaticMemberClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 90
    .end local v0    # "currentTestClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method
