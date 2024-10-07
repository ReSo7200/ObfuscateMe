.class public Lorg/hamcrest/core/Is;
.super Lorg/hamcrest/BaseMatcher;
.source "Is.java"


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
.field private final matcher:Lorg/hamcrest/Matcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/hamcrest/Matcher<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/hamcrest/Matcher;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/hamcrest/Matcher<",
            "TT;>;)V"
        }
    .end annotation

    .line 21
    .local p0, "this":Lorg/hamcrest/core/Is;, "Lorg/hamcrest/core/Is<TT;>;"
    .local p1, "matcher":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<TT;>;"
    invoke-direct {p0}, Lorg/hamcrest/BaseMatcher;-><init>()V

    .line 22
    iput-object p1, p0, Lorg/hamcrest/core/Is;->matcher:Lorg/hamcrest/Matcher;

    .line 23
    return-void
.end method

.method public static is(Ljava/lang/Class;)Lorg/hamcrest/Matcher;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lorg/hamcrest/Matcher<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Lorg/hamcrest/Factory;
    .end annotation

    .line 82
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p0}, Lorg/hamcrest/core/IsInstanceOf;->instanceOf(Ljava/lang/Class;)Lorg/hamcrest/Matcher;

    move-result-object v0

    .line 83
    .local v0, "typeMatcher":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<TT;>;"
    invoke-static {v0}, Lorg/hamcrest/core/Is;->is(Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;

    move-result-object v1

    return-object v1
.end method

.method public static is(Ljava/lang/Object;)Lorg/hamcrest/Matcher;
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

    .line 66
    .local p0, "value":Ljava/lang/Object;, "TT;"
    invoke-static {p0}, Lorg/hamcrest/core/IsEqual;->equalTo(Ljava/lang/Object;)Lorg/hamcrest/Matcher;

    move-result-object v0

    invoke-static {v0}, Lorg/hamcrest/core/Is;->is(Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;

    move-result-object v0

    return-object v0
.end method

.method public static is(Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/hamcrest/Matcher<",
            "TT;>;)",
            "Lorg/hamcrest/Matcher<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lorg/hamcrest/Factory;
    .end annotation

    .line 52
    .local p0, "matcher":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<TT;>;"
    new-instance v0, Lorg/hamcrest/core/Is;

    invoke-direct {v0, p0}, Lorg/hamcrest/core/Is;-><init>(Lorg/hamcrest/Matcher;)V

    return-object v0
.end method

.method public static isA(Ljava/lang/Class;)Lorg/hamcrest/Matcher;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lorg/hamcrest/Matcher<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lorg/hamcrest/Factory;
    .end annotation

    .line 97
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p0}, Lorg/hamcrest/core/IsInstanceOf;->instanceOf(Ljava/lang/Class;)Lorg/hamcrest/Matcher;

    move-result-object v0

    .line 98
    .local v0, "typeMatcher":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<TT;>;"
    invoke-static {v0}, Lorg/hamcrest/core/Is;->is(Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public describeMismatch(Ljava/lang/Object;Lorg/hamcrest/Description;)V
    .locals 1
    .param p1, "item"    # Ljava/lang/Object;
    .param p2, "mismatchDescription"    # Lorg/hamcrest/Description;

    .line 37
    .local p0, "this":Lorg/hamcrest/core/Is;, "Lorg/hamcrest/core/Is<TT;>;"
    iget-object v0, p0, Lorg/hamcrest/core/Is;->matcher:Lorg/hamcrest/Matcher;

    invoke-interface {v0, p1, p2}, Lorg/hamcrest/Matcher;->describeMismatch(Ljava/lang/Object;Lorg/hamcrest/Description;)V

    .line 38
    return-void
.end method

.method public describeTo(Lorg/hamcrest/Description;)V
    .locals 2
    .param p1, "description"    # Lorg/hamcrest/Description;

    .line 32
    .local p0, "this":Lorg/hamcrest/core/Is;, "Lorg/hamcrest/core/Is<TT;>;"
    const-string v0, "is "

    invoke-interface {p1, v0}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    move-result-object v0

    iget-object v1, p0, Lorg/hamcrest/core/Is;->matcher:Lorg/hamcrest/Matcher;

    invoke-interface {v0, v1}, Lorg/hamcrest/Description;->appendDescriptionOf(Lorg/hamcrest/SelfDescribing;)Lorg/hamcrest/Description;

    .line 33
    return-void
.end method

.method public matches(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "arg"    # Ljava/lang/Object;

    .line 27
    .local p0, "this":Lorg/hamcrest/core/Is;, "Lorg/hamcrest/core/Is<TT;>;"
    iget-object v0, p0, Lorg/hamcrest/core/Is;->matcher:Lorg/hamcrest/Matcher;

    invoke-interface {v0, p1}, Lorg/hamcrest/Matcher;->matches(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
