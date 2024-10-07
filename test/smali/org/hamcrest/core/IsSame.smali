.class public Lorg/hamcrest/core/IsSame;
.super Lorg/hamcrest/BaseMatcher;
.source "IsSame.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/hamcrest/BaseMatcher<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final object:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 17
    .local p0, "this":Lorg/hamcrest/core/IsSame;, "Lorg/hamcrest/core/IsSame<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Lorg/hamcrest/BaseMatcher;-><init>()V

    .line 18
    iput-object p1, p0, Lorg/hamcrest/core/IsSame;->object:Ljava/lang/Object;

    .line 19
    return-void
.end method

.method public static sameInstance(Ljava/lang/Object;)Lorg/hamcrest/Matcher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lorg/hamcrest/Matcher<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lorg/hamcrest/Factory;
    .end annotation

    .line 42
    .local p0, "target":Ljava/lang/Object;, "TT;"
    new-instance v0, Lorg/hamcrest/core/IsSame;

    invoke-direct {v0, p0}, Lorg/hamcrest/core/IsSame;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static theInstance(Ljava/lang/Object;)Lorg/hamcrest/Matcher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lorg/hamcrest/Matcher<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lorg/hamcrest/Factory;
    .end annotation

    .line 54
    .local p0, "target":Ljava/lang/Object;, "TT;"
    new-instance v0, Lorg/hamcrest/core/IsSame;

    invoke-direct {v0, p0}, Lorg/hamcrest/core/IsSame;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public describeTo(Lorg/hamcrest/Description;)V
    .locals 2
    .param p1, "description"    # Lorg/hamcrest/Description;

    .line 28
    .local p0, "this":Lorg/hamcrest/core/IsSame;, "Lorg/hamcrest/core/IsSame<TT;>;"
    const-string/jumbo v0, "sameInstance("

    invoke-interface {p1, v0}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    move-result-object v0

    iget-object v1, p0, Lorg/hamcrest/core/IsSame;->object:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lorg/hamcrest/Description;->appendValue(Ljava/lang/Object;)Lorg/hamcrest/Description;

    move-result-object v0

    const-string v1, ")"

    invoke-interface {v0, v1}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    .line 31
    return-void
.end method

.method public matches(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "arg"    # Ljava/lang/Object;

    .line 23
    .local p0, "this":Lorg/hamcrest/core/IsSame;, "Lorg/hamcrest/core/IsSame<TT;>;"
    iget-object v0, p0, Lorg/hamcrest/core/IsSame;->object:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
