.class public Lorg/junit/internal/runners/MethodValidator;
.super Ljava/lang/Object;
.source "MethodValidator.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final errors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field private testClass:Lorg/junit/internal/runners/TestClass;


# direct methods
.method public constructor <init>(Lorg/junit/internal/runners/TestClass;)V
    .locals 1
    .param p1, "testClass"    # Lorg/junit/internal/runners/TestClass;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/junit/internal/runners/MethodValidator;->errors:Ljava/util/List;

    .line 29
    iput-object p1, p0, Lorg/junit/internal/runners/MethodValidator;->testClass:Lorg/junit/internal/runners/TestClass;

    .line 30
    return-void
.end method

.method private validateTestMethods(Ljava/lang/Class;Z)V
    .locals 9
    .param p2, "isStatic"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;Z)V"
        }
    .end annotation

    .line 71
    .local p1, "annotation":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    iget-object v0, p0, Lorg/junit/internal/runners/MethodValidator;->testClass:Lorg/junit/internal/runners/TestClass;

    invoke-virtual {v0, p1}, Lorg/junit/internal/runners/TestClass;->getAnnotatedMethods(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 73
    .local v0, "methods":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Method;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Method;

    .line 74
    .local v2, "each":Ljava/lang/reflect/Method;
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v3

    const-string v4, "Method "

    if-eq v3, p2, :cond_1

    .line 75
    if-eqz p2, :cond_0

    const-string/jumbo v3, "should"

    goto :goto_1

    :cond_0
    const-string/jumbo v3, "should not"

    .line 76
    .local v3, "state":Ljava/lang/String;
    :goto_1
    iget-object v5, p0, Lorg/junit/internal/runners/MethodValidator;->errors:Ljava/util/List;

    new-instance v6, Ljava/lang/Exception;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "() "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " be static"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    .end local v3    # "state":Ljava/lang/String;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v3

    const-string v5, " should be public"

    if-nez v3, :cond_2

    .line 80
    iget-object v3, p0, Lorg/junit/internal/runners/MethodValidator;->errors:Ljava/util/List;

    new-instance v6, Ljava/lang/Exception;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Class "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    :cond_2
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 84
    iget-object v3, p0, Lorg/junit/internal/runners/MethodValidator;->errors:Ljava/util/List;

    new-instance v6, Ljava/lang/Exception;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    :cond_3
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v3

    sget-object v5, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq v3, v5, :cond_4

    .line 88
    iget-object v3, p0, Lorg/junit/internal/runners/MethodValidator;->errors:Ljava/util/List;

    new-instance v5, Ljava/lang/Exception;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "should have a return type of void"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    :cond_4
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    array-length v3, v3

    if-eqz v3, :cond_5

    .line 92
    iget-object v3, p0, Lorg/junit/internal/runners/MethodValidator;->errors:Ljava/util/List;

    new-instance v5, Ljava/lang/Exception;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " should have no parameters"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .end local v2    # "each":Ljava/lang/reflect/Method;
    :cond_5
    goto/16 :goto_0

    .line 96
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_6
    return-void
.end method


# virtual methods
.method public assertValid()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/internal/runners/InitializationError;
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lorg/junit/internal/runners/MethodValidator;->errors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    return-void

    .line 57
    :cond_0
    new-instance v0, Lorg/junit/internal/runners/InitializationError;

    iget-object v1, p0, Lorg/junit/internal/runners/MethodValidator;->errors:Ljava/util/List;

    invoke-direct {v0, v1}, Lorg/junit/internal/runners/InitializationError;-><init>(Ljava/util/List;)V

    throw v0
.end method

.method public validateInstanceMethods()V
    .locals 4

    .line 33
    const-class v0, Lorg/junit/After;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/junit/internal/runners/MethodValidator;->validateTestMethods(Ljava/lang/Class;Z)V

    .line 34
    const-class v0, Lorg/junit/Before;

    invoke-direct {p0, v0, v1}, Lorg/junit/internal/runners/MethodValidator;->validateTestMethods(Ljava/lang/Class;Z)V

    .line 35
    const-class v0, Lorg/junit/Test;

    invoke-direct {p0, v0, v1}, Lorg/junit/internal/runners/MethodValidator;->validateTestMethods(Ljava/lang/Class;Z)V

    .line 37
    iget-object v0, p0, Lorg/junit/internal/runners/MethodValidator;->testClass:Lorg/junit/internal/runners/TestClass;

    const-class v1, Lorg/junit/Test;

    invoke-virtual {v0, v1}, Lorg/junit/internal/runners/TestClass;->getAnnotatedMethods(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 38
    .local v0, "methods":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Method;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 39
    iget-object v1, p0, Lorg/junit/internal/runners/MethodValidator;->errors:Ljava/util/List;

    new-instance v2, Ljava/lang/Exception;

    const-string v3, "No runnable methods"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    :cond_0
    return-void
.end method

.method public validateMethodsForDefaultRunner()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .line 49
    invoke-virtual {p0}, Lorg/junit/internal/runners/MethodValidator;->validateNoArgConstructor()V

    .line 50
    invoke-virtual {p0}, Lorg/junit/internal/runners/MethodValidator;->validateStaticMethods()V

    .line 51
    invoke-virtual {p0}, Lorg/junit/internal/runners/MethodValidator;->validateInstanceMethods()V

    .line 52
    iget-object v0, p0, Lorg/junit/internal/runners/MethodValidator;->errors:Ljava/util/List;

    return-object v0
.end method

.method public validateNoArgConstructor()V
    .locals 4

    .line 63
    :try_start_0
    iget-object v0, p0, Lorg/junit/internal/runners/MethodValidator;->testClass:Lorg/junit/internal/runners/TestClass;

    invoke-virtual {v0}, Lorg/junit/internal/runners/TestClass;->getConstructor()Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    goto :goto_0

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lorg/junit/internal/runners/MethodValidator;->errors:Ljava/util/List;

    new-instance v2, Ljava/lang/Exception;

    const-string v3, "Test class should have public zero-argument constructor"

    invoke-direct {v2, v3, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public validateStaticMethods()V
    .locals 2

    .line 44
    const-class v0, Lorg/junit/BeforeClass;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/junit/internal/runners/MethodValidator;->validateTestMethods(Ljava/lang/Class;Z)V

    .line 45
    const-class v0, Lorg/junit/AfterClass;

    invoke-direct {p0, v0, v1}, Lorg/junit/internal/runners/MethodValidator;->validateTestMethods(Ljava/lang/Class;Z)V

    .line 46
    return-void
.end method
