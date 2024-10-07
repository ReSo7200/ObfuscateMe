.class public Lorg/junit/experimental/theories/internal/SpecificDataPointsSupplier;
.super Lorg/junit/experimental/theories/internal/AllMembersSupplier;
.source "SpecificDataPointsSupplier.java"


# direct methods
.method public constructor <init>(Lorg/junit/runners/model/TestClass;)V
    .locals 0
    .param p1, "testClass"    # Lorg/junit/runners/model/TestClass;

    .line 19
    invoke-direct {p0, p1}, Lorg/junit/experimental/theories/internal/AllMembersSupplier;-><init>(Lorg/junit/runners/model/TestClass;)V

    .line 20
    return-void
.end method


# virtual methods
.method protected getDataPointsFields(Lorg/junit/experimental/theories/ParameterSignature;)Ljava/util/Collection;
    .locals 7
    .param p1, "sig"    # Lorg/junit/experimental/theories/ParameterSignature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/junit/experimental/theories/ParameterSignature;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation

    .line 41
    invoke-super {p0, p1}, Lorg/junit/experimental/theories/internal/AllMembersSupplier;->getDataPointsFields(Lorg/junit/experimental/theories/ParameterSignature;)Ljava/util/Collection;

    move-result-object v0

    .line 42
    .local v0, "fields":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/reflect/Field;>;"
    const-class v1, Lorg/junit/experimental/theories/FromDataPoints;

    invoke-virtual {p1, v1}, Lorg/junit/experimental/theories/ParameterSignature;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lorg/junit/experimental/theories/FromDataPoints;

    invoke-interface {v1}, Lorg/junit/experimental/theories/FromDataPoints;->value()Ljava/lang/String;

    move-result-object v1

    .line 44
    .local v1, "requestedName":Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 46
    .local v2, "fieldsWithMatchingNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/reflect/Field;

    .line 47
    .local v4, "field":Ljava/lang/reflect/Field;
    const-class v5, Lorg/junit/experimental/theories/DataPoints;

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    check-cast v5, Lorg/junit/experimental/theories/DataPoints;

    invoke-interface {v5}, Lorg/junit/experimental/theories/DataPoints;->value()[Ljava/lang/String;

    move-result-object v5

    .line 48
    .local v5, "fieldNames":[Ljava/lang/String;
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 49
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    .end local v4    # "field":Ljava/lang/reflect/Field;
    .end local v5    # "fieldNames":[Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 53
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_1
    return-object v2
.end method

.method protected getDataPointsMethods(Lorg/junit/experimental/theories/ParameterSignature;)Ljava/util/Collection;
    .locals 7
    .param p1, "sig"    # Lorg/junit/experimental/theories/ParameterSignature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/junit/experimental/theories/ParameterSignature;",
            ")",
            "Ljava/util/Collection<",
            "Lorg/junit/runners/model/FrameworkMethod;",
            ">;"
        }
    .end annotation

    .line 75
    invoke-super {p0, p1}, Lorg/junit/experimental/theories/internal/AllMembersSupplier;->getDataPointsMethods(Lorg/junit/experimental/theories/ParameterSignature;)Ljava/util/Collection;

    move-result-object v0

    .line 76
    .local v0, "methods":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/junit/runners/model/FrameworkMethod;>;"
    const-class v1, Lorg/junit/experimental/theories/FromDataPoints;

    invoke-virtual {p1, v1}, Lorg/junit/experimental/theories/ParameterSignature;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lorg/junit/experimental/theories/FromDataPoints;

    invoke-interface {v1}, Lorg/junit/experimental/theories/FromDataPoints;->value()Ljava/lang/String;

    move-result-object v1

    .line 78
    .local v1, "requestedName":Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 80
    .local v2, "methodsWithMatchingNames":Ljava/util/List;, "Ljava/util/List<Lorg/junit/runners/model/FrameworkMethod;>;"
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/junit/runners/model/FrameworkMethod;

    .line 81
    .local v4, "method":Lorg/junit/runners/model/FrameworkMethod;
    const-class v5, Lorg/junit/experimental/theories/DataPoints;

    invoke-virtual {v4, v5}, Lorg/junit/runners/model/FrameworkMethod;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    check-cast v5, Lorg/junit/experimental/theories/DataPoints;

    invoke-interface {v5}, Lorg/junit/experimental/theories/DataPoints;->value()[Ljava/lang/String;

    move-result-object v5

    .line 82
    .local v5, "methodNames":[Ljava/lang/String;
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 83
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    .end local v4    # "method":Lorg/junit/runners/model/FrameworkMethod;
    .end local v5    # "methodNames":[Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 87
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_1
    return-object v2
.end method

.method protected getSingleDataPointFields(Lorg/junit/experimental/theories/ParameterSignature;)Ljava/util/Collection;
    .locals 7
    .param p1, "sig"    # Lorg/junit/experimental/theories/ParameterSignature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/junit/experimental/theories/ParameterSignature;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation

    .line 24
    invoke-super {p0, p1}, Lorg/junit/experimental/theories/internal/AllMembersSupplier;->getSingleDataPointFields(Lorg/junit/experimental/theories/ParameterSignature;)Ljava/util/Collection;

    move-result-object v0

    .line 25
    .local v0, "fields":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/reflect/Field;>;"
    const-class v1, Lorg/junit/experimental/theories/FromDataPoints;

    invoke-virtual {p1, v1}, Lorg/junit/experimental/theories/ParameterSignature;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lorg/junit/experimental/theories/FromDataPoints;

    invoke-interface {v1}, Lorg/junit/experimental/theories/FromDataPoints;->value()Ljava/lang/String;

    move-result-object v1

    .line 27
    .local v1, "requestedName":Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 29
    .local v2, "fieldsWithMatchingNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/reflect/Field;

    .line 30
    .local v4, "field":Ljava/lang/reflect/Field;
    const-class v5, Lorg/junit/experimental/theories/DataPoint;

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    check-cast v5, Lorg/junit/experimental/theories/DataPoint;

    invoke-interface {v5}, Lorg/junit/experimental/theories/DataPoint;->value()[Ljava/lang/String;

    move-result-object v5

    .line 31
    .local v5, "fieldNames":[Ljava/lang/String;
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 32
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    .end local v4    # "field":Ljava/lang/reflect/Field;
    .end local v5    # "fieldNames":[Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 36
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_1
    return-object v2
.end method

.method protected getSingleDataPointMethods(Lorg/junit/experimental/theories/ParameterSignature;)Ljava/util/Collection;
    .locals 7
    .param p1, "sig"    # Lorg/junit/experimental/theories/ParameterSignature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/junit/experimental/theories/ParameterSignature;",
            ")",
            "Ljava/util/Collection<",
            "Lorg/junit/runners/model/FrameworkMethod;",
            ">;"
        }
    .end annotation

    .line 58
    invoke-super {p0, p1}, Lorg/junit/experimental/theories/internal/AllMembersSupplier;->getSingleDataPointMethods(Lorg/junit/experimental/theories/ParameterSignature;)Ljava/util/Collection;

    move-result-object v0

    .line 59
    .local v0, "methods":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/junit/runners/model/FrameworkMethod;>;"
    const-class v1, Lorg/junit/experimental/theories/FromDataPoints;

    invoke-virtual {p1, v1}, Lorg/junit/experimental/theories/ParameterSignature;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lorg/junit/experimental/theories/FromDataPoints;

    invoke-interface {v1}, Lorg/junit/experimental/theories/FromDataPoints;->value()Ljava/lang/String;

    move-result-object v1

    .line 61
    .local v1, "requestedName":Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 63
    .local v2, "methodsWithMatchingNames":Ljava/util/List;, "Ljava/util/List<Lorg/junit/runners/model/FrameworkMethod;>;"
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/junit/runners/model/FrameworkMethod;

    .line 64
    .local v4, "method":Lorg/junit/runners/model/FrameworkMethod;
    const-class v5, Lorg/junit/experimental/theories/DataPoint;

    invoke-virtual {v4, v5}, Lorg/junit/runners/model/FrameworkMethod;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    check-cast v5, Lorg/junit/experimental/theories/DataPoint;

    invoke-interface {v5}, Lorg/junit/experimental/theories/DataPoint;->value()[Ljava/lang/String;

    move-result-object v5

    .line 65
    .local v5, "methodNames":[Ljava/lang/String;
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 66
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    .end local v4    # "method":Lorg/junit/runners/model/FrameworkMethod;
    .end local v5    # "methodNames":[Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 70
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_1
    return-object v2
.end method
