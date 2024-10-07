.class public Lorg/junit/runners/Parameterized;
.super Lorg/junit/runners/Suite;
.source "Parameterized.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/junit/runners/Parameterized$RunnersFactory;,
        Lorg/junit/runners/Parameterized$AssumptionViolationRunner;,
        Lorg/junit/runners/Parameterized$AfterParam;,
        Lorg/junit/runners/Parameterized$BeforeParam;,
        Lorg/junit/runners/Parameterized$UseParametersRunnerFactory;,
        Lorg/junit/runners/Parameterized$Parameter;,
        Lorg/junit/runners/Parameterized$Parameters;
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 303
    .local p1, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lorg/junit/runners/Parameterized$RunnersFactory;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/junit/runners/Parameterized$RunnersFactory;-><init>(Ljava/lang/Class;Lorg/junit/runners/Parameterized$1;)V

    invoke-direct {p0, p1, v0}, Lorg/junit/runners/Parameterized;-><init>(Ljava/lang/Class;Lorg/junit/runners/Parameterized$RunnersFactory;)V

    .line 304
    return-void
.end method

.method private constructor <init>(Ljava/lang/Class;Lorg/junit/runners/Parameterized$RunnersFactory;)V
    .locals 1
    .param p2, "runnersFactory"    # Lorg/junit/runners/Parameterized$RunnersFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/junit/runners/Parameterized$RunnersFactory;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 307
    .local p1, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p2}, Lorg/junit/runners/Parameterized$RunnersFactory;->access$100(Lorg/junit/runners/Parameterized$RunnersFactory;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/junit/runners/Suite;-><init>(Ljava/lang/Class;Ljava/util/List;)V

    .line 308
    invoke-static {p2}, Lorg/junit/runners/Parameterized$RunnersFactory;->access$200(Lorg/junit/runners/Parameterized$RunnersFactory;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/junit/runners/Parameterized;->validateBeforeParamAndAfterParamMethods(Ljava/lang/Integer;)V

    .line 309
    return-void
.end method

.method private validateBeforeParamAndAfterParamMethods(Ljava/lang/Integer;)V
    .locals 3
    .param p1, "parameterCount"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/runners/model/InvalidTestClassError;
        }
    .end annotation

    .line 313
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 314
    .local v0, "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    const-class v1, Lorg/junit/runners/Parameterized$BeforeParam;

    invoke-direct {p0, v1, p1, v0}, Lorg/junit/runners/Parameterized;->validatePublicStaticVoidMethods(Ljava/lang/Class;Ljava/lang/Integer;Ljava/util/List;)V

    .line 315
    const-class v1, Lorg/junit/runners/Parameterized$AfterParam;

    invoke-direct {p0, v1, p1, v0}, Lorg/junit/runners/Parameterized;->validatePublicStaticVoidMethods(Ljava/lang/Class;Ljava/lang/Integer;Ljava/util/List;)V

    .line 316
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 319
    return-void

    .line 317
    :cond_0
    new-instance v1, Lorg/junit/runners/model/InvalidTestClassError;

    invoke-virtual {p0}, Lorg/junit/runners/Parameterized;->getTestClass()Lorg/junit/runners/model/TestClass;

    move-result-object v2

    invoke-virtual {v2}, Lorg/junit/runners/model/TestClass;->getJavaClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/junit/runners/model/InvalidTestClassError;-><init>(Ljava/lang/Class;Ljava/util/List;)V

    throw v1
.end method

.method private validatePublicStaticVoidMethods(Ljava/lang/Class;Ljava/lang/Integer;Ljava/util/List;)V
    .locals 7
    .param p2, "parameterCount"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 324
    .local p1, "annotation":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    .local p3, "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    invoke-virtual {p0}, Lorg/junit/runners/Parameterized;->getTestClass()Lorg/junit/runners/model/TestClass;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/junit/runners/model/TestClass;->getAnnotatedMethods(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 325
    .local v0, "methods":Ljava/util/List;, "Ljava/util/List<Lorg/junit/runners/model/FrameworkMethod;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/junit/runners/model/FrameworkMethod;

    .line 326
    .local v2, "fm":Lorg/junit/runners/model/FrameworkMethod;
    const/4 v3, 0x1

    invoke-virtual {v2, v3, p3}, Lorg/junit/runners/model/FrameworkMethod;->validatePublicVoid(ZLjava/util/List;)V

    .line 327
    if-eqz p2, :cond_0

    .line 328
    invoke-virtual {v2}, Lorg/junit/runners/model/FrameworkMethod;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    array-length v3, v3

    .line 329
    .local v3, "methodParameterCount":I
    if-eqz v3, :cond_0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v3, v4, :cond_0

    .line 330
    new-instance v4, Ljava/lang/Exception;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Method "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lorg/junit/runners/model/FrameworkMethod;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "() should have 0 or "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " parameter(s)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 333
    .end local v2    # "fm":Lorg/junit/runners/model/FrameworkMethod;
    .end local v3    # "methodParameterCount":I
    :cond_0
    goto :goto_0

    .line 335
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method
