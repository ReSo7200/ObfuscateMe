.class public final Lorg/junit/experimental/categories/CategoryValidator;
.super Lorg/junit/validator/AnnotationValidator;
.source "CategoryValidator.java"


# static fields
.field private static final INCOMPATIBLE_ANNOTATIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 30
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Lorg/junit/BeforeClass;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Lorg/junit/AfterClass;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-class v3, Lorg/junit/Before;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-class v3, Lorg/junit/After;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lorg/junit/experimental/categories/CategoryValidator;->INCOMPATIBLE_ANNOTATIONS:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lorg/junit/validator/AnnotationValidator;-><init>()V

    return-void
.end method

.method private addErrorMessage(Ljava/util/List;Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Exception;",
            ">;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 58
    .local p1, "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Exception;>;"
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "@%s can not be combined with @Category"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "message":Ljava/lang/String;
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    return-void
.end method


# virtual methods
.method public validateAnnotatedMethod(Lorg/junit/runners/model/FrameworkMethod;)Ljava/util/List;
    .locals 9
    .param p1, "method"    # Lorg/junit/runners/model/FrameworkMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/junit/runners/model/FrameworkMethod;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Exception;",
            ">;"
        }
    .end annotation

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 46
    .local v0, "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Exception;>;"
    invoke-virtual {p1}, Lorg/junit/runners/model/FrameworkMethod;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v1

    .line 47
    .local v1, "annotations":[Ljava/lang/annotation/Annotation;
    move-object v2, v1

    .local v2, "arr$":[Ljava/lang/annotation/Annotation;
    array-length v3, v2

    .local v3, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    .line 48
    .local v5, "annotation":Ljava/lang/annotation/Annotation;
    sget-object v6, Lorg/junit/experimental/categories/CategoryValidator;->INCOMPATIBLE_ANNOTATIONS:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Class;

    .line 49
    .local v7, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-interface {v5}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 50
    invoke-direct {p0, v0, v7}, Lorg/junit/experimental/categories/CategoryValidator;->addErrorMessage(Ljava/util/List;Ljava/lang/Class;)V

    .end local v7    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    goto :goto_1

    .line 47
    .end local v5    # "annotation":Ljava/lang/annotation/Annotation;
    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 54
    .end local v2    # "arr$":[Ljava/lang/annotation/Annotation;
    .end local v3    # "len$":I
    .end local v4    # "i$":I
    :cond_2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method
