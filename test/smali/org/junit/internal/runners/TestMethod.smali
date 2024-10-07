.class public Lorg/junit/internal/runners/TestMethod;
.super Ljava/lang/Object;
.source "TestMethod.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final method:Ljava/lang/reflect/Method;

.field private testClass:Lorg/junit/internal/runners/TestClass;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Method;Lorg/junit/internal/runners/TestClass;)V
    .locals 0
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .param p2, "testClass"    # Lorg/junit/internal/runners/TestClass;

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lorg/junit/internal/runners/TestMethod;->method:Ljava/lang/reflect/Method;

    .line 26
    iput-object p2, p0, Lorg/junit/internal/runners/TestMethod;->testClass:Lorg/junit/internal/runners/TestClass;

    .line 27
    return-void
.end method


# virtual methods
.method expectsException()Z
    .locals 1

    .line 56
    invoke-virtual {p0}, Lorg/junit/internal/runners/TestMethod;->getExpectedException()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method getAfters()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lorg/junit/internal/runners/TestMethod;->testClass:Lorg/junit/internal/runners/TestClass;

    const-class v1, Lorg/junit/After;

    invoke-virtual {v0, v1}, Lorg/junit/internal/runners/TestClass;->getAnnotatedMethods(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getBefores()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lorg/junit/internal/runners/TestMethod;->testClass:Lorg/junit/internal/runners/TestClass;

    const-class v1, Lorg/junit/Before;

    invoke-virtual {v0, v1}, Lorg/junit/internal/runners/TestClass;->getAnnotatedMethods(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getExpectedException()Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lorg/junit/internal/runners/TestMethod;->method:Ljava/lang/reflect/Method;

    const-class v1, Lorg/junit/Test;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/junit/Test;

    .line 44
    .local v0, "annotation":Lorg/junit/Test;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/junit/Test;->expected()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lorg/junit/Test$None;

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 47
    :cond_0
    invoke-interface {v0}, Lorg/junit/Test;->expected()Ljava/lang/Class;

    move-result-object v1

    return-object v1

    .line 45
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getTimeout()J
    .locals 3

    .line 34
    iget-object v0, p0, Lorg/junit/internal/runners/TestMethod;->method:Ljava/lang/reflect/Method;

    const-class v1, Lorg/junit/Test;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/junit/Test;

    .line 35
    .local v0, "annotation":Lorg/junit/Test;
    if-nez v0, :cond_0

    .line 36
    const-wide/16 v1, 0x0

    return-wide v1

    .line 38
    :cond_0
    invoke-interface {v0}, Lorg/junit/Test;->timeout()J

    move-result-wide v1

    .line 39
    .local v1, "timeout":J
    return-wide v1
.end method

.method public invoke(Ljava/lang/Object;)V
    .locals 2
    .param p1, "test"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lorg/junit/internal/runners/TestMethod;->method:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    return-void
.end method

.method public isIgnored()Z
    .locals 2

    .line 30
    iget-object v0, p0, Lorg/junit/internal/runners/TestMethod;->method:Ljava/lang/reflect/Method;

    const-class v1, Lorg/junit/Ignore;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isUnexpected(Ljava/lang/Throwable;)Z
    .locals 2
    .param p1, "exception"    # Ljava/lang/Throwable;

    .line 52
    invoke-virtual {p0}, Lorg/junit/internal/runners/TestMethod;->getExpectedException()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
