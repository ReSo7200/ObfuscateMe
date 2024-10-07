.class public Lorg/hamcrest/internal/ReflectiveTypeFinder;
.super Ljava/lang/Object;
.source "ReflectiveTypeFinder.java"


# instance fields
.field private final expectedNumberOfParameters:I

.field private final methodName:Ljava/lang/String;

.field private final typedParameter:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "expectedNumberOfParameters"    # I
    .param p3, "typedParameter"    # I

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lorg/hamcrest/internal/ReflectiveTypeFinder;->methodName:Ljava/lang/String;

    .line 37
    iput p2, p0, Lorg/hamcrest/internal/ReflectiveTypeFinder;->expectedNumberOfParameters:I

    .line 38
    iput p3, p0, Lorg/hamcrest/internal/ReflectiveTypeFinder;->typedParameter:I

    .line 39
    return-void
.end method


# virtual methods
.method protected canObtainExpectedTypeFrom(Ljava/lang/reflect/Method;)Z
    .locals 2
    .param p1, "method"    # Ljava/lang/reflect/Method;

    .line 57
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/hamcrest/internal/ReflectiveTypeFinder;->methodName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    array-length v0, v0

    iget v1, p0, Lorg/hamcrest/internal/ReflectiveTypeFinder;->expectedNumberOfParameters:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->isSynthetic()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected expectedTypeFrom(Ljava/lang/reflect/Method;)Ljava/lang/Class;
    .locals 2
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 68
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    iget v1, p0, Lorg/hamcrest/internal/ReflectiveTypeFinder;->typedParameter:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public findExpectedType(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 42
    .local p1, "fromClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v0, p1

    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    const-class v1, Ljava/lang/Object;

    if-eq v0, v1, :cond_2

    .line 43
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    .local v1, "arr$":[Ljava/lang/reflect/Method;
    array-length v2, v1

    .local v2, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 44
    .local v4, "method":Ljava/lang/reflect/Method;
    invoke-virtual {p0, v4}, Lorg/hamcrest/internal/ReflectiveTypeFinder;->canObtainExpectedTypeFrom(Ljava/lang/reflect/Method;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 45
    invoke-virtual {p0, v4}, Lorg/hamcrest/internal/ReflectiveTypeFinder;->expectedTypeFrom(Ljava/lang/reflect/Method;)Ljava/lang/Class;

    move-result-object v5

    return-object v5

    .line 43
    .end local v4    # "method":Ljava/lang/reflect/Method;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 42
    .end local v1    # "arr$":[Ljava/lang/reflect/Method;
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 49
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    new-instance v0, Ljava/lang/Error;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot determine correct type for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/hamcrest/internal/ReflectiveTypeFinder;->methodName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "() method."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method
