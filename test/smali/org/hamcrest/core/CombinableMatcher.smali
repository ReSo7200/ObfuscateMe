.class public Lorg/hamcrest/core/CombinableMatcher;
.super Lorg/hamcrest/TypeSafeDiagnosingMatcher;
.source "CombinableMatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/hamcrest/core/CombinableMatcher$CombinableEitherMatcher;,
        Lorg/hamcrest/core/CombinableMatcher$CombinableBothMatcher;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/hamcrest/TypeSafeDiagnosingMatcher<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final matcher:Lorg/hamcrest/Matcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/hamcrest/Matcher<",
            "-TT;>;"
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
            "-TT;>;)V"
        }
    .end annotation

    .line 10
    .local p0, "this":Lorg/hamcrest/core/CombinableMatcher;, "Lorg/hamcrest/core/CombinableMatcher<TT;>;"
    .local p1, "matcher":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<-TT;>;"
    invoke-direct {p0}, Lorg/hamcrest/TypeSafeDiagnosingMatcher;-><init>()V

    .line 11
    iput-object p1, p0, Lorg/hamcrest/core/CombinableMatcher;->matcher:Lorg/hamcrest/Matcher;

    .line 12
    return-void
.end method

.method public static both(Lorg/hamcrest/Matcher;)Lorg/hamcrest/core/CombinableMatcher$CombinableBothMatcher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "LHS:Ljava/lang/Object;",
            ">(",
            "Lorg/hamcrest/Matcher<",
            "-T",
            "LHS;",
            ">;)",
            "Lorg/hamcrest/core/CombinableMatcher$CombinableBothMatcher<",
            "T",
            "LHS;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/hamcrest/Factory;
    .end annotation

    .line 51
    .local p0, "matcher":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<-TLHS;>;"
    new-instance v0, Lorg/hamcrest/core/CombinableMatcher$CombinableBothMatcher;

    invoke-direct {v0, p0}, Lorg/hamcrest/core/CombinableMatcher$CombinableBothMatcher;-><init>(Lorg/hamcrest/Matcher;)V

    return-object v0
.end method

.method public static either(Lorg/hamcrest/Matcher;)Lorg/hamcrest/core/CombinableMatcher$CombinableEitherMatcher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "LHS:Ljava/lang/Object;",
            ">(",
            "Lorg/hamcrest/Matcher<",
            "-T",
            "LHS;",
            ">;)",
            "Lorg/hamcrest/core/CombinableMatcher$CombinableEitherMatcher<",
            "T",
            "LHS;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/hamcrest/Factory;
    .end annotation

    .line 72
    .local p0, "matcher":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<-TLHS;>;"
    new-instance v0, Lorg/hamcrest/core/CombinableMatcher$CombinableEitherMatcher;

    invoke-direct {v0, p0}, Lorg/hamcrest/core/CombinableMatcher$CombinableEitherMatcher;-><init>(Lorg/hamcrest/Matcher;)V

    return-object v0
.end method

.method private templatedListWith(Lorg/hamcrest/Matcher;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/hamcrest/Matcher<",
            "-TT;>;)",
            "Ljava/util/ArrayList<",
            "Lorg/hamcrest/Matcher<",
            "-TT;>;>;"
        }
    .end annotation

    .line 37
    .local p0, "this":Lorg/hamcrest/core/CombinableMatcher;, "Lorg/hamcrest/core/CombinableMatcher<TT;>;"
    .local p1, "other":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<-TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .local v0, "matchers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/hamcrest/Matcher<-TT;>;>;"
    iget-object v1, p0, Lorg/hamcrest/core/CombinableMatcher;->matcher:Lorg/hamcrest/Matcher;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    return-object v0
.end method


# virtual methods
.method public and(Lorg/hamcrest/Matcher;)Lorg/hamcrest/core/CombinableMatcher;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/hamcrest/Matcher<",
            "-TT;>;)",
            "Lorg/hamcrest/core/CombinableMatcher<",
            "TT;>;"
        }
    .end annotation

    .line 29
    .local p0, "this":Lorg/hamcrest/core/CombinableMatcher;, "Lorg/hamcrest/core/CombinableMatcher<TT;>;"
    .local p1, "other":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<-TT;>;"
    new-instance v0, Lorg/hamcrest/core/CombinableMatcher;

    new-instance v1, Lorg/hamcrest/core/AllOf;

    invoke-direct {p0, p1}, Lorg/hamcrest/core/CombinableMatcher;->templatedListWith(Lorg/hamcrest/Matcher;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/hamcrest/core/AllOf;-><init>(Ljava/lang/Iterable;)V

    invoke-direct {v0, v1}, Lorg/hamcrest/core/CombinableMatcher;-><init>(Lorg/hamcrest/Matcher;)V

    return-object v0
.end method

.method public describeTo(Lorg/hamcrest/Description;)V
    .locals 1
    .param p1, "description"    # Lorg/hamcrest/Description;

    .line 25
    .local p0, "this":Lorg/hamcrest/core/CombinableMatcher;, "Lorg/hamcrest/core/CombinableMatcher<TT;>;"
    iget-object v0, p0, Lorg/hamcrest/core/CombinableMatcher;->matcher:Lorg/hamcrest/Matcher;

    invoke-interface {p1, v0}, Lorg/hamcrest/Description;->appendDescriptionOf(Lorg/hamcrest/SelfDescribing;)Lorg/hamcrest/Description;

    .line 26
    return-void
.end method

.method protected matchesSafely(Ljava/lang/Object;Lorg/hamcrest/Description;)Z
    .locals 1
    .param p2, "mismatch"    # Lorg/hamcrest/Description;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/hamcrest/Description;",
            ")Z"
        }
    .end annotation

    .line 16
    .local p0, "this":Lorg/hamcrest/core/CombinableMatcher;, "Lorg/hamcrest/core/CombinableMatcher<TT;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lorg/hamcrest/core/CombinableMatcher;->matcher:Lorg/hamcrest/Matcher;

    invoke-interface {v0, p1}, Lorg/hamcrest/Matcher;->matches(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 17
    iget-object v0, p0, Lorg/hamcrest/core/CombinableMatcher;->matcher:Lorg/hamcrest/Matcher;

    invoke-interface {v0, p1, p2}, Lorg/hamcrest/Matcher;->describeMismatch(Ljava/lang/Object;Lorg/hamcrest/Description;)V

    .line 18
    const/4 v0, 0x0

    return v0

    .line 20
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public or(Lorg/hamcrest/Matcher;)Lorg/hamcrest/core/CombinableMatcher;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/hamcrest/Matcher<",
            "-TT;>;)",
            "Lorg/hamcrest/core/CombinableMatcher<",
            "TT;>;"
        }
    .end annotation

    .line 33
    .local p0, "this":Lorg/hamcrest/core/CombinableMatcher;, "Lorg/hamcrest/core/CombinableMatcher<TT;>;"
    .local p1, "other":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<-TT;>;"
    new-instance v0, Lorg/hamcrest/core/CombinableMatcher;

    new-instance v1, Lorg/hamcrest/core/AnyOf;

    invoke-direct {p0, p1}, Lorg/hamcrest/core/CombinableMatcher;->templatedListWith(Lorg/hamcrest/Matcher;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/hamcrest/core/AnyOf;-><init>(Ljava/lang/Iterable;)V

    invoke-direct {v0, v1}, Lorg/hamcrest/core/CombinableMatcher;-><init>(Lorg/hamcrest/Matcher;)V

    return-object v0
.end method
