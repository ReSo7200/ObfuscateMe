.class public final Lorg/junit/runner/OrderWithValidator;
.super Lorg/junit/validator/AnnotationValidator;
.source "OrderWithValidator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lorg/junit/validator/AnnotationValidator;-><init>()V

    return-void
.end method


# virtual methods
.method public validateAnnotatedClass(Lorg/junit/runners/model/TestClass;)Ljava/util/List;
    .locals 2
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

    .line 32
    const-class v0, Lorg/junit/FixMethodOrder;

    invoke-virtual {p1, v0}, Lorg/junit/runners/model/TestClass;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 33
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "@FixMethodOrder cannot be combined with @OrderWith"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 36
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
