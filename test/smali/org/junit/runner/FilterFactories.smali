.class Lorg/junit/runner/FilterFactories;
.super Ljava/lang/Object;
.source "FilterFactories.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createFilter(Ljava/lang/Class;Lorg/junit/runner/FilterFactoryParams;)Lorg/junit/runner/manipulation/Filter;
    .locals 2
    .param p1, "params"    # Lorg/junit/runner/FilterFactoryParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lorg/junit/runner/FilterFactory;",
            ">;",
            "Lorg/junit/runner/FilterFactoryParams;",
            ")",
            "Lorg/junit/runner/manipulation/Filter;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/runner/FilterFactory$FilterNotCreatedException;
        }
    .end annotation

    .line 57
    .local p0, "filterFactoryClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/junit/runner/FilterFactory;>;"
    invoke-static {p0}, Lorg/junit/runner/FilterFactories;->createFilterFactory(Ljava/lang/Class;)Lorg/junit/runner/FilterFactory;

    move-result-object v0

    .line 59
    .local v0, "filterFactory":Lorg/junit/runner/FilterFactory;
    invoke-interface {v0, p1}, Lorg/junit/runner/FilterFactory;->createFilter(Lorg/junit/runner/FilterFactoryParams;)Lorg/junit/runner/manipulation/Filter;

    move-result-object v1

    return-object v1
.end method

.method public static createFilter(Ljava/lang/String;Lorg/junit/runner/FilterFactoryParams;)Lorg/junit/runner/manipulation/Filter;
    .locals 2
    .param p0, "filterFactoryFqcn"    # Ljava/lang/String;
    .param p1, "params"    # Lorg/junit/runner/FilterFactoryParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/runner/FilterFactory$FilterNotCreatedException;
        }
    .end annotation

    .line 43
    invoke-static {p0}, Lorg/junit/runner/FilterFactories;->createFilterFactory(Ljava/lang/String;)Lorg/junit/runner/FilterFactory;

    move-result-object v0

    .line 45
    .local v0, "filterFactory":Lorg/junit/runner/FilterFactory;
    invoke-interface {v0, p1}, Lorg/junit/runner/FilterFactory;->createFilter(Lorg/junit/runner/FilterFactoryParams;)Lorg/junit/runner/manipulation/Filter;

    move-result-object v1

    return-object v1
.end method

.method static createFilterFactory(Ljava/lang/Class;)Lorg/junit/runner/FilterFactory;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lorg/junit/runner/FilterFactory;",
            ">;)",
            "Lorg/junit/runner/FilterFactory;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/runner/FilterFactory$FilterNotCreatedException;
        }
    .end annotation

    .line 77
    .local p0, "filterFactoryClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/junit/runner/FilterFactory;>;"
    const/4 v0, 0x0

    :try_start_0
    new-array v1, v0, [Ljava/lang/Class;

    invoke-virtual {p0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/junit/runner/FilterFactory;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/junit/runner/FilterFactory$FilterNotCreatedException;

    invoke-direct {v1, v0}, Lorg/junit/runner/FilterFactory$FilterNotCreatedException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method static createFilterFactory(Ljava/lang/String;)Lorg/junit/runner/FilterFactory;
    .locals 3
    .param p0, "filterFactoryFqcn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/runner/FilterFactory$FilterNotCreatedException;
        }
    .end annotation

    .line 66
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lorg/junit/internal/Classes;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lorg/junit/runner/FilterFactory;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    .local v0, "filterFactoryClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/junit/runner/FilterFactory;>;"
    nop

    .line 71
    invoke-static {v0}, Lorg/junit/runner/FilterFactories;->createFilterFactory(Ljava/lang/Class;)Lorg/junit/runner/FilterFactory;

    move-result-object v1

    return-object v1

    .line 67
    .end local v0    # "filterFactoryClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/junit/runner/FilterFactory;>;"
    :catch_0
    move-exception v1

    .line 68
    .restart local v0    # "filterFactoryClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/junit/runner/FilterFactory;>;"
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lorg/junit/runner/FilterFactory$FilterNotCreatedException;

    invoke-direct {v2, v1}, Lorg/junit/runner/FilterFactory$FilterNotCreatedException;-><init>(Ljava/lang/Exception;)V

    throw v2
.end method

.method public static createFilterFromFilterSpec(Lorg/junit/runner/Request;Ljava/lang/String;)Lorg/junit/runner/manipulation/Filter;
    .locals 6
    .param p0, "request"    # Lorg/junit/runner/Request;
    .param p1, "filterSpec"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/runner/FilterFactory$FilterNotCreatedException;
        }
    .end annotation

    .line 23
    invoke-virtual {p0}, Lorg/junit/runner/Request;->getRunner()Lorg/junit/runner/Runner;

    move-result-object v0

    invoke-virtual {v0}, Lorg/junit/runner/Runner;->getDescription()Lorg/junit/runner/Description;

    move-result-object v0

    .line 26
    .local v0, "topLevelDescription":Lorg/junit/runner/Description;
    const-string v1, "="

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-eqz v2, :cond_0

    .line 27
    invoke-virtual {p1, v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .local v1, "tuple":[Ljava/lang/String;
    goto :goto_0

    .line 29
    .end local v1    # "tuple":[Ljava/lang/String;
    :cond_0
    new-array v1, v5, [Ljava/lang/String;

    aput-object p1, v1, v4

    const-string v2, ""

    aput-object v2, v1, v3

    .line 32
    .restart local v1    # "tuple":[Ljava/lang/String;
    :goto_0
    aget-object v2, v1, v4

    new-instance v4, Lorg/junit/runner/FilterFactoryParams;

    aget-object v3, v1, v3

    invoke-direct {v4, v0, v3}, Lorg/junit/runner/FilterFactoryParams;-><init>(Lorg/junit/runner/Description;Ljava/lang/String;)V

    invoke-static {v2, v4}, Lorg/junit/runner/FilterFactories;->createFilter(Ljava/lang/String;Lorg/junit/runner/FilterFactoryParams;)Lorg/junit/runner/manipulation/Filter;

    move-result-object v2

    return-object v2
.end method
