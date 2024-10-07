.class public abstract Lorg/junit/runners/model/FrameworkMember;
.super Ljava/lang/Object;
.source "FrameworkMember.java"

# interfaces
.implements Lorg/junit/runners/model/Annotatable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lorg/junit/runners/model/FrameworkMember<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Lorg/junit/runners/model/Annotatable;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    .local p0, "this":Lorg/junit/runners/model/FrameworkMember;, "Lorg/junit/runners/model/FrameworkMember<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getDeclaringClass()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end method

.method protected abstract getModifiers()I
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getType()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end method

.method handlePossibleBridgeMethod(Ljava/util/List;)Lorg/junit/runners/model/FrameworkMember;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 16
    .local p0, "this":Lorg/junit/runners/model/FrameworkMember;, "Lorg/junit/runners/model/FrameworkMember<TT;>;"
    .local p1, "members":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 17
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/junit/runners/model/FrameworkMember;

    .line 18
    .local v1, "otherMember":Lorg/junit/runners/model/FrameworkMember;, "TT;"
    invoke-virtual {p0, v1}, Lorg/junit/runners/model/FrameworkMember;->isShadowedBy(Lorg/junit/runners/model/FrameworkMember;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 19
    invoke-virtual {v1}, Lorg/junit/runners/model/FrameworkMember;->isBridgeMethod()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 25
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 26
    return-object v1

    .line 29
    :cond_0
    const/4 v2, 0x0

    return-object v2

    .line 16
    .end local v1    # "otherMember":Lorg/junit/runners/model/FrameworkMember;, "TT;"
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 33
    .end local v0    # "i":I
    :cond_2
    return-object p0
.end method

.method abstract isBridgeMethod()Z
.end method

.method public isPublic()Z
    .locals 1

    .line 51
    .local p0, "this":Lorg/junit/runners/model/FrameworkMember;, "Lorg/junit/runners/model/FrameworkMember<TT;>;"
    invoke-virtual {p0}, Lorg/junit/runners/model/FrameworkMember;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    return v0
.end method

.method abstract isShadowedBy(Lorg/junit/runners/model/FrameworkMember;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method

.method public isStatic()Z
    .locals 1

    .line 44
    .local p0, "this":Lorg/junit/runners/model/FrameworkMember;, "Lorg/junit/runners/model/FrameworkMember<TT;>;"
    invoke-virtual {p0}, Lorg/junit/runners/model/FrameworkMember;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    return v0
.end method
