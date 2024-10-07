.class abstract Lorg/junit/validator/AnnotationsValidator$AnnotatableValidator;
.super Ljava/lang/Object;
.source "AnnotationsValidator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/junit/validator/AnnotationsValidator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "AnnotatableValidator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/junit/runners/model/Annotatable;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final ANNOTATION_VALIDATOR_FACTORY:Lorg/junit/validator/AnnotationValidatorFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    new-instance v0, Lorg/junit/validator/AnnotationValidatorFactory;

    invoke-direct {v0}, Lorg/junit/validator/AnnotationValidatorFactory;-><init>()V

    sput-object v0, Lorg/junit/validator/AnnotationsValidator$AnnotatableValidator;->ANNOTATION_VALIDATOR_FACTORY:Lorg/junit/validator/AnnotationValidatorFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 43
    .local p0, "this":Lorg/junit/validator/AnnotationsValidator$AnnotatableValidator;, "Lorg/junit/validator/AnnotationsValidator$AnnotatableValidator<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/junit/validator/AnnotationsValidator$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/junit/validator/AnnotationsValidator$1;

    .line 43
    .local p0, "this":Lorg/junit/validator/AnnotationsValidator$AnnotatableValidator;, "Lorg/junit/validator/AnnotationsValidator$AnnotatableValidator<TT;>;"
    invoke-direct {p0}, Lorg/junit/validator/AnnotationsValidator$AnnotatableValidator;-><init>()V

    return-void
.end method

.method private validateAnnotatable(Lorg/junit/runners/model/Annotatable;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/List<",
            "Ljava/lang/Exception;",
            ">;"
        }
    .end annotation

    .line 61
    .local p0, "this":Lorg/junit/validator/AnnotationsValidator$AnnotatableValidator;, "Lorg/junit/validator/AnnotationsValidator$AnnotatableValidator<TT;>;"
    .local p1, "annotatable":Lorg/junit/runners/model/Annotatable;, "TT;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 62
    .local v0, "validationErrors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Exception;>;"
    invoke-interface {p1}, Lorg/junit/runners/model/Annotatable;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v1

    .local v1, "arr$":[Ljava/lang/annotation/Annotation;
    array-length v2, v1

    .local v2, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 63
    .local v4, "annotation":Ljava/lang/annotation/Annotation;
    invoke-interface {v4}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v5

    .line 65
    .local v5, "annotationType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    const-class v6, Lorg/junit/validator/ValidateWith;

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    check-cast v6, Lorg/junit/validator/ValidateWith;

    .line 67
    .local v6, "validateWith":Lorg/junit/validator/ValidateWith;
    if-eqz v6, :cond_0

    .line 68
    sget-object v7, Lorg/junit/validator/AnnotationsValidator$AnnotatableValidator;->ANNOTATION_VALIDATOR_FACTORY:Lorg/junit/validator/AnnotationValidatorFactory;

    invoke-virtual {v7, v6}, Lorg/junit/validator/AnnotationValidatorFactory;->createAnnotationValidator(Lorg/junit/validator/ValidateWith;)Lorg/junit/validator/AnnotationValidator;

    move-result-object v7

    .line 70
    .local v7, "annotationValidator":Lorg/junit/validator/AnnotationValidator;
    invoke-virtual {p0, v7, p1}, Lorg/junit/validator/AnnotationsValidator$AnnotatableValidator;->validateAnnotatable(Lorg/junit/validator/AnnotationValidator;Lorg/junit/runners/model/Annotatable;)Ljava/util/List;

    move-result-object v8

    .line 72
    .local v8, "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Exception;>;"
    invoke-interface {v0, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 62
    .end local v4    # "annotation":Ljava/lang/annotation/Annotation;
    .end local v5    # "annotationType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    .end local v6    # "validateWith":Lorg/junit/validator/ValidateWith;
    .end local v7    # "annotationValidator":Lorg/junit/validator/AnnotationValidator;
    .end local v8    # "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Exception;>;"
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 75
    .end local v1    # "arr$":[Ljava/lang/annotation/Annotation;
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_1
    return-object v0
.end method


# virtual methods
.method abstract getAnnotatablesForTestClass(Lorg/junit/runners/model/TestClass;)Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/junit/runners/model/TestClass;",
            ")",
            "Ljava/lang/Iterable<",
            "TT;>;"
        }
    .end annotation
.end method

.method abstract validateAnnotatable(Lorg/junit/validator/AnnotationValidator;Lorg/junit/runners/model/Annotatable;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/junit/validator/AnnotationValidator;",
            "TT;)",
            "Ljava/util/List<",
            "Ljava/lang/Exception;",
            ">;"
        }
    .end annotation
.end method

.method public validateTestClass(Lorg/junit/runners/model/TestClass;)Ljava/util/List;
    .locals 4
    .param p1, "testClass"    # Lorg/junit/runners/model/TestClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/junit/runners/model/TestClass;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Exception;",
            ">;"
        }
    .end annotation

    .line 52
    .local p0, "this":Lorg/junit/validator/AnnotationsValidator$AnnotatableValidator;, "Lorg/junit/validator/AnnotationsValidator$AnnotatableValidator<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .local v0, "validationErrors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Exception;>;"
    invoke-virtual {p0, p1}, Lorg/junit/validator/AnnotationsValidator$AnnotatableValidator;->getAnnotatablesForTestClass(Lorg/junit/runners/model/TestClass;)Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/junit/runners/model/Annotatable;

    .line 54
    .local v2, "annotatable":Lorg/junit/runners/model/Annotatable;, "TT;"
    invoke-direct {p0, v2}, Lorg/junit/validator/AnnotationsValidator$AnnotatableValidator;->validateAnnotatable(Lorg/junit/runners/model/Annotatable;)Ljava/util/List;

    move-result-object v3

    .line 55
    .local v3, "additionalErrors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Exception;>;"
    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 56
    .end local v2    # "annotatable":Lorg/junit/runners/model/Annotatable;, "TT;"
    .end local v3    # "additionalErrors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Exception;>;"
    goto :goto_0

    .line 57
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    return-object v0
.end method
