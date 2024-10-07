.class public abstract Lorg/hamcrest/BaseMatcher;
.super Ljava/lang/Object;
.source "BaseMatcher.java"

# interfaces
.implements Lorg/hamcrest/Matcher;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/hamcrest/Matcher<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    .local p0, "this":Lorg/hamcrest/BaseMatcher;, "Lorg/hamcrest/BaseMatcher<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final _dont_implement_Matcher___instead_extend_BaseMatcher_()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 19
    .local p0, "this":Lorg/hamcrest/BaseMatcher;, "Lorg/hamcrest/BaseMatcher<TT;>;"
    return-void
.end method

.method public describeMismatch(Ljava/lang/Object;Lorg/hamcrest/Description;)V
    .locals 1
    .param p1, "item"    # Ljava/lang/Object;
    .param p2, "description"    # Lorg/hamcrest/Description;

    .line 23
    .local p0, "this":Lorg/hamcrest/BaseMatcher;, "Lorg/hamcrest/BaseMatcher<TT;>;"
    const-string/jumbo v0, "was "

    invoke-interface {p2, v0}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/hamcrest/Description;->appendValue(Ljava/lang/Object;)Lorg/hamcrest/Description;

    .line 24
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 28
    .local p0, "this":Lorg/hamcrest/BaseMatcher;, "Lorg/hamcrest/BaseMatcher<TT;>;"
    invoke-static {p0}, Lorg/hamcrest/StringDescription;->toString(Lorg/hamcrest/SelfDescribing;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
