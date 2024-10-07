.class Lorg/junit/runners/model/NoGenericTypeParametersValidator;
.super Ljava/lang/Object;
.source "NoGenericTypeParametersValidator.java"


# instance fields
.field private final method:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Ljava/lang/reflect/Method;)V
    .locals 0
    .param p1, "method"    # Ljava/lang/reflect/Method;

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lorg/junit/runners/model/NoGenericTypeParametersValidator;->method:Ljava/lang/reflect/Method;

    .line 16
    return-void
.end method

.method private validateNoTypeParameterOnGenericArrayType(Ljava/lang/reflect/GenericArrayType;Ljava/util/List;)V
    .locals 1
    .param p1, "arrayType"    # Ljava/lang/reflect/GenericArrayType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/GenericArrayType;",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 56
    .local p2, "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    invoke-interface {p1}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/junit/runners/model/NoGenericTypeParametersValidator;->validateNoTypeParameterOnType(Ljava/lang/reflect/Type;Ljava/util/List;)V

    .line 57
    return-void
.end method

.method private validateNoTypeParameterOnParameterizedType(Ljava/lang/reflect/ParameterizedType;Ljava/util/List;)V
    .locals 4
    .param p1, "parameterized"    # Ljava/lang/reflect/ParameterizedType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/ParameterizedType;",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 39
    .local p2, "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/reflect/Type;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 40
    .local v3, "each":Ljava/lang/reflect/Type;
    invoke-direct {p0, v3, p2}, Lorg/junit/runners/model/NoGenericTypeParametersValidator;->validateNoTypeParameterOnType(Ljava/lang/reflect/Type;Ljava/util/List;)V

    .line 39
    .end local v3    # "each":Ljava/lang/reflect/Type;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 42
    .end local v0    # "arr$":[Ljava/lang/reflect/Type;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_0
    return-void
.end method

.method private validateNoTypeParameterOnType(Ljava/lang/reflect/Type;Ljava/util/List;)V
    .locals 3
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 25
    .local p2, "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    instance-of v0, p1, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_0

    .line 26
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Method "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/junit/runners/model/NoGenericTypeParametersValidator;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "() contains unresolved type variable "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 28
    :cond_0
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_1

    .line 29
    move-object v0, p1

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-direct {p0, v0, p2}, Lorg/junit/runners/model/NoGenericTypeParametersValidator;->validateNoTypeParameterOnParameterizedType(Ljava/lang/reflect/ParameterizedType;Ljava/util/List;)V

    goto :goto_0

    .line 30
    :cond_1
    instance-of v0, p1, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_2

    .line 31
    move-object v0, p1

    check-cast v0, Ljava/lang/reflect/WildcardType;

    invoke-direct {p0, v0, p2}, Lorg/junit/runners/model/NoGenericTypeParametersValidator;->validateNoTypeParameterOnWildcardType(Ljava/lang/reflect/WildcardType;Ljava/util/List;)V

    goto :goto_0

    .line 32
    :cond_2
    instance-of v0, p1, Ljava/lang/reflect/GenericArrayType;

    if-eqz v0, :cond_3

    .line 33
    move-object v0, p1

    check-cast v0, Ljava/lang/reflect/GenericArrayType;

    invoke-direct {p0, v0, p2}, Lorg/junit/runners/model/NoGenericTypeParametersValidator;->validateNoTypeParameterOnGenericArrayType(Ljava/lang/reflect/GenericArrayType;Ljava/util/List;)V

    .line 35
    :cond_3
    :goto_0
    return-void
.end method

.method private validateNoTypeParameterOnWildcardType(Ljava/lang/reflect/WildcardType;Ljava/util/List;)V
    .locals 4
    .param p1, "wildcard"    # Ljava/lang/reflect/WildcardType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/WildcardType;",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 46
    .local p2, "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    invoke-interface {p1}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/reflect/Type;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 47
    .local v3, "each":Ljava/lang/reflect/Type;
    invoke-direct {p0, v3, p2}, Lorg/junit/runners/model/NoGenericTypeParametersValidator;->validateNoTypeParameterOnType(Ljava/lang/reflect/Type;Ljava/util/List;)V

    .line 46
    .end local v3    # "each":Ljava/lang/reflect/Type;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 49
    .end local v0    # "arr$":[Ljava/lang/reflect/Type;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_0
    invoke-interface {p1}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    .restart local v0    # "arr$":[Ljava/lang/reflect/Type;
    array-length v1, v0

    .restart local v1    # "len$":I
    const/4 v2, 0x0

    .restart local v2    # "i$":I
    :goto_1
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 50
    .restart local v3    # "each":Ljava/lang/reflect/Type;
    invoke-direct {p0, v3, p2}, Lorg/junit/runners/model/NoGenericTypeParametersValidator;->validateNoTypeParameterOnType(Ljava/lang/reflect/Type;Ljava/util/List;)V

    .line 49
    .end local v3    # "each":Ljava/lang/reflect/Type;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 52
    .end local v0    # "arr$":[Ljava/lang/reflect/Type;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_1
    return-void
.end method


# virtual methods
.method validate(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 19
    .local p1, "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    iget-object v0, p0, Lorg/junit/runners/model/NoGenericTypeParametersValidator;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/reflect/Type;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 20
    .local v3, "each":Ljava/lang/reflect/Type;
    invoke-direct {p0, v3, p1}, Lorg/junit/runners/model/NoGenericTypeParametersValidator;->validateNoTypeParameterOnType(Ljava/lang/reflect/Type;Ljava/util/List;)V

    .line 19
    .end local v3    # "each":Ljava/lang/reflect/Type;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 22
    .end local v0    # "arr$":[Ljava/lang/reflect/Type;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_0
    return-void
.end method
