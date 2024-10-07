.class public Landroidx/test/internal/platform/reflect/ReflectiveMethod;
.super Ljava/lang/Object;
.source "ReflectiveMethod.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final className:Ljava/lang/String;

.field private final clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private initialized:Z

.field private method:Ljava/lang/reflect/Method;

.field private final methodName:Ljava/lang/String;

.field private final paramTypes:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V
    .locals 1
    .param p2, "methodName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "clazz",
            "methodName",
            "paramTypes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 56
    .local p0, "this":Landroidx/test/internal/platform/reflect/ReflectiveMethod;, "Landroidx/test/internal/platform/reflect/ReflectiveMethod<TT;>;"
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/test/internal/platform/reflect/ReflectiveMethod;->initialized:Z

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/test/internal/platform/reflect/ReflectiveMethod;->className:Ljava/lang/String;

    .line 58
    iput-object p1, p0, Landroidx/test/internal/platform/reflect/ReflectiveMethod;->clazz:Ljava/lang/Class;

    .line 59
    iput-object p3, p0, Landroidx/test/internal/platform/reflect/ReflectiveMethod;->paramTypes:[Ljava/lang/Class;

    .line 60
    iput-object p2, p0, Landroidx/test/internal/platform/reflect/ReflectiveMethod;->methodName:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V
    .locals 1
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "methodName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "className",
            "methodName",
            "paramTypes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 49
    .local p0, "this":Landroidx/test/internal/platform/reflect/ReflectiveMethod;, "Landroidx/test/internal/platform/reflect/ReflectiveMethod<TT;>;"
    .local p3, "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/test/internal/platform/reflect/ReflectiveMethod;->initialized:Z

    .line 50
    iput-object p1, p0, Landroidx/test/internal/platform/reflect/ReflectiveMethod;->className:Ljava/lang/String;

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/test/internal/platform/reflect/ReflectiveMethod;->clazz:Ljava/lang/Class;

    .line 52
    iput-object p3, p0, Landroidx/test/internal/platform/reflect/ReflectiveMethod;->paramTypes:[Ljava/lang/Class;

    .line 53
    iput-object p2, p0, Landroidx/test/internal/platform/reflect/ReflectiveMethod;->methodName:Ljava/lang/String;

    .line 54
    return-void
.end method

.method private getClazz()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 112
    .local p0, "this":Landroidx/test/internal/platform/reflect/ReflectiveMethod;, "Landroidx/test/internal/platform/reflect/ReflectiveMethod<TT;>;"
    iget-object v0, p0, Landroidx/test/internal/platform/reflect/ReflectiveMethod;->clazz:Ljava/lang/Class;

    if-nez v0, :cond_0

    .line 113
    iget-object v0, p0, Landroidx/test/internal/platform/reflect/ReflectiveMethod;->className:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0

    .line 115
    :cond_0
    iget-object v0, p0, Landroidx/test/internal/platform/reflect/ReflectiveMethod;->clazz:Ljava/lang/Class;

    return-object v0
.end method

.method private declared-synchronized initIfNecessary()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .local p0, "this":Landroidx/test/internal/platform/reflect/ReflectiveMethod;, "Landroidx/test/internal/platform/reflect/ReflectiveMethod<TT;>;"
    monitor-enter p0

    .line 102
    :try_start_0
    iget-boolean v0, p0, Landroidx/test/internal/platform/reflect/ReflectiveMethod;->initialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 103
    monitor-exit p0

    return-void

    .line 105
    :cond_0
    :try_start_1
    invoke-direct {p0}, Landroidx/test/internal/platform/reflect/ReflectiveMethod;->getClazz()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Landroidx/test/internal/platform/reflect/ReflectiveMethod;->methodName:Ljava/lang/String;

    iget-object v2, p0, Landroidx/test/internal/platform/reflect/ReflectiveMethod;->paramTypes:[Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/internal/platform/reflect/ReflectiveMethod;->method:Ljava/lang/reflect/Method;

    .line 106
    iget-object v0, p0, Landroidx/test/internal/platform/reflect/ReflectiveMethod;->method:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 107
    iput-boolean v1, p0, Landroidx/test/internal/platform/reflect/ReflectiveMethod;->initialized:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 108
    monitor-exit p0

    return-void

    .line 101
    .end local p0    # "this":Landroidx/test/internal/platform/reflect/ReflectiveMethod;, "Landroidx/test/internal/platform/reflect/ReflectiveMethod<TT;>;"
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method


# virtual methods
.method public varargs invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "paramValues"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "object",
            "paramValues"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/test/internal/platform/reflect/ReflectionException;
        }
    .end annotation

    .line 75
    .local p0, "this":Landroidx/test/internal/platform/reflect/ReflectiveMethod;, "Landroidx/test/internal/platform/reflect/ReflectiveMethod<TT;>;"
    :try_start_0
    invoke-direct {p0}, Landroidx/test/internal/platform/reflect/ReflectiveMethod;->initIfNecessary()V

    .line 76
    iget-object v0, p0, Landroidx/test/internal/platform/reflect/ReflectiveMethod;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Landroidx/test/internal/platform/reflect/ReflectionException;

    invoke-direct {v1, v0}, Landroidx/test/internal/platform/reflect/ReflectionException;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 81
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v0

    .line 82
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    new-instance v1, Landroidx/test/internal/platform/reflect/ReflectionException;

    invoke-direct {v1, v0}, Landroidx/test/internal/platform/reflect/ReflectionException;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 79
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v0

    .line 80
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v1, Landroidx/test/internal/platform/reflect/ReflectionException;

    invoke-direct {v1, v0}, Landroidx/test/internal/platform/reflect/ReflectionException;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 77
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v0

    .line 78
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v1, Landroidx/test/internal/platform/reflect/ReflectionException;

    invoke-direct {v1, v0}, Landroidx/test/internal/platform/reflect/ReflectionException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public varargs invokeStatic([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "paramValues"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "paramValues"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/test/internal/platform/reflect/ReflectionException;
        }
    .end annotation

    .line 98
    .local p0, "this":Landroidx/test/internal/platform/reflect/ReflectiveMethod;, "Landroidx/test/internal/platform/reflect/ReflectiveMethod<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroidx/test/internal/platform/reflect/ReflectiveMethod;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
