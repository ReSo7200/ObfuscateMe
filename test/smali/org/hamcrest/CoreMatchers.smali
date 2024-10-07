.class public Lorg/hamcrest/CoreMatchers;
.super Ljava/lang/Object;
.source "CoreMatchers.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static allOf(Ljava/lang/Iterable;)Lorg/hamcrest/Matcher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "Lorg/hamcrest/Matcher<",
            "-TT;>;>;)",
            "Lorg/hamcrest/Matcher<",
            "TT;>;"
        }
    .end annotation

    .line 13
    .local p0, "matchers":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lorg/hamcrest/Matcher<-TT;>;>;"
    invoke-static {p0}, Lorg/hamcrest/core/AllOf;->allOf(Ljava/lang/Iterable;)Lorg/hamcrest/Matcher;

    move-result-object v0

    return-object v0
.end method

.method public static allOf(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/hamcrest/Matcher<",
            "-TT;>;",
            "Lorg/hamcrest/Matcher<",
            "-TT;>;)",
            "Lorg/hamcrest/Matcher<",
            "TT;>;"
        }
    .end annotation

    .line 33
    .local p0, "first":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<-TT;>;"
    .local p1, "second":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<-TT;>;"
    invoke-static {p0, p1}, Lorg/hamcrest/core/AllOf;->allOf(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;

    move-result-object v0

    return-object v0
.end method

.method public static allOf(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/hamcrest/Matcher<",
            "-TT;>;",
            "Lorg/hamcrest/Matcher<",
            "-TT;>;",
            "Lorg/hamcrest/Matcher<",
            "-TT;>;)",
            "Lorg/hamcrest/Matcher<",
            "TT;>;"
        }
    .end annotation

    .line 43
    .local p0, "first":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<-TT;>;"
    .local p1, "second":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<-TT;>;"
    .local p2, "third":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<-TT;>;"
    invoke-static {p0, p1, p2}, Lorg/hamcrest/core/AllOf;->allOf(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;

    move-result-object v0

    return-object v0
.end method

.method public static allOf(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/hamcrest/Matcher<",
            "-TT;>;",
            "Lorg/hamcrest/Matcher<",
            "-TT;>;",
            "Lorg/hamcrest/Matcher<",
            "-TT;>;",
            "Lorg/hamcrest/Matcher<",
            "-TT;>;)",
            "Lorg/hamcrest/Matcher<",
            "TT;>;"
        }
    .end annotation

    .line 53
    .local p0, "first":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<-TT;>;"
    .local p1, "second":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<-TT;>;"
    .local p2, "third":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<-TT;>;"
    .local p3, "fourth":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<-TT;>;"
    invoke-static {p0, p1, p2, p3}, Lorg/hamcrest/core/AllOf;->allOf(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;

    move-result-object v0

    return-object v0
.end method

.method public static allOf(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/hamcrest/Matcher<",
            "-TT;>;",
            "Lorg/hamcrest/Matcher<",
            "-TT;>;",
            "Lorg/hamcrest/Matcher<",
            "-TT;>;",
            "Lorg/hamcrest/Matcher<",
            "-TT;>;",
            "Lorg/hamcrest/Matcher<",
            "-TT;>;)",
            "Lorg/hamcrest/Matcher<",
            "TT;>;"
        }
    .end annotation

    .line 63
    .local p0, "first":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<-TT;>;"
    .local p1, "second":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<-TT;>;"
    .local p2, "third":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<-TT;>;"
    .local p3, "fourth":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<-TT;>;"
    .local p4, "fifth":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<-TT;>;"
    invoke-static {p0, p1, p2, p3, p4}, Lorg/hamcrest/core/AllOf;->allOf(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;

    move-result-object v0

    return-object v0
.end method

.method public static allOf(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/hamcrest/Matcher<",
            "-TT;>;",
            "Lorg/hamcrest/Matcher<",
            "-TT;>;",
            "Lorg/hamcrest/Matcher<",
            "-TT;>;",
            "Lorg/hamcrest/Matcher<",
            "-TT;>;",
            "Lorg/hamcrest/Matcher<",
            "-TT;>;",
            "Lorg/hamcrest/Matcher<",
            "-TT;>;)",
            "Lorg/hamcrest/Matcher<",
            "TT;>;"
        }
    .end annotation

    .line 73
    .local p0, "first":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<-TT;>;"
    .local p1, "second":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<-TT;>;"
    .local p2, "third":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<-TT;>;"
    .local p3, "fourth":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<-TT;>;"
    .local p4, "fifth":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<-TT;>;"
    .local p5, "sixth":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<-TT;>;"
    invoke-static/range {p0 .. p5}, Lorg/hamcrest/core/AllOf;->allOf(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;

    move-result-object v0

    return-object v0
.end method

.method public static varargs allOf([Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Lorg/hamcrest/Matcher<",
            "-TT;>;)",
            "Lorg/hamcrest/Matcher<",
            "TT;>;"
        }
    .end annotation

    .line 23
    .local p0, "matchers":[Lorg/hamcrest/Matcher;, "[Lorg/hamcrest/Matcher<-TT;>;"
    invoke-static {p0}, Lorg/hamcrest/core/AllOf;->allOf([Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;

    move-result-object v0

    return-object v0
.end method

.method public static any(Ljava/lang/Class;)Lorg/hamcrest/Matcher;
    .locals 1
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

    .line 371
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p0}, Lorg/hamcrest/core/IsInstanceOf;->any(Ljava/lang/Class;)Lorg/hamcrest/Matcher;

    move-result-object v0

    return-object v0
.end method

.method public static anyOf(Ljava/lang/Iterable;)Lorg/hamcrest/core/AnyOf;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "Lorg/hamcrest/Matcher<",
            "-TT;>;>;)",
            "Lorg/hamcrest/core/AnyOf<",
            "TT;>;"
        }
    .end annotation

    .line 83
    .local p0, "matchers":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lorg/hamcrest/Matcher<-TT;>;>;"
    invoke-static {p0}, Lorg/hamcrest/core/AnyOf;->anyOf(Ljava/lang/Iterable;)Lorg/hamcrest/core/AnyOf;

    move-result-object v0

    return-object v0
.end method

.method public static anyOf(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;)Lorg/hamcrest/core/AnyOf;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/hamcrest/Matcher<",
            "TT;>;",
            "Lorg/hamcrest/Matcher<",
            "-TT;>;)",
            "Lorg/hamcrest/core/AnyOf<",
            "TT;>;"
        }
    .end annotation

    .line 133
    .local p0, "first":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<TT;>;"
    .local p1, "second":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<-TT;>;"
    invoke-static {p0, p1}, Lorg/hamcrest/core/AnyOf;->anyOf(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;)Lorg/hamcrest/core/AnyOf;

    move-result-object v0

    return-object v0
.end method

.method public static anyOf(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;)Lorg/hamcrest/core/AnyOf;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/hamcrest/Matcher<",
            "TT;>;",
            "Lorg/hamcrest/Matcher<",
            "-TT;>;",
            "Lorg/hamcrest/Matcher<",
            "-TT;>;)",
            "Lorg/hamcrest/core/AnyOf<",
            "TT;>;"
        }
    .end annotation

    .line 93
    .local p0, "first":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<TT;>;"
    .local p1, "second":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<-TT;>;"
    .local p2, "third":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<-TT;>;"
    invoke-static {p0, p1, p2}, Lorg/hamcrest/core/AnyOf;->anyOf(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;)Lorg/hamcrest/core/AnyOf;

    move-result-object v0

    return-object v0
.end method

.method public static anyOf(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;)Lorg/hamcrest/core/AnyOf;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/hamcrest/Matcher<",
            "TT;>;",
            "Lorg/hamcrest/Matcher<",
            "-TT;>;",
            "Lorg/hamcrest/Matcher<",
            "-TT;>;",
            "Lorg/hamcrest/Matcher<",
            "-TT;>;)",
            "Lorg/hamcrest/core/AnyOf<",
            "TT;>;"
        }
    .end annotation

    .line 103
    .local p0, "first":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<TT;>;"
    .local p1, "second":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<-TT;>;"
    .local p2, "third":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<-TT;>;"
    .local p3, "fourth":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<-TT;>;"
    invoke-static {p0, p1, p2, p3}, Lorg/hamcrest/core/AnyOf;->anyOf(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;)Lorg/hamcrest/core/AnyOf;

    move-result-object v0

    return-object v0
.end method

.method public static anyOf(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;)Lorg/hamcrest/core/AnyOf;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/hamcrest/Matcher<",
            "TT;>;",
            "Lorg/hamcrest/Matcher<",
            "-TT;>;",
            "Lorg/hamcrest/Matcher<",
            "-TT;>;",
            "Lorg/hamcrest/Matcher<",
            "-TT;>;",
            "Lorg/hamcrest/Matcher<",
            "-TT;>;)",
            "Lorg/hamcrest/core/AnyOf<",
            "TT;>;"
        }
    .end annotation

    .line 113
    .local p0, "first":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<TT;>;"
    .local p1, "second":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<-TT;>;"
    .local p2, "third":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<-TT;>;"
    .local p3, "fourth":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<-TT;>;"
    .local p4, "fifth":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<-TT;>;"
    invoke-static {p0, p1, p2, p3, p4}, Lorg/hamcrest/core/AnyOf;->anyOf(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;)Lorg/hamcrest/core/AnyOf;

    move-result-object v0

    return-object v0
.end method

.method public static anyOf(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;)Lorg/hamcrest/core/AnyOf;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/hamcrest/Matcher<",
            "TT;>;",
            "Lorg/hamcrest/Matcher<",
            "-TT;>;",
            "Lorg/hamcrest/Matcher<",
            "-TT;>;",
            "Lorg/hamcrest/Matcher<",
            "-TT;>;",
            "Lorg/hamcrest/Matcher<",
            "-TT;>;",
            "Lorg/hamcrest/Matcher<",
            "-TT;>;)",
            "Lorg/hamcrest/core/AnyOf<",
            "TT;>;"
        }
    .end annotation

    .line 123
    .local p0, "first":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<TT;>;"
    .local p1, "second":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<-TT;>;"
    .local p2, "third":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<-TT;>;"
    .local p3, "fourth":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<-TT;>;"
    .local p4, "fifth":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<-TT;>;"
    .local p5, "sixth":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<-TT;>;"
    invoke-static/range {p0 .. p5}, Lorg/hamcrest/core/AnyOf;->anyOf(Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;Lorg/hamcrest/Matcher;)Lorg/hamcrest/core/AnyOf;

    move-result-object v0

    return-object v0
.end method

.method public static varargs anyOf([Lorg/hamcrest/Matcher;)Lorg/hamcrest/core/AnyOf;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Lorg/hamcrest/Matcher<",
            "-TT;>;)",
            "Lorg/hamcrest/core/AnyOf<",
            "TT;>;"
        }
    .end annotation

    .line 143
    .local p0, "matchers":[Lorg/hamcrest/Matcher;, "[Lorg/hamcrest/Matcher<-TT;>;"
    invoke-static {p0}, Lorg/hamcrest/core/AnyOf;->anyOf([Lorg/hamcrest/Matcher;)Lorg/hamcrest/core/AnyOf;

    move-result-object v0

    return-object v0
.end method

.method public static anything()Lorg/hamcrest/Matcher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 254
    invoke-static {}, Lorg/hamcrest/core/IsAnything;->anything()Lorg/hamcrest/Matcher;

    move-result-object v0

    return-object v0
.end method

.method public static anything(Ljava/lang/String;)Lorg/hamcrest/Matcher;
    .locals 1
    .param p0, "description"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 265
    invoke-static {p0}, Lorg/hamcrest/core/IsAnything;->anything(Ljava/lang/String;)Lorg/hamcrest/Matcher;

    move-result-object v0

    return-object v0
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

    .line 153
    .local p0, "matcher":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<-TLHS;>;"
    invoke-static {p0}, Lorg/hamcrest/core/CombinableMatcher;->both(Lorg/hamcrest/Matcher;)Lorg/hamcrest/core/CombinableMatcher$CombinableBothMatcher;

    move-result-object v0

    return-object v0
.end method

.method public static containsString(Ljava/lang/String;)Lorg/hamcrest/Matcher;
    .locals 1
    .param p0, "substring"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 502
    invoke-static {p0}, Lorg/hamcrest/core/StringContains;->containsString(Ljava/lang/String;)Lorg/hamcrest/Matcher;

    move-result-object v0

    return-object v0
.end method

.method public static varargs describedAs(Ljava/lang/String;Lorg/hamcrest/Matcher;[Ljava/lang/Object;)Lorg/hamcrest/Matcher;
    .locals 1
    .param p0, "description"    # Ljava/lang/String;
    .param p2, "values"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lorg/hamcrest/Matcher<",
            "TT;>;[",
            "Ljava/lang/Object;",
            ")",
            "Lorg/hamcrest/Matcher<",
            "TT;>;"
        }
    .end annotation

    .line 181
    .local p1, "matcher":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<TT;>;"
    invoke-static {p0, p1, p2}, Lorg/hamcrest/core/DescribedAs;->describedAs(Ljava/lang/String;Lorg/hamcrest/Matcher;[Ljava/lang/Object;)Lorg/hamcrest/Matcher;

    move-result-object v0

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

    .line 163
    .local p0, "matcher":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<-TLHS;>;"
    invoke-static {p0}, Lorg/hamcrest/core/CombinableMatcher;->either(Lorg/hamcrest/Matcher;)Lorg/hamcrest/core/CombinableMatcher$CombinableEitherMatcher;

    move-result-object v0

    return-object v0
.end method

.method public static endsWith(Ljava/lang/String;)Lorg/hamcrest/Matcher;
    .locals 1
    .param p0, "suffix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 530
    invoke-static {p0}, Lorg/hamcrest/core/StringEndsWith;->endsWith(Ljava/lang/String;)Lorg/hamcrest/Matcher;

    move-result-object v0

    return-object v0
.end method

.method public static equalTo(Ljava/lang/Object;)Lorg/hamcrest/Matcher;
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

    .line 355
    .local p0, "operand":Ljava/lang/Object;, "TT;"
    invoke-static {p0}, Lorg/hamcrest/core/IsEqual;->equalTo(Ljava/lang/Object;)Lorg/hamcrest/Matcher;

    move-result-object v0

    return-object v0
.end method

.method public static everyItem(Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/hamcrest/Matcher<",
            "TU;>;)",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/Iterable<",
            "TU;>;>;"
        }
    .end annotation

    .line 196
    .local p0, "itemMatcher":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<TU;>;"
    invoke-static {p0}, Lorg/hamcrest/core/Every;->everyItem(Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;

    move-result-object v0

    return-object v0
.end method

.method public static hasItem(Ljava/lang/Object;)Lorg/hamcrest/Matcher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/Iterable<",
            "-TT;>;>;"
        }
    .end annotation

    .line 281
    .local p0, "item":Ljava/lang/Object;, "TT;"
    invoke-static {p0}, Lorg/hamcrest/core/IsCollectionContaining;->hasItem(Ljava/lang/Object;)Lorg/hamcrest/Matcher;

    move-result-object v0

    return-object v0
.end method

.method public static hasItem(Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/hamcrest/Matcher<",
            "-TT;>;)",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/Iterable<",
            "-TT;>;>;"
        }
    .end annotation

    .line 297
    .local p0, "itemMatcher":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<-TT;>;"
    invoke-static {p0}, Lorg/hamcrest/core/IsCollectionContaining;->hasItem(Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;

    move-result-object v0

    return-object v0
.end method

.method public static varargs hasItems([Ljava/lang/Object;)Lorg/hamcrest/Matcher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/Iterable<",
            "TT;>;>;"
        }
    .end annotation

    .line 313
    .local p0, "items":[Ljava/lang/Object;, "[TT;"
    invoke-static {p0}, Lorg/hamcrest/core/IsCollectionContaining;->hasItems([Ljava/lang/Object;)Lorg/hamcrest/Matcher;

    move-result-object v0

    return-object v0
.end method

.method public static varargs hasItems([Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Lorg/hamcrest/Matcher<",
            "-TT;>;)",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/Iterable<",
            "TT;>;>;"
        }
    .end annotation

    .line 329
    .local p0, "itemMatchers":[Lorg/hamcrest/Matcher;, "[Lorg/hamcrest/Matcher<-TT;>;"
    invoke-static {p0}, Lorg/hamcrest/core/IsCollectionContaining;->hasItems([Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;

    move-result-object v0

    return-object v0
.end method

.method public static instanceOf(Ljava/lang/Class;)Lorg/hamcrest/Matcher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/hamcrest/Matcher<",
            "TT;>;"
        }
    .end annotation

    .line 385
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0}, Lorg/hamcrest/core/IsInstanceOf;->instanceOf(Ljava/lang/Class;)Lorg/hamcrest/Matcher;

    move-result-object v0

    return-object v0
.end method

.method public static is(Ljava/lang/Class;)Lorg/hamcrest/Matcher;
    .locals 1
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

    .line 235
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p0}, Lorg/hamcrest/core/Is;->is(Ljava/lang/Class;)Lorg/hamcrest/Matcher;

    move-result-object v0

    return-object v0
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

    .line 208
    .local p0, "value":Ljava/lang/Object;, "TT;"
    invoke-static {p0}, Lorg/hamcrest/core/Is;->is(Ljava/lang/Object;)Lorg/hamcrest/Matcher;

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

    .line 221
    .local p0, "matcher":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<TT;>;"
    invoke-static {p0}, Lorg/hamcrest/core/Is;->is(Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;

    move-result-object v0

    return-object v0
.end method

.method public static isA(Ljava/lang/Class;)Lorg/hamcrest/Matcher;
    .locals 1
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

    .line 247
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p0}, Lorg/hamcrest/core/Is;->isA(Ljava/lang/Class;)Lorg/hamcrest/Matcher;

    move-result-object v0

    return-object v0
.end method

.method public static not(Ljava/lang/Object;)Lorg/hamcrest/Matcher;
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

    .line 414
    .local p0, "value":Ljava/lang/Object;, "TT;"
    invoke-static {p0}, Lorg/hamcrest/core/IsNot;->not(Ljava/lang/Object;)Lorg/hamcrest/Matcher;

    move-result-object v0

    return-object v0
.end method

.method public static not(Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;
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

    .line 399
    .local p0, "matcher":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<TT;>;"
    invoke-static {p0}, Lorg/hamcrest/core/IsNot;->not(Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;

    move-result-object v0

    return-object v0
.end method

.method public static notNullValue()Lorg/hamcrest/Matcher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 450
    invoke-static {}, Lorg/hamcrest/core/IsNull;->notNullValue()Lorg/hamcrest/Matcher;

    move-result-object v0

    return-object v0
.end method

.method public static notNullValue(Ljava/lang/Class;)Lorg/hamcrest/Matcher;
    .locals 1
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

    .line 466
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p0}, Lorg/hamcrest/core/IsNull;->notNullValue(Ljava/lang/Class;)Lorg/hamcrest/Matcher;

    move-result-object v0

    return-object v0
.end method

.method public static nullValue()Lorg/hamcrest/Matcher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 424
    invoke-static {}, Lorg/hamcrest/core/IsNull;->nullValue()Lorg/hamcrest/Matcher;

    move-result-object v0

    return-object v0
.end method

.method public static nullValue(Ljava/lang/Class;)Lorg/hamcrest/Matcher;
    .locals 1
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

    .line 438
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p0}, Lorg/hamcrest/core/IsNull;->nullValue(Ljava/lang/Class;)Lorg/hamcrest/Matcher;

    move-result-object v0

    return-object v0
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

    .line 477
    .local p0, "target":Ljava/lang/Object;, "TT;"
    invoke-static {p0}, Lorg/hamcrest/core/IsSame;->sameInstance(Ljava/lang/Object;)Lorg/hamcrest/Matcher;

    move-result-object v0

    return-object v0
.end method

.method public static startsWith(Ljava/lang/String;)Lorg/hamcrest/Matcher;
    .locals 1
    .param p0, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 516
    invoke-static {p0}, Lorg/hamcrest/core/StringStartsWith;->startsWith(Ljava/lang/String;)Lorg/hamcrest/Matcher;

    move-result-object v0

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

    .line 488
    .local p0, "target":Ljava/lang/Object;, "TT;"
    invoke-static {p0}, Lorg/hamcrest/core/IsSame;->theInstance(Ljava/lang/Object;)Lorg/hamcrest/Matcher;

    move-result-object v0

    return-object v0
.end method
