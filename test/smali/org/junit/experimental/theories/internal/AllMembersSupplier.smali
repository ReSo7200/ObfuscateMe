.class public Lorg/junit/experimental/theories/internal/AllMembersSupplier;
.super Lorg/junit/experimental/theories/ParameterSupplier;
.source "AllMembersSupplier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/junit/experimental/theories/internal/AllMembersSupplier$MethodParameterValue;
    }
.end annotation


# instance fields
.field private final clazz:Lorg/junit/runners/model/TestClass;


# direct methods
.method public constructor <init>(Lorg/junit/runners/model/TestClass;)V
    .locals 0
    .param p1, "type"    # Lorg/junit/runners/model/TestClass;

    .line 60
    invoke-direct {p0}, Lorg/junit/experimental/theories/ParameterSupplier;-><init>()V

    .line 61
    iput-object p1, p0, Lorg/junit/experimental/theories/internal/AllMembersSupplier;->clazz:Lorg/junit/runners/model/TestClass;

    .line 62
    return-void
.end method

.method static synthetic access$000([Ljava/lang/Class;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "x0"    # [Ljava/lang/Class;
    .param p1, "x1"    # Ljava/lang/Object;

    .line 23
    invoke-static {p0, p1}, Lorg/junit/experimental/theories/internal/AllMembersSupplier;->isAssignableToAnyOf([Ljava/lang/Class;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private addArrayValues(Lorg/junit/experimental/theories/ParameterSignature;Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;)V
    .locals 4
    .param p1, "sig"    # Lorg/junit/experimental/theories/ParameterSignature;
    .param p2, "name"    # Ljava/lang/String;
    .param p4, "array"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/junit/experimental/theories/ParameterSignature;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/junit/experimental/theories/PotentialAssignment;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 133
    .local p3, "list":Ljava/util/List;, "Ljava/util/List<Lorg/junit/experimental/theories/PotentialAssignment;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-static {p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 134
    invoke-static {p4, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    .line 135
    .local v1, "value":Ljava/lang/Object;
    invoke-virtual {p1, v1}, Lorg/junit/experimental/theories/ParameterSignature;->canAcceptValue(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 136
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lorg/junit/experimental/theories/PotentialAssignment;->forValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/junit/experimental/theories/PotentialAssignment;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    .end local v1    # "value":Ljava/lang/Object;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 139
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private addDataPointsValues(Ljava/lang/Class;Lorg/junit/experimental/theories/ParameterSignature;Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;)V
    .locals 1
    .param p2, "sig"    # Lorg/junit/experimental/theories/ParameterSignature;
    .param p3, "name"    # Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/junit/experimental/theories/ParameterSignature;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/junit/experimental/theories/PotentialAssignment;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 124
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p4, "list":Ljava/util/List;, "Ljava/util/List<Lorg/junit/experimental/theories/PotentialAssignment;>;"
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    invoke-direct {p0, p2, p3, p4, p5}, Lorg/junit/experimental/theories/internal/AllMembersSupplier;->addArrayValues(Lorg/junit/experimental/theories/ParameterSignature;Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;)V

    goto :goto_0

    .line 127
    :cond_0
    const-class v0, Ljava/lang/Iterable;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 128
    move-object v0, p5

    check-cast v0, Ljava/lang/Iterable;

    invoke-direct {p0, p2, p3, p4, v0}, Lorg/junit/experimental/theories/internal/AllMembersSupplier;->addIterableValues(Lorg/junit/experimental/theories/ParameterSignature;Ljava/lang/String;Ljava/util/List;Ljava/lang/Iterable;)V

    .line 130
    :cond_1
    :goto_0
    return-void
.end method

.method private addIterableValues(Lorg/junit/experimental/theories/ParameterSignature;Ljava/lang/String;Ljava/util/List;Ljava/lang/Iterable;)V
    .locals 5
    .param p1, "sig"    # Lorg/junit/experimental/theories/ParameterSignature;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/junit/experimental/theories/ParameterSignature;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/junit/experimental/theories/PotentialAssignment;",
            ">;",
            "Ljava/lang/Iterable<",
            "*>;)V"
        }
    .end annotation

    .line 142
    .local p3, "list":Ljava/util/List;, "Ljava/util/List<Lorg/junit/experimental/theories/PotentialAssignment;>;"
    .local p4, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 143
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    const/4 v1, 0x0

    .line 144
    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 145
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 146
    .local v2, "value":Ljava/lang/Object;
    invoke-virtual {p1, v2}, Lorg/junit/experimental/theories/ParameterSignature;->canAcceptValue(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 147
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lorg/junit/experimental/theories/PotentialAssignment;->forValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/junit/experimental/theories/PotentialAssignment;

    move-result-object v3

    invoke-interface {p3, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    :cond_0
    nop

    .end local v2    # "value":Ljava/lang/Object;
    add-int/lit8 v1, v1, 0x1

    .line 150
    goto :goto_0

    .line 151
    :cond_1
    return-void
.end method

.method private addMultiPointFields(Lorg/junit/experimental/theories/ParameterSignature;Ljava/util/List;)V
    .locals 9
    .param p1, "sig"    # Lorg/junit/experimental/theories/ParameterSignature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/junit/experimental/theories/ParameterSignature;",
            "Ljava/util/List<",
            "Lorg/junit/experimental/theories/PotentialAssignment;",
            ">;)V"
        }
    .end annotation

    .line 106
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lorg/junit/experimental/theories/PotentialAssignment;>;"
    invoke-virtual {p0, p1}, Lorg/junit/experimental/theories/internal/AllMembersSupplier;->getDataPointsFields(Lorg/junit/experimental/theories/ParameterSignature;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Field;

    .line 107
    .local v1, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v8

    .line 108
    .local v8, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v1}, Lorg/junit/experimental/theories/internal/AllMembersSupplier;->getStaticFieldValue(Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v7

    move-object v2, p0

    move-object v3, v8

    move-object v4, p1

    move-object v6, p2

    invoke-direct/range {v2 .. v7}, Lorg/junit/experimental/theories/internal/AllMembersSupplier;->addDataPointsValues(Ljava/lang/Class;Lorg/junit/experimental/theories/ParameterSignature;Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;)V

    .line 109
    .end local v1    # "field":Ljava/lang/reflect/Field;
    .end local v8    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_0

    .line 110
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method private addMultiPointMethods(Lorg/junit/experimental/theories/ParameterSignature;Ljava/util/List;)V
    .locals 9
    .param p1, "sig"    # Lorg/junit/experimental/theories/ParameterSignature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/junit/experimental/theories/ParameterSignature;",
            "Ljava/util/List<",
            "Lorg/junit/experimental/theories/PotentialAssignment;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 77
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lorg/junit/experimental/theories/PotentialAssignment;>;"
    invoke-virtual {p0, p1}, Lorg/junit/experimental/theories/internal/AllMembersSupplier;->getDataPointsMethods(Lorg/junit/experimental/theories/ParameterSignature;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/junit/runners/model/FrameworkMethod;

    .line 78
    .local v1, "dataPointsMethod":Lorg/junit/runners/model/FrameworkMethod;
    invoke-virtual {v1}, Lorg/junit/runners/model/FrameworkMethod;->getReturnType()Ljava/lang/Class;

    move-result-object v8

    .line 80
    .local v8, "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v8}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v8}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/junit/experimental/theories/ParameterSignature;->canPotentiallyAcceptType(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const-class v2, Ljava/lang/Iterable;

    invoke-virtual {v2, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 83
    :cond_1
    :try_start_0
    invoke-virtual {v1}, Lorg/junit/runners/model/FrameworkMethod;->getName()Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Lorg/junit/runners/model/FrameworkMethod;->invokeExplosively(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v2, p0

    move-object v3, v8

    move-object v4, p1

    move-object v6, p2

    invoke-direct/range {v2 .. v7}, Lorg/junit/experimental/theories/internal/AllMembersSupplier;->addDataPointsValues(Ljava/lang/Class;Lorg/junit/experimental/theories/ParameterSignature;Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    goto :goto_1

    .line 85
    :catchall_0
    move-exception v2

    .line 86
    .local v2, "throwable":Ljava/lang/Throwable;
    const-class v3, Lorg/junit/experimental/theories/DataPoints;

    invoke-virtual {v1, v3}, Lorg/junit/runners/model/FrameworkMethod;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    check-cast v3, Lorg/junit/experimental/theories/DataPoints;

    .line 87
    .local v3, "annotation":Lorg/junit/experimental/theories/DataPoints;
    if-eqz v3, :cond_2

    invoke-interface {v3}, Lorg/junit/experimental/theories/DataPoints;->ignoredExceptions()[Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4, v2}, Lorg/junit/experimental/theories/internal/AllMembersSupplier;->isAssignableToAnyOf([Ljava/lang/Class;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 88
    return-void

    .line 90
    :cond_2
    throw v2

    .line 94
    .end local v1    # "dataPointsMethod":Lorg/junit/runners/model/FrameworkMethod;
    .end local v2    # "throwable":Ljava/lang/Throwable;
    .end local v3    # "annotation":Lorg/junit/experimental/theories/DataPoints;
    .end local v8    # "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    :goto_1
    goto :goto_0

    .line 95
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_4
    return-void
.end method

.method private addSinglePointFields(Lorg/junit/experimental/theories/ParameterSignature;Ljava/util/List;)V
    .locals 4
    .param p1, "sig"    # Lorg/junit/experimental/theories/ParameterSignature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/junit/experimental/theories/ParameterSignature;",
            "Ljava/util/List<",
            "Lorg/junit/experimental/theories/PotentialAssignment;",
            ">;)V"
        }
    .end annotation

    .line 113
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lorg/junit/experimental/theories/PotentialAssignment;>;"
    invoke-virtual {p0, p1}, Lorg/junit/experimental/theories/internal/AllMembersSupplier;->getSingleDataPointFields(Lorg/junit/experimental/theories/ParameterSignature;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Field;

    .line 114
    .local v1, "field":Ljava/lang/reflect/Field;
    invoke-direct {p0, v1}, Lorg/junit/experimental/theories/internal/AllMembersSupplier;->getStaticFieldValue(Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v2

    .line 116
    .local v2, "value":Ljava/lang/Object;
    invoke-virtual {p1, v2}, Lorg/junit/experimental/theories/ParameterSignature;->canAcceptValue(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 117
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lorg/junit/experimental/theories/PotentialAssignment;->forValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/junit/experimental/theories/PotentialAssignment;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    .end local v1    # "field":Ljava/lang/reflect/Field;
    .end local v2    # "value":Ljava/lang/Object;
    :cond_0
    goto :goto_0

    .line 120
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method private addSinglePointMethods(Lorg/junit/experimental/theories/ParameterSignature;Ljava/util/List;)V
    .locals 4
    .param p1, "sig"    # Lorg/junit/experimental/theories/ParameterSignature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/junit/experimental/theories/ParameterSignature;",
            "Ljava/util/List<",
            "Lorg/junit/experimental/theories/PotentialAssignment;",
            ">;)V"
        }
    .end annotation

    .line 98
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lorg/junit/experimental/theories/PotentialAssignment;>;"
    invoke-virtual {p0, p1}, Lorg/junit/experimental/theories/internal/AllMembersSupplier;->getSingleDataPointMethods(Lorg/junit/experimental/theories/ParameterSignature;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/junit/runners/model/FrameworkMethod;

    .line 99
    .local v1, "dataPointMethod":Lorg/junit/runners/model/FrameworkMethod;
    invoke-virtual {v1}, Lorg/junit/runners/model/FrameworkMethod;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/junit/experimental/theories/ParameterSignature;->canAcceptType(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 100
    new-instance v2, Lorg/junit/experimental/theories/internal/AllMembersSupplier$MethodParameterValue;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lorg/junit/experimental/theories/internal/AllMembersSupplier$MethodParameterValue;-><init>(Lorg/junit/runners/model/FrameworkMethod;Lorg/junit/experimental/theories/internal/AllMembersSupplier$1;)V

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .end local v1    # "dataPointMethod":Lorg/junit/runners/model/FrameworkMethod;
    :cond_0
    goto :goto_0

    .line 103
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method private getStaticFieldValue(Ljava/lang/reflect/Field;)Ljava/lang/Object;
    .locals 3
    .param p1, "field"    # Ljava/lang/reflect/Field;

    .line 155
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 159
    :catch_0
    move-exception v0

    .line 160
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "unexpected: getFields returned an inaccessible field"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 156
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v0

    .line 157
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "unexpected: field from getClass doesn\'t exist on object"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static isAssignableToAnyOf([Ljava/lang/Class;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "target"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 166
    .local p0, "typeArray":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    move-object v0, p0

    .local v0, "arr$":[Ljava/lang/Class;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 167
    .local v3, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 168
    const/4 v4, 0x1

    return v4

    .line 166
    .end local v3    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 171
    .end local v0    # "arr$":[Ljava/lang/Class;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method protected getDataPointsFields(Lorg/junit/experimental/theories/ParameterSignature;)Ljava/util/Collection;
    .locals 5
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

    .line 190
    iget-object v0, p0, Lorg/junit/experimental/theories/internal/AllMembersSupplier;->clazz:Lorg/junit/runners/model/TestClass;

    const-class v1, Lorg/junit/experimental/theories/DataPoints;

    invoke-virtual {v0, v1}, Lorg/junit/runners/model/TestClass;->getAnnotatedFields(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 191
    .local v0, "fields":Ljava/util/List;, "Ljava/util/List<Lorg/junit/runners/model/FrameworkField;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 193
    .local v1, "validFields":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/reflect/Field;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/junit/runners/model/FrameworkField;

    .line 194
    .local v3, "frameworkField":Lorg/junit/runners/model/FrameworkField;
    invoke-virtual {v3}, Lorg/junit/runners/model/FrameworkField;->getField()Ljava/lang/reflect/Field;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 197
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "frameworkField":Lorg/junit/runners/model/FrameworkField;
    :cond_0
    return-object v1
.end method

.method protected getDataPointsMethods(Lorg/junit/experimental/theories/ParameterSignature;)Ljava/util/Collection;
    .locals 2
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

    .line 175
    iget-object v0, p0, Lorg/junit/experimental/theories/internal/AllMembersSupplier;->clazz:Lorg/junit/runners/model/TestClass;

    const-class v1, Lorg/junit/experimental/theories/DataPoints;

    invoke-virtual {v0, v1}, Lorg/junit/runners/model/TestClass;->getAnnotatedMethods(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getSingleDataPointFields(Lorg/junit/experimental/theories/ParameterSignature;)Ljava/util/Collection;
    .locals 5
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

    .line 179
    iget-object v0, p0, Lorg/junit/experimental/theories/internal/AllMembersSupplier;->clazz:Lorg/junit/runners/model/TestClass;

    const-class v1, Lorg/junit/experimental/theories/DataPoint;

    invoke-virtual {v0, v1}, Lorg/junit/runners/model/TestClass;->getAnnotatedFields(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 180
    .local v0, "fields":Ljava/util/List;, "Ljava/util/List<Lorg/junit/runners/model/FrameworkField;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 182
    .local v1, "validFields":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/reflect/Field;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/junit/runners/model/FrameworkField;

    .line 183
    .local v3, "frameworkField":Lorg/junit/runners/model/FrameworkField;
    invoke-virtual {v3}, Lorg/junit/runners/model/FrameworkField;->getField()Ljava/lang/reflect/Field;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 186
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "frameworkField":Lorg/junit/runners/model/FrameworkField;
    :cond_0
    return-object v1
.end method

.method protected getSingleDataPointMethods(Lorg/junit/experimental/theories/ParameterSignature;)Ljava/util/Collection;
    .locals 2
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

    .line 201
    iget-object v0, p0, Lorg/junit/experimental/theories/internal/AllMembersSupplier;->clazz:Lorg/junit/runners/model/TestClass;

    const-class v1, Lorg/junit/experimental/theories/DataPoint;

    invoke-virtual {v0, v1}, Lorg/junit/runners/model/TestClass;->getAnnotatedMethods(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getValueSources(Lorg/junit/experimental/theories/ParameterSignature;)Ljava/util/List;
    .locals 1
    .param p1, "sig"    # Lorg/junit/experimental/theories/ParameterSignature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/junit/experimental/theories/ParameterSignature;",
            ")",
            "Ljava/util/List<",
            "Lorg/junit/experimental/theories/PotentialAssignment;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 68
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lorg/junit/experimental/theories/PotentialAssignment;>;"
    invoke-direct {p0, p1, v0}, Lorg/junit/experimental/theories/internal/AllMembersSupplier;->addSinglePointFields(Lorg/junit/experimental/theories/ParameterSignature;Ljava/util/List;)V

    .line 69
    invoke-direct {p0, p1, v0}, Lorg/junit/experimental/theories/internal/AllMembersSupplier;->addMultiPointFields(Lorg/junit/experimental/theories/ParameterSignature;Ljava/util/List;)V

    .line 70
    invoke-direct {p0, p1, v0}, Lorg/junit/experimental/theories/internal/AllMembersSupplier;->addSinglePointMethods(Lorg/junit/experimental/theories/ParameterSignature;Ljava/util/List;)V

    .line 71
    invoke-direct {p0, p1, v0}, Lorg/junit/experimental/theories/internal/AllMembersSupplier;->addMultiPointMethods(Lorg/junit/experimental/theories/ParameterSignature;Ljava/util/List;)V

    .line 73
    return-object v0
.end method
