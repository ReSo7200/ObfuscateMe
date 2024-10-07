.class abstract Lorg/junit/experimental/categories/CategoryFilterFactory;
.super Ljava/lang/Object;
.source "CategoryFilterFactory.java"

# interfaces
.implements Lorg/junit/runner/FilterFactory;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private parseCategories(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p1, "categories"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .local v0, "categoryClasses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .local v1, "arr$":[Ljava/lang/String;
    array-length v2, v1

    .local v2, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 44
    .local v4, "category":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/junit/internal/Classes;->getClass(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v5

    .line 46
    .local v5, "categoryClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    .end local v4    # "category":Ljava/lang/String;
    .end local v5    # "categoryClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 49
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_0
    return-object v0
.end method


# virtual methods
.method protected abstract createFilter(Ljava/util/List;)Lorg/junit/runner/manipulation/Filter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;)",
            "Lorg/junit/runner/manipulation/Filter;"
        }
    .end annotation
.end method

.method public createFilter(Lorg/junit/runner/FilterFactoryParams;)Lorg/junit/runner/manipulation/Filter;
    .locals 2
    .param p1, "params"    # Lorg/junit/runner/FilterFactoryParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/runner/FilterFactory$FilterNotCreatedException;
        }
    .end annotation

    .line 23
    :try_start_0
    invoke-virtual {p1}, Lorg/junit/runner/FilterFactoryParams;->getArgs()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/junit/experimental/categories/CategoryFilterFactory;->parseCategories(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/junit/experimental/categories/CategoryFilterFactory;->createFilter(Ljava/util/List;)Lorg/junit/runner/manipulation/Filter;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 24
    :catch_0
    move-exception v0

    .line 25
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v1, Lorg/junit/runner/FilterFactory$FilterNotCreatedException;

    invoke-direct {v1, v0}, Lorg/junit/runner/FilterFactory$FilterNotCreatedException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method
