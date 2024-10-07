.class public Lorg/junit/experimental/theories/ParameterSignature;
.super Ljava/lang/Object;
.source "ParameterSignature.java"


# static fields
.field private static final CONVERTABLE_TYPES_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private final annotations:[Ljava/lang/annotation/Annotation;

.field private final type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    invoke-static {}, Lorg/junit/experimental/theories/ParameterSignature;->buildConvertableTypesMap()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/junit/experimental/theories/ParameterSignature;->CONVERTABLE_TYPES_MAP:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Class;[Ljava/lang/annotation/Annotation;)V
    .locals 0
    .param p2, "annotations"    # [Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/annotation/Annotation;",
            ")V"
        }
    .end annotation

    .line 61
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lorg/junit/experimental/theories/ParameterSignature;->type:Ljava/lang/Class;

    .line 63
    iput-object p2, p0, Lorg/junit/experimental/theories/ParameterSignature;->annotations:[Ljava/lang/annotation/Annotation;

    .line 64
    return-void
.end method

.method private static buildConvertableTypesMap()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 20
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;Ljava/lang/Class<*>;>;"
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Boolean;

    invoke-static {v0, v1, v2}, Lorg/junit/experimental/theories/ParameterSignature;->putSymmetrically(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 21
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Byte;

    invoke-static {v0, v1, v2}, Lorg/junit/experimental/theories/ParameterSignature;->putSymmetrically(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 22
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Short;

    invoke-static {v0, v1, v2}, Lorg/junit/experimental/theories/ParameterSignature;->putSymmetrically(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 23
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Character;

    invoke-static {v0, v1, v2}, Lorg/junit/experimental/theories/ParameterSignature;->putSymmetrically(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 24
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Integer;

    invoke-static {v0, v1, v2}, Lorg/junit/experimental/theories/ParameterSignature;->putSymmetrically(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 25
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Long;

    invoke-static {v0, v1, v2}, Lorg/junit/experimental/theories/ParameterSignature;->putSymmetrically(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 26
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Float;

    invoke-static {v0, v1, v2}, Lorg/junit/experimental/theories/ParameterSignature;->putSymmetrically(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 27
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Double;

    invoke-static {v0, v1, v2}, Lorg/junit/experimental/theories/ParameterSignature;->putSymmetrically(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 29
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    return-object v1
.end method

.method private findDeepAnnotation([Ljava/lang/annotation/Annotation;Ljava/lang/Class;I)Ljava/lang/annotation/Annotation;
    .locals 7
    .param p1, "annotations"    # [Ljava/lang/annotation/Annotation;
    .param p3, "depth"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">([",
            "Ljava/lang/annotation/Annotation;",
            "Ljava/lang/Class<",
            "TT;>;I)TT;"
        }
    .end annotation

    .line 109
    .local p2, "annotationType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    if-nez p3, :cond_0

    .line 110
    return-object v0

    .line 112
    :cond_0
    move-object v1, p1

    .local v1, "arr$":[Ljava/lang/annotation/Annotation;
    array-length v2, v1

    .local v2, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    .line 113
    .local v4, "each":Ljava/lang/annotation/Annotation;
    invoke-virtual {p2, v4}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 114
    invoke-virtual {p2, v4}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/annotation/Annotation;

    return-object v0

    .line 116
    :cond_1
    invoke-interface {v4}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v5

    add-int/lit8 v6, p3, -0x1

    invoke-direct {p0, v5, p2, v6}, Lorg/junit/experimental/theories/ParameterSignature;->findDeepAnnotation([Ljava/lang/annotation/Annotation;Ljava/lang/Class;I)Ljava/lang/annotation/Annotation;

    move-result-object v5

    .line 118
    .local v5, "candidate":Ljava/lang/annotation/Annotation;
    if-eqz v5, :cond_2

    .line 119
    invoke-virtual {p2, v5}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/annotation/Annotation;

    return-object v0

    .line 112
    .end local v4    # "each":Ljava/lang/annotation/Annotation;
    .end local v5    # "candidate":Ljava/lang/annotation/Annotation;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 123
    .end local v1    # "arr$":[Ljava/lang/annotation/Annotation;
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_3
    return-object v0
.end method

.method private isAssignableViaTypeConversion(Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 82
    .local p1, "targetType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "candidate":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lorg/junit/experimental/theories/ParameterSignature;->CONVERTABLE_TYPES_MAP:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    sget-object v0, Lorg/junit/experimental/theories/ParameterSignature;->CONVERTABLE_TYPES_MAP:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 84
    .local v0, "wrapperClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    return v1

    .line 86
    .end local v0    # "wrapperClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static putSymmetrically(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TT;TT;>;TT;TT;)V"
        }
    .end annotation

    .line 33
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<TT;TT;>;"
    .local p1, "a":Ljava/lang/Object;, "TT;"
    .local p2, "b":Ljava/lang/Object;, "TT;"
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    return-void
.end method

.method public static signatures(Ljava/lang/reflect/Method;)Ljava/util/ArrayList;
    .locals 2
    .param p0, "method"    # Ljava/lang/reflect/Method;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            ")",
            "Ljava/util/ArrayList<",
            "Lorg/junit/experimental/theories/ParameterSignature;",
            ">;"
        }
    .end annotation

    .line 38
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/junit/experimental/theories/ParameterSignature;->signatures([Ljava/lang/Class;[[Ljava/lang/annotation/Annotation;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private static signatures([Ljava/lang/Class;[[Ljava/lang/annotation/Annotation;)Ljava/util/ArrayList;
    .locals 5
    .param p1, "parameterAnnotations"    # [[Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;[[",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Ljava/util/ArrayList<",
            "Lorg/junit/experimental/theories/ParameterSignature;",
            ">;"
        }
    .end annotation

    .line 49
    .local p0, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .local v0, "sigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/junit/experimental/theories/ParameterSignature;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 51
    new-instance v2, Lorg/junit/experimental/theories/ParameterSignature;

    aget-object v3, p0, v1

    aget-object v4, p1, v1

    invoke-direct {v2, v3, v4}, Lorg/junit/experimental/theories/ParameterSignature;-><init>(Ljava/lang/Class;[Ljava/lang/annotation/Annotation;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 54
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public static signatures(Ljava/lang/reflect/Constructor;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor<",
            "*>;)",
            "Ljava/util/List<",
            "Lorg/junit/experimental/theories/ParameterSignature;",
            ">;"
        }
    .end annotation

    .line 43
    .local p0, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/junit/experimental/theories/ParameterSignature;->signatures([Ljava/lang/Class;[[Ljava/lang/annotation/Annotation;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public canAcceptType(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 71
    .local p1, "candidate":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lorg/junit/experimental/theories/ParameterSignature;->type:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/junit/experimental/theories/ParameterSignature;->type:Ljava/lang/Class;

    invoke-direct {p0, v0, p1}, Lorg/junit/experimental/theories/ParameterSignature;->isAssignableViaTypeConversion(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public canAcceptValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "candidate"    # Ljava/lang/Object;

    .line 67
    if-nez p1, :cond_1

    iget-object v0, p0, Lorg/junit/experimental/theories/ParameterSignature;->type:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/junit/experimental/theories/ParameterSignature;->canAcceptType(Ljava/lang/Class;)Z

    move-result v0

    :goto_0
    return v0
.end method

.method public canPotentiallyAcceptType(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 76
    .local p1, "candidate":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lorg/junit/experimental/theories/ParameterSignature;->type:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/junit/experimental/theories/ParameterSignature;->type:Ljava/lang/Class;

    invoke-direct {p0, p1, v0}, Lorg/junit/experimental/theories/ParameterSignature;->isAssignableViaTypeConversion(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lorg/junit/experimental/theories/ParameterSignature;->canAcceptType(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public findDeepAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 103
    .local p1, "annotationType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lorg/junit/experimental/theories/ParameterSignature;->annotations:[Ljava/lang/annotation/Annotation;

    .line 104
    .local v0, "annotations2":[Ljava/lang/annotation/Annotation;
    const/4 v1, 0x3

    invoke-direct {p0, v0, p1, v1}, Lorg/junit/experimental/theories/ParameterSignature;->findDeepAnnotation([Ljava/lang/annotation/Annotation;Ljava/lang/Class;I)Ljava/lang/annotation/Annotation;

    move-result-object v1

    return-object v1
.end method

.method public getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 127
    .local p1, "annotationType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Lorg/junit/experimental/theories/ParameterSignature;->getAnnotations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/annotation/Annotation;

    .line 128
    .local v1, "each":Ljava/lang/annotation/Annotation;
    invoke-virtual {p1, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 129
    invoke-virtual {p1, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/annotation/Annotation;

    return-object v2

    .end local v1    # "each":Ljava/lang/annotation/Annotation;
    :cond_0
    goto :goto_0

    .line 132
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAnnotations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lorg/junit/experimental/theories/ParameterSignature;->annotations:[Ljava/lang/annotation/Annotation;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lorg/junit/experimental/theories/ParameterSignature;->type:Ljava/lang/Class;

    return-object v0
.end method

.method public hasAnnotation(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)Z"
        }
    .end annotation

    .line 99
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    invoke-virtual {p0, p1}, Lorg/junit/experimental/theories/ParameterSignature;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
