.class public Landroidx/test/internal/platform/reflect/ReflectiveField;
.super Ljava/lang/Object;
.source "ReflectiveField.java"


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

.field private field:Ljava/lang/reflect/Field;

.field private final fieldName:Ljava/lang/String;

.field private initialized:Z


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 1
    .param p2, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "clazz",
            "fieldName"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 51
    .local p0, "this":Landroidx/test/internal/platform/reflect/ReflectiveField;, "Landroidx/test/internal/platform/reflect/ReflectiveField<TT;>;"
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/test/internal/platform/reflect/ReflectiveField;->initialized:Z

    .line 52
    iput-object p1, p0, Landroidx/test/internal/platform/reflect/ReflectiveField;->clazz:Ljava/lang/Class;

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/test/internal/platform/reflect/ReflectiveField;->className:Ljava/lang/String;

    .line 54
    iput-object p2, p0, Landroidx/test/internal/platform/reflect/ReflectiveField;->fieldName:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "className",
            "fieldName"
        }
    .end annotation

    .line 45
    .local p0, "this":Landroidx/test/internal/platform/reflect/ReflectiveField;, "Landroidx/test/internal/platform/reflect/ReflectiveField<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/test/internal/platform/reflect/ReflectiveField;->initialized:Z

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/test/internal/platform/reflect/ReflectiveField;->clazz:Ljava/lang/Class;

    .line 47
    iput-object p1, p0, Landroidx/test/internal/platform/reflect/ReflectiveField;->className:Ljava/lang/String;

    .line 48
    iput-object p2, p0, Landroidx/test/internal/platform/reflect/ReflectiveField;->fieldName:Ljava/lang/String;

    .line 49
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

    .line 87
    .local p0, "this":Landroidx/test/internal/platform/reflect/ReflectiveField;, "Landroidx/test/internal/platform/reflect/ReflectiveField<TT;>;"
    iget-object v0, p0, Landroidx/test/internal/platform/reflect/ReflectiveField;->clazz:Ljava/lang/Class;

    if-nez v0, :cond_0

    .line 88
    iget-object v0, p0, Landroidx/test/internal/platform/reflect/ReflectiveField;->className:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0

    .line 90
    :cond_0
    iget-object v0, p0, Landroidx/test/internal/platform/reflect/ReflectiveField;->clazz:Ljava/lang/Class;

    return-object v0
.end method

.method private declared-synchronized initIfNecessary()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .local p0, "this":Landroidx/test/internal/platform/reflect/ReflectiveField;, "Landroidx/test/internal/platform/reflect/ReflectiveField<TT;>;"
    monitor-enter p0

    .line 78
    :try_start_0
    iget-boolean v0, p0, Landroidx/test/internal/platform/reflect/ReflectiveField;->initialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 79
    monitor-exit p0

    return-void

    .line 81
    :cond_0
    :try_start_1
    invoke-direct {p0}, Landroidx/test/internal/platform/reflect/ReflectiveField;->getClazz()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Landroidx/test/internal/platform/reflect/ReflectiveField;->fieldName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/internal/platform/reflect/ReflectiveField;->field:Ljava/lang/reflect/Field;

    .line 82
    iget-object v0, p0, Landroidx/test/internal/platform/reflect/ReflectiveField;->field:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 83
    iput-boolean v1, p0, Landroidx/test/internal/platform/reflect/ReflectiveField;->initialized:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    monitor-exit p0

    return-void

    .line 77
    .end local p0    # "this":Landroidx/test/internal/platform/reflect/ReflectiveField;, "Landroidx/test/internal/platform/reflect/ReflectiveField<TT;>;"
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "object"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/test/internal/platform/reflect/ReflectionException;
        }
    .end annotation

    .line 66
    .local p0, "this":Landroidx/test/internal/platform/reflect/ReflectiveField;, "Landroidx/test/internal/platform/reflect/ReflectiveField<TT;>;"
    :try_start_0
    invoke-direct {p0}, Landroidx/test/internal/platform/reflect/ReflectiveField;->initIfNecessary()V

    .line 67
    iget-object v0, p0, Landroidx/test/internal/platform/reflect/ReflectiveField;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Landroidx/test/internal/platform/reflect/ReflectionException;

    invoke-direct {v1, v0}, Landroidx/test/internal/platform/reflect/ReflectionException;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 70
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v0

    .line 71
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    new-instance v1, Landroidx/test/internal/platform/reflect/ReflectionException;

    invoke-direct {v1, v0}, Landroidx/test/internal/platform/reflect/ReflectionException;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 68
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    :catch_2
    move-exception v0

    .line 69
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v1, Landroidx/test/internal/platform/reflect/ReflectionException;

    invoke-direct {v1, v0}, Landroidx/test/internal/platform/reflect/ReflectionException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method
