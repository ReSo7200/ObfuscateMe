.class public final Lorg/junit/experimental/categories/ExcludeCategories;
.super Lorg/junit/experimental/categories/CategoryFilterFactory;
.source "ExcludeCategories.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/junit/experimental/categories/ExcludeCategories$ExcludesAny;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lorg/junit/experimental/categories/CategoryFilterFactory;-><init>()V

    .line 38
    return-void
.end method


# virtual methods
.method protected createFilter(Ljava/util/List;)Lorg/junit/runner/manipulation/Filter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;)",
            "Lorg/junit/runner/manipulation/Filter;"
        }
    .end annotation

    .line 35
    .local p1, "categories":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    new-instance v0, Lorg/junit/experimental/categories/ExcludeCategories$ExcludesAny;

    invoke-direct {v0, p1}, Lorg/junit/experimental/categories/ExcludeCategories$ExcludesAny;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public bridge synthetic createFilter(Lorg/junit/runner/FilterFactoryParams;)Lorg/junit/runner/manipulation/Filter;
    .locals 1
    .param p1, "x0"    # Lorg/junit/runner/FilterFactoryParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/runner/FilterFactory$FilterNotCreatedException;
        }
    .end annotation

    .line 26
    invoke-super {p0, p1}, Lorg/junit/experimental/categories/CategoryFilterFactory;->createFilter(Lorg/junit/runner/FilterFactoryParams;)Lorg/junit/runner/manipulation/Filter;

    move-result-object v0

    return-object v0
.end method
