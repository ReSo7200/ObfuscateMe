.class public Landroidx/test/internal/util/ReflectionUtil$ReflectionParams;
.super Ljava/lang/Object;
.source "ReflectionUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/internal/util/ReflectionUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReflectionParams"
.end annotation


# instance fields
.field final type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field final value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 0
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 38
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Landroidx/test/internal/util/ReflectionUtil$ReflectionParams;->type:Ljava/lang/Class;

    .line 40
    iput-object p2, p0, Landroidx/test/internal/util/ReflectionUtil$ReflectionParams;->value:Ljava/lang/Object;

    .line 41
    return-void
.end method

.method public static getTypes([Landroidx/test/internal/util/ReflectionUtil$ReflectionParams;)[Ljava/lang/Class;
    .locals 3
    .param p0, "params"    # [Landroidx/test/internal/util/ReflectionUtil$ReflectionParams;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroidx/test/internal/util/ReflectionUtil$ReflectionParams;",
            ")[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 44
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/Class;

    .line 45
    .local v0, "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 46
    aget-object v2, p0, v1

    iget-object v2, v2, Landroidx/test/internal/util/ReflectionUtil$ReflectionParams;->type:Ljava/lang/Class;

    aput-object v2, v0, v1

    .line 45
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 48
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public static getValues([Landroidx/test/internal/util/ReflectionUtil$ReflectionParams;)[Ljava/lang/Object;
    .locals 3
    .param p0, "params"    # [Landroidx/test/internal/util/ReflectionUtil$ReflectionParams;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    .line 52
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/Object;

    .line 53
    .local v0, "values":[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 54
    aget-object v2, p0, v1

    iget-object v2, v2, Landroidx/test/internal/util/ReflectionUtil$ReflectionParams;->value:Ljava/lang/Object;

    aput-object v2, v0, v1

    .line 53
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 56
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method
