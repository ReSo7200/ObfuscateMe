.class public Lorg/junit/runners/model/TestClass;
.super Ljava/lang/Object;
.source "TestClass.java"

# interfaces
.implements Lorg/junit/runners/model/Annotatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/junit/runners/model/TestClass$MethodComparator;,
        Lorg/junit/runners/model/TestClass$FieldComparator;
    }
.end annotation


# static fields
.field private static final FIELD_COMPARATOR:Lorg/junit/runners/model/TestClass$FieldComparator;

.field private static final METHOD_COMPARATOR:Lorg/junit/runners/model/TestClass$MethodComparator;


# instance fields
.field private final clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final fieldsForAnnotations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/util/List<",
            "Lorg/junit/runners/model/FrameworkField;",
            ">;>;"
        }
    .end annotation
.end field

.field private final methodsForAnnotations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/util/List<",
            "Lorg/junit/runners/model/FrameworkMethod;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 32
    new-instance v0, Lorg/junit/runners/model/TestClass$FieldComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/junit/runners/model/TestClass$FieldComparator;-><init>(Lorg/junit/runners/model/TestClass$1;)V

    sput-object v0, Lorg/junit/runners/model/TestClass;->FIELD_COMPARATOR:Lorg/junit/runners/model/TestClass$FieldComparator;

    .line 33
    new-instance v0, Lorg/junit/runners/model/TestClass$MethodComparator;

    invoke-direct {v0, v1}, Lorg/junit/runners/model/TestClass$MethodComparator;-><init>(Lorg/junit/runners/model/TestClass$1;)V

    sput-object v0, Lorg/junit/runners/model/TestClass;->METHOD_COMPARATOR:Lorg/junit/runners/model/TestClass$MethodComparator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 45
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lorg/junit/runners/model/TestClass;->clazz:Ljava/lang/Class;

    .line 47
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    goto :goto_0

    .line 48
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Test class can only have one constructor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_1
    :goto_0
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 54
    .local v0, "methodsForAnnotations":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;Ljava/util/List<Lorg/junit/runners/model/FrameworkMethod;>;>;"
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 57
    .local v1, "fieldsForAnnotations":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;Ljava/util/List<Lorg/junit/runners/model/FrameworkField;>;>;"
    invoke-virtual {p0, v0, v1}, Lorg/junit/runners/model/TestClass;->scanAnnotatedMembers(Ljava/util/Map;Ljava/util/Map;)V

    .line 59
    invoke-static {v0}, Lorg/junit/runners/model/TestClass;->makeDeeplyUnmodifiable(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lorg/junit/runners/model/TestClass;->methodsForAnnotations:Ljava/util/Map;

    .line 60
    invoke-static {v1}, Lorg/junit/runners/model/TestClass;->makeDeeplyUnmodifiable(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lorg/junit/runners/model/TestClass;->fieldsForAnnotations:Ljava/util/Map;

    .line 61
    return-void
.end method

.method protected static addToAnnotationLists(Lorg/junit/runners/model/FrameworkMember;Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/junit/runners/model/FrameworkMember<",
            "TT;>;>(TT;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/util/List<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 84
    .local p0, "member":Lorg/junit/runners/model/FrameworkMember;, "TT;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;Ljava/util/List<TT;>;>;"
    invoke-virtual {p0}, Lorg/junit/runners/model/FrameworkMember;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/annotation/Annotation;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 85
    .local v3, "each":Ljava/lang/annotation/Annotation;
    invoke-interface {v3}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v4

    .line 86
    .local v4, "type":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    const/4 v5, 0x1

    invoke-static {p1, v4, v5}, Lorg/junit/runners/model/TestClass;->getAnnotatedMembers(Ljava/util/Map;Ljava/lang/Class;Z)Ljava/util/List;

    move-result-object v5

    .line 87
    .local v5, "members":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-virtual {p0, v5}, Lorg/junit/runners/model/FrameworkMember;->handlePossibleBridgeMethod(Ljava/util/List;)Lorg/junit/runners/model/FrameworkMember;

    move-result-object v6

    .line 88
    .local v6, "memberToAdd":Lorg/junit/runners/model/FrameworkMember;, "TT;"
    if-nez v6, :cond_0

    .line 89
    return-void

    .line 91
    :cond_0
    invoke-static {v4}, Lorg/junit/runners/model/TestClass;->runsTopToBottom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 92
    const/4 v7, 0x0

    invoke-interface {v5, v7, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 94
    :cond_1
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    .end local v3    # "each":Ljava/lang/annotation/Annotation;
    .end local v4    # "type":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    .end local v5    # "members":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .end local v6    # "memberToAdd":Lorg/junit/runners/model/FrameworkMember;, "TT;"
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 97
    .end local v0    # "arr$":[Ljava/lang/annotation/Annotation;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_2
    return-void
.end method

.method private collectValues(Ljava/util/Map;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "*",
            "Ljava/util/List<",
            "TT;>;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 150
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<*Ljava/util/List<TT;>;>;"
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 151
    .local v0, "values":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 152
    .local v2, "additionalValues":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 154
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "additionalValues":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method private static getAnnotatedMembers(Ljava/util/Map;Ljava/lang/Class;Z)Ljava/util/List;
    .locals 2
    .param p2, "fillIfAbsent"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/util/List<",
            "TT;>;>;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;Z)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 159
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;Ljava/util/List<TT;>;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    :cond_0
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 163
    .local v0, "members":Ljava/util/List;, "Ljava/util/List<TT;>;"
    if-nez v0, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method private static getSortedDeclaredFields(Ljava/lang/Class;)[Ljava/lang/reflect/Field;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)[",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .line 77
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 78
    .local v0, "declaredFields":[Ljava/lang/reflect/Field;
    sget-object v1, Lorg/junit/runners/model/TestClass;->FIELD_COMPARATOR:Lorg/junit/runners/model/TestClass$FieldComparator;

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 79
    return-object v0
.end method

.method private static getSuperClasses(Ljava/lang/Class;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 172
    .local p0, "testClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 173
    .local v0, "results":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    move-object v1, p0

    .line 174
    .local v1, "current":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    if-eqz v1, :cond_0

    .line 175
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    .line 178
    :cond_0
    return-object v0
.end method

.method private static makeDeeplyUnmodifiable(Ljava/util/Map;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/junit/runners/model/FrameworkMember<",
            "TT;>;>(",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/util/List<",
            "TT;>;>;)",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    .line 101
    .local p0, "source":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;Ljava/util/List<TT;>;>;"
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 103
    .local v0, "copy":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;Ljava/util/List<TT;>;>;"
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 104
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;Ljava/util/List<TT;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 106
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;Ljava/util/List<TT;>;>;"
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    return-object v1
.end method

.method private static runsTopToBottom(Ljava/lang/Class;)Z
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

    .line 167
    .local p0, "annotation":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    const-class v0, Lorg/junit/Before;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Lorg/junit/BeforeClass;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

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


# virtual methods
.method public collectAnnotatedFieldValues(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;Lorg/junit/runners/model/MemberValueConsumer;)V
    .locals 5
    .param p1, "test"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lorg/junit/runners/model/MemberValueConsumer<",
            "TT;>;)V"
        }
    .end annotation

    .line 247
    .local p2, "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    .local p3, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p4, "consumer":Lorg/junit/runners/model/MemberValueConsumer;, "Lorg/junit/runners/model/MemberValueConsumer<TT;>;"
    invoke-virtual {p0, p2}, Lorg/junit/runners/model/TestClass;->getAnnotatedFields(Ljava/lang/Class;)Ljava/util/List;

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

    check-cast v1, Lorg/junit/runners/model/FrameworkField;

    .line 249
    .local v1, "each":Lorg/junit/runners/model/FrameworkField;
    :try_start_0
    invoke-virtual {v1, p1}, Lorg/junit/runners/model/FrameworkField;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 250
    .local v2, "fieldValue":Ljava/lang/Object;
    invoke-virtual {p3, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 251
    invoke-virtual {p3, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p4, v1, v3}, Lorg/junit/runners/model/MemberValueConsumer;->accept(Lorg/junit/runners/model/FrameworkMember;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    .end local v2    # "fieldValue":Ljava/lang/Object;
    :cond_0
    nop

    .line 254
    .end local v1    # "each":Lorg/junit/runners/model/FrameworkField;
    goto :goto_0

    .line 253
    .restart local v1    # "each":Lorg/junit/runners/model/FrameworkField;
    :catch_0
    move-exception v2

    .line 254
    .local v2, "e":Ljava/lang/IllegalAccessException;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "How did getFields return a field we couldn\'t access?"

    invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 258
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "each":Lorg/junit/runners/model/FrameworkField;
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :cond_1
    return-void
.end method

.method public collectAnnotatedMethodValues(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;Lorg/junit/runners/model/MemberValueConsumer;)V
    .locals 6
    .param p1, "test"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lorg/junit/runners/model/MemberValueConsumer<",
            "TT;>;)V"
        }
    .end annotation

    .line 281
    .local p2, "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    .local p3, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p4, "consumer":Lorg/junit/runners/model/MemberValueConsumer;, "Lorg/junit/runners/model/MemberValueConsumer<TT;>;"
    invoke-virtual {p0, p2}, Lorg/junit/runners/model/TestClass;->getAnnotatedMethods(Ljava/lang/Class;)Ljava/util/List;

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

    check-cast v1, Lorg/junit/runners/model/FrameworkMethod;

    .line 291
    .local v1, "each":Lorg/junit/runners/model/FrameworkMethod;
    :try_start_0
    invoke-virtual {v1}, Lorg/junit/runners/model/FrameworkMethod;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 292
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Lorg/junit/runners/model/FrameworkMethod;->invokeExplosively(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 293
    .local v2, "fieldValue":Ljava/lang/Object;
    invoke-virtual {p3, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p4, v1, v3}, Lorg/junit/runners/model/MemberValueConsumer;->accept(Lorg/junit/runners/model/FrameworkMember;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 298
    .end local v2    # "fieldValue":Ljava/lang/Object;
    :cond_0
    nop

    .line 296
    .end local v1    # "each":Lorg/junit/runners/model/FrameworkMethod;
    goto :goto_0

    .line 295
    .restart local v1    # "each":Lorg/junit/runners/model/FrameworkMethod;
    :catchall_0
    move-exception v2

    .line 296
    .local v2, "e":Ljava/lang/Throwable;
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lorg/junit/runners/model/FrameworkMethod;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 300
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "each":Lorg/junit/runners/model/FrameworkMethod;
    .end local v2    # "e":Ljava/lang/Throwable;
    :cond_1
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 317
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 318
    return v0

    .line 320
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 321
    return v1

    .line 323
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 324
    return v1

    .line 326
    :cond_2
    move-object v2, p1

    check-cast v2, Lorg/junit/runners/model/TestClass;

    .line 327
    .local v2, "other":Lorg/junit/runners/model/TestClass;
    iget-object v3, p0, Lorg/junit/runners/model/TestClass;->clazz:Ljava/lang/Class;

    iget-object v4, v2, Lorg/junit/runners/model/TestClass;->clazz:Ljava/lang/Class;

    if-ne v3, v4, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    return v0
.end method

.method public getAnnotatedFieldValues(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;
    .locals 2
    .param p1, "test"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 228
    .local p2, "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    .local p3, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 229
    .local v0, "results":Ljava/util/List;, "Ljava/util/List<TT;>;"
    new-instance v1, Lorg/junit/runners/model/TestClass$1;

    invoke-direct {v1, p0, v0}, Lorg/junit/runners/model/TestClass$1;-><init>(Lorg/junit/runners/model/TestClass;Ljava/util/List;)V

    invoke-virtual {p0, p1, p2, p3, v1}, Lorg/junit/runners/model/TestClass;->collectAnnotatedFieldValues(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;Lorg/junit/runners/model/MemberValueConsumer;)V

    .line 235
    return-object v0
.end method

.method public getAnnotatedFields()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/junit/runners/model/FrameworkField;",
            ">;"
        }
    .end annotation

    .line 137
    iget-object v0, p0, Lorg/junit/runners/model/TestClass;->fieldsForAnnotations:Ljava/util/Map;

    invoke-direct {p0, v0}, Lorg/junit/runners/model/TestClass;->collectValues(Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAnnotatedFields(Ljava/lang/Class;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/junit/runners/model/FrameworkField;",
            ">;"
        }
    .end annotation

    .line 146
    .local p1, "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    iget-object v0, p0, Lorg/junit/runners/model/TestClass;->fieldsForAnnotations:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lorg/junit/runners/model/TestClass;->getAnnotatedMembers(Ljava/util/Map;Ljava/lang/Class;Z)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAnnotatedMethodValues(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;
    .locals 2
    .param p1, "test"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 262
    .local p2, "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    .local p3, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 263
    .local v0, "results":Ljava/util/List;, "Ljava/util/List<TT;>;"
    new-instance v1, Lorg/junit/runners/model/TestClass$2;

    invoke-direct {v1, p0, v0}, Lorg/junit/runners/model/TestClass$2;-><init>(Lorg/junit/runners/model/TestClass;Ljava/util/List;)V

    invoke-virtual {p0, p1, p2, p3, v1}, Lorg/junit/runners/model/TestClass;->collectAnnotatedMethodValues(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;Lorg/junit/runners/model/MemberValueConsumer;)V

    .line 269
    return-object v0
.end method

.method public getAnnotatedMethods()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/junit/runners/model/FrameworkMethod;",
            ">;"
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lorg/junit/runners/model/TestClass;->methodsForAnnotations:Ljava/util/Map;

    invoke-direct {p0, v0}, Lorg/junit/runners/model/TestClass;->collectValues(Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    .line 117
    .local v0, "methods":Ljava/util/List;, "Ljava/util/List<Lorg/junit/runners/model/FrameworkMethod;>;"
    sget-object v1, Lorg/junit/runners/model/TestClass;->METHOD_COMPARATOR:Lorg/junit/runners/model/TestClass$MethodComparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 118
    return-object v0
.end method

.method public getAnnotatedMethods(Ljava/lang/Class;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/junit/runners/model/FrameworkMethod;",
            ">;"
        }
    .end annotation

    .line 127
    .local p1, "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    iget-object v0, p0, Lorg/junit/runners/model/TestClass;->methodsForAnnotations:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lorg/junit/runners/model/TestClass;->getAnnotatedMembers(Ljava/util/Map;Ljava/lang/Class;Z)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 220
    .local p1, "annotationType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lorg/junit/runners/model/TestClass;->clazz:Ljava/lang/Class;

    if-nez v0, :cond_0

    .line 221
    const/4 v0, 0x0

    return-object v0

    .line 223
    :cond_0
    iget-object v0, p0, Lorg/junit/runners/model/TestClass;->clazz:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public getAnnotations()[Ljava/lang/annotation/Annotation;
    .locals 1

    .line 213
    iget-object v0, p0, Lorg/junit/runners/model/TestClass;->clazz:Ljava/lang/Class;

    if-nez v0, :cond_0

    .line 214
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/annotation/Annotation;

    return-object v0

    .line 216
    :cond_0
    iget-object v0, p0, Lorg/junit/runners/model/TestClass;->clazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public getJavaClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 185
    iget-object v0, p0, Lorg/junit/runners/model/TestClass;->clazz:Ljava/lang/Class;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 192
    iget-object v0, p0, Lorg/junit/runners/model/TestClass;->clazz:Ljava/lang/Class;

    if-nez v0, :cond_0

    .line 193
    const-string v0, "null"

    return-object v0

    .line 195
    :cond_0
    iget-object v0, p0, Lorg/junit/runners/model/TestClass;->clazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOnlyConstructor()Ljava/lang/reflect/Constructor;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation

    .line 204
    iget-object v0, p0, Lorg/junit/runners/model/TestClass;->clazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 205
    .local v0, "constructors":[Ljava/lang/reflect/Constructor;, "[Ljava/lang/reflect/Constructor<*>;"
    array-length v1, v0

    int-to-long v1, v1

    const-wide/16 v3, 0x1

    invoke-static {v3, v4, v1, v2}, Lorg/junit/Assert;->assertEquals(JJ)V

    .line 206
    const/4 v1, 0x0

    aget-object v1, v0, v1

    return-object v1
.end method

.method public hashCode()I
    .locals 1

    .line 312
    iget-object v0, p0, Lorg/junit/runners/model/TestClass;->clazz:Ljava/lang/Class;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/junit/runners/model/TestClass;->clazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    return v0
.end method

.method public isANonStaticInnerClass()Z
    .locals 1

    .line 307
    iget-object v0, p0, Lorg/junit/runners/model/TestClass;->clazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isMemberClass()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/junit/runners/model/TestClass;->clazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPublic()Z
    .locals 1

    .line 303
    iget-object v0, p0, Lorg/junit/runners/model/TestClass;->clazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    return v0
.end method

.method protected scanAnnotatedMembers(Ljava/util/Map;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/util/List<",
            "Lorg/junit/runners/model/FrameworkMethod;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/util/List<",
            "Lorg/junit/runners/model/FrameworkField;",
            ">;>;)V"
        }
    .end annotation

    .line 64
    .local p1, "methodsForAnnotations":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;Ljava/util/List<Lorg/junit/runners/model/FrameworkMethod;>;>;"
    .local p2, "fieldsForAnnotations":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;Ljava/util/List<Lorg/junit/runners/model/FrameworkField;>;>;"
    iget-object v0, p0, Lorg/junit/runners/model/TestClass;->clazz:Ljava/lang/Class;

    invoke-static {v0}, Lorg/junit/runners/model/TestClass;->getSuperClasses(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 65
    .local v1, "eachClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v1}, Lorg/junit/internal/MethodSorter;->getDeclaredMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;

    move-result-object v2

    .local v2, "arr$":[Ljava/lang/reflect/Method;
    array-length v3, v2

    .local v3, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    .line 66
    .local v5, "eachMethod":Ljava/lang/reflect/Method;
    new-instance v6, Lorg/junit/runners/model/FrameworkMethod;

    invoke-direct {v6, v5}, Lorg/junit/runners/model/FrameworkMethod;-><init>(Ljava/lang/reflect/Method;)V

    invoke-static {v6, p1}, Lorg/junit/runners/model/TestClass;->addToAnnotationLists(Lorg/junit/runners/model/FrameworkMember;Ljava/util/Map;)V

    .line 65
    .end local v5    # "eachMethod":Ljava/lang/reflect/Method;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 70
    .end local v2    # "arr$":[Ljava/lang/reflect/Method;
    .end local v3    # "len$":I
    .end local v4    # "i$":I
    :cond_0
    invoke-static {v1}, Lorg/junit/runners/model/TestClass;->getSortedDeclaredFields(Ljava/lang/Class;)[Ljava/lang/reflect/Field;

    move-result-object v2

    .local v2, "arr$":[Ljava/lang/reflect/Field;
    array-length v3, v2

    .restart local v3    # "len$":I
    const/4 v4, 0x0

    .restart local v4    # "i$":I
    :goto_2
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 71
    .local v5, "eachField":Ljava/lang/reflect/Field;
    new-instance v6, Lorg/junit/runners/model/FrameworkField;

    invoke-direct {v6, v5}, Lorg/junit/runners/model/FrameworkField;-><init>(Ljava/lang/reflect/Field;)V

    invoke-static {v6, p2}, Lorg/junit/runners/model/TestClass;->addToAnnotationLists(Lorg/junit/runners/model/FrameworkMember;Ljava/util/Map;)V

    .line 70
    .end local v5    # "eachField":Ljava/lang/reflect/Field;
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .end local v1    # "eachClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "arr$":[Ljava/lang/reflect/Field;
    .end local v3    # "len$":I
    .end local v4    # "i$":I
    :cond_1
    goto :goto_0

    .line 74
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_2
    return-void
.end method
