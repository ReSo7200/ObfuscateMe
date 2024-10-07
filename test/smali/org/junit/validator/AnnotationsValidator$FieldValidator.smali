.class Lorg/junit/validator/AnnotationsValidator$FieldValidator;
.super Lorg/junit/validator/AnnotationsValidator$AnnotatableValidator;
.source "AnnotationsValidator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/junit/validator/AnnotationsValidator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FieldValidator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/junit/validator/AnnotationsValidator$AnnotatableValidator<",
        "Lorg/junit/runners/model/FrameworkField;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 107
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/junit/validator/AnnotationsValidator$AnnotatableValidator;-><init>(Lorg/junit/validator/AnnotationsValidator$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/junit/validator/AnnotationsValidator$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/junit/validator/AnnotationsValidator$1;

    .line 107
    invoke-direct {p0}, Lorg/junit/validator/AnnotationsValidator$FieldValidator;-><init>()V

    return-void
.end method


# virtual methods
.method getAnnotatablesForTestClass(Lorg/junit/runners/model/TestClass;)Ljava/lang/Iterable;
    .locals 1
    .param p1, "testClass"    # Lorg/junit/runners/model/TestClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/junit/runners/model/TestClass;",
            ")",
            "Ljava/lang/Iterable<",
            "Lorg/junit/runners/model/FrameworkField;",
            ">;"
        }
    .end annotation

    .line 111
    invoke-virtual {p1}, Lorg/junit/runners/model/TestClass;->getAnnotatedFields()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic validateAnnotatable(Lorg/junit/validator/AnnotationValidator;Lorg/junit/runners/model/Annotatable;)Ljava/util/List;
    .locals 1
    .param p1, "x0"    # Lorg/junit/validator/AnnotationValidator;
    .param p2, "x1"    # Lorg/junit/runners/model/Annotatable;

    .line 107
    move-object v0, p2

    check-cast v0, Lorg/junit/runners/model/FrameworkField;

    invoke-virtual {p0, p1, v0}, Lorg/junit/validator/AnnotationsValidator$FieldValidator;->validateAnnotatable(Lorg/junit/validator/AnnotationValidator;Lorg/junit/runners/model/FrameworkField;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method validateAnnotatable(Lorg/junit/validator/AnnotationValidator;Lorg/junit/runners/model/FrameworkField;)Ljava/util/List;
    .locals 1
    .param p1, "validator"    # Lorg/junit/validator/AnnotationValidator;
    .param p2, "field"    # Lorg/junit/runners/model/FrameworkField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/junit/validator/AnnotationValidator;",
            "Lorg/junit/runners/model/FrameworkField;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Exception;",
            ">;"
        }
    .end annotation

    .line 117
    invoke-virtual {p1, p2}, Lorg/junit/validator/AnnotationValidator;->validateAnnotatedField(Lorg/junit/runners/model/FrameworkField;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
